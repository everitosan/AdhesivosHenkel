<?php
namespace Adhesivos\Repositories;

use Adhesivos\Entities\Venta;
use Adhesivos\Entities\Compra;

class VentasRepo extends BaseRepo{

	function obten_por_id($id)
	{
		return Venta::with(['client','concept'])->find($id);
	}

	function obten_ventas()
	{
		return Venta::with('client')->get();
	}

	function obten_compras()
	{
		return Compra::with(['proveedo','concept'])->get();
	}

	function obten_folio()
	{
		$folio 	= Venta::orderBy('id', 'DESC')->first();
		$folio 	= $folio->folio+1;
		return $folio;
	}
}