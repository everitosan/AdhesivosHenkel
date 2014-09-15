<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDatosContactoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('DatosContacto', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('nombre');
			$table->string('apppaterno');
			$table->string('appmaterno');
			$table->enum('genero',['masculino','femenino']);
			$table->string('email');
			$table->integer('telefonos')->unsigned();
			$table->timestamps();

			$table->foreign('telefonos')->references('id')->on('Telefonos');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('DatosContacto');
	}

}
