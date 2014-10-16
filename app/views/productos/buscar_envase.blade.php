@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Buscar Precio Envase</h1>

				<!--  Tabla de Resultados -->

			<table>
				<tr>
					<th>Presentación</th>
					<th>Fecha</th>
					<th>Divisa</th>
					<th>Predio de Compra</th>
					<th>Precio de Venta</th>
					<th>Editar</th>

				</tr>

				<tr>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input type="text" class="filtro"> </th>
					<th>	</th>
				</tr>

				@foreach($preciopresentaciones as $preciopresentacion)
				<tr>
					<td> {{$preciopresentacion->presentacio->nombre }} </td>
					<td> {{$preciopresentacion->fecha }} </td>
					<td> {{$preciopresentacion->divisa }} </td>
					<td> {{$preciopresentacion->preciocompra }} </td>
					<td> {{$preciopresentacion->precioventa }} </td>
					<td> <a class="button radius tiny"  href="{{ route('viewpreciopresentacion',[$preciopresentacion->id]) }}">Editar</a>  </td>
				</tr>
				@endforeach
			</table>

		</article>
	</section>	
@stop