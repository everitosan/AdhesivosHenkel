@extends('header')
@section('content')
	<section class="cliente">
		<article>
			<h1>Nuevo Cliente</h1>

			{{Form::open(['route'=>'setclientes','method'=>'POST','role'=>'form','novalidate']) }}

			<div class="row title">
				<div class="medium-6 columns">
					<h3>Datos del cliente</h3>
				</div>
				<div class="medium-6 columns">
					<button>Limpiar</button>
				</div>
			</div>
			<div class="row">
				<div class="medium-4 columns">
					{{ Field::input('text', 'rfc'); }}
				</div>
				<div class="medium-8 columns">
					<label for="">Razón Social</label>
					<input name="razonsocial" type="text">
				</div>
			</div>
			<div class="row title">
				<div class="medium-12 columns">
					<h3>Dirección fiscal</h3>
				</div>
			</div>
			<div class="row">
				<div class="medium-4 columns">
					{{ Field::input('text', 'calle'); }}
					
				</div>
				<div class="medium-4 columns">
					<label for="">No. Ext</label>
					<input name="noexterior" type="text">
				</div>
				<div class="medium-4 columns">
					<label for="">No. Int</label>
					<input type="text" name="nointerior">
				</div>
			</div>
			<div class="row">
				<div class="medium-4 columns">
					{{ Field::input('text', 'colonia'); }}
					
				</div>
				<div class="medium-4 columns">
					<label for="">Delegación o Municipio</label>
					<input type="text" name="delegacionmunicipio">
				</div>
				<div class="medium-4 columns">
					{{ Field::input('text', 'ciudad'); }}
					
				</div>
			</div>
			<div class="row">
				<div class="medium-6 columns">
					{{ Field::input('text', 'estado'); }}
					
				</div>
				<div class="medium-6 columns">
					<label for="">C.P.</label>
					<input type="text" name="cp" >
				</div>
			</div>
			<div class="row">
				<div class="medium-12 columns">
					<label for="">Referencias de ubicación</label>
					<input type="text" name="referenciasubicacion">
				</div>
			</div>

			<div class="row">
				<dl class="accordion" data-accordion>
				  <dd class="accordion-navigation">
				    <a href="#panel1">Agregar Contácto</a>
				    <div id="panel1" class="content">
				    	<div class="row">
				      		<div class="medium-4 columns">
								{{ Field::input('text', 'nombre'); }}	
				      		</div>
				      		<div class="medium-4 columns">
				      			<label for="">Apellido Paterno</label>
				      			<input type="text" name="apppaterno">
				      		</div>
				      		<div class="medium-4 columns">
				      			<label for="">Apellido Materno</label>
				      			<input type="text" name="appmaterno">
				      		</div>
				    	</div>
				    	<div class="row">
							<div class="medium-6 columns">
								<label for="">Género</label>
								<select name="genero" id="">
									<option value=""></option>
									<option value="masculino">Masculino</option>
									<option value="femenino">Femenino</option>
								</select>
							</div>
							<div class="medium-6 columns">
								<label for="">Correo Electrónico</label>
								<input type="email" name="email">
							</div>
				    	</div>
				    	<div class="row">
							<div class="medium-4 columns">
								<label for="">Teléfonfo</label>
								<input type="text" name="telefono" ></div>
							<div class="medium-4 columns">
								<label for="">Celular</label>
								<input type="text" name="celular" ></div>
							<div class="medium-4 columns">
								<label for="">Nextel</label>
								<input type="text" name="nextel" ></div>
				    	</div>
				    </div>
				  </dd>
				</dl>
			</div>
			
			<div class="row boton">
				<div class="medium-12 columns">
					<input class="boton" type="submit" value="Agregar Nuevo">
				</div>
			</div>
			
			{{Form::close()}}
		</article>
	</section>	
@stop