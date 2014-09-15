<?php

namespace Adhesivos\Managers;

class PrecioProductoManager extends BaseManager{
	public function getRules()
	{
		$rules=[
				'producto'=>'required',
				'fecha'=>'required',
				'divisa'=>'required',
				'preciocompra'=>'required',
				'precioventa'=>'required'
				];
		

		return $rules;
	}
}