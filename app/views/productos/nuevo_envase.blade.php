@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Nuevo Precio Envase</h1>
			
			<div class="row title">
				<div class="medium-6 columns">
					<h3>Precio del envase</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>

			<div class="row">
				<div class="medium-6 columns">
					<label for="">Presentación</label>
					<select name="" id="">
						<option value=""></option>
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Fecha de cambio</label>
					<input type="date">
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Divisa de compra</label>
					<select name="" id="">
						<option value=""></option>
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Precio de compra</label>
					<input type="text" placeholder="$">
				</div>
			</div>
			
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Precio de venta (pesos mexicanos)</label>
					<input type="text" placeholder="$" >
				</div>
			</div>
			<div class="row boton">
				<button>Agregar</button>
			</div>

		</article>
	</section>	
@stop