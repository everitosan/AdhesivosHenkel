<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateConceptoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('Concepto', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('producto')->unsigned();
			$table->integer('cantidad');
			$table->integer('descuento');
			$table->integer('noenvases');
			$table->string('facturapor');
			$table->float('preciobase');
			$table->float('preciounitario');
			$table->float('subtotalconcepto');
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
		Schema::drop('Concepto');
	}

}
