<?php

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

/*Route::get('/', function () {
    return view('welcome');
});
*/

Route::get('/', [App\Http\Controllers\IndexC::class, 'index'])->name('index');
Route::get('/contact', [App\Http\Controllers\IndexC::class, 'contact'])->name('contact');
Route::get('/questionnaires/{serie}', [App\Http\Controllers\QuestionnairesC::class, 'getQuestionnaire'])->name('questionnaires');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
