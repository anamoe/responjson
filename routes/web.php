<?php

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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/petugas', function(){
	return view("petugas");
})->middleware('auth:petugas');

Route::get('/masyarakat', function(){
	return view("masyarakat");
})->middleware('auth:masyarakat');

Route::get('/masuk' ,function(){
return view("masuk");
})->middleware('guest');

Route::post('/kirimdata', 'login@masuk')->name('masuk');
Route::get('/keluar', 'login@keluar');
// Route::get('/anggota', 'penukaranuser@anggota');
// Route::get('/anggota_hadiah', 'penukaranuser@anggota_hadiah');


// // Route::get('/upload', 'UploadController@upload');
// Route::post('/upload/proses', 'UploadController@proses_upload')->name('upload_proses');