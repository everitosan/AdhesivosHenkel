<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUsuariosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('Usuarios', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('nombre');
			$table->text('direccion');
			$table->integer('noexterior');
			$table->integer('nointerior');
			$table->string('colonia');
			$table->string('delegacionmunicipio');
			$table->string('ciudad');
			$table->string('estado');
			$table->integer('cp');
			$table->string('refereniasubicacion');
			$table->integer('telefono');
			$table->enum('tipousuario',['admin','user']);
			$table->string('nombreusuario');
			$table->string('password');
			$table->string('remember_token')->nullable();
			$table->timestamps();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('Usuarios');
	}

}
