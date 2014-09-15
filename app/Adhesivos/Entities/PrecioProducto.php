<?php namespace Adhesivos\Entities;

class PrecioProducto extends \Eloquent {
	protected $fillable = ['producto','fecha','divisa','preciocompra','precioventa'];
	protected $table="PrecioProducto";
}