<?php

Route::get('/', ['as'=>'login', 'uses'=>"HomeController@login"]);
//inicio
Route::get('inicio', ['as'=>'inicio', 'uses'=>"HomeController@inicio"]);

// ---------VENTAS
//Ventas
Route::get('{cat}/{action}', ['as'=>'ventas', 'uses'=>"HomeController@index"]);
//compras
Route::get('{cat}/{action}', ['as'=>'compras', 'uses'=>"HomeController@index"]);
//clientes
Route::get('{cat}/{action}', ['as'=>'clientes', 'uses'=>"HomeController@index"]);
//proveedores
Route::get('{cat}/{action}', ['as'=>'proveedores', 'uses'=>"HomeController@index"]);

// ---------Productos
Route::get('{cat}/{action}', ['as'=>'productos', 'uses'=>"HomeController@index"]);

