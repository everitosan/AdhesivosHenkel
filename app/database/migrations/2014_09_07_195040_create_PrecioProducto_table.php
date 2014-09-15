<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePrecioProductoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('PrecioProducto', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('producto')->unsigned();
			$table->date('fecha');
			$table->enum('divisa',['pesos','dlls']);
			$table->float('preciocompra');
			$table->float('precioventa');
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
		Schema::drop('PrecioProducto');
	}

}
