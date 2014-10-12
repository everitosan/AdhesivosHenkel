<?php namespace Adhesivos\Entities;

class RobrosGasto extends \Eloquent {
	protected $fillable = ['nombre','descipcion'];
	protected $table ="RubrosGasto";
}