<?php namespace Adhesivos\Entities;

class CobroPendientes extends \Eloquent {
	protected $fillable = ['tipo','folio','monto','fechapago','noreferenciacheque'];
	protected $table	= "CobroPendientes";
}