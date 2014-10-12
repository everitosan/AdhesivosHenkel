<?php

namespace Adhesivos\Managers;

class CondicionPagoManager extends BaseManager{

	public function getRules()
	{
		$rules=[
				'nombre'	 =>'required|unique:CondicionPago,nombre',
				'diascredito'=>'required'
				];

		return $rules;
	}

}