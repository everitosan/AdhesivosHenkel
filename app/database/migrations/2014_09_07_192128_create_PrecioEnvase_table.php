<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePrecioEnvaseTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('PrecioEnvase', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('presentacion')->unsigned();
			$table->date('fecha');
			$table->enum('divisa',['pesos','dlls']);
			$table->float('preciocompra');
			$table->float('precioventa');
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
		Schema::drop('PrecioEnvase');
	}

}
