<?php

namespace App\Http\Controllers;

use App\Models\AppUser;
use App\Models\Recommendation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

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

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $response = array("error" => FALSE);

        $request->validate([
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

        if (AppUser::where('phone', $request->friend_phone)->get()->first()) {
            $response["error"] = TRUE;
            $response["msg"] = "Sorry, this user is already active on  ONLY!.";
            return json_encode($response);
        }

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
                'sms_code' => $sms_code,
            ]);
            $response["msg"] = "Unknown error occurred while adding recommendation...";
        }

        $response["data"] = $dbResponse;


        //Send Sms here....
        if ($dbResponse) {
            $smsMessage = "You are a trusted friend $request->friend_name!

Your friend $request->recommender_fname $request->recommender_sname has recommended you to join the app ONLY!, where only users that have been recommended by friends are allowed to join. That way we get the best community of users! Or as we like to say - only good people. Kindly follow the link below to join.

Kindly register with the code: $sms_code

App Store: https://testflight.apple.com/join/YX7oAjyZ
Google Play: N/A";



            $response["error"] = FALSE;
            $response["msg"] = "Recommendation created successfully.";
            $response["smsResp"] = $this->sendSMS($request->friend_phone,  $smsMessage);
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
        $response = array("error" => FALSE);

        $request->validate([
            'smscode' => 'required',
            'phone' => 'required',
        ]);

        $recommended = Recommendation::where('sms_code', $request->smscode)
            ->where('friend_phone', $request->phone)
            ->where('active', 'yes')->get()->first();
        if ($recommended != null) {

            $smsMessage = "Oh no!

Your friend $recommended->friend_name did not approve of your recommendation on ONLY! You may discussed with him/her what he/she was not comfortable with so you can create a new profile for her again, if you want to.

Thank you,

The ONLY! Team";

            $last_update =
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

        $apiURL = "https://apiv2.mycsms.com";
        $postInput = [
            'apiKey' => 'cSMS76b8512f69953562-d7c386f5bdb710ee',
            'phone' => [$phone],
            'sender' => 'ONLY',
            'message' => $message,
        ];

        $headers = [];
        $resp = Http::withHeaders($headers)->post($apiURL, $postInput);
        // $statusCode = $response->status();
        $responseBody = json_decode($resp->getBody(), true);
        return $responseBody;
    }
}
