<?php

use App\Http\Controllers\backend\AdminController;
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

Route::get('/new-users', [AdminController::class, 'newUsers'])->middleware(['auth'])->name("users");
Route::get('/all-users', [AdminController::class, 'allUsers'])->middleware(['auth'])->name("users");
Route::get('/blocked-users', [AdminController::class, 'blockedUsers'])->middleware(['auth'])->name("users");


Route::get('/new-matches', [AdminController::class, 'newMatches'])->middleware(['auth'])->name("matches");
Route::get('/all-matches', [AdminController::class, 'allMatches'])->middleware(['auth'])->name("matches");


Route::get('/new-likes', [AdminController::class, 'newLikes'])->middleware(['auth'])->name("likes");
Route::get('/all-likes', [AdminController::class, 'allLikes'])->middleware(['auth'])->name("likes");

require __DIR__.'/auth.php';
