<?php namespace Adhesivos\Entities;

class Gasto extends \Eloquent {
	protected $fillable = ['monto','rubro','fecha','concepto','rfc','usuario'];
	protected $table	= "Gasto";
}