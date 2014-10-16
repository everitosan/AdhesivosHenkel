<?php namespace Adhesivos\Entities;

class Compra extends \Eloquent {
	protected $fillable = [];
	protected $table	= "Compra";

	public function proveedo()
	{
		return $this->hasOne('Adhesivos\Entities\ClientesProovedores','id','proveedor');
	}

	public function comprado()
	{
		return $this->hasOne('Adhesivos\Entities\ClientesProovedores','id','comprador');
	}

	public function concept()
	{
		return $this->hasOne('Adhesivos\Entities\Concepto','id','concepto');
	}

}