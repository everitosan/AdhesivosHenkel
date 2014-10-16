@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Buscar Precio Producto</h1>

				<!--  Tabla de Resultados -->

			<table>
				<tr>
					<th>Producto</th>
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

				@foreach($precioproductos as $precioproducto)
				<tr>
					<td> {{$precioproducto->product->nombre }} </td>
					<td> {{$precioproducto->fecha }} </td>
					<td> {{$precioproducto->divisa }} </td>
					<td> {{$precioproducto->preciocompra }} </td>
					<td> {{$precioproducto->precioventa }} </td>
					<td> <a class="button radius tiny"  href="{{ route('viewprecioproducto',[$precioproducto->id]) }}">Editar</a>  </td>
				</tr>
				@endforeach
			</table>

		</article>
	</section>	
@stop