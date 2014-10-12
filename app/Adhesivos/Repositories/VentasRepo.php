<?php
namespace Adhesivos\Repositories;

use Adhesivos\Entities\Venta;

class VentasRepo extends BaseRepo{

	function obten_ventas()
	{
		return Venta::with('client')->get();
	}

}