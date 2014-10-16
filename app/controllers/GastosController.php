<?php
use Adhesivos\Repositories\GastosRepo;	
use Adhesivos\Entities\RobrosGasto;	
use Adhesivos\Entities\Gasto;	

//Managers
use Adhesivos\Managers\RobrosGastoManager;	
use Adhesivos\Managers\GastoManager;	

Class GastosController extends BaseController{

	protected $gastosRepo;

	public function __construct(GastosRepo $gastosRepo)
	{
		$this->gastosRepo=$gastosRepo;
	}

	//--------- Gasto  --------------
	public function gasto($action)
		{
			$Rubros 	= $this->gastosRepo->obten_Rubos();
			$Usuarios 	= $this->gastosRepo->obten_vendedor();
			$gastos 	= $this->gastosRepo->obten_gastos(); 	
			return View::make('gastos/'.$action, compact(['Rubros','Usuarios', 'gastos']));
		}

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
	public function viewgasto()
	{

	}

	public function updategasto()
	{

	}

	//--------- RubrosGasto  --------------

	public function rubosGasto($action)
		{
			$rubrosgastos=$this->gastosRepo->obten_rubrosgasto();
			return View::make('gastos/'.$action, compact(['rubrosgastos']));
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

	public function viewrubrogasto()
	{

	}

	public function updaterubrogasto()
	{
		
	}
}
