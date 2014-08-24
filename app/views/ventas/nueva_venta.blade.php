@extends('header')
@section('content')
	<section class="venta">
		<article>
			<h1>Nueva Venta</h1>
		


		<div class="row title">
			<div class="small-6 columns"> <h3> Datos de la venta </h3></div>
			<div class="small-6 columns"> <button>Limpiar</button> </div>
		</div>
		<div class="row">
			<div class="medium-3 columns">
				<label for="">Tipo:</label>
				<select name="" id="">
						<option value=""></option>
				</select>
			</div>
			<div class="medium-3 columns">
				<label for="">Folio</label>
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
			<div class="medium-6 columns">
				<label for="">Descuento Global %</label>
				<input type="text">
			</div>
			<div class="medium-6 columns">
				<label for="">Cliente</label>
					<select name="" id="">
						<option value=""></option>
					</select>
			</div>
		</div>

		<div class="row">
			<div class="medium-4 columns">
				<label for="">Cuenta bancaria</label>
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
			<div class="medium-12 columns">
				<label for="">Vendedor</label>
				<select name="" id="">
					<option value=""></option>
				</select>
			</div>
		</div>
		
		<div class="row title">
			<div class="medium-12 columns">
				<h3>
				Datos del pedido
				</h3>
			</div>
		</div>


		<div class="row">
			<div class="medium-6 column">
				<label for="">No. de pedido</label>
				<input type="text"></div>
			<div class="medium-6 column">
				<label for="">Fecha de embarque</label>
				<input type="date"></div>
		</div>

		<div class="row">
			<div class="medium-12 columns">
				<label for="">Dirección de embarque</label>
				<input type="text" value="MISMO" >
			</div>
		</div>
		<div class="row">
			<div class="medium-12 columns">
				<label for="">Observaciones del embarque</label>
				<input type="text">
			</div>
		</div>
		<div class="row">
			<div class="medium-12 columns">
				<button>Agregar concepto</button>
			</div>
		</div>
		<div class="row title">
			<div class="medium-12 columns">
				<h3>Total de la venta</h3>
			</div>
		</div>
		<div class="row">
			<div class=" medium-4 columns">
				<label for="">Subtotal</label>
				<input type="text" readonly>
			</div>
			<div class=" medium-4 columns">
				<label for="">IVA</label>
				<input type="text" readonly>
			</div>
			<div class=" medium-4 columns">
				<label for="">Total</label>
				<input type="text" readonly>
			</div>
		</div>
		<div class="row">
			<div class="medium-12 columns">
				<button>Agregar nuevo</button>
			</div>
		</div>

		</article>

		



@stop