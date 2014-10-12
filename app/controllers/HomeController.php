<?php

use Adhesivos\Repositories\HomeRepo;




class HomeController extends BaseController {

	protected $homeRepo;

	public function __construct(HomeRepo $homeRepo)
	{
		$this->homeRepo=$homeRepo;
	}

	public function showWelcome()
	{
		return View::make('hello');
	}

	public function login()
	{
		return View::make('login');
	}

	public function dologin()
	{
		$data=Input::all();


		$credentials=['nombreusuario'=>$data['nombreusuario'], 'password'=>$data['password'] ];		
		
		if(Auth::attempt($credentials))
		{
			return Redirect::route('inicio');
		}
			return Redirect::back()->with('login_error','1');
		
	}

	public function dologout()
	{
		Auth::logout();
		return Redirect::route('login');
	}

	public function inicio()
	{
		
		$ventas= $this->homeRepo->obten_pendientes();
		return View::make('inicio', compact(['ventas']));
	}


	
}
