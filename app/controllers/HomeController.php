<?php

use Adhesivos\Repositories\HomeRepo;
use Adhesivos\Entities\ClientesProovedores;
use Adhesivos\Entities\Telefonos;
use Adhesivos\Entities\DatosContacto;

//Manager
use Adhesivos\Managers\ClientesProovedoresManager;
use Adhesivos\Managers\TelefonosManager;
use Adhesivos\Managers\DatosContactoManager;

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
		//return "Hola";
		return View::make('login');
	}

	public function inicio()
	{
		$ventas= $this->homeRepo->obten_pendientes();
		return View::make('inicio', compact('ventas'));
	}


	public function ventas( $action)
	{
		$clientes 		= $this->homeRepo->obten_clientes();
		$FormaPago		= $this->homeRepo->obten_FormaPago();
		$CondicionPago	= $this->homeRepo->obten_CondicionPago();
		$vendedor 		= $this->homeRepo->obten_vendedor();
		$productos		= $this->homeRepo->obten_productos();
		$presentaciones	= $this->homeRepo->obten_presentaciones();

		return View::make('ventas/'.$action,compact(['clientes','FormaPago','CondicionPago','vendedor','productos','presentaciones']));
	}

	public function compras( $action)
	{
		$proveedores 	= $this->homeRepo->obten_proveedores();
		$FormaPago		= $this->homeRepo->obten_FormaPago();
		$CondicionPago	= $this->homeRepo->obten_CondicionPago();
		$compradores	= $this->homeRepo->obten_vendedor();
		$productos		= $this->homeRepo->obten_productos();
		return View::make('ventas/'.$action,compact(['proveedores','FormaPago','CondicionPago','compradores','productos','presentaciones']));
	}

	public function clientes($action)
	{
		return View::make('ventas/'.$action);
	}

	public function proveedores($action)
	{
		return View::make('ventas/'.$action);
	}

	public function setventas()
	{
			dd(Input::all());
	}


	//Set to database

	public function setclientes()
	{
		$telefonos_data=Input::only('telefono','celular','nextel');
		$telefono=new Telefonos();
		$telefono_manager= new TelefonosManager($telefono, $telefonos_data);

		if($telefono_manager->save())
		{
			$todos_telefonos=Telefonos::all();
			$telefono_id=$todos_telefonos->last()->id;
			
			$contacto_data=Input::only('nombre','apppaterno','appmaterno','genero','email');
			$contacto= new DatosContacto();
			$contacto->telefonos=$telefono_id;
			$contacto_manager= new DatosContactoManager($contacto, $contacto_data);

			if($contacto_manager->save())
			{
				$todos_contactos=DatosContacto::all();
				$contacto_id=$todos_contactos->last()->id;

				$cliente_data=Input::only('rfc','razonsocial','calle','noexterior','nointerior','colonia','delegacionmunicipio','ciudad','estado','cp','referenciasubicacion','contacto');
				$cliente= new ClientesProovedores();
				$cliente->tipo='Cliente';
				$cliente->contacto=$contacto_id;
				$manager= new ClientesProovedoresManager($cliente, $cliente_data);
				if($manager->save())
				{
					return Redirect::route('inicio');
				}
				else
				{
					return Redirect::back()->withInput()->withErrors($manager->getErrors());
				}
			}
			else
			{
					return Redirect::back()->withInput()->withErrors($contacto_manager->getErrors());
			}
		}		
		return Redirect::back()->withInput()->withErrors($telefono_manager->getErrors());
	}
	
	public function setproveedores()
	{
		$telefonos_data=Input::only('telefono','celular','nextel');
		$telefono=new Telefonos();
		$telefono_manager= new TelefonosManager($telefono, $telefonos_data);

		if($telefono_manager->save())
		{
			$todos_telefonos=Telefonos::all();
			$telefono_id=$todos_telefonos->last()->id;
			
			$contacto_data=Input::only('nombre','apppaterno','appmaterno','genero','email');
			$contacto= new DatosContacto();
			$contacto->telefonos=$telefono_id;
			$contacto_manager= new DatosContactoManager($contacto, $contacto_data);

			if($contacto_manager->save())
			{
				$todos_contactos=DatosContacto::all();
				$contacto_id=$todos_contactos->last()->id;

				$cliente_data=Input::only('rfc','razonsocial','calle','noexterior','nointerior','colonia','delegacionmunicipio','ciudad','estado','cp','referenciasubicacion','contacto');
				$cliente= new ClientesProovedores();
				$cliente->tipo='Proveedor';
				$cliente->contacto=$contacto_id;
				$manager= new ClientesProovedoresManager($cliente, $cliente_data);
				if($manager->save())
				{
					return Redirect::route('inicio');
				}
				else
				{
					return Redirect::back()->withInput()->withErrors($manager->getErrors());
				}
			}
			else
			{
					return Redirect::back()->withInput()->withErrors($contacto_manager->getErrors());
			}
		}		
		return Redirect::back()->withInput()->withErrors($telefono_manager->getErrors());
	}
}
