<?php
use Adhesivos\Repositories\HomeRepo;	
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
}
