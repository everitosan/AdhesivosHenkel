@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar gasto</h1>

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
					<label for="">Monto</label>
					<input type="text">
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
				<div class="medium-6 columns">
					<label for="">Rubro</label>
					<select name="" id="">
						<option value=""></option>
					</select>
				</div>
				<div class="medium-6 columns">
					<label for="">RFC Contratista</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Concepto</label>
					<input type="text">
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
					<button>Buscar Reporte de gatos</button>
				</div>
			</div>
			

		</article>
	</section>	
@stop