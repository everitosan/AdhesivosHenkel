<?php

namespace Adhesivos\Managers;

class RobrosGastoManager extends BaseManager{

	public function getRules()
	{
		$rules=[
				'nombre'=>'required|unique:RubrosGasto,nombre',
				'descripcion'=>'required'
				];

		return $rules;
	}
}