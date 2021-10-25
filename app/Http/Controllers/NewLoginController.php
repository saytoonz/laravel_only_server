<?php

namespace App\Http\Controllers;

use App\Models\AppUser;
use App\Models\Recommendation;
use App\Models\User;
use Illuminate\Http\Request;

class NewLoginController extends Controller
{
     public function newLogin(Request $request)
    {
        $response = array("error" => FALSE);
        try{
        $user = AppUser::where('fb_uid', $request->fuid)->get()->first();
        if($user){
            //Check if user has set up his/her account
            $response["error"] = FALSE;
            $response["msg"] = "user";
            $response["user"]=$user;

        }else{
            $recommended = Recommendation::where('friend_phone', $request->phone)->get()->first();
            if($recommended){
                $response["recommended"] = $recommended;
                $response["error"] = FALSE;
              $response["msg"] = "recommended";
            }else{
                $response["error"] = FALSE;
                $response["loginPage"] = TRUE;
              $response["msg"] =  "Sorry, you need recommendation to join ONLY! let a friend recommend you";// "unrecommended";
            }
        }

    }catch(\Exception $e){

        $response["error"] = TRUE;
        $response["msg"] = "An unknown error occurred, please try again.";
    }
        return json_encode($response);
    }
}
