<?php

namespace App\Http\Controllers;

use App\Models\Chat;
use App\Models\ChatList;
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

                ChatList::updateOrCreate(
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
            }
            return $chat;
        } catch (Exception $e) {
            return response()->json([
                'error' => true,
                'msg' => 'An error occurred...',
            ]);
        }
    }
}
