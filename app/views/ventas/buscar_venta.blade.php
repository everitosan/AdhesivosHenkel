@extends('header')
@section('content')
	<section class="venta">
		<article>
			<h1>Buscar Venta</h1>
		

	<div class="row title">
		<div class="medium-6  columns">
			<h3>Datos de la venta</h3>
		</div>
		<div class="medium-6  columns">
			<button>Limpiar</button>
		</div>
	</div>
	<div class="row">
		<div class="medium-4  columns">
			<label for="">Tipo</label>
			<select name="" id="">
				<option value=""></option>
			</select>
		</div>
		<div class="medium-4  columns">
			<label for="">Folio</label>
			<input type="text">
		</div>
		<div class="medium-2  columns">
			<label for="">Desde</label>
			<input type="date">
		</div>
		<div class="medium-2  columns">
			<label for="">hasta</label>
			<input type="date">
		</div>
	</div>
	<div class="row">
		<div class="medium-6 columns">
			<label for="">Hora</label>
			<input type="time">
		</div>
		<div class="medium-6 columns">
			<label for="">Descuento Global (%)</label>
			<input type="text">
		</div>
	</div>
	<div class="row">
		<div class="medium-6  columns">
			<label for="">Cliente</label>
			<select name="" id="">
				<option value=""></option>
			</select>
		</div>
		<div class="medium-6  columns">
			<label for="">Cuenta bancaria</label>
			<input type="text">
		</div>
	</div>
	<div class="row">
		<div class="medium-6  columns">
			<label for="">Forma de pago</label>
			<select name="" id="">
				<option value=""></option>
			</select>
		</div>
		<div class="medium-6  columns">
			<label for="">Condición de pago</label>
			<select name="" id="">
				<option value=""></option>
			</select>
		</div>
	</div>
	<div class="row">
		<div class="medium-12  columns">
			<label for="">Vendedor</label>
			<select name="" id="">
				<option value=""></option>
			</select>
		</div>
	</div>
	<div class="row">
		<div class="medium-12  columns">
			<label for="">Observaciones Generales</label>
			<input type="text">
		</div>
	</div>
	<div class="row title">
		<div class="medium-12  columns">
			<h3>Datos del pedido</h3>
		</div>
	</div>
	<div class="row">
		<div class="medium-6  columns">
			<label for="">No. pedido</label>
			<input type="text">
		</div>
		<div class="medium-3  columns">
			<label for="">Embarque desde</label>
			<input type="date">
		</div>
		<div class="medium-3  columns">
			<label for="">Embarque hasta</label>
			<input type="date">
		</div>
	</div>
	<div class="row">
		<div class="medium-12  columns">
			<label for="">Dirección del embarque</label>
			<input type="text"></div>
	</div>
	<div class="row">
		<div class="medium-12  columns">
			<label for="">Observaciones del embarque</label>
			<input type="text"></div>
	</div>
	<div class="row title">
		<div class="medium-12  columns">
			<h3>Otros parámetros</h3>
		</div>
	</div>
	<div class="row">
		<div class="medium-6  columns">
			<label for="">Monto mínimo</label>
			<input type="text" placeholder="$">
		</div>
		<div class="medium-6  columns">
			<label for="">Monto máximo</label>
			<input type="text" placeholder="$">
		</div>
	</div>
	<div class="row">
		<div class="medium-6  columns">
			<label for="">Fecha vencimiento desde</label>
			<input type="date">
		</div>
		<div class="medium-6  columns">
			<label for="">Fecha vencimiento hasta</label>
			<input type="date">
		</div>
	</div>
	<div class="row">
		<div class="medium-6  columns">
			<label for="">Producto vendido</label>
			<select name="" id="">
				<option value=""></option>
			</select>
		</div>
		<div class="medium-6  columns">
			<label for="">Estado cancelación</label>
			<select name="" id="">
				<option value=""></option>
			</select>
		</div>
	</div>
	<div class="row">
		<div class="medium-12 columns">
			<label for="">Coincidencias</label>
			<select>
				<option value="any">Cualquiera</option>
				<option value="all">Todas</option>
			</select>
		</div>
		
	</div>

	<div class="row">
		<div class="medium-12  columns">
			<button>Buscar</button>
			<button>Reporte de ventas</button>
			<button>Reporte de deudas</button>
		</div>
	</div>

	</article>
	</section>
@stop