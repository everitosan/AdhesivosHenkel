<?php

use Adhesivos\Repositories\HomeRepo;

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
}