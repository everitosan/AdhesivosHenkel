<?php namespace Adhesivos\Entities;

class DatosContacto extends \Eloquent {
	protected $fillable = ['nombre','apppaterno','appmaterno','genero','email'];
	protected $table = 'DatosContacto'; 
}