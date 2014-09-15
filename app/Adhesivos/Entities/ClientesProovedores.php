<?php namespace Adhesivos\Entities;

class ClientesProovedores extends \Eloquent {
	protected $fillable = ['rfc','razonsocial','calle','noexterior','nointerior','colonia','delegacionmunicipio','ciudad','estado','cp','referenciasubicacion','contacto'];
	protected $table="ClientesProovedores";
}