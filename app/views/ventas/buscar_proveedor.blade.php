@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Buscar Proveedor</h1>


	<table>
		<tr>
			<th>RFC</th>
			<th>Razón Social</th>
			<th>Cuidad</th>
			<th>Estado</th>
			<th>Delegación/Municipio</th>
			
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

		@foreach($proveedores as $proveedor)
		
			<tr>

				<td> {{ $proveedor->rfc }} </td>
				<td> {{ $proveedor->razonsocial}} </td>
				<td> {{ $proveedor->ciudad }} </td>
				<td> {{ $proveedor->estado }} </td>
				<td> {{ $proveedor->delegacionmunicipio }} </td>

				<td> <a class="button radius tiny" href=" {{ route('viewproveedor',[$proveedor->id]) }}  ">Editar  </a> </td>
			</tr>
		
		@endforeach

		</article>
	</section>	
@stop