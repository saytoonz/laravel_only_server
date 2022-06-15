<?php

namespace App\Http\Controllers;

use App\Models\AppUser;
use App\Models\Notification;
use App\Models\NotificationTemplate;
use App\Models\SystemApi;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PushNotificationController extends Controller
{
    //


    public function SendPush($id, $type)
    {
        $user =  AppUser::find($id);
        $notiMessage = NotificationTemplate::where("type", $type)->get()->first();

        if($notiMessage == null ||
        $notiMessage->message == "" ||
        $notiMessage->message == null) return;

        $message = Str::replaceArray('{username}', [''.$user->first_name.''], $notiMessage->message);
        $serverToke = SystemApi::find(1);

        $curl = curl_init();
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://fcm.googleapis.com/fcm/send',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => '{
                    "to" : "'.$user->noti_token.'",
                    "notification" : {
                        "body" : "'.$message.'",
                        "title": "'.$notiMessage->title.'",
                        "sound": "default"
                    },
                    "data" : {
                        "page": "'.$notiMessage->page.'"
                    },
                    "priority": "high"
                }',
                CURLOPT_HTTPHEADER => array(
                    'Content-Type: application/json',
                    'Authorization: Bearer '.$serverToke->api.''
                ),
            ),
        );

        $response = curl_exec($curl);

        curl_close($curl);
        // echo $response;
    }

    public function triggerPush($userToken, $title, $message)
    {
        $serverToke = SystemApi::find(1);
        $curl = curl_init();
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://fcm.googleapis.com/fcm/send',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => '{
                    "to" : "'.$userToken.'",
                    "notification" : {
                        "body" : "'.$message.'",
                        "title": "'.$title.'",
                        "sound": "default"
                    },
                    "priority": "high"
                }',
                CURLOPT_HTTPHEADER => array(
                    'Content-Type: application/json',
                    'Authorization: Bearer '.$serverToke->api.''
                ),
            ),
        );

        $response = curl_exec($curl);

        curl_close($curl);
        echo $response;
    }
}
