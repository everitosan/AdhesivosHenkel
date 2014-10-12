<?php namespace Adhesivos\Entities;

class Venta extends \Eloquent {
	protected $fillable = [];
	protected $table 	= "Venta";

	public function client()
	{
		return $this->hasOne('Adhesivos\Entities\ClientesProovedores','id','cliente');
	}

	public function concept()
	{
		return $this->hasOne('Adhesivos\Entities\Concepto','id','concepto');
	}

	public function formadepago()
	{
		return $this->hasOne('Adhesivos\Entities\FormasPago','id','formapago');
	}

	public function condiciondepago()
	{
		return $this->hasOne('Adhesivos\Entities\CondicionPago','id','condicionpago');
	}
}