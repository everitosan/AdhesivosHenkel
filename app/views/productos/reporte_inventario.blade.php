@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Reporte de Inventario</h1>

			<div class="row title">
				<div class="medium-12 columns">
					<h3>Cantidad de productos en fecha determinada</h3>
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Fecha</label>
					<input type="date">
				</div>
				<div class="medium-6 columns">
					<label for="">Hora</label>
					<input type="date">
				</div>
			</div>
			<div class="row boton">
				<div class="medium-12 columns">
					<button>Ver inventario</button>
				</div>
			</div>

		</article>


		<article>
			<div class="row">
				<div class="medium-2 columns">Clave Producto</div>
				<div class="medium-2 columns">Nombre Producto</div>
				<div class="medium-2 columns">Ultimo Corte</div>
				<div class="medium-2 columns">Cantidad Corte</div>
				<div class="medium-2 columns">Comprado</div>
				<div class="medium-1 columns">Vendido</div>
				<div class="medium-1 columns">Total</div>
			</div>
		</article>
	</section>	
@stop