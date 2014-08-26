@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Nueva Compra</h1>
		
		<div class="row title">
			<div class="medium-6 columns">
				<h3>Datos de la compra</h3>
			</div>
			<div class="medium-6 columns">
				<button>Limpiar</button>
			</div>
		</div>
		<div class="row">
			<div class="medium-3 columns">
				<label for="">Tipo</label>
				<select name="" id="">
					<option value=""></option>
				</select>
			</div>
			<div class="medium-3 columns">
				<label for="">Folio Factura</label>
				<input type="text">
			</div>
			<div class="medium-3 columns">
				<label for="">Fecha</label>
				<input type="date">
			</div>
			<div class="medium-3 columns">
				<label for="">Hora</label>
				<input type="time">
			</div>
		</div>
		<div class="row">
			<div class="medium-4 columns">
				<label for="">Descuento (%)</label>
				<input type="text">
			</div>
			<div class="medium-4 columns">
				<label for="">Forma de pago</label>
				<select name="" id="">
					<option value=""></option>
				</select>
			</div>
			<div class="medium-4 columns">
				<label for="">Condición de pago</label>
				<select name="" id="">
					<option value=""></option>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="medium-6 columns">
				<label for="">Comprador</label>
				<select name="" id="">
					<option value=""></option>
				</select>
			</div>
			<div class="medium-6 columns">
				<label for="">Proveedor</label>
				<select name="" id="">
					<option value=""></option>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="medium-12 columns">
				<label for="">No. pedido</label>
				<input type="text">
			</div>
		</div>
		<div class="row">
			<div class="medium-12 columns">
				<label for="">Observaciones generales</label>
				<input type="text">
			</div>
		</div>
		<div class="row">
			<div class="medium-12 columns">
				<label for="">Tipo de cambio</label>
				<input type="text" readonly >
			</div>
		</div>
		<div class="row">
			<div class="medium-12 columns">
				<button>Agregar conceptos</button>
			</div>
		</div>
		<div class="row title">
			<div class="medium-12 columns">
				<h3>Total de la compra</h3>
			</div>
		</div>
		<div class="row">
			<div class="medium-4 columns">
				<label for="">Subtotal</label>
				<input type="text" readonly>
			</div>
			<div class="medium-4 columns">
				<label for="">Iva</label>
				<input type="text" readonly>
			</div>
			<div class="medium-4 columns">
				<label for="">Total</label>
				<input type="text" readonly>
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