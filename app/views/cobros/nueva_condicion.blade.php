@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Agregar nueva condición de pago</h1>

			{{Form::open(['route'=>'setcondicionpago','method'=>'POST','role'=>'form','novalidate']) }}
			
			<div class="row title">
				<div class="medium-6 columns">
					<h3>Información sobre la condición de pago</h3>
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
					<label for="">Días de crédito</label>
					<input name="diascredito" type="text">
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