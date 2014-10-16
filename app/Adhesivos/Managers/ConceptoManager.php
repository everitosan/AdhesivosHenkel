<?php

namespace Adhesivos\Managers;

class ConceptoManager extends BaseManager{
	public function getRules()
	{
		$rules=[
				'producto'		=>'required',
				'cantidad'		=>'required',
				'descuento'		=>'required',
				'noenvases'		=>'required',
				'facturapor'	=>'required',
				'preciounitario'=>'required',
				];
		

		return $rules;
	}
}