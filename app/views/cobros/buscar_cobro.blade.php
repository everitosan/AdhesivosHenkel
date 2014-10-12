@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar cobro</h1>


			<div class="medium-12 columns">
				<dl class="accordion" data-accordion>
				  <dd class="accordion-navigation">
				    <a href="#panel1">Buscar Cobro</a>
				    <div id="panel1" class="content">

			<div class="row title">
				<div class="medium-6 columns">
					<h3>Venta por cobrar</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>

			<div class="row">
				<div class="medium-6 columns">
					<label for="">Tipo</label>
					<select name="" id="">
						<option value=""></option>
						<option value="Factura-e">Factura-e</option>
						<option value="Factura">Factura</option>
						<option value="Nota">Nota</option>
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">Folio</label>
					<input type="text">
				</div>
			</div>
			<div class="row title">
				<div class="medium-12 columns">
					<h3>Información del cobro</h3>
				</div>
			</div>	
			<div class="row">
				<div class="medium-4 columns">
					<label for="">Monto (MXP)</label>
					<input type="text" placeholder="$">
				</div>
				<div class="medium-4 columns">
					<label for="">Desde</label>
					<input type="date">
				</div>
				<div class="medium-4 columns">
					<label for="">Hasta</label>
					<input type="date">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Número de referencia/cheque</label>
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