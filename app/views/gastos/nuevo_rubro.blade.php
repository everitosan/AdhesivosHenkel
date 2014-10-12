@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Agregar nuevo rubro de gasto</h1>
			
			{{Form::open(['route'=>'setrubrogasto','method'=>'POST','role'=>'form','novalidate']) }}

			<div class="row title">
				<div class="medium-6 columns">
					<h3>Rubro/categoría de gasto</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>

			<div class="row">
				<div class="medium-6 columns">
					{{ Field::input('text', 'nombre'); }}
					
				</div>
				<div class="medium-6 columns">
					{{ Field::input('text', 'descripcion'); }}
				</div>
			</div>

			<div class="row boton">
				<div class="medium-12 columns">
					<button>Agregar</button>
				</div>
			</div>

		{{Form::close()}}
		
		</article>
	</section>	
@stop