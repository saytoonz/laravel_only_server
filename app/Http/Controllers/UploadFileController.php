<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\File;

class UploadFileController extends Controller
{
    public function saveFile(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'file'=>'required',
            'dir'=>'required',
            'fileName' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' =>true,
                'msg'=> 'No file is submitted.',
            ]);
        }

        if ($request->file != null) {
            $ext = $request->file('file')->extension() == "m4a" ? "mp3": $request->file('file')->extension();
            $request->file('file')->storeAs('public/user_data/'.$request->dir, $request->fileName . '.' . $ext);
            return response()->json([
                    'error' => false,
                    'msg' =>  '/storage/user_data/'.$request->dir.'/'.$request->fileName . '.' . $ext
                ]);
        }else{
            $return["error"] = TRUE;
            $return["msg"] =  "Error during saving file.";
        }

        return json_encode($return);
    }
//php artisan storage:link config('app.url') .

}
