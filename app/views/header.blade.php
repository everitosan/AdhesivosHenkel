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
						<a href="{{ route('ventas',['nueva_venta']) }}"><li>Nuevo</li></a>
						<a href="{{ route('ventas',['buscar_venta']) }}"><li>Buscar/Reporte</li></a>
					</ul>
				</li>
				<li><span>Compras</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Clientes</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Proveedores</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><span>Productos</span>
			<ul>
				<li><span>Productos</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Presentaciones</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Precios de Productos</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Precios de envases</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Cortes de inventario</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Reporte de inventario</span></li>
				<li><span>Reporte de productos vendidos</span></li>
			</ul>
		</li>
		<li><span>Cobros</span>
			<ul>
				<li><span>Cobros</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Formas de pago</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
				<li><span>Condiciones de pago</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><span>Gastos</span>
			<ul>
				<li><span>Gastos</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
			<ul>
				<li><span>Rubos de gastos</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><span>Otros</span>
			<ul>
				<li><span>Asuntos pendientes</span>
					<ul>
						<li><a href="#">Nuevo</a></li>
						<li><a href="#">Buscar/Reporte</a></li>
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