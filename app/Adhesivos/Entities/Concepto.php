<?php namespace Adhesivos\Entities;

class Concepto extends \Eloquent {
	protected $fillable = [];
	protected $table = "Concepto";

	public function product()
	{
		return $this->hasOne('Adhesivos\Entities\Producto','id','producto');

	}
}