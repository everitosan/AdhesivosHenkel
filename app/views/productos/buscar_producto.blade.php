@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Buscar Producto</h1>
			


			<!--  Tabla de Resultados -->

			<table>
				<tr>
					<th>Nombre</th>
					<th>Clave</th>
					<th>Descripción</th>
					<th>Medida</th>
					<th>Presentación</th>
					<th>Cantidad</th>
					<th>Editar</th>

				</tr>

				<tr>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input class="filtro" type="text"> </th>
					<th> <input type="text" class="filtro"> </th>
					<th> <input type="text" class="filtro"> </th>
					<th>	</th>
				</tr>

				@foreach($Productos as $producto)
				<tr>
					<td> {{$producto->nombre }} </td>
					<td> {{$producto->clave }} </td>
					<td> {{$producto->descripcion }} </td>
					<td> {{$producto->medida }} </td>
					<td> {{$producto->presentacio->nombre }} </td>
					<td> {{$producto->cantidad }} </td>
					<td> <a class="button radius tiny"  href="{{ route('viewproducto',[$producto->id]) }}">Editar</a>  </td>
				</tr>
				@endforeach
			</table>
	
		</article>
	</section>	
@stop