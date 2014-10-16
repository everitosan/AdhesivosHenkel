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
				{{ Field::input('text', 'folio', $folio); }}
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
				<select name="condicion_pago" id="condicion_pago">
					<option value=""></option>
					@foreach($CondicionPago as $condicion)
						<option value="{{ $condicion->id}}">{{ $condicion->nombre}}</option>
					@endforeach
				</select>

				<input id="estatus" name="estatus" value="1" class="hidden" type="hidden">
				<input id="fecha_vencimiento" name="fecha_vencimiento" class="hidden" type="date">
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
								<select id="producto" name="producto" id="">
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
				    			<input id="cantidad" name="cantidad" type="text" placeholder="KG">
				    		</div>
				    		<div class="medium-4 columns">
				    			<label for="">Precio Unitario</label>
				    			<input id="preciounitario" name="preciounitario" type="text" placeholder="$">
				    		</div>
				    		<div class="medium-4 columns">
				    			<label for="">Descuento </label>
				    			<input name="descuento" id="descuento" type="text"  placeholder="%">
				    		</div>
				    	</div>

				    	<div class="row">
							<div class="medium-6 columns">
								<label for="">No. envases</label>
								<input id="no_envases" name="noenvases" type="text">
							</div>
							<div class="medium-6 columns">
								<label for="">Facturar por</label>
								<select name="facturapor" id="facturar_por">
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
				<input name="subtotal" type="text" readonly id="subtotal">
			</div>
			<div class=" medium-4 columns">
				<label for="">IVA</label>
				<input name="iva" type="text" readonly id="iva">
			</div>
			<div class=" medium-4 columns">
				<label for="">Total</label>
				<input name="total" type="text" readonly id="total">
			</div>
		</div>
		<div class="row boton">
			<div class="medium-12 columns">
				<button>Agregar nuevo</button>
			</div>
		</div>

		{{Form::close()}}

		</article>

<script>
	$('#producto').on('change', request_info_product);
	$('#no_envases').on('keyup', envases_cambia);
	$('#cantidad').on('keyup', cantidad_cambia);
	$('#facturar_por').on('change', factura_cambia);
	$('#condicion_pago').on('change', condicion_cambia);

	function cantidad_cambia()
	{
		var can=$(this).val()/ $(this).attr('data');
		if(parseFloat(can)>parseInt(can))
			can=parseInt(can)+1;
		$('#no_envases').val( can);
		total();
	}

	function envases_cambia()
	{
		$('#cantidad').val($(this).val()* $('#cantidad').attr('data')   );
		total();
	}

	function factura_cambia()
	{
		if( $(this).val()!="cantidad" )
		{
			$('#no_envases').attr('readonly',null);
			$('#cantidad').attr('readonly','readonly');
		}
		else
		{
			$('#no_envases').attr('readonly','readonly');
			$('#cantidad').attr('readonly',null);
		}
	}

	function condicion_cambia()
	{
		var value=$(this).val();
		var texto;
		$(this).children('option').each(function(){
			if ($(this).attr('value')==value )
			{
				texto=$(this).text();
				console.log(texto);
			}
		});

		if( texto.indexOf('crédito') !=-1)
		{
			$('#estatus').val(0);
			var dias= parseInt(texto.substring(8));
			var fecha_inicio= $('.date').val().replace("-","/").replace("-","/");
			var fecha=new Date(fecha_inicio);
			fecha.setDate(fecha.getDate()+dias);

			console.log(fecha);

			var dia=fecha.getDate();
			var mes=fecha.getMonth();
			var anio=fecha.getFullYear();

			mes++;
			mes=menordiez(mes);
			dia=menordiez(dia);

			var fecha_completa=anio+'-'+mes+'-'+dia;
			console.log(fecha_completa);
			$('#fecha_vencimiento').val(fecha_completa);
		}
	}

	function total()
	{	
		var subtotal=$('#no_envases').val()*$('#preciounitario').val();
		var iva=subtotal*.16;
		var total=subtotal+iva;
		$('#subtotal').val(subtotal);
		$('#iva').val(iva);
		$('#total').val(total);
	}

	function request_info_product () {
		var value=$(this).val();

		var petition=new ajax_petition('POST');

		petition.ajax_conf.url='obtenProducto';

		petition.ajax_conf.data={
					"_token": $( this ).find( 'input[name=_token]' ).val(),
					'id':value
					};

		petition.ajax_conf.success=function(data){
	
			if(data.precio[0] != undefined )
			{
				$('#preciounitario').val(data.precio[0].precioventa).attr('data',data.precio[0].precioventa);
				$('#cantidad').val(data.producto.cantidad).attr('data',data.producto.cantidad);
				$('#no_envases').val("1").attr('readonly','readonly');

				change_select('#presentacion',data.producto.presentacio.nombre);
				change_select('#facturar_por','Cantidad');
				$('#descuento').val(0);
				total();
			}	
			else
			{
				alert("Verificar que tenga un precio asignado");
			}
		}

		petition.execute();
		
	}

	
</script>
		



@stop