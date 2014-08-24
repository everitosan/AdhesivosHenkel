<?php

class VentasController extends BaseController {
	
	public function index($cat)
	{
		return View::make($cat);
	}

}
