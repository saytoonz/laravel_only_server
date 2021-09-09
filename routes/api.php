<?php

use App\Http\Controllers\NewLoginController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\PremiumController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RecommendationController;
use App\Http\Controllers\UserAboutController;
use App\Http\Controllers\UserMediaController;
use App\Http\Controllers\UserUtilsController;
use App\Http\Controllers\VerifiedController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//User Routes
Route::get('users', [UserController::class, 'index']);
Route::post('users', [UserController::class, 'store']);
Route::get('users/{id}', [UserController::class, 'show']);
Route::put('users/{id}', [UserController::class, 'update']);
Route::delete('users/{id}', [UserController::class, 'destroy']);

//User About Routes
Route::get('user-about', [UserAboutController::class, 'index']);
Route::post('user-about/{uid}', [UserAboutController::class, 'store']);
Route::get('user-about/{uid}', [UserAboutController::class, 'show']);
Route::put('user-about/{uid}', [UserAboutController::class, 'update']);
Route::delete('user-about/{id}', [UserAboutController::class, 'destroy']);


//User Notifications Routes
Route::get('user-notif', [NotificationController::class, 'index']);
Route::post('user-notif/{uid}', [NotificationController::class, 'store']);
Route::get('user-notif/{uid}', [NotificationController::class, 'show']);
Route::put('user-notif/{uid}', [NotificationController::class, 'update']);
Route::delete('user-notif/{id}', [NotificationController::class, 'destroy']);

//User Premium Routes
Route::get('user-premium', [PremiumController::class, 'index']);
Route::post('user-premium/{uid}', [PremiumController::class, 'store']);
Route::get('user-premium/{uid}', [PremiumController::class, 'show']);
Route::put('user-premium/{uid}', [PremiumController::class, 'update']);
Route::delete('user-premium/{id}', [PremiumController::class, 'destroy']);

//User User Utils Routes
Route::get('user-utils', [UserUtilsController::class, 'index']);
Route::post('user-utils/{uid}', [UserUtilsController::class, 'store']);
Route::get('user-utils/{uid}', [UserUtilsController::class, 'show']);
Route::put('user-utils/{uid}', [UserUtilsController::class, 'update']);
Route::delete('user-utils/{id}', [UserUtilsController::class, 'destroy']);

//User User Verified Routes
Route::get('verified', [VerifiedController::class, 'index']);
Route::post('verified/{uid}', [VerifiedController::class, 'store']);
Route::get('verified/{uid}', [VerifiedController::class, 'show']);
Route::put('verified/{uid}', [VerifiedController::class, 'update']);
Route::delete('verified/{id}', [VerifiedController::class, 'destroy']);

//User User Media Routes
Route::get('user-media', [UserMediaController::class, 'index']);
Route::post('user-media/{uid}', [UserMediaController::class, 'store']);
Route::get('user-media/{uid}', [UserMediaController::class, 'show']);
Route::put('user-media/{uid}', [UserMediaController::class, 'update']);
Route::delete('user-media/{id}', [UserMediaController::class, 'destroy']);

//Recommendation Routes
Route::get('recs', [RecommendationController::class, 'index']);
Route::post('recs', [RecommendationController::class, 'store']);
Route::get('recs/{id}', [RecommendationController::class, 'show']);
Route::put('recs/{id}', [RecommendationController::class, 'update']);
Route::delete('recs/{id}', [RecommendationController::class, 'destroy']);
Route::post('rejRec', [RecommendationController::class, 'rejectARecommendation']);
Route::post('getRecBySMSCode', [RecommendationController::class, 'getRecBySMSCode']);

//New Login route
Route::post('newLogin', [NewLoginController::class, 'newLogin']);


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
