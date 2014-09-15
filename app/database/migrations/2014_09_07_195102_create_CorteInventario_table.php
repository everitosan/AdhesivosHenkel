<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCorteInventarioTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('CorteInventario', function(Blueprint $table)
		{
			$table->increments('id');
			$table->date('fecha');
			$table->time('hora');
			$table->text('observaciones');
			$table->integer('producto')->unsigned();
			$table->integer('cantidadcontada');
			$table->timestamps();

			$table->foreign('producto')->references('id')->on('Producto');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('CorteInventario');
	}

}
