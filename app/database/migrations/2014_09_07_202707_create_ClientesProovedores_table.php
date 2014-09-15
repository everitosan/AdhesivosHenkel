<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateClientesProovedoresTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('ClientesProovedores', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('rfc');
			$table->string('razonsocial');
			$table->string('calle');
			$table->integer('noexterior');
			$table->integer('nointerior');
			$table->string('colonia');
			$table->string('delegacionmunicipio');
			$table->string('ciudad');
			$table->string('estado');
			$table->integer('cp');
			$table->text('referenciasubicacion');
			$table->integer('contacto')->unsigned();
			$table->enum('tipo',['Cliente','Proveedor']);
			$table->timestamps();

			$table->foreign('contacto')->references('id')->on('DatosContacto');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('ClientesProovedores');
	}

}
