<?php

namespace App\Http\Controllers;

use App\Models\UserUtils;
use Illuminate\Http\Request;

class UserUtilsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return UserUtils::all();
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
            'uid' => 'required',
            'premium_active' => 'required',
            'super_likes' => 'required',
            'incognito_mode' => 'required',
            'recommendations' => 'required',
            'country' => 'required',
            'city' => 'required',
        ]);
        $userUtils = UserUtils::where('uid', $uid)->updateOrCreate($request->all());
        if ($userUtils) {
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['user_utils'] = $userUtils;
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
        return UserUtils::where('uid',$uid)->get()->first();
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
        $userAbout = UserUtils::where('uid',$uid)->get()->first();
        $userAbout->update($request->all());
        return $userAbout;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return UserUtils::destroy($id);
    }
}
