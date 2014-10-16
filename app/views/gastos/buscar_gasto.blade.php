@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar gasto</h1>
			
			<!--  Tabla de Resultados -->

			<table>
				<tr>
					<th>Fecha</th>
					<th>RFC</th>
					<th>Rubro</th>
					<th>Concepto</th>
					<th>Usuario</th>
					<th>Monto</th>
					<th>Editar</th>

				</tr>

				<tr>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					
					<th>	</th>
				</tr>

				@foreach($gastos as $gasto)
				<tr>
					
					<td> {{$gasto->fecha}} </td>
					<td> {{$gasto->rfc}} </td>
					<td> {{$gasto->rubro}} </td>
					<td> {{$gasto->concepto}} </td>
					<td> {{$gasto->usuario}} </td>
					<td> {{$gasto->monto}} </td>
					<td> <a class="button radius tiny"  href="{{ route('viewgasto',[$gasto->id]) }}">Editar</a>  </td>
				</tr>
				@endforeach
			</table>

		</article>
	</section>	
@stop