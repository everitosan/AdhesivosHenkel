@extends('header')
@section('content')
	<section class="compra">
		<article>

			<h1>Buscar Compra</h1>

			<!--   	TABLA DE RESULTADOS	 -->

	<table>
		<tr>
			<th>Folio</th>
			<th>Fecha</th>
			<th>Proveedor</th>
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
			<th> <select class="filtro" name="" id="">
					<option value=""></option>
					<option value="Pagado">Pagado</option>
					<option value="Pendiente">Pendiente</option>
				</select> 
			</th>
			<th></th>
		</tr>

		@foreach($compras as $compra)
		
			<tr>

				<td> {{ $compra->foliofactura }} </td>
				<td> {{ $compra->fecha }} </td>
				<td> {{ $compra->proveedo->razonsocial }} </td>
				<td> {{ $compra->concept->product->nombre }} </td>
				<td> {{ $compra->subtotal }} </td>
				<td> {{ $compra->iva }} </td>
				<td> {{ $compra->total }} </td>
				@if( $compra->status==1)
					<td> Pagado </td>
				@else
					<td> Pendiente </td>
				@endif
				<td> <a class="button radius tiny" href=" {{ route('viewcompra',[$compra->id]) }}  ">Editar  </a> </td>
			</tr>
		
		@endforeach

		</article>
	</section>	
@stop