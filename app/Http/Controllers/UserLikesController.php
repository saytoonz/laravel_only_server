<?php

namespace App\Http\Controllers;

use App\Models\UserLikes;
use Illuminate\Http\Request;

class UserLikesController extends Controller
{

    public function index()
    {
        return UserLikes::all();
    }


    public function store(Request $request)
    {
        $validator = \Validator::make($request->all(), [
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
                    'to'=> $request->to,
                    'from'=> $request->from,
                ],
                [
                    'to'=> $request->to,
                    'from'=> $request->from,
                    'isliked'=> $request->isliked,
                ]
            );
            if ($userLike) {
                $userLikedMe = UserLikes::where('from', $request->to)->where('to', $request->from)->first();
                $response["error"] = FALSE;
                $response["msg"] = "done";
                $response['user_my_like'] = $userLike;
                $response['user_liked_me'] = $userLikedMe;
            } else {
                $response["error"] = TRUE;
                $response["msg"] = "An unknown error occurred, please try again.";
            }
        } catch (\Throwable $th) {
            //throw $th;
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
