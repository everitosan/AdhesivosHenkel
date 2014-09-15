@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Buscar Precio Producto</h1>

			<div class="row title">
				<div class="medium-6 columns">
					<h3>Precio del producto</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Producto</label>
					<select name="" id="">
						<option value=""></option>
						@foreach($productos as $producto)
							<option value="{{ $producto->id}}">{{ $producto->nombre}}</option>
						@endforeach
					</select>
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Desde</label>
					<input type="date">
				</div>
				<div class="medium-6 columns">
					<label for="">Hasta</label>
					<input type="date">
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Divisa de compra</label>
					<select name="" id="">
						<option value=""></option>
						<option value="pesos">pesos</option>
						<option value="dlls">dlls</option>
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Precio de compra</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Precio de venta (pesos mexicanos)</label>
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