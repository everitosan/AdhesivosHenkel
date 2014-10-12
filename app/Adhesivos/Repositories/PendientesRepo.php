<?php

namespace Adhesivos\Repositories;
use Adhesivos\Entities\Pendientes;

Class PendientesRepo extends BaseRepo{
	public function obten_pendientes()
	{
		return Pendientes::with('responsabl')->where('estado','=','Activo')->get();
	}


	public function updatePendiente($id, $val)
	{
		$pendient= Pendientes::find($id);
		$pendient->estado=$val;
		$pendient->save();
		return "true";
	}

	public function getPendientes($key, $value)
	{
		//$pendientes= Pendientes::where($key,'=',$value);
		$pendientes= Pendientes::with('responsabl')->where($key,'=',$value)->get();
		return $pendientes;
	}
}