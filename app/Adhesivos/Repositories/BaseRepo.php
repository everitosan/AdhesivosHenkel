<?php

namespace Adhesivos\Repositories;

use Adhesivos\Entities\ClientesProovedores;
use Adhesivos\Entities\FormasPago;
use Adhesivos\Entities\CondicionPago;
use Adhesivos\Entities\Usuarios;
use Adhesivos\Entities\Producto;
use Adhesivos\Entities\PrecioProducto;
use Adhesivos\Entities\Presentacion;
use Adhesivos\Entities\RobrosGasto;

abstract class BaseRepo{
	

	public function obten_clientes()
	{
		return ClientesProovedores::where('tipo','=','Cliente')->get();
	}
	public function obten_FormaPago()
	{
		return FormasPago::all();
	}
	public function obten_CondicionPago()
	{
		return CondicionPago::all();
	}
	public function obten_vendedor()
	{
		return Usuarios::all();
	}	

	public function obten_productos()
	{
		return Producto::all();
	}	
	public function obten_presentaciones()
	{
		return Presentacion::all();
	}
	public function obten_proveedores()
	{
		return ClientesProovedores::where('tipo','=','Proveedor')->get();
	}

	public function obten_Rubos()
	{
		return RobrosGasto::all();
	}

	public function obten_producto($id)
	{
		return Producto::with(['presentacio'])->find($id);
	}

	public function obten_precio($id)
	{
		return PrecioProducto::where('producto','=',$id)->get();
	}
}