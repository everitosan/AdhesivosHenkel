@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Nuevo Producto</h1>

			{{Form::open(['route'=>'setproducto','method'=>'POST','role'=>'form','novalidate']) }}

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
					{{ Field::input('text', 'clave'); }}
				</div>
				<div class="medium-6 columns">
					{{ Field::input('text', 'nombre'); }}
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					{{ Field::input('text', 'descripcion'); }}
				</div>
			</div>
			<div class="row">
				<div class="medium-4 columns">
					<label for="">Medida</label>
					<select name="medida" id="">
						<option value=""></option>
						<option value="Peso">Peso</option>
						<option value="Volumen">Volumen</option>
						<option value="Pieza">Pieza</option>
					</select>
				</div>
				<div class="medium-4 columns">
					<label for="">Presentación</label>
					<select name="presentacion" id="">
						<option value=""></option>
						@foreach($presentaciones as $presentacion)
							<option value="{{ $presentacion->id}}">{{ $presentacion->nombre}}</option>
						@endforeach
					</select>
				</div>
				<div class="medium-4 columns">
					{{ Field::input('text', 'contenido'); }}
				</div>
				
			</div>
			<div class="row">
				<div class="medium-12 columns">
					{{ Field::input('text', 'precio'); }}
				</div>
			</div>
			<div class="row boton">
				<div class="medium-12 columns">
					<button>Agregar Nuevo</button>
				</div>
			</div>
	
		{{Form::close()}}
		</article>
	</section>	
@stop