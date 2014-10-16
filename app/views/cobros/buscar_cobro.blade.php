@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar cobro</h1>


				<!--  Tabla de Resultados -->

			<table>
				<tr>
					<th>Folio</th>
					<th>Fecha</th>
					<th>Monto</th>
					<th>Referencia (cheque)</th>
					<th>Editar</th>

				</tr>

				<tr>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th>	</th>
				</tr>

				@foreach($cobros as $cobro)
				<tr>
					<td> {{$cobro->folio }} </td>
					<td> {{$cobro->fechapago }} </td>
					<td> {{$cobro->monto }} </td>
					<td> {{$cobro->noreferenciacheque }} </td>
					<td> <a class="button radius tiny"  href="{{ route('viewcobro',[$cobro->id]) }}">Editar</a>  </td>
				</tr>
				@endforeach
			</table>

		</article>
	</section>	
@stop