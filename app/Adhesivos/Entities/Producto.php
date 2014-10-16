<?php namespace Adhesivos\Entities;

class Producto extends \Eloquent {
	protected $fillable = ['nombre','clave','descripcion','medida','presentacion', 'cantidad'];
	protected $table	= "Producto";

	public function presentacio()
	{
		return $this->hasOne('Adhesivos\Entities\Presentacion','id','presentacion');
	}
}