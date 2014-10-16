<?php namespace Adhesivos\Entities;

class PrecioEnvase extends \Eloquent {
	protected $fillable = ['presentacion','fecha','divisa','preciocompra','precioventa'];
	protected $table	= "PrecioEnvase";

	public function presentacio()
	{
		return $this->hasOne('Adhesivos\Entities\Presentacion','id','presentacion');
	}
}