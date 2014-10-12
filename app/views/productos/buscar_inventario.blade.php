@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Buscar Inventario</h1>


			<div class="medium-12 columns">
				<dl class="accordion" data-accordion>
				  <dd class="accordion-navigation">
				    <a href="#panel1">Buscar Precio Producto</a>
				    <div id="panel1" class="content">
				    	
			<div class="row title">
				<div class="medium-6 columns">
					<h3>Información del corte de inventario</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>

			<div class="row">
				<div class="medium-4 column">
					<label for="">Desde</label>
					<input type="date">
				</div>
				<div class="medium-4 column">
					<label for="">Hasta</label>
					<input type="date">
				</div>
				<div class="medium-4 column">
					<label for="">Hora</label>
					<input type="time">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 column">
					<label for="">Observaciones</label>
					<input type="text">
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
			
				</div>
				</dd>
				</dl>
			</div>

		</article>
	</section>	
@stop