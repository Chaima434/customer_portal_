<?php

use App\Http\Controllers\FormController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;
//use TCG\Voyager\Facades\Voyager;

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

Route::view('/mcom/{any}', 'dashboard');
Route::view('/mcom', 'welcome'); 
Route::view('/mcom/form/{idClient}/{idApp}', 'create_app');
Route::view('/mcom/application/details/{idApp}', 'create_app');
Route::view('/mcom/completer/{idApp}', 'custom_app');
Route::view('/mcom/GetDetailsForm2/{idApp}', 'welcome');
// Route::view('/sign-up', 'sign_up');
// Route::view('/sign-in', 'sign_in');
// Route::view('/dashboard-client', 'DashboardClient');
// Route::view('/profil', 'profil');
// Route::view('/mes-application', 'clientApplication');
// Route::view('/reset-password', 'reset-password');
// Route::view('/forgot-password', 'forgot-password');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
