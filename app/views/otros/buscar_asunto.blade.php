@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar asunto pendiente</h1>

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
					<input type="text">
				</div>
			</div>

			<div class="row">
				<div class="medium-6 columns">
					<label for="">Fecha limite desde</label>
					<input type="date">
				</div>
				<div class="medium-6 columns">
					<label for="">Fecha limite hasta</label>
					<input type="text">
				</div>
			</div>

			<div class="row">
				<div class="medium-8 columns">
					<label for="">Descripción</label>
					<input type="text">
				</div>
				<div class="medium-4 columns">
					<label for="">Estado</label>
					<select name="" id="">
						<option value=""></option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Respuesta</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Responsable</label>
					<select name="" id="">
						<option value=""></option>
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