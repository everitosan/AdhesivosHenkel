@extends('header')
@section('content')
	
	<section class="home">
	<article>
		
		<h1>Distribuidora de Adhesivos Henkel</h1>
		<h3>"FACTURAS POR COBRAR"</h3>

		<table>
			<tr>
				<th>Folio</th>
				<th>RFC	</th>
				<th>Fecha Venta</th>
				<th>Fecha Vencimiento</th>
				<th>Fecha último cobro</th>
				<th>Monto</th>
				<th>Total Cobrado</th>
				<th>Deuda</th>
				<th>Cobrar</th>
				<th>Pendientes</th>
			</tr>
			@foreach( $ventas as $venta )
			<tr>
				<td> {{ $venta->folio }} </td>
				<td> {{ $venta->client->rfc }} </td>
				<td> {{ $venta->fecha }} </td>
				<td> {{ $venta->fechavencimiento}} </td>
				<td> {{ $venta->fechaultimocobro}} </td>
				<td> {{ $venta->total}} </td>
				<td> {{ $venta->totalcobrado}} </td>
				<td>  </td>
				<td> <a href="{{ route('nuevo_cobro') }}" > Cobrar </td>
				<td> <a href="{{ route('nuevo_cobro') }}" > Pendientes </td>
			</tr>
			@endforeach

		</table>

	</article>
	</section>

@stop