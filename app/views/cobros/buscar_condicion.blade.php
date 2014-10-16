@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar condición de pago</h1>
			
				<!--  Tabla de Resultados -->

			<table>
				<tr>
					<th>Nombre</th>
					<th>Días de crédito</th>
					<th>Editar</th>

				</tr>

				<tr>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					
					<th>	</th>
				</tr>

				@foreach($condicionesPago as $condicionpago)
				<tr>
					
					<td> {{$condicionpago->nombre}} </td>
					<td> {{$condicionpago->diascredito}} </td>
					<td> <a class="button radius tiny"  href="{{ route('viewcondicionpago',[$condicionpago->id]) }}">Editar</a>  </td>
				</tr>
				@endforeach
			</table>

		</article>
	</section>	
@stop