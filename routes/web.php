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
/*----------index------------------------ */
Route::get('/index','IndexController@index');
Route::get('/', 'IndexController@index');
//Route::post('/envoyer','IndexContoller@au_se_cours');
Route::resource('envoyer', 'IndexController',
                 ['expect' => ['au_se_cours']]);

/*-------------vente---------------------*/
//Route::get('/vente','VenteController@vente');
/*------------- Donnation**--------------*/
Route::get('/donate','DonateController@donate');
/*----------------News------------------- */
Route::get('/news','NewsController@news');
/*----------------contact-----------------*/
Route::get('/contact','ContactController@contact');

/*-----------pour les voyager----------- */
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
/*------------au_se_cours-------------- */
Route::get('/au_se_cours','Au_se_coursController@au_se_cours');
/*------------authentifcation----------*/
Auth::routes();

Route::resource('vente', 'VenteController',
                 ['only' => ['index']]);


//Route::get('/home', 'HomeController@index')->name('home');

Route::get('vente/{id}/details','DetailsController@detail');

