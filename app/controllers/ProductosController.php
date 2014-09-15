<?php
use Adhesivos\Repositories\HomeRepo;
use Adhesivos\Entities\Presentacion;
use Adhesivos\Entities\Producto;
use Adhesivos\Entities\PrecioProducto;
use Adhesivos\Entities\PrecioEnvase;

//managers
use Adhesivos\Managers\PresentacionManager;
use Adhesivos\Managers\ProductoManager;
use Adhesivos\Managers\PrecioProductoManager;
use Adhesivos\Managers\PrecioEnvaseManager;

Class ProductosController extends BaseController{

	protected $productosRepo;

	public function __construct(HomeRepo $productosRepo)
	{
		$this->productosRepo=$productosRepo;
	}

	public function productos($action)
		{
			$presentaciones	= $this->productosRepo->obten_presentaciones();
			$Productos 		= $this->productosRepo->obten_productos();
			return View::make('productos/'.$action, compact(['presentaciones','Productos']));
		}

	public function presentaciones($action)
		{
			
			return View::make('productos/'.$action);
		}

	public function preciosProductos($action)
		{
			$productos		= $this->productosRepo->obten_productos();
			return View::make('productos/'.$action,compact('productos'));
		}
	public function preciosEnvases($action)
		{
			$presentaciones	= $this->productosRepo->obten_presentaciones();
			return View::make('productos/'.$action, compact(['presentaciones','']));
		}
	public function cortesInventario($action)
		{
			return View::make('productos/'.$action);
		}
	public function reporteInventario($action)
		{
			return View::make('productos/'.$action);
		}
	public function reporteProductosVendidos($action)
		{
			$clientes		= $this->productosRepo->obten_clientes(); 
			return View::make('productos/'.$action,compact('clientes'));
		}


	//-------------SET-
	public function setpresentaciones()
	{
		$presentacion= new Presentacion();
		$manager= new PresentacionManager($presentacion, Input::all());

		if($manager->save())
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());

	}

	public function setproducto()
	{
		$producto= new Producto();
		$manager= new ProductoManager($producto, Input::all());
		if($manager->save())
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());
	}

	public function setprecioproducto()
	{
		$precioProducto= new PrecioProducto();
		$manager= new PrecioProductoManager($precioProducto, Input::all());

		if($manager->saveorupdate('producto'))
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());

	}

	public function setprecioenvase()
	{
		
		$precioProducto= new PrecioEnvase();
		$manager= new PrecioEnvaseManager($precioProducto, Input::all());

		if($manager->saveorupdate('presentacion'))
		{
			return Redirect::route('inicio');
		}

		return Redirect::back()->withInput()->withErrors($manager->getErrors());

	}
}