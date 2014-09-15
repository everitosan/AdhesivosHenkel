<?php

namespace Adhesivos\Managers;

class TelefonosManager extends BaseManager{
	public function getRules()
	{
		$rules=['telefono'=>'required|numeric',
				'celular'=>'numeric',
				'nextel'=>'numeric'
				];
		

		return $rules;
	}
}