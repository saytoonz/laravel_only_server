<?php

namespace App\Http\Controllers;

use App\Models\UserAbout;
use Illuminate\Http\Request;

class UserAboutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      return  UserAbout::all();
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
            'uid'=>'required',
            'height_cm'=>'required',
            'work_role'=>'required',
            'work_organization'=>'required',
            'edu_level'=>'required',
            'edu_school'=>'required',
            'interests'=>'required',
            'fun_question_one'=>'required',
            'fun_answer_one'=>'required',
            'fun_question_two'=>'required',
            'fun_answer_two'=>'required',
        ]);
        $userAbout = UserAbout::where('uid', $uid)->updateOrCreate($request->all());
        if($userAbout){
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['user_about'] = $userAbout;
        }else{
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
        $userAbout = UserAbout::where('uid', $uid)->get()->first();
        return $userAbout;
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
        $userAbout = UserAbout::where('uid',$uid)->get()->first();
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
        UserAbout::destroy($id);
    }
}
