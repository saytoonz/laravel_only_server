<?php

namespace App\Http\Controllers;

use App\Models\Recommendation;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return User::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $response = array("error" => FALSE);

        $request->validate([
            'fb_uid' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'first_name' => 'required',
            'last_name' => 'required',
            'date_of_birth' => 'required',
            'city' => 'required',
            'country' => 'required',
            'gender' => 'required',
            'looking_for' => 'required',
        ]);


        if (User::where('fb_uid', $request->fb_uid)->get()->first()) {
            $response["error"] = TRUE;
            $response["msg"] = "User already exist!";
            return json_encode($response);
        }


        if (User::where('phone', $request->phone)->get()->first()) {
            $response["error"] = TRUE;
            $response["msg"] = "User already exist with this phone number!";
            return json_encode($response);
        }

        if (User::where('email', $request->email)->get()->first()) {
            $response["error"] = TRUE;
            $response["msg"] = "Email has already been!";
            return json_encode($response);
        }



        $user =  User::create([
            'fb_uid' => $request->fb_uid,
            'phone' => $request->phone,
            'email' => $request->email,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'date_of_birth' => $request->date_of_birth,
            'city' => $request->city,
            'country' => $request->country,
            'gender' => $request->gender,
            'looking_for' => $request->looking_for,
            'in_use_recommendation' => $request->in_use_recommendation ?? 0,
            'age_range' => '18:,25',
            'last_update' => date("F j, Y, g:i a"),
            'current_address' => '',
        ]);
        if ($user) {
            $uid = $user['id'];
            $recId = $user['in_use_recommendation'];
            $rec = Recommendation::find($recId);
            if ($rec) {
                $rec->update([
                    'used_by' => $uid,
                    'date_used' => date("F j, Y, g:i a"),
                ]);
                $response["error"] = FALSE;
                $response["user"] = $user;
                $response["recommendation"] = $rec;
            } else {
                $response["error"] = FALSE;
                $response["user"] = $user;
                $response["recommendation"] = $rec;
            }
        } else {
            $response["error"] = TRUE;
            $response["msg"] = "Error creating user account, please try again.";
        }

        return json_encode($response);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $response = array("error" => FALSE);

        $user =  User::find($id);
        if ($user) {
            $response["error"] = FALSE;
            $response["msg"] = "Success";
            $response["user"] = $user;
        } else {
            $response["error"] = TRUE;
            $response["msg"] = "Couldn't find user.";
        }
        return json_encode($response);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->update($request->all());
        return $user;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return User::destroy($id);
    }


}
