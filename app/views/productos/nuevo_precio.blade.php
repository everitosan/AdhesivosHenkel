@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Nuevo Precio Producto</h1>
			
			<div class="row title">
				<div class="medium-6 columns">
					<h3>Precio del producto</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>	
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Producto</label>
					<select name="" id="">
						<option value=""></option>
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Fecha en que cambió el precio</label>
					<input type="date">
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Divisa del precio de compra</label>
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
					<label for="">Precio de venta (pesos)</label>
					<input type="text" placeholder="$">
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