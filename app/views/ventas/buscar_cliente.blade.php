@extends('header')
@section('content')
	<section class="compra">
		<article>
			<h1>Buscar Cliente</h1>


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

		@foreach($clientes as $cliente)
		
			<tr>

				<td> {{ $cliente->rfc }} </td>
				<td> {{ $cliente->razonsocial}} </td>
				<td> {{ $cliente->ciudad }} </td>
				<td> {{ $cliente->estado }} </td>
				<td> {{ $cliente->delegacionmunicipio }} </td>

				<td> <a class="button radius tiny" href=" {{ route('viewcliente',[$cliente->id]) }}  ">Editar  </a> </td>
			</tr>
		
		@endforeach

		</article>
	</section>	
@stop