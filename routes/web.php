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


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::get('/', 'PagesController@home');
Route::get('/барилгын-материал/{id}', 'ProductsController@show');

Route::get('/халаалт', 'CategoriesController@floorheat');
Route::get('/сауна', 'CategoriesController@sauna');
Route::get('/бассейн', 'CategoriesController@bassein');
Route::get('/фантан', 'CategoriesController@fountain');
Route::get('/бусад', 'CategoriesController@other');
Route::get('/бойлер', 'CategoriesController@boiler');
Route::get('/бүгд', 'CategoriesController@all');

Route::get('/contactus', 'PagesController@contactus');
Route::get('/howto', 'PagesController@howto');
Route::get('/about', 'PagesController@about');

