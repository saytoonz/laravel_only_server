<?php

use App\Http\Controllers\backend\AdminController;
use App\Http\Controllers\backend\CrudController;
use App\Http\Controllers\backend\HomeController;
use App\Http\Controllers\MailController;
use Illuminate\Routing\Route as RoutingRoute;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/dashboard',[AdminController::class, "admin"])->middleware(['auth'])->name('dashboard');

Route::get('/reports',[AdminController::class, "reports"])->middleware(['auth'])->name('reports');

Route::get('/newVerification',[AdminController::class, "newVerification"])->middleware(['auth'])->name('verification');
Route::get('/verified',[AdminController::class, "verified"])->middleware(['auth'])->name('verification');
Route::get('/verification-rejected',[AdminController::class, "verificationRejected"])->middleware(['auth'])->name('verification');

Route::get('send-push', [AdminController::class, "sendPush"])->middleware(['auth'])->name('notifications');

Route::get('/new-users', [AdminController::class, 'newUsers'])->middleware(['auth'])->name("users");
Route::get('/all-users', [AdminController::class, 'allUsers'])->middleware(['auth'])->name("users");
Route::get('/blocked-users', [AdminController::class, 'blockedUsers'])->middleware(['auth'])->name("users");


Route::get('/new-matches', [AdminController::class, 'newMatches'])->middleware(['auth'])->name("matches");
Route::get('/all-matches', [AdminController::class, 'allMatches'])->middleware(['auth'])->name("matches");


Route::get('/new-likes', [AdminController::class, 'newLikes'])->middleware(['auth'])->name("likes");
Route::get('/all-likes', [AdminController::class, 'allLikes'])->middleware(['auth'])->name("likes");


Route::get('/verify-user/{id}', [AdminController::class, 'verifyPage'])->middleware(['auth'])->name("view");
Route::get('/view-user/{id}', [AdminController::class, 'viewUser'])->middleware(['auth'])->name("view");
Route::get('/user-matches/{id}', [AdminController::class, 'userMatches'])->middleware(['auth'])->name("view");

Route::get('update-api/{tbl}/{id}/{field}/{value}', [AdminController::class, 'updateWithApi'])->middleware(['auth'])->name("update");

Route::get('logout', [HomeController::class, 'logout']);





//!Send push notifications
Route::get("push-template", [AdminController::class, 'pushTemplate'])->middleware(['auth'])->name("push");
Route::post('send-push-user', [CrudController::class, "sendPushToUser"])->middleware(['auth'])->name("push");
Route::post('country-push-user', [CrudController::class, "sendPushToCountry"])->middleware(['auth'])->name("push");


//! Email notifications
Route::get('sendbasicemail', [MailController::class, "basic_email"]);
Route::get('sendhtmlemail',[MailController::class, "html_email"]);
Route::get('sendattachmentemail', [MailController::class, "attachment_email"]);


require __DIR__.'/auth.php';
