<?php

namespace Adhesivos\Managers;

class PrecioEnvaseManager extends BaseManager{
	public function getRules()
	{
		$rules=[
				'presentacion'=>'required',
				'fecha'=>'required',
				'divisa'=>'required',
				'preciocompra'=>'required',
				'precioventa'=>'required'
				];
		

		return $rules;
	}
}