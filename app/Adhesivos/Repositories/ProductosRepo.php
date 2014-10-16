<?php
namespace Adhesivos\Repositories;

use Adhesivos\Entities\Venta;
use Adhesivos\Entities\PrecioProducto;
use Adhesivos\Entities\PrecioEnvase;

class ProductosRepo extends BaseRepo{

	protected $Reporte=array();

	public function reporte($Reporte)
	{
		$this->Reporte= $Reporte;
		if($this->Reporte['cliente']!="")
		{
			return Venta::where('fecha','>=',$this->Reporte['fechadesde'])->where('fecha','<=',$this->Reporte['fechahasta'])->where('cliente','=',$this->Reporte['cliente'])->get();
		}
		else
		{
			return Venta::where('fecha','>=',$this->Reporte['fechadesde'])->where('fecha','<=',$this->Reporte['fechahasta'])->get();
		}
	}

	public function obten_precioproductos()
	{
		return PrecioProducto::with('product')->get();
	}

	public function obten_preciopresentacion()
	{
		return PrecioEnvase::with('presentacio')->get();
	}
}