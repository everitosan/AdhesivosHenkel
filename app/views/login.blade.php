@extends('header_log')

@section('content')

<form class="ingreso" action="acceso.php" method="post" autocomplete="off">
<input type="hidden" name="continuar">
	<div class="half">
      <img src="img/login.png" alt="DDAH" width="150" height="100">
	</div>
	<div class="half">

	<div>
     	<label for="nombre_usuario">Usuario:</label>
    	<input name="nombre_usuario" type="text" autofocus="autofocus">	
	</div>
	<div>
      <label for="contrasena">Contraseña:</label>
      <input name="contrasena" type="password">
	</div>

	<div>
 		 <input type="submit" value="INGRESAR">
	</div>
	</div>
</form>

@stop