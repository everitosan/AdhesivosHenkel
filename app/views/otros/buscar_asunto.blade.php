@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar asunto pendiente</h1>
			

			<div class="medium-12 columns">
				<dl class="accordion" data-accordion>
				  <dd class="accordion-navigation">
				    <a href="#panel1">Buscar Asunto</a>
				    <div id="panel1" class="content">

			{{Form::open(['route'=>'get_pendientes','method'=>'POST','role'=>'form','novalidate']) }}

			<div class="row title">
				<div class="medium-6 columns">
					<h3>Asunto pendiente</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>

			<div class="row">
				<div class="medium-6 columns">
					<label for="">Fecha inicio desde</label>
					<input type="date">
				</div>
				<div class="medium-6 columns">
					<label for="">Fecha inicio hasta</label>
					<input type="date">
				</div>
			</div>

			<div class="row">
				<div class="medium-6 columns">
					<label for="">Fecha limite desde</label>
					<input type="date">
				</div>
				<div class="medium-6 columns">
					<label for="">Fecha limite hasta</label>
					<input type="date">
				</div>
			</div>

			<div class="row">
				<div class="medium-6 columns">
					<label for="">Responsable</label>
					<select class="buscar_select" name="responsable" id="">
						<option value=""></option>
						@foreach($Usuarios as $usuario)
							<option value=" {{$usuario->id}} "> {{$usuario->nombre}} </option>
						@endforeach
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Estado</label>
					<select class="buscar_select" name="estado" id="">
						<option value=""></option>
						<option value="Activo">Activo</option>
						<option value="Finalizado">Finalizado</option>
						<option value="Suspendido">Suspendido</option>
						<option value="Cancelado">Cancelado</option>
					</select>
				</div>
			</div>
			

			
			
		{{Form::close()}}

				</div>
				</dd>
				</dl>
			</div>
	


		<!--  Cargamos asuntos  -->
    	<table>
			<tr>
				<th>Fecha límite</th>
				<th>Descripción</th>
				<th>Estado</th>
				<th>Respuesta</th>
				<th>Responsable</th>
				<th>Cambiar estado</th>
			</tr>
			@foreach($pendientes as $pendiente)
				
				<tr id="{{ $pendiente->id }} " class="filled" update="update_pendiente" >
					<td> {{ $pendiente->fecha_limite  }} 	</td>
					<td> {{ $pendiente->descripcion  }} 	</td>
					<td> {{ $pendiente->estado  }} 		</td>
					<td> {{ $pendiente->respuesta  }} 	</td>
					<td> {{ $pendiente->responsabl->nombre  }} 	</td>
					<td>
						<select class="estado_a" name="" id="" >
						<option value=""></option>
						<option value="Activo" selected>Activo</option>
						<option value="Finalizado">Finalizado</option>
						<option value="Suspendido">Suspendido</option>
						<option value="Cancelado">Cancelado</option>
					</select>
					</td>
				</tr>
				
			@endforeach
    	</table>
		




		</article>
	</section>	

	<script src=" {{  asset('js/estado_a.js')  }}">  </script>
@stop