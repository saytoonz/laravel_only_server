<?php

namespace App\Http\Controllers;

use App\Models\Notification;
use App\Models\Premium;
use App\Models\Recommendation;
use App\Models\AppUser;
use App\Models\UserAbout;
use App\Models\UserMedia;
use App\Models\UserUtils;
use App\Models\Verified;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\DB;

class AppUserController extends Controller
{
    public function index()
    {
        // return new UserResource(AppUser::find(1));
        return UserResource::collection(AppUser::all());
    }


    public function getPotentialUsers($uid)
    {
        return UserResource::collection(AppUser::where('id', '!=', $uid)->inRandomOrder()->paginate());
    }


    public function store(Request $request)
    {


        $response = array("error" => FALSE);

        $request->validate([
            'fb_uid' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'first_name' => 'required',
            'last_name' => 'required',
            'date_of_birth' => 'required',
            'city' => 'required',
            'country' => 'required',
            'gender' => 'required',
            'looking_for' => 'required',
            'in_use_recommendation' => 'required'
        ]);


        if (AppUser::where('fb_uid', $request->fb_uid)->get()->first()) {
            $response["error"] = TRUE;
            $response["msg"] = "AppUser already exist!";
            return json_encode($response);
        }

        if (AppUser::where('phone', $request->phone)->get()->first()) {
            $response["error"] = TRUE;
            $response["msg"] = "AppUser already exist with this phone number!";
            return json_encode($response);
        }

        if (AppUser::where('email', $request->email)->get()->first()) {
            $response["error"] = TRUE;
            $response["msg"] = "Email has already been!";
            return json_encode($response);
        }



        $user =  AppUser::create([
            'fb_uid' => $request->fb_uid,
            'phone' => $request->phone,
            'email' => $request->email,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'date_of_birth' => $request->date_of_birth,
            'city' => $request->city,
            'country' => $request->country,
            'gender' => $request->gender,
            'looking_for' => $request->looking_for,
            'in_use_recommendation' => $request->in_use_recommendation ?? 0,
            'age_range' => '18:,25',
            'last_update' => date("F j, Y, g:i a"),
            'current_address' => '',
        ]);
        if ($user) {
            $uid = $user['id'];
            $recId = $user['in_use_recommendation'];
            $rec = Recommendation::find($recId);
            if ($rec) {
                $rec->update([
                    'used_by' => $uid,
                    'date_used' => date("F j, Y, g:i a"),
                ]);
                $response["error"] = FALSE;
                $response["user"] = $user;
                $response["recommendation"] = $rec;
                UserAbout::create([
                    'uid' => $uid,
                    'height_cm' => 180,
                    'work_role' => '',
                    'work_organization' => '',
                    'edu_level' => '',
                    'edu_school' => '',
                    'interests' => '',
                    'fun_question_one' => '',
                    'fun_answer_one' => '',
                    'fun_question_two' => '',
                    'fun_answer_two' => '',
                ]);
                UserMedia::create([
                    'uid' => $uid,
                    'photo_1' => '',
                    'photo_2' => '',
                    'photo_3' => '',
                    'photo_4' => '',
                    'photo_5' => '',
                    'photo_6' => '',
                ]);
                Notification::create(['uid' => $uid]);
                Verified::create([
                    'uid' => $uid,
                ]);
                Premium::create([
                    'uid' => $uid,
                    'city' => $user->city,
                    'country' => $user->country,
                    'recommendations'=>$user->in_use_recommendation,
                ]);
            } else {
                $response["error"] = FALSE;
                $response["user"] = $user;
                $response["recommendation"] = $rec;
            }
        } else {
            $response["error"] = TRUE;
            $response["msg"] = "Error creating user account, please try again.";
        }

        return json_encode($response);
    }


