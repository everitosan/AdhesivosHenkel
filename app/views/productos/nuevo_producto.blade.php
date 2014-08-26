@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Nuevo Producto</h1>
			<div class="row title">
				<div class="medium-6 columns">
					<h3>Información del producto</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Clave</label>
					<input type="text">
				</div>
				<div class="medium-6 columns">
					<label for="">Nombre</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Descripción</label>
					<input type="text">
				</div>
				<div class="medium-6 columns">
					<label for="">Medida</label>
					<select name="" id="">
						<option value=""></option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<button>Agregar Presentación</button>
				</div>
			</div>
			<div class="row boton">
				<div class="medium-12 columns">
					<button>Agregar nuevo</button>
				</div>
			</div>
	
		</article>
	</section>	
@stop