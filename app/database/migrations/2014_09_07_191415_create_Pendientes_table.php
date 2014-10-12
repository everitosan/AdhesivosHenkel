<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePendientesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('Pendientes', function(Blueprint $table)
		{
			$table->increments('id');
			$table->date('fecha_limite');
			$table->string('descripcion');
			$table->string('estado');
			$table->string('respuesta');
			$table->integer('responsable')->unsigned();
			$table->timestamps();

			$table->foreign('responsable')->references('id')->on('Usuarios');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('Pendientes');
	}

}
