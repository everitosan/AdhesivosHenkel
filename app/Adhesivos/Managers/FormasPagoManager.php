<?php

namespace Adhesivos\Managers;

class FormasPagoManager extends BaseManager{

	public function getRules()
	{
		$rules=[
				'nombre'=>'required|unique:FormasPago,nombre'
				];

		return $rules;
	}

}