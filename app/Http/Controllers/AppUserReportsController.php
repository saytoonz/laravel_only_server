<?php

namespace App\Http\Controllers;

use App\Models\AppUserReport;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AppUserReportsController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'reporter' => 'required',
            'reported' => 'required',
            'report' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => true,
                'msg' => 'Required parameter missing.',
            ]);
        }

        $response = array("error" => FALSE);

        try {
            $report = AppUserReport::create($request->all());
            $response["error"] = FALSE;
            $response["msg"] = "Thanks for your report, we would act upon it immediately!";
            $response['report'] = $report;
        } catch (\Throwable $th) {
            throw $th;
            $response["error"] = TRUE;
            $response["user"] = "An unknown error occurred, please try again.";
        }

        return json_encode($response);
    }
}
