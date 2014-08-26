@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar condición de pago</h1>

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

			
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Coincidencias</label>
					<select>
						<option value="any">Cualquiera</option>
						<option value="all">Todas</option>
					</select>
				</div>
			</div>

			<div class="row boton">
				<div class="medium-12 columns">
					<button>Buscar</button>
				</div>
			</div>
			
		</article>
	</section>	
@stop