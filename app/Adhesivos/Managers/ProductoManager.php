<?php

namespace Adhesivos\Managers;

Class ProductoManager extends BaseManager{


	public function getRules()
	{
		$rules=[
				'nombre'=>'required',
				'clave'=>'required',
				'descripcion'=>'required',
				'medida'=>'required',
				'presentacion'=>'required'
				];
		return $rules;
	}
}