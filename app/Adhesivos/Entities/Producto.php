<?php namespace Adhesivos\Entities;

class Producto extends \Eloquent {
	protected $fillable = ['nombre','clave','descripcion','medida','presentacion'];
	protected $table	= "Producto";
}