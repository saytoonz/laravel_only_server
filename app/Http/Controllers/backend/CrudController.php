<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Http\Controllers\PushNotificationController;
use App\Models\AppUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class CrudController extends Controller
{
    public function sendPushToUser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
            'title' => 'required',
            'notification' => 'required',
        ]);

        if ($validator->fails()) {
            $request->session()->flash('error', "Required parameter missing.");
            return redirect()->back();
        }

        $user = AppUser::find($request->user_id);
        if (!$user) {
            $request->session()->flash('error', "Unknown user.");
            return redirect()->back();
        }

        $message = Str::replaceArray('{username}', ['' . $user->first_name . ''], $request->notification);
        $request->notification = $message;

        $this->insertData($request);
        (new PushNotificationController)->triggerPush($user->noti_token, $request->title, $message);

        $request->session()->flash('message', "Notification sent to " . $user->first_name . " successfully");
        return redirect()->back();
    }



    public function sendPushToCountry(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'country' => 'required',
            'title' => 'required',
            'notification' => 'required',
        ]);

        if ($validator->fails()) {
            $request->session()->flash('error-2', "Required parameter missing.");
            return redirect()->back();
        }


        $users = AppUser::where('country', $request->country)->get();
        if (!$users) {
            $request->session()->flash('error-2', "No user found for selected country.");
            return redirect()->back();
        }



        $this->insertData($request);
        foreach ($users as $key => $value) {
            $message = Str::replaceArray('{username}', ['' . $value->first_name . ''], $request->notification);
            (new PushNotificationController)->triggerPush($value->noti_token, $request->title, $message);
        }

        $request->session()->flash('message-2', "Notification sent to all users from " . $request->country . " successfully");
        return redirect()->back();
    }



    public function insertData(Request $request)
    {
        $data = $request->except('_token');
        $tbl = decrypt($data['tbl']);
        unset($data['tbl']);
        $data['created_at'] = date('Y-m-d H:m:s');
        $data['updated_at'] = date('Y-m-d H:m:s');

        if ($request->has('image')) {
            $data['image'] = $this->uploadImage($tbl, $data['image']);
        }

        DB::table($tbl)->insert($data);
        $request->session()->flash('message', "Data inserted successfully");

        return redirect()->back();
    }


    public function updateData(Request $request, $id)
    {
        $data = $request->except('_token');
        $tbl = decrypt($data['tbl']);
        unset($data['tbl']);
        $data['updated_at'] = date('Y-m-d H:m:s');

        if ($request->has('social')) {
            $data['social'] = implode(',', $request->social);
        }

        if ($request->has('categories_id')) {
            $data['categories_id'] = implode(',', $request->categories_id);
        }

        if ($request->has('subcategories_id')) {
            $data['subcategories_id'] = implode(',', $request->subcategories_id);
        }

        if ($request->has('reviewers')) {
            $data['reviewers'] = implode(',', $request->reviewers);
        }

        if ($request->has('permissions')) {
            $data['permissions'] = implode(',', $request->permissions);
        }


        if ($request->has('image')) {
            $data['image'] = $this->uploadImage($tbl, $data['image']);
        }

        if ($request->has('footer_image')) {
            $data['footer_image'] = $this->uploadImage($tbl, $data['footer_image']);
        }

        DB::table($tbl)->where(key($data), reset($data))->update($data);
        $request->session()->flash('message', "Data updated successfully");
        return redirect()->back();
    }

    public function uploadImage($location, $fileName)
    {
        if ($location == "advertisements") {
            $location = "advertisement";
        }
        $name = date('ymdgis') . $fileName->getClientOriginalName();
        $fileName->move(public_path() . '/' . $location, $name);
        return $name;
    }
}
