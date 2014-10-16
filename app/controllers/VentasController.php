<?php

use Adhesivos\Repositories\VentasRepo;

use Adhesivos\Entities\ClientesProovedores;
use Adhesivos\Entities\Telefonos;
use Adhesivos\Entities\DatosContacto;
use Adhesivos\Entities\Concepto;
use Adhesivos\Entities\Venta;

//Manager
use Adhesivos\Managers\ClientesProovedoresManager;
use Adhesivos\Managers\TelefonosManager;
use Adhesivos\Managers\DatosContactoManager;
use Adhesivos\Managers\ConceptoManager;
use Adhesivos\Managers\VentaManager;

Class VentasController extends BaseController{

	protected $ventasRepo;

	public function __construct(VentasRepo $ventasRepo)
	{
		$this->ventasRepo=$ventasRepo;
	}


	//  				VENTAS 	-----------------------------------


	public function ventas( $action)
	{
		$clientes 		= $this->ventasRepo->obten_clientes();
		$FormaPago		= $this->ventasRepo->obten_FormaPago();
		$CondicionPago	= $this->ventasRepo->obten_CondicionPago();
		$vendedor 		= $this->ventasRepo->obten_vendedor();
		$productos		= $this->ventasRepo->obten_productos();
		$presentaciones	= $this->ventasRepo->obten_presentaciones();

		$folio 			= $this->ventasRepo->obten_folio();

		$ventas 		= $this->ventasRepo->obten_ventas(); 
		return View::make('ventas/'.$action,compact(['clientes','FormaPago','CondicionPago','vendedor','productos','presentaciones','ventas','folio']));
	}

	public function setventas()
	{
		$concepto_data=Input::only('producto','cantidad','descuento','noenvases','facturapor', 'preciounitario'); 
		$concepto=new Concepto();	
		$conceptoManager= new ConceptoManager($concepto, $concepto_data);
		if($conceptoManager->save())
		{
		//dd($concepto_data);
			$todos_conceptos=Concepto::all();
			$concepto_id=$todos_conceptos->last()->id;

			$venta_data=Input::only('tipo','folio','fecha','fecha_vencimiento','hora','descuento_global','cliente','cuenta_bancaria','forma_pago','condicion_pago', 'vendedor','observaciones_generales','no_pedido','fecha_embarque','direccion_embarque','observaciones_embarque','subtotal','iva','total','estatus');
			
			//dd($venta_data);
			$venta = new Venta();
			$venta->concepto=$concepto_id;
			$ventaManager= new VentaManager($venta, $venta_data);

			if($ventaManager->save())
			{
				return Redirect::route('inicio');
			}
			else
			{
				dd($ventaManager->getErrors());
				return Redirect::back()->withInput()->withErrors($ventaManager->getErrors());
			}
		}
		else
		{	dd($conceptoManager->getErrors());
			return Redirect::back()->withInput()->withErrors($conceptoManager->getErrors());
		}
	}

	public function viewventa($id)
	{
		$clientes 		= $this->ventasRepo->obten_clientes();
		$FormaPago		= $this->ventasRepo->obten_FormaPago();
		$CondicionPago	= $this->ventasRepo->obten_CondicionPago();
		$vendedor 		= $this->ventasRepo->obten_vendedor();
		$productos		= $this->ventasRepo->obten_productos();
		$presentaciones	= $this->ventasRepo->obten_presentaciones();

		$venta=$this->ventasRepo->obten_por_id($id);
		return View::make('ventas/editar_venta',compact(['clientes','FormaPago','CondicionPago','vendedor','productos','presentaciones','venta']));
	}

	public function obtenProducto()
	{
		$id=Input::get('id');
		$producto 	=	$this->ventasRepo->obten_producto($id);
		$precio 	= 	$this->ventasRepo->obten_precio($id);
		return compact(['producto', 'precio']);
	}

	public function updateventa($id)
	{
		
	}

	//  				COMPRAS   	-----------------------------------

	public function compras( $action)
	{
		$proveedores 	= $this->ventasRepo->obten_proveedores();
		$FormaPago		= $this->ventasRepo->obten_FormaPago();
		$CondicionPago	= $this->ventasRepo->obten_CondicionPago();
		$compradores	= $this->ventasRepo->obten_vendedor();
		$productos		= $this->ventasRepo->obten_productos();
		$presentaciones	= $this->ventasRepo->obten_presentaciones();
		
		$compras 		= $this->ventasRepo->obten_compras();
		return View::make('ventas/'.$action,compact(['proveedores','FormaPago','CondicionPago','compradores','productos','presentaciones','compras']));
	}

	public function setcompra()
	{

	}

	public function viewcompra($id)
	{

	}

	public function updatecompra($id)
	{

	}
	//  				CLIENTES  	-----------------------------------



	public function clientes($action)
	{
		$clientes=$this->ventasRepo->obten_clientes();
		return View::make('ventas/'.$action, compact(['clientes']));
	}

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

	public function viewcliente($id)
	{

	}

	public function updatecliente($id)
	{

	}

	//  				PROVEEDORES 	-----------------------------------


	public function proveedores($action)
	{
		$proveedores=$this->ventasRepo->obten_proveedores();
		return View::make('ventas/'.$action, compact(['proveedores']));
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

	public function viewproveedor($id)
	{

	}

	public function updateprveedor($id)
	{

	}

	
}