<?php namespace Adhesivos\Entities;

class PrecioProducto extends \Eloquent {
	protected $fillable = ['producto','fecha','divisa','preciocompra','precioventa'];
	protected $table="PrecioProducto";


	public function product()
	{
		return $this->hasOne('Adhesivos\Entities\Producto','id','producto');
	}
}