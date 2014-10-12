<?php

namespace Adhesivos\Managers;

class GastoManager extends BaseManager{
	public function getRules()
	{
		$rules=[
				'monto'		=> 	'required',
				'fecha'		=> 	'required',
				'rubro'		=> 	'required',
				'rfc'		=> 	'required',
				'concepto'	=>	'required',
				'usuario'	=>	'required'
				];

		return $rules;
	}
}