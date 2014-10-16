<?php namespace Adhesivos\Entities;

class RobrosGasto extends \Eloquent {
	protected $fillable = ['nombre','descripcion'];
	protected $table ="RubrosGasto";
}