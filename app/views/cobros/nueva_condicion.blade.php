@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Agregar nueva forma de pago</h1>

			<div class="row title">
				<div class="medium-6 columns">
					<h3>Información sobre la forma de pago</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>
				
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Nombre</label>
					<input type="text">
				</div>

				<div class="medium-6 columns">
					<label for="">Días de crédito</label>
					<input type="text">
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