@extends('header')
@section('content')
	<section class="venta">
		<article>
			<h1>Buscar Venta</h1>
		
	
	
	<!--   	TABLA DE RESULTADOS	 -->

	<table>
		<tr>
			<th>Folio</th>
			<th>Fecha</th>
			<th>Cliente</th>
			<th>Concepto</th>
			<th>Subtotal</th>
			<th>Iva</th>
			<th>Total</th>
			<th>Estatus</th>
			<th>Editar</th>
		</tr>
		<tr>
			<th> <input class="filtro" type="text"> </th>
			<th> <input class="filtro" type="text"> </th>
			<th> <input class="filtro" type="text"> </th>
			<th> <input class="filtro" type="text"> </th>
			<th> <input class="filtro" type="text"> </th>
			<th> <input class="filtro" type="text"> </th>
			<th> <input class="filtro" type="text"> </th>
			<th> <select class="filtro"  name="" id="">
					<option value=""></option>
					<option value="Pagado">Pagado</option>
					<option value="Pendiente">Pendiente</option>
				</select> 
			</th>
			<th></th>
		</tr>

		@foreach($ventas as $venta)
		
			<tr>

				<td> {{ $venta->folio }} </td>
				<td> {{ $venta->fecha }} </td>
				<td> {{ $venta->client->razonsocial }} </td>
				<td> {{ $venta->concept->product->nombre }} </td>
				<td> {{ $venta->subtotal }} </td>
				<td> {{ $venta->iva }} </td>
				<td> {{ $venta->total }} </td>
				@if( $venta->estatus==1)
					<td> Pagado </td>
				@else
					<td> Pendiente </td>
				@endif
				<td> <a class="button radius tiny" href=" {{ route('viewventa',[$venta->id]) }}  ">Editar  </a> </td>
			</tr>
		
		@endforeach

	</table>

	</article>
	</section>
@stop