@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar forma de pago</h1>
			
				<!--  Tabla de Resultados -->

			<table>
				<tr>
					<th>Nombre</th>
					<th>Editar</th>

				</tr>

				<tr>
					<th> <input class="filtro" type="text"> </th>
					
					<th>	</th>
				</tr>

				@foreach($formaspago as $formapago)
				<tr>
					
					<td> {{$formapago->nombre}} </td>
					<td> <a class="button radius tiny"  href="{{ route('viewformapago',[$formapago->id]) }}">Editar</a>  </td>
				</tr>
				@endforeach
			</table>
			
		</article>
	</section>	
@stop