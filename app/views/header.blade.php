<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <link rel="stylesheet" href=" {{asset('css/foundation.css')}} " />
   <link rel="stylesheet" href=" {{asset('css/style.css') }} ">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>Adhesivoshenkel</title>
</head>
<body>

	<nav id="menu">
	<ul>
		<li><span> <a href="{{ route('inicio') }} "> Inicio </a> </span></li>
		<li><span>Ventas/Compras</span>
			<ul>
				<li><span>Ventas</span>
					<ul>
						<li><a href="{{ route('ventas',['ventas','nueva_venta']) }}">Nuevo</a></li>
						<li><a href="{{ route('ventas',['ventas','buscar_venta']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Compras</span>
					<ul>
						<li><a href="{{ route('compras',['ventas','nueva_compra']) }}">Nuevo</a></li>
						<li><a href="{{ route('compras',['ventas','buscar_compra']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Clientes</span>
					<ul>
						<li><a href="{{ route('clientes',['ventas','nuevo_cliente']) }}">Nuevo</a></li>
						<li><a href="{{ route('clientes',['ventas','buscar_cliente']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Proveedores</span>
					<ul>
						<li><a href="{{ route('proveedores',['ventas','nuevo_proveedor']) }}">Nuevo</a></li>
						<li><a href="{{ route('proveedores',['ventas','buscar_proveedor']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><span>Productos</span>
			<ul>
				<li><span>Productos</span>
					<ul>
						<li><a href="{{ route('productos',['productos','nuevo_producto']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['productos','buscar_producto']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Presentaciones</span>
					<ul>
						<li><a href="{{ route('productos',['productos','nuevo_presentaciones']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['productos','buscar_presentaciones']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Precios de Productos</span>
					<ul>
						<li><a href="{{ route('productos',['productos','nuevo_precio']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['productos','buscar_precio']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Precios de envases</span>
					<ul>
						<li><a href="{{ route('productos',['productos','nuevo_envase']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['productos','buscar_envase']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Cortes de inventario</span>
					<ul>
						<li><a href="{{ route('productos',['productos','nuevo_inventario']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['productos','buscar_inventario']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span> <a href="{{ route('productos',['productos','reporte_inventario']) }}"> Reporte de inventario</a></span></li>
				<li><span> <a href="{{ route('productos',['productos','reporte_productos']) }}"> Reporte de productos vendidos</a></span></li>
			</ul>
		</li>
		<li><span>Cobros</span>
			<ul>
				<li><span>Cobros</span>
					<ul>
						<li><a href="{{ route('productos',['cobros','nuevo_cobro']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['cobros','buscar_cobro']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Formas de pago</span>
					<ul>
						<li><a href="{{ route('productos',['cobros','nueva_forma']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['cobros','buscar_forma']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Condiciones de pago</span>
					<ul>
						<li><a href="{{ route('productos',['cobros','nueva_condicion']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['cobros','buscar_condicion']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><span>Gastos</span>
			<ul>
				<li><span>Gastos</span>
					<ul>
						<li><a href="{{ route('productos',['gastos','nuevo_gasto']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['gastos','buscar_gasto']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
			<ul>
				<li><span>Rubos de gastos</span>
					<ul>
						<li><a href="{{ route('productos',['gastos','nuevo_rubro']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['gastos','buscar_rubro']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><span>Otros</span>
			<ul>
				<li><span>Asuntos pendientes</span>
					<ul>
						<li><a href="{{ route('productos',['otros','nuevo_asunto']) }}">Nuevo</a></li>
						<li><a href="{{ route('productos',['otros','buscar_asunto']) }}">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>

	<div class="opc">
	<div class="moneda">
		<p>Precio Dolar</p>
		<p> fecha </p>
	</div>

	<div class="print">
		<img src=" {{asset ('img/printer_text.png') }} " alt="print">
	</div>

	<div>
		<p>Bienvenido</p>
		<p> Usuario </p>
	</div>

	<div>
		<button> Salir </button>
	</div>
	</div>

	</nav>



 @yield('content')

</body>
<html>