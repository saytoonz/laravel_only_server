<?php

namespace App\Http\Controllers;

use App\Models\Notification;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Notification::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $uid)
    {

        $response = array("error" => FALSE);

        $request->validate([
            'uid',
            'push_new_mach',
            'push_messages',
            'push_friend_recording',
            'push_only_news',
            'mail_new_mach',
            'mail_messages',
            'mail_friend_recording',
            'mail_only_news',
        ]);
        $userNotif = Notification::where('uid', $uid)->updateOrCreate($request->all());
        if ($userNotif) {
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['notifications'] = $userNotif;
        } else {
            $response["error"] = TRUE;
            $response["msg"] = "An unknown error occurred, please try again.";
        }

        return json_encode($response);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($uid)
    {
        return Notification::where('uid',$uid)->get()->first();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $uid)
    {
        $userNotif = Notification::where('uid',$uid)->get()->first();
        $userNotif->update($request->all());
        return $userNotif;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
