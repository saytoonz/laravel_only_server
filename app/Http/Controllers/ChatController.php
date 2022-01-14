<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\Models\AppUser;
use App\Models\Chat;
use App\Models\ChatList;
use App\Models\Matches;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ChatController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'to' => 'required',
            'from' => 'required',
            'message' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => true,
                'msg' => 'Missing params',
            ]);
        }
        try {
            $chat =  Chat::create($request->all());
            if ($chat) {
                ChatList::updateOrCreate(
                    [
                        'from' =>  request('from'),
                        'to' => request('to'),
                    ],
                    [
                        'owner' => request('from'),
                        'to' =>  request('to'),
                        'from' => request('from'),
                        'message' => request('message'),
                        'type' => request('type'),
                        'status' => request('status'),
                    ],
                );

                $chatListItem = ChatList::updateOrCreate(
                    [
                        'to' =>  request('from'),
                        'from' => request('to'),
                    ],
                    [
                        'owner' => request('to'),
                        'to' =>  request('from'),
                        'from' => request('to'),
                        'message' => request('message'),
                        'type' => request('type'),
                        'status' => request('status'),
                    ],
                );
                $chatListItem->unread = $chatListItem->unread + 1;
                $chatListItem->save();
            }
            return $chat;
        } catch (Exception $e) {
            return response()->json([
                'error' => true,
                'msg' => 'An error occurred...',
            ]);
        }
    }

    public function getChatList($uid)
    {

        $response = array("error" => FALSE);
        try {
            $list = ChatList::where('owner', $uid)->orderBy('updated_at', 'DESC')->get();

            $data = [];

            foreach ($list as $key => $value) {
                $userId = $value->from != $uid ? $value->from : $value->to;

                $match1 =  Matches::where('user1', $uid)->where('user2', $userId)->get()->first();
                $match2 =  Matches::where('user1', $userId)->where('user2', $uid)->get()->first();

                $data[] = [
                    'listItem' => $value,
                    'match' => $match1 ?? $match2,
                    'appUser' => UserResource::collection(AppUser::where('id', $userId)->get())->first(),
                ];
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

    public function getChats($uid, $withId)
    {
        $response = array("error" => FALSE);
        try {
            $chats = Chat::where('from', $uid)->orwhere('from', $withId)
                ->where('to', $uid)->orwhere('to', $withId)->orderBy('created_at', 'DESC')
                ->paginate(2);

            $response["message"] = "success";
            $response["data"] = $chats;
            $response["error"] = false;
        } catch (\Throwable $th) {
            // throw $th;
            $response["error"] = true;
            $response["message"] = "Server error!";
        }
        return json_encode($response);
    }
}
