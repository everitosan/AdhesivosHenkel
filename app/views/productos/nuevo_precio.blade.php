@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Nuevo Precio Producto</h1>
			{{Form::open(['route'=>'setprecioproducto','method'=>'POST','role'=>'form','novalidate']) }}
			
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
					<select name="producto" id="">
						<option value=""></option>
						@foreach($productos as $producto)
							<option value="{{ $producto->id}}">{{ $producto->nombre}}</option>
						@endforeach
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Fecha en que cambió el precio</label>
					<input name="fecha" type="date">
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Divisa del precio de compra</label>
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
					<label for="">Precio de venta (pesos)</label>
					<input name="precioventa" type="text" placeholder="$">
					{{ $errors->first('email', '<p class="error" >:message</p>') }}
				</div>
			</div>
			<div class="row boton">
				<div class="medium-12 columns">
					<input class="boton" type="submit" value="Agregar Nuevo">
				</div>
			</div>

		{{Form::close()}}
		</article>
	</section>	
@stop