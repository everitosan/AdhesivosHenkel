@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Buscar Presentación</h1>

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

				@foreach($presentaciones as $presentacion)
				<tr>
					<td> {{$presentacion->nombre }} </td>

					<td> <a class="button radius tiny"  href=" {{ route('viewpresentacion',[$presentacion->id]) }}">Editar</a>  </td>
				</tr>
				@endforeach
			</table>

		</article>
	</section>	
@stop