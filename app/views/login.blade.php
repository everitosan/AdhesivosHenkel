@extends('header_log')

@section('content')



	<div class="half">
      <img src="img/login.png" alt="DDAH" width="150" height="100">
	
	{{Form::open(['route'=>'dologin','method'=>'POST','role'=>'form']) }}

	<div>
		{{ Field::input('text', 'nombreusuario'); }}
	</div>
	<div>
		{{ Field::input('password', 'password'); }}
	</div>

	<div>
 		 <button>Ingresar</button>
	</div>
	</div>

	{{Form::close()}}

	@if(Session::has('login_error'))
		<p class="error">Acceso denegado</p>
	@endif

@stop