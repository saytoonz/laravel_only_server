<?php

namespace App\Http\Controllers;

use App\Models\AppUser;
use App\Models\Notification;
use App\Models\Recommendation;
use App\Models\SystemApi;
use App\Models\SystemUrl;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;

class RecommendationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function index()
    {
        return Recommendation::all();
    }


    public function requestRecommendation(Request $request)
    {
        $response = array("error" => FALSE);

        $validator = Validator::make($request->all(), [
            'uid' => 'required',
            'first_name' => 'required',
            'last_name' => 'required',
            'phone' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => true,
                'msg' => 'Required parameters missing...',
            ]);
        }

        //Send Sms here....
        try {

            $user = AppUser::find($request->uid);


            if ($user) {

                $appleUrl = SystemUrl::find(1);
                $googleUrl = SystemUrl::find(2);
                $oneLinkUrl = SystemUrl::find(3);

                $pronoun = "him";
                $pronoun2 = "his";
                if ($user->gender == "Woman") {
                    $pronoun = "her";
                    $pronoun2 = "her";
                }
                $smsMessage = "Oh Yes! $request->first_name.

Your friend $user->first_name $user->last_name has invited you to recommend $pronoun on ONLY!

Download the app from the below link and select «Recommend» a friend to recommend $pronoun using $pronoun2 contact number $user->phone.

App Store: " . $appleUrl->url . "
Google Play: " . $googleUrl->url . "

Thank you! The Only Team";

                $response["error"] = FALSE;
                $response["msg"] = "Request sent to $request->first_name successfully.";
                $response["smsResp"] = $this->sendSMS($request->phone,  $smsMessage);
            } else {
                $response["error"] = TRUE;
                $response["msg"] = "Sorry, we could not identify your account.";
            }
        } catch (\Throwable $th) {
            $response["error"] = TRUE;
            //Use message from the top
        }
        return json_encode($response);
    }


    public function store(Request $request)
    {
        $response = array("error" => FALSE);

        $validator = Validator::make($request->all(), [
            'recommender_fname' => 'required',
            'recommender_sname' => 'required',
            'recommender_phone' => 'required',
            'recommender_email' => 'required',
            'friend_name' => 'required',
            'friend_phone' => 'required',
            'how_you_know_friend' => 'required',
            'why_great' => 'required',
            'conversation_open' => 'required',
            'recording_path' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => true,
                'msg' => 'Required parameters missing...',
            ]);
        }

        // if (AppUser::where('phone', $request->friend_phone)->get()->first()) {
        //     $response["error"] = TRUE;
        //     $response["msg"] = "Sorry, this user is already active on  ONLY!.";
        //     return json_encode($response);
        // }

        if ($request->recommender_phone == $request->friend_phone) {
            $response["error"] = TRUE;
            $response["msg"] = "Sorry, you cannot recommend yourself, check phone numbers and try again.";
            return json_encode($response);
        }

        $sms_code = $this->generateRandomString(6);
        $dbResponse
            = Recommendation::where('friend_phone', $request->friend_phone)
            ->where('recommender_phone', $request->recommender_phone)
            ->get()
            ->first();
        if ($dbResponse) {
            $sms_code = $dbResponse->sms_code;
            $dbResponse->update($request->all());
            $dbResponse->update([
                'active' => 'yes',
            ]);
            $response["msg"] = "Unknown error occurred while updating your previous recommendation...";
        } else {
            $dbResponse =  Recommendation::create([
                'recommender_fname' => $request->recommender_fname,
                'recommender_sname' => $request->recommender_sname,
                'recommender_phone' => $request->recommender_phone,
                'recommender_email' => $request->recommender_email,
                'friend_name' => $request->friend_name,
                'friend_phone' => $request->friend_phone,
                'how_you_know_friend' => $request->how_you_know_friend,
                'why_great' => $request->why_great,
                'conversation_open' => $request->conversation_open,
                'recording_path' => $request->recording_path,
                'recording_duration' => $request->recording_duration,
                'sms_code' => $sms_code,
            ]);
            $response["msg"] = "Unknown error occurred while adding recommendation...";
        }

        $response["data"] = $dbResponse;


        //Send Sms here....
        if ($dbResponse) {
            $appleUrl = SystemUrl::find(1);
            $googleUrl = SystemUrl::find(2);
            $oneLinkUrl = SystemUrl::find(3);

            $smsMessage = "You are a trusted friend $request->friend_name!

Your friend $request->recommender_fname $request->recommender_sname has recommended you to join the new and innovative dating app ONLY!, where only users that have been recommended by friends are allowed to join. That way we get the best community of users! Or as we like to say - only good people. Kindly follow the link below to join.

Kindly register with this SMS code: $sms_code

App Store: " . $appleUrl->url . "
Google Play: " . $googleUrl->url . "";



            $response["error"] = FALSE;
            $response["msg"] = "Recommendation created successfully.";
            $response["smsResp"] = $this->sendSMS($request->friend_phone,  $smsMessage);
            $user = AppUser::where("phone", $request->friend_phone)->get()->first();

            if ($user) {
                $notifs = Notification::where("uid", $user->id)->get()->first();
                if ($notifs && $notifs->push_friend_recording == 1) {
                    (new PushNotificationController)->SendPush($user->id, "recording");
                }
            }
        } else {
            $response["error"] = TRUE;
            //Use message from the top
        }


        return json_encode($response);
    }


    public function show($id)
    {

        $response = array("error" => FALSE);

        $rec =  Recommendation::find($id);
        if ($rec) {
            $response["error"] = FALSE;
            $response["msg"] = "Success";
            $response["recommendation"] = $rec;
        } else {
            $response["error"] = TRUE;
            $response["msg"] = "Couldn't find recommendation.";
        }
        return json_encode($response);
    }



    public function update(Request $request, $id)
    {
        $rec = Recommendation::find($id);
        $rec->update($request->all());
        $rec->update([
            'active' => 'yes',
        ]);
        return $rec;
    }



    public function acceptARecommendation(Request $request)
    {
        $response = array("error" => FALSE);

        $validator = Validator::make($request->all(), [
            'smscode' => 'required',
            'phone' => 'required',
            'uid' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => true,
                'msg' => 'Required parameters missing...',
            ]);
        }

        try {
            $recommended = Recommendation::where('sms_code', $request->smscode)
                ->where('friend_phone', $request->phone)
                ->where('active', 'yes')->get()->first();
            if ($recommended != null) {
                $recommended->used_by = $request->uid;
                $recommended->active = "used";
                $recommended->save();

                $response["error"] = FALSE;
                $response["msg"] = "done";
                $response["recommendation"] = $recommended;
            } else {
                $response["error"] = TRUE;
                $response["msg"] = "Sms code has been revoked or does not exist!";
            }
        } catch (\Throwable $th) {
            $response["error"] = TRUE;
            $response["msg"] = "Sorry an error occurred, please try again.";
        }
        return json_encode($response);
    }



    public function deleteAcceptedRec(Request $request)
    {

        $response = array("error" => FALSE);

        $validator = Validator::make($request->all(), [
            'smscode' => 'required',
            'phone' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => true,
                'msg' => 'Required parameters missing...',
            ]);
        }

        try {
            $recommended = Recommendation::where('sms_code', $request->smscode)
                ->where('friend_phone', $request->phone)
                ->where('active', 'used')->get()->first();
            if ($recommended != null) {
                $recommended->active = "del";
                $recommended->save();

                $response["error"] = FALSE;
                $response["msg"] = "done";
                $response["recommendation"] = $recommended;
            } else {
                $response["error"] = TRUE;
                $response["msg"] = "Sms code has been revoked or does not exist!";
            }
        } catch (\Throwable $th) {
            $response["error"] = TRUE;
            $response["msg"] = "Sorry an error occurred, please try again.";
        }
        return json_encode($response);
    }

    public function generateRandomString($length = 10)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Recommendation::destroy($id);
    }


    public function rejectARecommendation(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'smscode' => 'required',
            'phone' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => true,
                'msg' => 'Required parameters missing...',
            ]);
        }

        $response = array("error" => FALSE);
        $recommended = Recommendation::where('sms_code', $request->smscode)
            ->where('friend_phone', $request->phone)
            ->where('active', 'yes')->get()->first();
        if ($recommended != null) {

            $smsMessage = "Oh no!

Your friend $recommended->friend_name did not approve of your recommendation on ONLY! You may discussed with him/her what he/she was not comfortable with so you can create a new profile for her again, if you want to.

Thank you,

The ONLY! Team";


            $recommended->update([
                'active' => 'rej',
                'date_used' => date("F j, Y, g:i a"),
            ]);
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response["smsResp"] = $this->sendSMS($recommended->recommender_phone,  $smsMessage);
        } else {
            $response["error"] = TRUE;
            $response["msg"] = "Sms code has been revoked or does not exist!";
        }

        return json_encode($response);
    }


    public function getRecBySMSCode(Request $request)
    {
        $response = array("error" => FALSE);
        $request->validate([
            'smscode' => 'required',
            'phone' => 'required',
        ]);

        $recommended = Recommendation::where('sms_code', $request->smscode)
            ->where('friend_phone', $request->phone)
            ->where('active', 'yes')->get()->first();
        if ($recommended != null) {
            $response["error"] = FALSE;
            $response["msg"] = "recommended";
            $response["recommended"] = $recommended;
        } else {
            $response["error"] = TRUE;
            $response["msg"] = "Sms code has been revoked or does not exist!";
        }

        return json_encode($response);
    }


    public function sendSMS($phone, $message)
    {
        // $mycsmsAPI = SystemApi::find(2);
        // $apiURL = "https://apiv2.mycsms.com";
        // $postInput = [
        //     'apiKey' => $mycsmsAPI->api,
        //     'phone' => [$phone],
        //     'sender' => 'ONLY',
        //     'message' => $message,
        // ];

        // $headers = [];
        // $resp = Http::withHeaders($headers)->post($apiURL, $postInput);
        // // $statusCode = $response->status();
        // $responseBody = json_decode($resp->getBody(), true);


        $arkaselAPI = SystemApi::find(3);
        $apiURL = "https://sms.arkesel.com/api/v2/sms/send";
        $postInput = [
            'recipients' => [$phone],
            'sender' => 'ONLY',
            'message' => $message,
        ];

        $headers = ['api-key' => $arkaselAPI->api];

        $resp = Http::withHeaders($headers)->post($apiURL, $postInput);
        // $statusCode = $response->status();
        $responseBody = json_decode($resp->getBody(), true);
        return $responseBody;
    }
}
