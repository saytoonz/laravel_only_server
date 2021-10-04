<?php

namespace App\Http\Controllers;

use App\Models\Verified;
use Illuminate\Http\Request;

class VerifiedController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Verified::all();
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
        'image'=>'required',
        'last_updated'=>'required',
        'date_verified'=>'required',
        ]);

        $verified = Verified::where('uid', $uid)->updateOrCreate($request->all());
        if ($verified) {
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['verified'] = $verified;
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
        return Verified::where('uid',$uid)->get()->first();

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

        try{
        $verified = Verified::where('uid',$uid)->get()->first();
        $verified->update($request->all());
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['verified'] = $verified;
        }catch(\Exception $e){
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
        return Verified::destroy($id);
    }
}
