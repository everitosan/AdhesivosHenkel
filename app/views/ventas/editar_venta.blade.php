@extends('header')
@section('content')
	<section class="venta">
		<article>
			<h1>Venta  #{{$venta->folio}}</h1>
		
		{{Form::model($venta, ['route'=>'updateventa','method'=>'PUT','role'=>'form','novalidate']) }}
	
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
				{{ Field::input('text', 'fecha'); }}
			</div>
			<div class="medium-3 columns">
				{{ Field::input('text', 'hora'); }}
			</div>
		</div>

		<div class="row">
			<div class="medium-6 columns">
				{{ Field::input('text', 'descuento_global'); }}

			</div>
			<div class="medium-6 columns">

				<label for="">Cliente</label>
					<select name="cliente" id="cliente">
						<option value=""></option>
						@foreach($clientes as $cliente)
							<option value="{{ $cliente->id }}">{{ $cliente->razonsocial }}</option>
						@endforeach
					</select>
			</div>
		</div>

		<div class="row">
			<div class="medium-4 columns">
				{{ Field::input('text', 'cuenta_bancaria'); }}
			</div>
			<div class="medium-4 columns">
				<label for="">Forma de pago</label>
				<select name="forma_pago" id="formapago">
					<option value=""></option>
					@foreach($FormaPago as $forma)
						<option value="{{ $forma->id }}">{{ $forma->nombre }}</option>
					@endforeach
				</select>
			</div>
			<div class="medium-4 columns">
				<label for="">Condición de pago</label>
				<select name="condicion_pago" id="condicionpago">
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
				<select name="vendedor" id="vendedor">
					<option value=""></option>
					@foreach($vendedor as $usuario)
						<option value="{{ $usuario->id}}">{{ $usuario->nombre}}</option>
					@endforeach
				</select>
			</div>
		</div>

		<div class="row">
			<div class="medium-12 columns">
				{{ Field::input('text', 'observaciones_generales'); }}
				
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
				{{ Field::input('text', 'no_pedido'); }}
			</div>
			<div class="medium-6 column">
				{{ Field::input('text', 'fecha_embarque'); }}
			</div>
		</div>

		<div class="row">
			<div class="medium-12 columns">

				{{ Field::input('text', 'direccion_embarque'); }}
			</div>
		</div>
		<div class="row">
			<div class="medium-12 columns">
				{{ Field::input('text', 'observaciones_embarque'); }}
			</div>
		</div>
		<div class="row">
			
				    	<div class="row">
				      		<div class="medium-6 columns">
				      			<label for="">Producto</label>
								<select name="producto" id="producto">
									<option value=""></option>
									@foreach($productos as $producto)
										<option value="{{ $producto->id}}">{{ $producto->nombre}}</option>
									@endforeach
								</select>
				      		</div>
				      		<div class="medium-6 columns">
				      			<label for="">Presentación</label>
								<select name="" id="presentacion">
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
				    			<input name="cantidad" type="text" placeholder="KG" value="  {{ $venta->concept->cantidad}}">
				    		</div>
				    		<div class="medium-4 columns">
				    			<label for="">Precio Unitario</label>
				    			<input type="text" placeholder="$" value=" {{ $venta->concept->preciounitario}} " >
				    		</div>
				    		<div class="medium-4 columns">
				    			<label for="">Descuento </label>
				    			<input name="descuento" type="text"  placeholder="%" value=" {{ $venta->concept->descuento}}" >
				    		</div>
				    	</div>

				    	<div class="row">
							<div class="medium-6 columns">
								<label for="">No. envases</label>
								<input name="noenvases" type="text" value=" {{ $venta->concept->noenvases}}" >
							</div>
							<div class="medium-6 columns">
								<label for="">Facturar por</label>
								<select name="facturapor" id="facturapor">
									<option value=""></option>
									<option value="cantidad">Cantidad</option>
									<option value="noenvases">No. Envases</option>
								</select>
							</div>
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
				<input type="text" readonly value="{{$venta->subtotal}}">
			</div>
			<div class=" medium-4 columns">
				<label for="">IVA</label>
				<input type="text" readonly value="{{$venta->iva}}">
			</div>
			<div class=" medium-4 columns">
				<label for="">Total</label>
				<input type="text" readonly value="{{$venta->total}}">
			</div>
		</div>
		<div class="row boton">
			<div class="medium-12 columns">
				<button>Actualizar</button>
			</div>
		</div>
	
		{{Form::close()}}
		</article>

		<script>
			change_selectval('#cliente', '<?php echo $venta->cliente ?>');
			change_selectval('#formapago', '<?php echo $venta->forma_pago; ?>');
			change_selectval('#condicionpago', '<?php echo $venta->condicion_pago; ?>');
			change_selectval('#vendedor', '<?php echo $venta->vendedor; ?>');
			change_selectval('#producto', '<?php echo $venta->concept->producto; ?>');
			change_selectval('#presentacion', '<?php echo $venta->concept->product->presentacion?>');
			change_selectval('#facturapor', '<?php echo $venta->concept->facturapor; ?>');
		

		</script>



@stop