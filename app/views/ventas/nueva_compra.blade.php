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
					<option value="Factura-e">Factura-e</option>
					<option value="Factura">Factura</option>
					<option value="Nota">Nota</option>
				</select>
			</div>
			<div class="medium-3 columns">
				<label for="">Folio Factura</label>
				<input type="text">
			</div>
			<div class="medium-3 columns">
				<label for="">Fecha</label>
				<input class="date" type="date">
			</div>
			<div class="medium-3 columns">
				<label for="">Hora</label>
				<input class="time" type="time">
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
					@foreach($FormaPago as $forma)
						<option value="{{ $forma->id }}">{{ $forma->nombre }}</option>
					@endforeach
				</select>
			</div>
			<div class="medium-4 columns">
				<label for="">Condición de pago</label>
				<select name="" id="">
					<option value=""></option>
					@foreach($CondicionPago as $condicion)
						<option value="{{ $condicion->id}}">{{ $condicion->nombre}}</option>
					@endforeach
				</select>
			</div>
		</div>
		<div class="row">
			<div class="medium-6 columns">
				<label for="">Comprador</label>
				<select name="" id="">
					<option value=""></option>
					@foreach($compradores as $comprador)
						<option value="{{ $comprador->id }}">{{ $comprador->nombre }}</option>
					@endforeach
				</select>
			</div>
			<div class="medium-6 columns">
				<label for="">Proveedor</label>
				<select name="" id="">
					<option value=""></option>
					@foreach($proveedores as $proveedor)
						<option value="{{ $proveedor->id }}">{{ $proveedor->razonsocial }}</option>
					@endforeach
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
				<dl class="accordion" data-accordion>
				  <dd class="accordion-navigation">
				    <a href="#panel1">Agregar concepto</a>
				    <div id="panel1" class="content">
				    	<div class="row">
				      		<div class="medium-6 columns">
				      			<label for="">Producto</label>
								<select name="" id="">
									<option value=""></option>
									@foreach($productos as $producto)
										<option value="{{ $producto->id}}">{{ $producto->nombre}}</option>
									@endforeach
								</select>
				      		</div>
				      		<div class="medium-6 columns">
				      			<label for="">Presentación</label>
								<select name="" id="">
									<option value=""></option>
									@foreach($presentaciones as $presentacion)
										<option value="{{ $presentacion->id}}">{{ $presentacion->nombre}}</option>
									@endforeach
								</select>
				      		</div>
				    	</div>
				    	<div class="row">
				    		<div class="medium-4 columns">
				    			<label for="">Cantidad</label>
				    			<input type="text" placeholder="KG">
				    		</div>
				    		<div class="medium-4 columns">
				    			<label for="">Precio Unitario</label>
				    			<input type="text" placeholder="$">
				    		</div>
				    		<div class="medium-4 columns">
				    			<label for="">Dolares</label>
				    			<input type="text"  placeholder="$$" readonly>
				    		</div>
				    	</div>

				    	<div class="row">
							<div class="medium-12 columns">
								<label for="">Subtotal</label>
								<input type="text" placeholder="$" readonly>
							</div>
				    	</div>
				    </div>
				  </dd>
				</dl>
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