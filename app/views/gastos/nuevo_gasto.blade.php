@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Agregar nuevo gasto</h1>

			{{Form::open(['route'=>'setgasto','method'=>'POST','role'=>'form','novalidate']) }}
			
			<div class="row title">
				<div class="medium-6 columns">
					<h3>Información del gasto</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>

			<div class="row">
				<div class="medium-4 columns">
					{{ Field::input('text', 'monto','',['placeholder'=>'$'],[]); }}
				</div>
				<div class="medium-4 columns">
					{{Field::input('date','fecha');}}
				</div>
				<div class="medium-4 columns">
					<label for="">Rubro</label>
					<select name="rubro" id="">
						<option value=""></option>
						@foreach($Rubros as $rubro)
							<option value="{{ $rubro->id }}">{{ $rubro->nombre }}</option>
						@endforeach
					</select>
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">RFC Contratista</label>
					<input name="rfc" type="text">
				</div>
				<div class="medium-6 columns">
					{{Field::input('text','concepto');}}
				</div>
			</div>
			<div class="row title">
				<div class="medium-12 columns">
					<h3>Colaborador que autoriza</h3>
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Autorizó</label>
					<select name="usuario" id="">
						<option value=""></option>
						@foreach($Usuarios as $usuario)
							<option value="{{ $usuario->id }}">{{ $usuario->nombre }}</option>
						@endforeach
					</select>
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