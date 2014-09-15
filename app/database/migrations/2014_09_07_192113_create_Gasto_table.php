<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGastoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('Gasto', function(Blueprint $table)
		{
			$table->increments('id');
			$table->float('monto');
			$table->date('fecha');
			$table->integer('rubro')->unsigned();
			$table->string('rfc');
			$table->string('concepto');
			$table->integer('usuario')->unsigned();
			$table->timestamps();

			$table->foreign('rubro')->references('id')->on('RubrosGasto');
			$table->foreign('usuario')->references('id')->on('Usuarios');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('Gasto');
	}

}
