@extends('header')
@section('content')
	<section class="cliente">
		<article>
			<h1>Nuevo Cliente</h1>
			
			<div class="row title">
				<div class="medium-6 columns">
					<h3>Datos del cliente</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>
			<div class="row">
				<div class="medium-4 columns">
					<label for="">RFC</label>
					<input type="text">
				</div>
				<div class="medium-8 columns">
					<label for="">Razón Social</label>
					<input type="text">
				</div>
			</div>
			<div class="row title">
				<div class="medium-12 columns">
					<h3>Dirección fiscal</h3>
				</div>
			</div>
			<div class="row">
				<div class="medium-4 columns">
					<label for="">Calle</label>
					<input type="text">
				</div>
				<div class="medium-4 columns">
					<label for="">No. Ext</label>
					<input type="text">
				</div>
				<div class="medium-4 columns">
					<label for="">No. Int</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-4 columns">
					<label for="">Colonia</label>
					<input type="text">
				</div>
				<div class="medium-4 columns">
					<label for="">Delegación o Municipio</label>
					<input type="text">
				</div>
				<div class="medium-4 columns">
					<label for="">Ciudad</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Estado</label>
					<input type="text">
				</div>
				<div class="medium-6 columns">
					<label for="">C.P.</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Referencias de ubicación</label>
					<input type="text">
				</div>
			</div>
			<div class="row boton">
				<div class="medium-6 columns">
					<button>Agregar Contácto</button>
				</div>
				<div class="medium-6 columns">
					<button>Agregar Nuevo</button>
				</div>
			</div>
			
			
		</article>
	</section>	
@stop