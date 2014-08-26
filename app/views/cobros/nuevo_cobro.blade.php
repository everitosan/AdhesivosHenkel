@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Agregar nuevo cobro</h1>
			
			<div class="row title">
				<div class="medium-6 columns">
					<h3>Venta por cobrar</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>
			<div class="row">
				<div class="medium-4 columns">
					<label for="">Tipo</label>
					<select name="" id="">
						<option value=""></option>
					</select>
				</div>
				<div class="medium-4 columns">
					<label for="">Folio</label>
					<input type="text">
				</div>
				<div class="medium-4 columns">
					<button>Verificar</button>
				</div>
				
			</div>
			<div class="row title">
				<div class="medium-12 columns">
					<h3>Información del cobro</h3>
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Monto (MPX)</label>
					<input type="text" placeholder="$">
				</div>
				<div class="medium-6 columns">
					<label for="">Fecha de pago</label>
					<input type="date">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Número de referencia/cheque</label>
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