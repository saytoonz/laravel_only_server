<?php

namespace App\Http\Controllers;

use App\Models\Premium;
use Illuminate\Http\Request;

class PremiumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Premium::all();
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
        $premium = Premium::where('uid', $uid)->updateOrCreate($request->all());
        if ($premium) {
            $response["error"] = FALSE;
            $response["msg"] = "done";
            $response['premium'] = $premium;
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
        return Premium::where('uid', $uid)->get()->first();
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
        try {
            $premium = Premium::where('uid', $uid)->get()->first();
            $premium->update($request->all());
            $response["error"] = False;
            $response["msg"] = "done";
            $response['premium'] = $premium;
        } catch (\Exception $e) {
            $response["error"] = TRUE;
            $response["msg"] = "An unknown error occurred, please try again.";
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
        return Premium::destroy($id);
    }
}
