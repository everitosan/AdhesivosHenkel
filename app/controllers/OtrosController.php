<?php

use Adhesivos\Repositories\PendientesRepo;

use Adhesivos\Entities\Pendientes;
//Managers
use Adhesivos\Managers\PendientesManager;

Class OtrosController extends BaseController{
	
	protected $pendientesRepo;

	public function __construct(PendientesRepo  $pendientesRepo)
	{
		$this->pendientesRepo=$pendientesRepo;
	}

	public function otros($action)
	{
		$pendientes= $this->pendientesRepo->obten_pendientes();
		$Usuarios= $this->pendientesRepo->obten_vendedor();
		return View::make('otros/'.$action, compact(['Usuarios','pendientes']));
	}

	//----- SET

	public function setasunto()
	{
		$pendiente= new Pendientes();
		$manager = new PendientesManager($pendiente, Input::all());

		if($manager->save())
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());

	}

	//-- Update
	public function updateasunto()
	{
		$pendiente=$this->pendientesRepo->updatePendiente( Input::get('id'), Input::get('estado') );
		return $pendiente;
	}

	//Select
	public function get_asuntos()
	{
		$pendiente=$this->pendientesRepo->getPendientes( Input::get('key'),Input::get('value') );
		return $pendiente;
	}

}