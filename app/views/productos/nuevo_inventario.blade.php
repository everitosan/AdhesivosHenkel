@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Nuevo Inventario</h1>
			<div class="row title">
				<div class="medium-6 columns">
					<h3>Información del corte de inventario</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>

			<div class="row">
				<div class="medium-6 columns">
					<label for="">Fecha</label>
					<input class="date" type="date">
				</div>
				<div class="medium-6 columns">
					<label for="">Hora</label>
					<input class="time" type="time">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Observaciones</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<button>Agregar conteo de producto</button>
				</div>
			</div>
			<div class="row boton">
				<div class="medium-12 columns">
					<button>Agregar</button>
				</div>
			</div>


		</article>
	</section>	
@stop