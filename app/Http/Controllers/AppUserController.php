<?php

namespace App\Http\Controllers;

use App\Http\Resources\MatchesResource;
use App\Models\Notification;
use App\Models\Premium;
use App\Models\Recommendation;
use App\Models\AppUser;
use App\Models\Matches;
use App\Models\UserAbout;
use App\Models\UserMedia;
use App\Models\Verified;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use App\Models\ChatList;
use App\Models\UserLikes;
use Illuminate\Support\Facades\DB;

use function PHPUnit\Framework\matches;

class AppUserController extends Controller
{
    public function index()
    {
        return UserResource::collection(AppUser::all());
    }


    public function getPotentialUsers($uid)
    {
        $loggedInUser = AppUser::find($uid);

        $likersList =  UserLikes::where('from', $uid)->pluck('to')->toArray();
        $matches1 =  Matches::where('user1', $uid)->pluck('user2')->toArray();
        $matches2 =  Matches::where('user2', $uid)->pluck('user1')->toArray();

        $lookingFor = $loggedInUser->looking_for == "Men" ? "Man" : ($loggedInUser->looking_for == "Women" ? "Woman" : "both");


        return UserResource::collection(
            AppUser::where('id', '!=', $uid)->where('active', 'yes')
                ->whereNotIn('id', $likersList)
                ->whereNotIn('id', $matches1)
                ->whereNotIn('id', $matches2)
                ->inRandomOrder()->paginate(100)
        );
    }

    public function getDislikedPotentialUsers($uid)
    {
        $loggedInUser = AppUser::find($uid);

        $matches1 =  Matches::where('user1', $uid)->pluck('user2')->toArray();
        $matches2 =  Matches::where('user2', $uid)->pluck('user1')->toArray();

        $myLikes =  UserLikes::where('from', $uid)
            ->whereNotIn('to', $matches1)
            ->whereNotIn('to', $matches2)
            ->where('isliked', 0)->pluck('to')->toArray();

        return UserResource::collection(
            AppUser::whereIn('id', $myLikes)
                ->inRandomOrder()->paginate(1)
        );
    }


    public function store(Request $request)
    {


        $response = array("error" => FALSE);

        $request->validate([
            'fb_uid' => 'required',
            'phone' => 'required',
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
            $response["msg"] = "User already exist!";
            return json_encode($response);
        }

        if (AppUser::where('phone', $request->phone)->get()->first()) {
            $response["error"] = TRUE;
            $response["msg"] = "User already exist with this phone number!";
            return json_encode($response);
        }

        if (AppUser::where('email', $request->email)->get()->first() && $request->email != NULL) {
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

            $response["msg"] = "User created successfully";
            $uid = $user['id'];
            $recId = $user['in_use_recommendation'];
            $rec = Recommendation::find($recId);
            if ($rec) {
                $rec->update([
                    'used_by' => $uid,
                    'date_used' => date("F j, Y, g:i a"),
                    'active' => 'used',
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
                    'recommendations' => $user->in_use_recommendation,
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
            $phone = $user['phone'];
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


            //Get user current recommendation
            $recommendations = Recommendation::where('friend_phone', $phone)->where("active", "!=", "del")->limit(5)->get();
            $response["recommendations"] = $recommendations;

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
                    'recommendations' => $user['in_use_recommendation'],
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



    public function userMatches($uid)
    {
        $response = array("error" => FALSE);
        try {
            $matches = Matches::where('user1', $uid)->orwhere('user2', $uid)->orderBy('created_at', 'DESC')->get();

            $data = [];


            foreach ($matches as $key => $value) {
                $userId = $value->user1 != $uid ? $value->user1 : $value->user2;
                $chatList = ChatList::where('owner', $uid)->where('from', $userId)->get()->first();
                if(!$chatList){
                    $data[] = [
                        'match' => $value,
                        'appUser' => UserResource::collection(AppUser::where('id', $userId)->get())->first(),
                    ];
                }

            }

            $response["message"] = "success";
            $response["data"] = $data;
            $response["error"] = false;
        } catch (\Throwable $th) {
            // throw $th;
            $response["error"] = true;
            $response["message"] = "Server error!";
        }
        return json_encode($response);
    }



    public function userLikers($uid)
    {
        $response = array("error" => FALSE);
        try {
            $likers = UserLikes::where('to', $uid)->where('isliked', 1)->orderBy('created_at', 'DESC')->get();

            $data = [];

            foreach ($likers as $key => $value) {
                $liked = UserLikes::where('to', $value->from)->where('from', $uid)->get()->first();
                if ($liked == null) {
                    $data[] = [
                        'like' => $value,
                        'appUser' => UserResource::collection(AppUser::where('id', $value->from)->get())->first(),
                    ];
                }
            }

            $response["message"] = "success";
            $response["data"] = $data;
            $response["error"] = false;
        } catch (\Throwable $th) {
            // throw $th;
            $response["error"] = true;
            $response["message"] = "Server error!";
        }
        return json_encode($response);
    }
}
