<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', ['as'=>'login', 'uses'=>"HomeController@login"]);
//inicio
Route::get('inicio', ['as'=>'inicio', 'uses'=>"HomeController@inicio"]);
//Ventas
Route::get('{cat}/{action}', ['as'=>'ventas', 'uses'=>"HomeController@index"]);
//compras
Route::get('{cat}/{action}', ['as'=>'compras', 'uses'=>"HomeController@index"]);
//clientes
Route::get('{cat}/{action}', ['as'=>'clientes', 'uses'=>"HomeController@index"]);
//proveedores
Route::get('{cat}/{action}', ['as'=>'proveedores', 'uses'=>"HomeController@index"]);


