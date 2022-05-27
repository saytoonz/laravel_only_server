<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\Models\AppUser;
use App\Models\Chat;
use App\Models\ChatList;
use App\Models\Matches;
use App\Models\Notification;
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
            $request['status'] = "SENT";
            $request['created_at'] = NULL;
            $request['updated_at'] = NULL;
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
                        'status' => "SENT",

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
                        'status' => "SENT",
                    ],
                );
                $chatListItem->unread = $chatListItem->unread + 1;
                $chatListItem->save();

                $notifs = Notification::where("uid", request('to'))->get()->first();
                if ($notifs && $notifs->push_messages == 1) {
                    (new PushNotificationController)->SendPush(request('to'), "chat");
                }
            }
            return response()->json([
                'error' => false,
                'msg' => 'success',
                'data' => $chat,
            ]);
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

    public function getChats($uid, $withId, $quantity)
    {
        $response = array("error" => FALSE);
        try {
            $chats = Chat::where(function ($query) use ($uid, $withId) {
                $query->where('from', $uid);
                $query->orwhere('from', $withId);
            })->where(function ($query) use ($uid, $withId) {
                $query->where('to', $uid);
                $query->orwhere('to', $withId);
            })->orderBy('id', 'DESC')
                ->paginate($quantity);

            $list = ChatList::where('owner', $uid)->where('from', $withId)->orwhere('to', $withId)->get()->first();
            if ($list) {
                $list->unread = 0;
                $list->save();
            }

            for ($i = 0; $i < count($chats); $i++) {
                $chat = $chats[$i];
                if ($chat->status != "SEEN" && $chat->from != $uid) {
                    $chat->status = "SEEN";
                    $chat->save();
                }
            }

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



    public function getNewChats($uid, $withId, $lastId)
    {
        $response = array("error" => FALSE);
        try {
            $chats = Chat::where('id', '>', $lastId)->where(function ($query) use ($uid, $withId) {
                $query->where('from', $uid);
                $query->orwhere('from', $withId);
            })->where(function ($query) use ($uid, $withId) {
                $query->where('to', $uid);
                $query->orwhere('to', $withId);
            })->orderBy('id', 'DESC')
                ->paginate(100);

            $list = ChatList::where('owner', $uid)->where('from', $withId)->orwhere('to', $withId)->get()->first();
            if ($list) {
                $list->unread = 0;
                $list->save();
            }


            for ($i = 0; $i < count($chats); $i++) {
                $chat = $chats[$i];
                if ($chat->status != "SEEN" && $chat->from != $uid) {
                    $chat->status = "SEEN";
                    $chat->save();
                }
            }

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
