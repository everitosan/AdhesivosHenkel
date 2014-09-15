<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('Producto', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('nombre');
			$table->string('clave');
			$table->string('descripcion');
			$table->enum('medida',['Peso','Volumen','Pieza']);
			$table->integer('presentacion')->unsigned();
			$table->timestamps();

			$table->foreign('presentacion')->references('id')->on('Presentacion');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('Producto');
	}

}
