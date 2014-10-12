<?php

Route::get('/', ['as'=>'login', 'uses'=>"HomeController@login"]);
Route::get('logout', ['as'=>'logout', 'uses'=>"HomeController@dologout"]);
Route::post('login', ['as'=>'dologin', 'uses'=>"HomeController@dologin"]);
//inicio
Route::get('inicio', ['as'=>'inicio', 'uses'=>"HomeController@inicio"]);

// ---------VENTAS
//Ventas
Route::get('ventas/{action}', ['as'=>'ventas', 'uses'=>"VentasController@ventas"]);
Route::post('ventas', ['as' => 'setventas' , 'uses' => 'VentasController@setventas']);
//compras
Route::get('compras/{action}', ['as'=>'compras', 'uses'=>"VentasController@compras"]);
//clientes
Route::get('clientes/{action}', ['as'=>'clientes', 'uses'=>"VentasController@clientes"]);
Route::post('clientes', ['as'=>'setclientes', 'uses'=>"VentasController@setclientes"]);
//proveedores
Route::get('proveedores/{action}', ['as'=>'proveedores', 'uses'=>"VentasController@proveedores"]);
Route::post('proveedores', ['as'=>'setproveedores', 'uses'=>"VentasController@setproveedores"]);

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
Route::post('reporteProductosVendidos', ['as'=>'getreporteproductos', 'uses'=>"ProductosController@getreporteproductos"]);
//Route::get('ReporteGenerado', ['as'=>'ReporteGenerado', 'uses'=>"ProductosController@ReporteGenerado"]);

// ---------Cobros
//Cobros
Route::get('cobros/{action}', ['as'=>'cobros', 'uses'=>"CobrosController@cobros"]);
Route::post('cobros', ['as'=>'setcobro', 'uses'=>"CobrosController@setcobro"]);
//Formas de Pago
Route::get('formasPago/{action}', ['as'=>'formasPago', 'uses'=>"CobrosController@formasPago"]);
Route::post('formasPago', ['as'=>'setformapago', 'uses'=>"CobrosController@setformapago"]);
//Condiciones de Pago
Route::get('condicionesPago/{action}', ['as'=>'condicionesPago', 'uses'=>"CobrosController@condicionesPago"]);
Route::post('condicionesPago', ['as'=>'setcondicionpago', 'uses'=>"CobrosController@setcondicionpago"]);


// ---------Gastos
//gasto
Route::get('gasto/{action}', ['as'=>'gasto', 'uses'=>"GastosController@gasto"]);
Route::post('gasto', ['as'=>'setgasto', 'uses'=>"GastosController@setgasto"]);
//rubrosgasto
Route::get('rubosgasto/{action}', ['as'=>'rubosGasto', 'uses'=>"GastosController@rubosGasto"]);
Route::post('rubosgasto', ['as'=>'setrubrogasto', 'uses'=>"GastosController@setrubrogasto"]);

// ---------Otros
//otros
Route::get('otros/{action}', ['as'=>'otros', 'uses'=>"OtrosController@otros"]);
Route::post('otros', ['as'=>'setasunto', 'uses'=>"OtrosController@setasunto"]);
Route::post('otros/update_pendiente',['as'=>"update_pendiente", 'uses'=>"OtrosController@updateasunto" ]);
Route::post('otros/get_pendientes',['as'=>"get_pendientes", 'uses'=>"OtrosController@get_asuntos" ]);

Route::get('cobros/nuevo_cobro', ['as'=>'nuevo_cobro', 'uses'=>"HCobrosController@cobros"]);

