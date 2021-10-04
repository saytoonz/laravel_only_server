<?php

namespace App\Http\Controllers;

use App\Models\UserMedia;
use Illuminate\Http\Request;

class UserMediaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return UserMedia::all();
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
            'photo_1' => 'required',
            'photo_2' => 'required',
            'photo_3' => 'required',
            'photo_4' => 'required',
            'photo_5' => 'required',
            'photo_6' => 'required',
        ]);
        $userMedia = UserMedia::where('uid', $uid)->updateOrCreate($request->all());
        if ($userMedia) {
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['user_media'] = $userMedia;
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
        return UserMedia::where('uid',$uid)->get()->first();
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
        $response = array("error" => FALSE);

        $userMedia = UserMedia::where('uid',$uid)->get()->first();
        $userMedia->update($request->all());
        return $userMedia;
        if($userMedia != null){
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['user_media'] = $userMedia;
        }else{
            $response["error"] = TRUE;
            $response["msg"] = "An error occurred, please try again.";
        }
        return json_encode($response);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return UserMedia::destroy($id);
    }
}
