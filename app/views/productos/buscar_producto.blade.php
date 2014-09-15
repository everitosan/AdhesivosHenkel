@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Buscar Producto</h1>
			
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
					<select name="" id="">
						<option value=""></option>
						@foreach($Productos as $producto)
							<option value="{{$producto->clave}}">{{$producto->clave}}</option>
						@endforeach
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Nombre</label>
					<select name="" id="">
						<option value=""></option>
						@foreach($Productos as $producto)
							<option value="{{$producto->nombre}}">{{$producto->nombre}}</option>
						@endforeach
					</select>
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
						<option value="Peso">Peso</option>
						<option value="Volumen">Volumen</option>
						<option value="Pieza">Pieza</option>
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

			<div class="row boton">
				<div class="medium-12 columns">
					<button>Buscar</button>
				</div>
			</div>
	
		</article>
	</section>	
@stop