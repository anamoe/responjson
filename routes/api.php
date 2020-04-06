<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/upload', 'UploadController@upload');
Route::post('/proses', 'UploadController@proses_upload')->name('upload_proses');

Route::get('/lihatkomentar', 'komentar@lihatkomentar');
Route::post('/buatkomentar', 'komentar@buatkomentar');
Route::get('/lihat', 'monitoringcontroller@lihat');

Route::get('/lihatp', 'penukaranuser@poinku');
Route::get('/lihath', 'penukaranuser@hadiahku');
Route::get('/lihatm', 'penukaranuser@masyarakatku');

