<?php namespace Adhesivos\Entities;

class Pendientes extends \Eloquent {
	protected $fillable = ['fecha_limite','descripcion','estado','respuesta','responsable'];
	protected $table	= "Pendientes";


	public function responsabl()
	{
		return $this->hasOne('Adhesivos\Entities\Usuarios','id','responsable');
	}


}