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
Route::get('viewventa/{id}', ['as' => 'viewventa' , 'uses' => 'VentasController@viewventa']);
Route::put('ventas/{id}', ['as' => 'updateventa' , 'uses' => 'VentasController@updateventa']);
Route::post('ventas/obtenProducto', ['as' => 'obtenProducto' , 'uses' => 'VentasController@obtenProducto']);

//compras
Route::get('compras/{action}', ['as'=>'compras', 'uses'=>"VentasController@compras"]);
Route::post('compras', ['as' => 'setcompra' , 'uses' => 'VentasController@setcompras']);
Route::get('viewcliente/{id}', ['as' => 'viewcliente' , 'uses' => 'VentasController@viewcliente']);
Route::put('cliente/{id}', ['as' => 'updatecliente' , 'uses' => 'VentasController@updatecliente']);
//clientes
Route::get('clientes/{action}', ['as'=>'clientes', 'uses'=>"VentasController@clientes"]);
Route::post('clientes', ['as'=>'setclientes', 'uses'=>"VentasController@setclientes"]);
Route::get('viewcompra/{id}', ['as' => 'viewcompra' , 'uses' => 'VentasController@viewcompra']);
Route::put('compras/{id}', ['as' => 'updatecompra' , 'uses' => 'VentasController@updatecompra']);
//proveedores
Route::get('proveedores/{action}', ['as'=>'proveedores', 'uses'=>"VentasController@proveedores"]);
Route::post('proveedores', ['as'=>'setproveedores', 'uses'=>"VentasController@setproveedores"]);
Route::get('viewproveedor/{id}', ['as' => 'viewproveedor' , 'uses' => 'VentasController@viewproveedor']);
Route::put('proveedores/{id}', ['as' => 'updateproveedor' , 'uses' => 'VentasController@updateproveedor']);

// ---------Productos
//Productos
Route::get('productos/{action}', ['as'=>'productos', 'uses'=>"ProductosController@productos"]);
Route::post('productos', ['as' => 'setproducto' , 'uses' => 'ProductosController@setproducto']);
Route::get('viewproducto/{id}', ['as' => 'viewproducto' , 'uses' => 'ProductosController@viewproducto']);
Route::put('productos/{id}', ['as' => 'updateproducto' , 'uses' => 'ProductosController@updateproducto']);
//Presentaciones
Route::get('presentaciones/{action}', ['as'=>'presentaciones', 'uses'=>"ProductosController@presentaciones"]);
Route::post('presentaciones', ['as' => 'setpresentaciones' , 'uses' => 'ProductosController@setpresentaciones']);
Route::get('viewpresentacion/{id}', ['as' => 'viewpresentacion' , 'uses' => 'ProductosController@viewpresentacion']);
Route::put('presentaciones/{id}', ['as' => 'updatepresentacion' , 'uses' => 'ProductosController@updatepresentacion']);
//Precios de productos
Route::get('preciosProductos/{action}', ['as'=>'preciosProductos', 'uses'=>"ProductosController@preciosProductos"]);
Route::post('preciosProductos', ['as' => 'setprecioproducto' , 'uses' => 'ProductosController@setprecioproducto']);
Route::get('viewprecioproducto/{id}', ['as' => 'viewprecioproducto' , 'uses' => 'ProductosController@viewprecioproducto']);
Route::put('precioproducto/{id}', ['as' => 'updateprecioproducto' , 'uses' => 'ProductosController@updateprecioproducto']);
//Precios de envases
Route::get('preciosEnvases/{action}', ['as'=>'preciosEnvases', 'uses'=>"ProductosController@preciosEnvases"]);
Route::post('preciosEnvases', ['as' => 'setprecioenvase' , 'uses' => 'ProductosController@setprecioenvase']);
Route::get('viewprecioenvase/{id}', ['as' => 'viewpreciopresentacion' , 'uses' => 'ProductosController@viewprecioenvase']);
Route::put('precioenvase/{id}', ['as' => 'updatepreciopresentacion' , 'uses' => 'ProductosController@updateprecioenvase']);
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
Route::get('viewcobro/{id}', ['as' => 'viewcobro' , 'uses' => 'CobrosController@viewcobro']);
Route::put('cobro/{id}', ['as' => 'updatecobro' , 'uses' => 'CobrosController@updatecobro']);
//Formas de Pago
Route::get('formasPago/{action}', ['as'=>'formasPago', 'uses'=>"CobrosController@formasPago"]);
Route::post('formasPago', ['as'=>'setformapago', 'uses'=>"CobrosController@setformapago"]);
Route::get('viewformapago/{id}', ['as' => 'viewformapago' , 'uses' => 'CobrosController@viewformapago']);
Route::put('formapago/{id}', ['as' => 'updateformapago' , 'uses' => 'CobrosController@updateformapago']);
//Condiciones de Pago
Route::get('condicionesPago/{action}', ['as'=>'condicionesPago', 'uses'=>"CobrosController@condicionesPago"]);
Route::post('condicionesPago', ['as'=>'setcondicionpago', 'uses'=>"CobrosController@setcondicionpago"]);
Route::get('viewcondicionpago/{id}', ['as' => 'viewcondicionpago' , 'uses' => 'CobrosController@viewcondicionpago']);
Route::put('condicionpago/{id}', ['as' => 'updatecondicionpago' , 'uses' => 'CobrosController@updatecondicionpago']);

// ---------Gastos
//gasto
Route::get('gasto/{action}', ['as'=>'gasto', 'uses'=>"GastosController@gasto"]);
Route::post('gasto', ['as'=>'setgasto', 'uses'=>"GastosController@setgasto"]);
Route::get('viewgasto/{id}', ['as' => 'viewgasto' , 'uses' => 'ProductosController@viewgasto']);
Route::put('gasto/{id}', ['as' => 'updategasto' , 'uses' => 'ProductosController@updategasto']);
//rubrosgasto
Route::get('rubosgasto/{action}', ['as'=>'rubosGasto', 'uses'=>"GastosController@rubosGasto"]);
Route::post('rubosgasto', ['as'=>'setrubrogasto', 'uses'=>"GastosController@setrubrogasto"]);
Route::get('viewrubrogasto/{id}', ['as' => 'viewrubrogasto' , 'uses' => 'GastosController@viewrubrogasto']);
Route::put('rubrogasto/{id}', ['as' => 'updaterubrogasto' , 'uses' => 'GastosController@updaterubrogasto']);

// ---------Otros
//otros
Route::get('otros/{action}', ['as'=>'otros', 'uses'=>"OtrosController@otros"]);
Route::post('otros', ['as'=>'setasunto', 'uses'=>"OtrosController@setasunto"]);
Route::post('otros/update_pendiente',['as'=>"update_pendiente", 'uses'=>"OtrosController@updateasunto" ]);
Route::post('otros/get_pendientes',['as'=>"get_pendientes", 'uses'=>"OtrosController@get_asuntos" ]);

Route::get('cobros/nuevo_cobro', ['as'=>'nuevo_cobro', 'uses'=>"HCobrosController@cobros"]);

