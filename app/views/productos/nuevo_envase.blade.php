@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Nuevo Precio Envase</h1>
			{{Form::open(['route'=>'setprecioenvase','method'=>'POST','role'=>'form','novalidate']) }}
			
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
					<select name="presentacion" id="">
						<option value=""></option>
						@foreach($presentaciones as $presentacion)
							<option value="{{ $presentacion->id }}">{{ $presentacion->nombre }}</option>
						@endforeach
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Fecha de cambio</label>
					<input name="fecha" type="date">
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Divisa de compra</label>
					<select name="divisa" id="">
						<option value=""></option>
						<option value="pesos">pesos</option>
						<option value="dlls">dlls</option>
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Precio de compra</label>
					<input name="preciocompra" type="text" placeholder="$">
				</div>
			</div>
			
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Precio de venta (pesos mexicanos)</label>
					<input name="precioventa" type="text" placeholder="$" >
				</div>
			</div>
			<div class="row boton">
				<input class="boton" type="submit" value="Agregar Nuevo">
			</div>
		{{Form::close()}}
		</article>
	</section>	
@stop