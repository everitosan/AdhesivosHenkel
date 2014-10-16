@extends('header')
@section('content')
	<section class="cobro">
		<article>
			<h1>Buscar rubros de gasto</h1>
			
			<!--  Tabla de Resultados -->

			<table>
				<tr>
					<th>Nombre</th>
					<th>Descripción</th>
					<th>Editar</th>

				</tr>

				<tr>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					
					
					<th>	</th>
				</tr>

				@foreach($rubrosgastos as $rubrogasto)
				<tr>
					
					<td> {{$rubrogasto->nombre}} </td>
					<td> {{$rubrogasto->descripcion}} </td>

					<td> <a class="button radius tiny"  href="{{ route('viewrubrogasto',[$rubrogasto->id]) }}">Editar</a>  </td>
				</tr>
				@endforeach
			</table>

		</article>
	</section>	
@stop