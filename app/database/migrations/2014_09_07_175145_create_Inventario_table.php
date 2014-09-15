<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateInventarioTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('Inventario', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('nombre');
			$table->string('clave');
			$table->date('fecha');
			$table->integer('cantidad');
			$table->integer('comprado');
			$table->integer('vendido');
			$table->integer('total');
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
		Schema::drop('Inventario');
	}

}
