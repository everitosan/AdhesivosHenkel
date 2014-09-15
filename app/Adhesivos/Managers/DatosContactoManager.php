<?php

namespace Adhesivos\Managers;

class DatosContactoManager extends baseManager{

	public function getRules()
	{
		$rules=['nombre'=>'required',
				'apppaterno'=>'required',
				'appmaterno'=>'required',
				'genero'=>'required',
				'email'=>'required'
				];
		
		return $rules;
	}

}