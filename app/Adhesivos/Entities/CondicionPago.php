<?php namespace Adhesivos\Entities;

class CondicionPago extends \Eloquent {
	protected $fillable = ['nombre','diascredito'];
	protected $table = "CondicionPago";
}