<?php namespace Adhesivos\Entities;

class Concepto extends \Eloquent {
	protected $fillable = ['producto','cantidad','descuento','noenvases','facturapor', 'preciounitario'];
	protected $table = "Concepto";

	public function product()
	{
		return $this->hasOne('Adhesivos\Entities\Producto','id','producto');

	}
}