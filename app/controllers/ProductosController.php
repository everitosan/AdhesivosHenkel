<?php
use Adhesivos\Repositories\ProductosRepo;
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

	public function __construct(ProductosRepo $productosRepo)
	{
		$this->productosRepo=$productosRepo;
	}



	//				PRODUCTOS  ------------------------------

	public function productos($action)
		{
				$Productos 		= $this->productosRepo->obten_productos();
				$presentaciones = $this->productosRepo->obten_presentaciones();
				return View::make('productos/'.$action, compact(['presentaciones','Productos']));			
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

	public function viewproducto()
	{

	}

	//				PRESENTACIONES  ------------------------------

	public function presentaciones($action)
		{
			
			$presentaciones	= $this->productosRepo->obten_presentaciones();
			return View::make('productos/'.$action, compact(['presentaciones']));
		}

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

	public function viewpresentacion()
	{

	}

	//				PRECIOS PRODUCTOS  ------------------------------
	public function preciosProductos($action)
		{
			$precioproductos = $this->productosRepo->obten_precioproductos();
			$productos= $this->productosRepo->obten_productos();
			return View::make('productos/'.$action,compact(['precioproductos','productos']));
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

	public function viewprecioproducto()
	{

	}

	//				PRECIOS ENVASES  ------------------------------
	public function preciosEnvases($action)
		{
			$presentaciones	= $this->productosRepo->obten_presentaciones();
			$preciopresentaciones= $this->productosRepo->obten_preciopresentacion();
			return View::make('productos/'.$action, compact(['presentaciones','preciopresentaciones']));
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

	public function viewprecioenvase()
	{

	}


	//		INVENTARIO --------------------------
	

	

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

	

	public function getreporteproductos()
	{
		$reportes=$this->productosRepo->reporte(Input::all());

		return View::make('productos/Reporte_Generado', compact('reportes'));
		
	}

}