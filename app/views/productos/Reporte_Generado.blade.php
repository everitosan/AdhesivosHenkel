@extends('header')
@section('content')

<section class="compra">
	<article>
		<h1>Reporte</h1>
		

		<table>
		  <thead>
		    <tr>
		      	<th>Folio</th>
				<th>RFC	</th>
				<th>Fecha Venta</th>


				<th>Subtotal</th>
				<th>Iva</th>
				<th>Total Cobrado</th>
		    </tr>
		  </thead>
		  <tbody>
		  	@foreach($reportes as $reporte)
			
			
		    <tr>
		      	<td> {{ $reporte->folio }} </td>
				<td> {{ $reporte->client->rfc }} </td>
				<td> {{ $reporte->fecha }} </td>

				<td> {{ $reporte->subtotal}} </td>
				<td> {{ $reporte->iva}} </td>
				<td> {{ $reporte->total}} </td>
		      
		    </tr>

		   	@endforeach
		  </tbody>
		</table>
		

	</article>
</section>

@stop