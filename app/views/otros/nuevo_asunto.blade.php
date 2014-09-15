@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Agregar asunto pendiente [General]</h1>

			<div class="row title">
				<div class="medium-6 columns">
					<h3>Asunto pendiente</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>

			<div class="row">
				<div class="medium-4 columns">
					<label for="">Fecha limite</label>
					<input type="date">
				</div>
				<div class="medium-8 columns">
					<label for="">Descripción</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Estado</label>
					<select name="" id="">
						<option value=""></option>
						<option value="Activo">Activo</option>
						<option value="Finalizado">Finalizado</option>
						<option value="Suspendido">Suspendido</option>
						<option value="Cancelado">Cancelado</option>
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Respuesta</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Responsable</label>
					<select name="" id="">
						<option value=""></option>
						@foreach($Usuarios as $usuario)
							<option value=" {{$usuario->id}} "> {{$usuario->nombre}} </option>
						@endforeach
					</select>
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