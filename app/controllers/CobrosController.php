<?php

use Adhesivos\Repositories\HomeRepo;
use Adhesivos\Entities\CobroPendientes;
use Adhesivos\Entities\FormasPago;
use Adhesivos\Entities\CondicionPago;
//Managers
use Adhesivos\Managers\CobroPendientesManager;
use Adhesivos\Managers\FormasPagoManager;
use Adhesivos\Managers\CondicionPagoManager;



Class CobrosController extends BaseController{

	protected $productosRepo;

	public function __construct(HomeRepo $productosRepo)
	{
		$this->productosRepo=$productosRepo;
	}

	public function cobros($action)
	{
		return View::make('cobros/'.$action);
	}

	public function formasPago($action)
	{
		return View::make('cobros/'.$action);
	}

	public function condicionesPago($action)
	{
		return View::make('cobros/'.$action);
	}


	//--------	SET

	public function setcobro()
	{
		$cobro= new CobroPendientes();
		$manager= new CobroPendientesManager($cobro, Input::all());

		if($manager->save())
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());

	}

	public function setformapago()
	{
		$formasPago= new FormasPago();
		$manager= new FormasPagoManager($formasPago, Input::all());

		if($manager->save())
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());

	}

	public function setcondicionpago()
	{
		$condicionPago 	= new CondicionPago();
		$manager 		= new CondicionPagoManager($condicionPago, Input::all());

		if($manager->save())
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());

	}
}