@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Reporte Productos Vendidos</h1>
			
			{{Form::open(['route'=>'getreporteproductos','method'=>'POST','role'=>'form','novalidate']) }}
			
			<div class="row title">
				<div class="medium-12 columns">
					<h3>Productos vendidos</h3>
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Cliente</label>
					<select name="cliente" id="">
						<option value=""></option>
						@foreach($clientes as $cliente)
							<option value="{{ $cliente->id}}">{{ $cliente->razonsocial}}</option>
						@endforeach
					</select>
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					<label for="">Desde</label>
					<input name="fechadesde" type="date">
				</div>
				<div class="medium-6 columns">
					<label for="">Hasta</label>
					<input name="fechahasta" type="date">
				</div>
			</div>
			<div class="row boton">
				<div class="medium-12 columns">
					<button>Generar Reporte</button>
					
				</div>
			</div>
		
		{{Form::close()}}
		
		</article>
	</section>	
@stop