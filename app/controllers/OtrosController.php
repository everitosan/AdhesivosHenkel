<?php

use Adhesivos\Repositories\HomeRepo;

Class OtrosController extends BaseController{
	
	protected $productosRepo;

	public function __construct(HomeRepo $productosRepo)
	{
		$this->productosRepo=$productosRepo;
	}

	public function otros($action)
	{
		$Usuarios= $this->productosRepo->obten_vendedor();
		return View::make('otros/'.$action, compact('Usuarios'));
	}

}