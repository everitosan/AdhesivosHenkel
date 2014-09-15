<?php

Route::get('/', ['as'=>'login', 'uses'=>"HomeController@login"]);
//inicio
Route::get('inicio', ['as'=>'inicio', 'uses'=>"HomeController@inicio"]);

// ---------VENTAS
//Ventas
Route::get('ventas/{action}', ['as'=>'ventas', 'uses'=>"HomeController@ventas"]);
Route::post('ventas', ['as' => 'setventas' , 'uses' => 'HomeController@setventas']);
//compras
Route::get('compras/{action}', ['as'=>'compras', 'uses'=>"HomeController@compras"]);
//clientes
Route::get('clientes/{action}', ['as'=>'clientes', 'uses'=>"HomeController@clientes"]);
Route::post('clientes', ['as'=>'setclientes', 'uses'=>"HomeController@setclientes"]);
//proveedores
Route::get('proveedores/{action}', ['as'=>'proveedores', 'uses'=>"HomeController@proveedores"]);
Route::post('proveedores', ['as'=>'setproveedores', 'uses'=>"HomeController@setproveedores"]);

// ---------Productos
//Productos
Route::get('productos/{action}', ['as'=>'productos', 'uses'=>"ProductosController@productos"]);
Route::post('productos', ['as' => 'setproducto' , 'uses' => 'ProductosController@setproducto']);
//Presentaciones
Route::get('presentaciones/{action}', ['as'=>'presentaciones', 'uses'=>"ProductosController@presentaciones"]);
Route::post('presentaciones', ['as' => 'setpresentaciones' , 'uses' => 'ProductosController@setpresentaciones']);
//Precios de productos
Route::get('preciosProductos/{action}', ['as'=>'preciosProductos', 'uses'=>"ProductosController@preciosProductos"]);
Route::post('preciosProductos', ['as' => 'setprecioproducto' , 'uses' => 'ProductosController@setprecioproducto']);
//Precios de envases
Route::get('preciosEnvases/{action}', ['as'=>'preciosEnvases', 'uses'=>"ProductosController@preciosEnvases"]);
Route::post('preciosEnvases', ['as' => 'setprecioenvase' , 'uses' => 'ProductosController@setprecioenvase']);
//Cortes de inventario
Route::get('cortesInventario/{action}', ['as'=>'cortesInventario', 'uses'=>"ProductosController@cortesInventario"]);
//Reporte de inventario
Route::get('reporteInventario/{action}', ['as'=>'reporteInventario', 'uses'=>"ProductosController@reporteInventario"]);
//Reporte de productos vendidos
Route::get('reporteProductosVendidos/{action}', ['as'=>'reporteProductosVendidos', 'uses'=>"ProductosController@reporteProductosVendidos"]);

// ---------Cobros
//Cobros
Route::get('cobros/{action}', ['as'=>'cobros', 'uses'=>"CobrosController@cobros"]);
//Formas de Pago
Route::get('formasPago/{action}', ['as'=>'formasPago', 'uses'=>"CobrosController@formasPago"]);
//Condiciones de Pago
Route::get('condicionesPago/{action}', ['as'=>'condicionesPago', 'uses'=>"CobrosController@condicionesPago"]);


// ---------Gastos
//gasto
Route::get('gasto/{action}', ['as'=>'gasto', 'uses'=>"GastosController@gasto"]);
//rubrosgasto
Route::get('rubosgasto/{action}', ['as'=>'rubosGasto', 'uses'=>"GastosController@rubosGasto"]);

// ---------Otros
//otros
Route::get('otros/{action}', ['as'=>'otros', 'uses'=>"OtrosController@otros"]);


Route::get('cobros/nuevo_cobro', ['as'=>'nuevo_cobro', 'uses'=>"HCobrosController@cobros"]);

