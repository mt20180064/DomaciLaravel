<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::get('/stadions/{id}', [\App\Http\Controllers\StadionController::class, 'show']);
//Route::get('/stadions',[\App\Http\Controllers\StadionController::class, 'index']);

Route::resource('stadions', \App\Http\Controllers\StadionController::class);
Route::resource('sponzors', \App\Http\Controllers\SponzorController::class);
Route::post('/register',[\App\Http\Controllers\API\AuthController::class, 'register']);
Route::post('/login',[\App\Http\Controllers\API\AuthController::class, 'login']);
Route::group(['middleware'=>['auth:sanctum']],function(){
    Route::get('/profile', function(Request $request){
        return auth()->user();
    });
    Route::resource('stadion', \App\Http\Controllers\StadionController::class)->only(['update', 'store', 'destroy']);
});
Route::resource('pokrivenosts', \App\Http\Controllers\PokrivenostController::class);

    

