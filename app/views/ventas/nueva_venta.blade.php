@extends('header')
@section('content')
	<section class="venta">
		<article>
			<h1>Nueva Venta</h1>
		
		{{Form::open(['route'=>'setventas','method'=>'POST','role'=>'form','novalidate']) }}

		<div class="row title">
			<div class="small-6 columns"> <h3> Datos de la venta </h3></div>
			<div class="small-6 columns"> <button>Limpiar</button> </div>
		</div>
		<div class="row">
			<div class="medium-3 columns">
				{{ Field::input('select', 'tipo','',[''],['Nota'=>'Nota']); }}
			</div>
			<div class="medium-3 columns">
				{{ Field::input('text', 'folio'); }}
			</div>
			<div class="medium-3 columns">
				{{ Field::input('date', 'fecha','',['class'=>'date']); }}
			</div>
			<div class="medium-3 columns">
				{{ Field::input('time', 'hora','',['class'=>'time']); }}
			</div>
		</div>

		<div class="row">
			<div class="medium-6 columns">
				{{ Field::input('text', 'descuento global','',['placeholder'=>'%']); }}

			</div>
			<div class="medium-6 columns">

				<label for="">Cliente</label>
					<select name="cliente" id="">
						<option value=""></option>
						@foreach($clientes as $cliente)
							<option value="{{ $cliente->id }}">{{ $cliente->razonsocial }}</option>
						@endforeach
					</select>
			</div>
		</div>

		<div class="row">
			<div class="medium-4 columns">
				{{ Field::input('text', 'cuenta bancaria'); }}
			</div>
			<div class="medium-4 columns">
				<label for="">Forma de pago</label>
				<select name="forma_pago" id="">
					<option value=""></option>
					@foreach($FormaPago as $forma)
						<option value="{{ $forma->id }}">{{ $forma->nombre }}</option>
					@endforeach
				</select>
			</div>
			<div class="medium-4 columns">
				<label for="">Condición de pago</label>
				<select name="condicion_pago" id="">
					<option value=""></option>
					@foreach($CondicionPago as $condicion)
						<option value="{{ $condicion->id}}">{{ $condicion->nombre}}</option>
					@endforeach
				</select>
			</div>
		</div>

		<div class="row">
			<div class="medium-12 columns">
				<label for="">Vendedor</label>
				<select name="vendedor" id="">
					<option value=""></option>
					@foreach($vendedor as $usuario)
						<option value="{{ $usuario->id}}">{{ $usuario->nombre}}</option>
					@endforeach
				</select>
			</div>
		</div>

		<div class="row">
			<div class="medium-12 columns">
				{{ Field::input('text', 'observaciones generales'); }}
				
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
				{{ Field::input('text', 'no pedido'); }}
			</div>
			<div class="medium-6 column">
				{{ Field::input('date', 'fecha embarque'); }}
			</div>
		</div>

		<div class="row">
			<div class="medium-12 columns">
				<label for="">Dirección de embarque</label>
				<input name="direccion_embarque" type="text" value="MISMO" >
			</div>
		</div>
		<div class="row">
			<div class="medium-12 columns">
				<label for="">Observaciones del embarque</label>
				<input name="observaciones_embarque" type="text">
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
								<select name="producto" id="">
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
				    			<input name="cantidad" type="text" placeholder="KG">
				    		</div>
				    		<div class="medium-4 columns">
				    			<label for="">Precio Unitario</label>
				    			<input type="text" placeholder="$">
				    		</div>
				    		<div class="medium-4 columns">
				    			<label for="">Descuento </label>
				    			<input name="descuento" type="text"  placeholder="%">
				    		</div>
				    	</div>

				    	<div class="row">
							<div class="medium-6 columns">
								<label for="">No. envases</label>
								<input name="noenvases" type="text">
							</div>
							<div class="medium-6 columns">
								<label for="">Facturar por</label>
								<select name="facturapor" id="">
									<option value=""></option>
									<option value="cantidad">Cantidad</option>
									<option value="noenvases">No. Envases</option>
								</select>
							</div>
				    	</div>
				    </div>
				  </dd>
				</dl>
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
		<div class="row boton">
			<div class="medium-12 columns">
				<button>Agregar nuevo</button>
			</div>
		</div>
	
		{{Form::close()}}
		</article>

		



@stop