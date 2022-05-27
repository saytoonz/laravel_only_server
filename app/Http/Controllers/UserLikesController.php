<?php

namespace App\Http\Controllers;

use App\Models\Matches;
use App\Models\Notification;
use App\Models\UserLikes;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class UserLikesController extends Controller
{

    public function index()
    {
        return UserLikes::all();
    }


    public function store(Request $request)
    {


        $validator = Validator::make($request->all(), [
            'from' => 'required',
            'to' => 'required',
            'isliked' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => true,
                'msg' => 'Required parameter missing.',
            ]);
        }

        try {
            $userLike = UserLikes::updateOrCreate(
                [
                    'to' => $request->to,
                    'from' => $request->from,
                ],
                [
                    'to' => $request->to,
                    'from' => $request->from,
                    'isliked' => $request->isliked,
                ]
            );

            $notifs = Notification::where("uid", request('to'))->get()->first();
            if ($notifs && $notifs->mail_new_mach == 1) {
                (new PushNotificationController)->SendPush(request('to'), "like");
            }
            if ($userLike) {
                $userLikedMe = UserLikes::where('from', $request->to)->where('to', $request->from)->first();

                if ($userLikedMe->isliked == 1 && $request->isliked == 1) {
                    $existing1 = Matches::where('user1', $request->to)
                        ->where('user2', $request->from)->first();
                    $existing2 = Matches::where('user2', $request->to)
                        ->where('user1', $request->from)->first();

                    if (is_null($existing1) && is_null($existing2)) {
                        Matches::Create(
                            [
                                'user1' => $request->to,
                                'user2' => $request->from,
                            ]
                        );


                        $notifs = Notification::where("uid", request('to'))->get()->first();
                        if ($notifs && $notifs->mail_new_mach == 1) {
                            (new PushNotificationController)->SendPush(request('to'), "match");
                        }
                    }
                }

                $response["error"] = FALSE;
                $response["msg"] = "done";
                $response['user_my_like'] = $userLike;
                $response['user_liked_me'] = $userLikedMe;
            } else {
                $response["error"] = TRUE;
                $response["msg"] = "An unknown error occurred, please try again.";
            }
        } catch (\Throwable $th) {
            throw $th;
            $response["error"] = TRUE;
            $response["msg"] = "An unknown error occurred, please try again.";
        }

        return json_encode($response);
    }



    public function show($id)
    {
        return UserLikes::find($id);
    }
}
