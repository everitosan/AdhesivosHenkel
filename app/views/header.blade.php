@if(Auth::check())

<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <link rel="stylesheet" href=" {{asset('css/foundation.css')}} " />
   <link rel="stylesheet" href=" {{asset('css/style.css') }} ">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>Adhesivoshenkel</title>
    <script src="{{asset ('js/vendor/jquery.js') }}" ></script>
</head>
<body>
	
	<nav id="menu" >
	<ul>
		<li><span> <a href="{{ route('inicio') }} "> Inicio </a> </span></li>
		<li><span>Ventas/Compras</span>
			<ul>
				<li><span>Ventas</span>
					<ul>
						<li><a href="{{ route('ventas',['nueva_venta']) }}">Nuevo</a></li>
						<li><a href="{{ route('ventas',['buscar_venta']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Compras</span>
					<ul>
						<li><a href="{{ route('compras',['nueva_compra']) }}">Nuevo</a></li>
						<li><a href="{{ route('compras',['buscar_compra']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Clientes</span>
					<ul>
						<li><a href="{{ route('clientes',['nuevo_cliente']) }}">Nuevo</a></li>
						<li><a href="{{ route('clientes',['buscar_cliente']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Proveedores</span>
					<ul>
						<li><a href="{{ route('proveedores',['nuevo_proveedor']) }}">Nuevo</a></li>
						<li><a href="{{ route('proveedores',['buscar_proveedor']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><span>Productos</span>
			<ul>
				<li><span>Productos</span>
					<ul>
						<li><a href="{{ route('productos',['nuevo_producto']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['buscar_producto']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Presentaciones</span>
					<ul>
						<li><a href="{{ route('presentaciones',['nuevo_presentaciones']) }}">Nuevo</a></li>
						<li><a href="{{ route('presentaciones',['buscar_presentaciones']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Precios de Productos</span>
					<ul>
						<li><a href="{{ route('preciosProductos',['nuevo_precio']) }}">Nuevo</a></li>
						<li><a href="{{ route('preciosProductos',['buscar_precio']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Precios de envases</span>
					<ul>
						<li><a href="{{ route('preciosEnvases',['nuevo_envase']) }}">Nuevo</a></li>
						<li><a href="{{ route('preciosEnvases',['buscar_envase']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Cortes de inventario</span>
					<ul>
						<li><a href="{{ route('cortesInventario',['nuevo_inventario']) }}">Nuevo</a></li>
						<li><a href="{{ route('cortesInventario',['buscar_inventario']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span> <a href="{{ route('reporteInventario' , ['reporte_inventario'] ) }}"> Reporte de inventario</a></span></li>
				<li><span> <a href="{{ route('reporteProductosVendidos',['reporte_productos']) }}"> Reporte de productos vendidos</a></span></li>
			</ul>
		</li>
		<li><span>Cobros</span>
			<ul>
				<li><span>Cobros</span>
					<ul>
						<li><a href="{{ route('cobros',['nuevo_cobro']) }}">Nuevo</a></li>
						<li><a href="{{ route('cobros',['buscar_cobro']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Formas de pago</span>
					<ul>
						<li><a href="{{ route('formasPago',['nueva_forma']) }}">Nuevo</a></li>
						<li><a href="{{ route('formasPago',['buscar_forma']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Condiciones de pago</span>
					<ul>
						<li><a href="{{ route('condicionesPago',['nueva_condicion']) }}">Nuevo</a></li>
						<li><a href="{{ route('condicionesPago',['buscar_condicion']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><span>Gastos</span>
			<ul>
				<li><span>Gastos</span>
					<ul>
						<li><a href="{{ route('gasto',['nuevo_gasto']) }}">Nuevo</a></li>
						<li><a href="{{ route('gasto',['buscar_gasto']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
			<ul>
				<li><span>Rubos de gastos</span>
					<ul>
						<li><a href="{{ route('rubosGasto',['nuevo_rubro']) }}">Nuevo</a></li>
						<li><a href="{{ route('rubosGasto',['buscar_rubro']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><span>Otros</span>
			<ul>
				<li><span>Asuntos pendientes</span>
					<ul>
						<li><a href="{{ route('otros',['nuevo_asunto']) }}">Nuevo</a></li>
						<li><a href="{{ route('otros',['buscar_asunto']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>

	<div class="opc">
	<div class="moneda">
		<p>Dolar : {{ CurrencyTool::dollar_peso(1); }} </p>
		<p> <input type="date" class="date"> </p>
	</div>

	<div class="print">
		<img src=" {{asset ('img/printer_text.png') }} " alt="print">
	</div>

	<div>
		<p>Bienvenido</p>
		<p> {{Auth::user()->nombreusuario}} </p>
	</div>

	<div>
		<button><a href="{{ route('logout') }}"> Salir </a></button>
	</div>
	</div>

	</nav>



 @yield('content')



<script src="{{ asset ('js/foundation/foundation.js') }}"></script>
<script src="{{ asset ('js/foundation/foundation.accordion.js') }}"></script>
 <script src="{{asset ('js/boton.js') }}" ></script>

</body>
<html>

@else
		{{ Redirect::route('login'); }}
@endif