<?php

use Adhesivos\Repositories\CobrosRepo;
use Adhesivos\Entities\CobroPendientes;
use Adhesivos\Entities\FormasPago;
use Adhesivos\Entities\CondicionPago;
//Managers
use Adhesivos\Managers\CobroPendientesManager;
use Adhesivos\Managers\FormasPagoManager;
use Adhesivos\Managers\CondicionPagoManager;



Class CobrosController extends BaseController{

	protected $cobrosRepo;

	public function __construct(CobrosRepo $cobrosRepo)
	{
		$this->cobrosRepo=$cobrosRepo;
	}


	//--------	COBRO  ------------------

	public function cobros($action)
	{
		$cobros=$this->cobrosRepo->obten_cobros();
		return View::make('cobros/'.$action, compact(['cobros']));
	}

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

	public function viewcobro()
	{

	}

	public function updatecobro()
	{

	}

	//--------	FORMA DE PAGO  ------------------

	public function formasPago($action)
	{
		$formaspago= $this->cobrosRepo->obten_formpaspago();
		return View::make('cobros/'.$action, compact(['formaspago']));
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

	public function viewformapago()
	{

	}

	public function updateformapago()
	{

	}

	//--------	CONDICION DE PAGO  ------------------

	public function condicionesPago($action)
	{
		$condicionesPago=$this->cobrosRepo->obten_condicionespago();
		return View::make('cobros/'.$action, compact(['condicionesPago']));
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

	public function viewcondicionpago()
	{

	}

	public function updatecondicionpago()
	{

	}
}