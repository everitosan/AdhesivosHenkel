<?php
namespace Adhesivos\Managers;

class ClientesProovedoresManager extends BaseManager{
	public function getRules()
	{
		$rules=['rfc'=>'required|unique:ClientesProovedores,rfc',
				'razonsocial'=>'required|unique:ClientesProovedores,razonsocial',
				'calle'=>'required',
				'noexterior'=>'required',
				'nointerior'=>'required',
				'colonia'=>'required',
				'delegacionmunicipio'=>'required',
				'ciudad'=>'required',
				'estado'=>'required',
				'cp'=>'required',
				'referenciasubicacion'=>'required'
				];
		

		return $rules;
	}
}