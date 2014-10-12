<?php
namespace Adhesivos\Repositories;

use Adhesivos\Entities\Venta;

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

}