<?php

namespace Adhesivos\Managers;

class PendientesManager extends BaseManager{
	
	public function getRules()
	{
		$rules=[
					'fecha_limite'=>'required',
					'descripcion'=>'required',
					'estado'=>'required',
					'respuesta'=>'required',
					'responsable'=>'required',
				];

		return $rules;
	}

}