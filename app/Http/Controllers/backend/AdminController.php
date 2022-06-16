<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Http\Controllers\PushNotificationController;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    //! Dashboard
    public function admin()
    {
        $totalAppUsers = DB::table('app_users')->count();
        $appUsersThisMonth = DB::table('app_users')->whereMonth('created_at', date('m'))->count();

        $matches = DB::table('matches')->count();
        $userLikes = DB::table('user_likes')->where("isliked", 1)->count();

        $countries = DB::table('app_users')->select(DB::raw('DISTINCT country, COUNT(*) AS counts'))->groupBy('country')->orderBy('counts', 'desc')->get();

        $usersList = [];
        $matchesList = [];
        $likesList = [];
        for ($month = 1; $month <= 12; $month++) {
            $date = \Carbon\Carbon::create(date('Y'), $month);
            $date_end = $date->copy()->endOfMonth();

            $a = DB::table('app_users')
           -> where('created_at', '>=', $date)
           ->where('created_at', '<=', $date_end)->count();
            array_push($usersList, $a);

            $b = DB::table('matches')
           -> where('created_at', '>=', $date)
           ->where('created_at', '<=', $date_end)->count();
           array_push($matchesList, $b);

           $c = DB::table('user_likes')
           -> where('created_at', '>=', $date)
           ->where('created_at', '<=', $date_end)->count();
           array_push($likesList, $c);
        }



        $verified = DB::table('verified')->where("status", "Pending")->where("image", "!=" , NULL)->orderByDesc('id')->limit(5)->get();
        foreach ($verified as  $ver) {
            $ver->theUser = DB::table('app_users')->where('id', $ver->uid)->first();
            $ver->userMedia = DB::table('user_media')->where('uid', $ver->uid)->first();
        }

        $verifiedSize = DB::table('verified')->where("status", "Verified")->count();

        return view(
            'backend.dashboard',
            [
                'totalAppUsers' => $totalAppUsers,
                'appUsersThisMonth' => $appUsersThisMonth,
                "matches" => $matches,
                "userLikes" => $userLikes,

                "usersList"=>$usersList,
                "matchesList"=>$matchesList,
                "likesList"=>$likesList,

                "countries"=> $countries,
                "verified"=>$verified,
                "verifiedSize"=>$verifiedSize,
            ]
            );
    }





    //!  Verifications
    public function newVerification()
    {
        $verified = DB::table('verified')->where("status", "Pending")->where("image", "!=" , NULL)->orderByDesc('id')->paginate(20);
        foreach ($verified as  $ver) {
            $ver->theUser = DB::table('app_users')->where('id', $ver->uid)->first();
            $ver->userMedia = DB::table('user_media')->where('uid', $ver->uid)->first();
        }

        return view(
            'backend.verification.new-verification',
            [
                "verified"=>$verified,
            ]
            );
    }
    public function verified()
    {
        $verified = DB::table('verified')->where("status", "Verified")->orderByDesc('id')->paginate(20);
        foreach ($verified as  $ver) {
            $ver->theUser = DB::table('app_users')->where('id', $ver->uid)->first();
            $ver->userMedia = DB::table('user_media')->where('uid', $ver->uid)->first();
        }

        return view(
            'backend.verification.verified',
            [
                "verified"=>$verified,
            ]
            );
    }

    public function verificationRejected()
    {
        $verified = DB::table('verified')->where("status", "Rejected")->orderByDesc('id')->paginate(20);
        foreach ($verified as  $ver) {
            $ver->theUser = DB::table('app_users')->where('id', $ver->uid)->first();
            $ver->userMedia = DB::table('user_media')->where('uid', $ver->uid)->first();
        }

        return view(
            'backend.verification.rejected',
            [
                "verified"=>$verified,
            ]
            );
    }

    //! Users
    public function newUsers()
    {
        $users = DB::table('app_users')->where("active", "yes")->whereMonth('created_at', date('m'))->orderByDesc('id')->paginate(20);
        foreach ($users as  $ver) {
            $ver->userMedia = DB::table('user_media')->where('uid', $ver->id)->first();
        }

        return view(
            'backend.users.new-user',
            [
                "users"=>$users,
            ]
            );
    }
     public function allUsers()
    {
        $users = DB::table('app_users')->where("active", "yes")->orderByDesc('id')->paginate(20);
        foreach ($users as  $ver) {
            $ver->userMedia = DB::table('user_media')->where('uid', $ver->id)->first();
        }

        return view(
            'backend.users.all-user',
            [
                "users"=>$users,
            ]
            );
    }
    public function blockedUsers()
    {
        $users = DB::table('app_users')->where("active", "!=", "yes")->orderByDesc('id')->paginate(20);
        foreach ($users as  $ver) {
            $ver->userMedia = DB::table('user_media')->where('uid', $ver->id)->first();
        }

        return view(
            'backend.users.blocked-user',
            [
                "users"=>$users,
            ]
            );
    }


    //! Matches
    public function newMatches()
    {
        $matches = DB::table('matches')->whereMonth('created_at', date('m'))->orderByDesc('id')->paginate(20);
        foreach ($matches as  $rep) {
            $rep->user1 = DB::table('app_users')->where('id', $rep->user1)->first();
            $rep->user2 = DB::table('app_users')->where('id', $rep->user2)->first();
        }

        return view(
            'backend.matches.new-matches',
            [
                "matches"=>$matches,
            ]
        );
    }
    public function allMatches()
    {
        $matches = DB::table('matches')->orderByDesc('id')->paginate(20);
        foreach ($matches as  $rep) {
            $rep->user1 = DB::table('app_users')->where('id', $rep->user1)->first();
            $rep->user2 = DB::table('app_users')->where('id', $rep->user2)->first();
        }

        return view(
            'backend.matches.all-matches',
            [
                "matches"=>$matches,
            ]
        );
    }




 //! Likes
 public function newLikes()
 {
     $likes = DB::table('user_likes')->whereMonth('created_at', date('m'))->orderByDesc('id')->paginate(20);
     foreach ($likes as  $rep) {
         $rep->user1 = DB::table('app_users')->where('id', $rep->from)->first();
         $rep->user2 = DB::table('app_users')->where('id', $rep->to)->first();
     }

     return view(
         'backend.likes.new-likes',
         [
             "likes"=>$likes,
         ]
     );
 }

  public function allLikes()
  {
      $likes = DB::table('user_likes')->orderByDesc('id')->paginate(20);
      foreach ($likes as  $rep) {
          $rep->user1 = DB::table('app_users')->where('id', $rep->from)->first();
          $rep->user2 = DB::table('app_users')->where('id', $rep->to)->first();
      }

      return view(
          'backend.likes.all-likes',
          [
              "likes"=>$likes,
          ]
      );
  }





    //! Reports
    public function reports()
    {
        $reports = DB::table('app_user_reports')->where("active", "yes")->orderByDesc('id')->paginate(20);
        foreach ($reports as  $rep) {
            $rep->reporter = DB::table('app_users')->where('id', $rep->reporter)->first();
            $rep->reported = DB::table('app_users')->where('id', $rep->reported)->first();
        }

        return view(
            'backend.reports',
            [
                "reports"=>$reports,
            ]
        );
    }



    //! verify user page
    public function verifyPage($id)
    {
        $user = DB::table('app_users')->where('id', $id)->first();
        $user->userMedia = DB::table('user_media')->where('uid', $id)->first();

        $verification = DB::table('verified')->where('uid', $id)->first();
       return view(
        'backend.verify',
        [
            "user"=>$user,
            "verification"=>$verification,
        ]
       );
    }

    //! View user
    public function viewUser($id){
        $user = DB::table('app_users')->where('id', $id)->first();
        $userAbout = DB::table('user_about')->where('uid', $id)->first();
        $userMedia = DB::table('user_media')->where('uid', $id)->first();
        $userRecs = DB::table('recommendations')->where('used_by', $id)->get();
        $verification = DB::table('verified')->where('uid', $id)->first();
        return view(
            "backend.user",
            [
                "user"=>$user,
                "userMedia"=>$userMedia,
                "userRecs"=>$userRecs,
                "verification"=>$verification,
                "userAbout"=>$userAbout,

            ]
        );
    }

    //!
    public function userMatches($uid)
    {
        $user = DB::table('app_users')->where('id', $uid)->first();
        $matches = DB::table('matches')->orWhere("user1",$uid)->orWhere('user2', $uid)->orderByDesc('id')->paginate(20);

        foreach ($matches as  $rep) {
            $rep->user1 = DB::table('app_users')->where('id', $rep->user1)->first();
            $rep->user2 = DB::table('app_users')->where('id', $rep->user2)->first();
        }

        return view(
            'backend.user-matches',
            [
                "user"=>$user,
                "matches"=>$matches,
            ]
        );
    }




    public function updateWithApi($tbl, $id, $field,  $value)
    {
        try {
            DB::table($tbl)->where('id', $id)->update([$field => $value]);
            return $id;
        } catch (\Throwable $th) {
            //throw $th;
            return 0;
        }
    }


    public function sendPush()
    {
        $countries = DB::table('app_users')->select(DB::raw('DISTINCT country, COUNT(*) AS counts'))->groupBy('country')->orderBy('counts', 'desc')->get();
        $users = DB::table('app_users')->get();

        return view(
            'backend.notification.send-push',
            [
                "countries" => $countries,
                "users" => $users
            ]
        );
    }


    public function pushTemplate()
    {
        return view('backend.notification.push-templates',[
        'users' => []
        ]);
    }

    public function sendEmail()
    {
        $countries = DB::table('app_users')->select(DB::raw('DISTINCT country, COUNT(*) AS counts'))->groupBy('country')->orderBy('counts', 'desc')->get();
        $users = DB::table('app_users')->get();

        return view(
            'backend.notification.send-email',
            [
                "countries" => $countries,
                "users" => $users
            ]
        );
    }


}
