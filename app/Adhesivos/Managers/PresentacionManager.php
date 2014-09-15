<?php

namespace Adhesivos\Managers;

Class PresentacionManager extends BaseManager{


	public function getRules()
	{
		$rules=['nombre'=>'required|unique:Presentacion,nombre'];
		return $rules;
	}
}