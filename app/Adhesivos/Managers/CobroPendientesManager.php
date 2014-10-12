<?php

namespace Adhesivos\Managers;

class CobroPendientesManager extends BaseManager{

	public function getRules()
	{
		$rules=[
				'tipo'=>'required',
				'folio'=>'required',
				'monto'=>'required',
				'fechapago'=>'required',
				'noreferenciacheque'=>'required'
				];

		return $rules;
	}

}