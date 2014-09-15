<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCompraTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('Compra', function(Blueprint $table)
		{
			$table->increments('id');
			$table->enum('tipo',['Factura-e','Factura','Nota']);
			$table->integer('foliofactura');
			$table->date('fecha');
			$table->time('hora');
			$table->float('descuento');
			$table->integer('formapago')->unsigned();
			$table->integer('condicionpago')->unsigned();
			$table->integer('comprador')->unsigned();
			$table->integer('proveedor')->unsigned();
			$table->integer('nopedido');
			$table->text('observacionesgenerales');
			$table->integer('concepto')->unsigned();
			$table->float('subtotal');
			$table->float('iva');
			$table->float('total');
			$table->boolean('status');
			$table->timestamps();

			$table->foreign('formapago')->references('id')->on('FormasPago');
			$table->foreign('condicionpago')->references('id')->on('CondicionPago');
			$table->foreign('comprador')->references('id')->on('ClientesProovedores');
			$table->foreign('proveedor')->references('id')->on('ClientesProovedores');
			$table->foreign('concepto')->references('id')->on('Concepto');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('Compra');
	}

}
