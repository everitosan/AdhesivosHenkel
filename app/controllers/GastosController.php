<?php
use Adhesivos\Repositories\HomeRepo;	
use Adhesivos\Entities\RobrosGasto;	
use Adhesivos\Entities\Gasto;	

//Managers
use Adhesivos\Managers\RobrosGastoManager;	
use Adhesivos\Managers\GastoManager;	

Class GastosController extends BaseController{

	protected $productosRepo;

	public function __construct(HomeRepo $productosRepo)
	{
		$this->productosRepo=$productosRepo;
	}

	public function gasto($action)
		{
			$Rubros 	= $this->productosRepo->obten_Rubos();
			$Usuarios 	= $this->productosRepo->obten_vendedor();
			return View::make('gastos/'.$action, compact(['Rubros','Usuarios']));
		}
	public function rubosGasto($action)
		{
			return View::make('gastos/'.$action);
		}

	//--------- SET

	public function setgasto()
	{
		$gasto= new Gasto();
		$manager = new GastoManager($gasto,Input::all());
	
		if($manager->save())
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());

	}

	public function setrubrogasto()
	{
		$rubroGasto = new RobrosGasto();
		$manager 	= new RobrosGastoManager($rubroGasto, Input::all());

		if($manager->save())
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());
	}
}