    public function show($id)
    {
        try {
            $user =  AppUser::find($id);
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['user'] = $user;
        } catch (\Exception $e) {
            $response["error"] = TRUE;
            $response["msg"] = "An unknown error occurred, please try again.";
        }
        return json_encode($response);
    }

    public function update(Request $request, $id)
    {
        try {
            $userUpdate = AppUser::find($id);
            $userUpdate->update($request->all());
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['user'] = $userUpdate;
        } catch (\Exception $e) {
            $response["error"] = TRUE;
            $response["user"] = "An unknown error occurred, please try again.";
        }


        return json_encode($response);
    }



    public function updateWithColumnPassed(Request $request)
    {
        try {
            $userUpdate = AppUser::where($request->column, $request->value)->first();
            $userUpdate->update($request->all());
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['user'] = $userUpdate;
        } catch (\Exception $e) {
            $response["error"] = TRUE;
            $response["user"] = "An unknown error occurred, please try again.";
        }


        return json_encode($response);
    }


    public function updateWithFuid(Request $request, $fuid)
    {
        try {
            $userUpdate = AppUser::where('fb_uid', $fuid)->get()->first();
            $userUpdate->update($request->all());
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['user'] = $userUpdate;
        } catch (\Exception $e) {
            $response["error"] = TRUE;
            $response["msg"] = "An unknown error occurred, please try again.";
        }

        return json_encode($response);
    }

    public function destroy($id)
    {
        return AppUser::destroy($id);
    }


    public function getUser(Request $request)
    {
        $request->validate([
            'selector' => 'required',
            'value' => 'required',
        ]);
        $response = array("error" => FALSE);
        $user = AppUser::where($request->selector, $request->value)->get()->first();
        if ($user) {
            $uid = $user['id'];
            $in_use_recommendation = $user['in_use_recommendation'];
            $response["error"] = FALSE;
            $response["user"] = $user;


            //Get user media
            $user_media = UserMedia::where('uid', $uid)->get()->first();
            if (!$user_media) {
                UserMedia::create(['uid' => $uid]);
                $user_media = UserMedia::where('uid', $uid)->get()->first();
            }
            $response["user_media"] = $user_media;

            //Get user about
            $user_about = UserAbout::where('uid', $uid)->get()->first();
            if (!$user_about) {
                UserAbout::create(['uid' => $uid]);
                $user_about = UserAbout::where('uid', $uid)->get()->first();
            }
            $response["user_about"] = $user_about;

            //Get user utils
            $user_utils = UserUtils::where('uid', $uid)->get()->first();
            if (!$user_utils) {
                UserUtils::create(['uid' => $uid]);
                $user_utils = UserUtils::where('uid', $uid)->get()->first();
            }
            $response["user_utils"] = $user_utils;

            //Get user current recommendation
            $recommendation = Recommendation::where('id', $in_use_recommendation)->get()->first();
            $response["recommendation"] = $recommendation;

            //Get user Verified
            $verified = Verified::where('uid', $uid)->get()->first();
            if (!$verified) {
                Verified::create(['uid' => $uid]);
                $verified = Verified::where('uid', $uid)->get()->first();
            }
            $response["verified"] = $verified;

            //Get user Premium
            $premium = Premium::where('uid', $uid)->get()->first();
            if (!$premium) {
                Premium::create([
                    'uid' => $uid,
                    'recommendations' => $recommendation['id'],
                    'country' => $user['country'],
                    'city' => $user['city'],
                ]);
                $premium = Premium::where('uid', $uid)->get()->first();
            }
            $response["premium"] = $premium;


            //Get user Notification
            $notifications = Notification::where('uid', $uid)->get()->first();
            if (!$notifications) {
                Notification::create(['uid' => $uid]);
                $notifications = Notification::where('uid', $uid)->get()->first();
            }
            $response["notifications"] = $notifications;
        } else {
            $response["error"] = TRUE;
            $response["msg"] = "AppUser not found!";
        }

        return json_encode($response);
    }
}
