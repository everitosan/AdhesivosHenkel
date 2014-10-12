@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar forma de pago</h1>
			
			<div class="medium-12 columns">
				<dl class="accordion" data-accordion>
				  <dd class="accordion-navigation">
				    <a href="#panel1">Buscar Forma de Pago</a>
				    <div id="panel1" class="content">

			<div class="row title">
				<div class="medium-6 columns">
					<h3>Información sobre la forma de pago</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>
				
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Nombre</label>
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