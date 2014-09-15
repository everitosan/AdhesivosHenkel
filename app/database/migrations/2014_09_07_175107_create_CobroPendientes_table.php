<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCobroPendientesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('CobroPendientes', function(Blueprint $table)
		{
			$table->increments('id');
			$table->enum('tipo',['Factura-e','Factura','Nota']);
			$table->integer('folio');
			$table->float('monto');
			$table->date('fechapago');
			$table->string('noreferenciacheque');
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
		Schema::drop('CobroPendientes');
	}

}
