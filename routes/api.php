<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FormController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\AppspecificationController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get("get/applicaton/{id}",[AppspecificationController::class, 'getApplications']);
Route::get("get/oneApplication/{id}/{type}",[AppspecificationController::class, 'getThisApp']);
Route::get("data",[FormController::class, 'index']);

//route to get data a partir du base (table appspecification)
Route::get("/GetDetailform2/{id}",[AppspecificationController::class, 'GetDetailform2']);

Route::post("insert",[AppspecificationController::class, 'insert']);
Route::post("complet/applicaton/{id}",[AppspecificationController::class, 'customApp']);
Route::post("calc/price",[AppspecificationController::class, 'calcPrice']);
Route::post("/application/update/{id}",[AppspecificationController::class, 'updateApplication']);
Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], 
function ($router) {
    Route::post("client/insert",[ClientController::class, 'insertClient']);
    Route::post('client/login', [ClientController::class, 'clientLogin']);
    Route::post('logout', [ClientController::class, 'logout']);
    Route::get('me', [ClientController::class, 'me']);
});
Route::post('/client/update/{id}', [ClientController::class, 'updateClient']);
Route::post('/client/password/update/{id}', [ClientController::class, 'changePassword']);
Route::post('/client/password/forgot', [ClientController::class, 'forgotPassword']);
Route::post('/client/password/reset', [ClientController::class, 'resetPassword']);

