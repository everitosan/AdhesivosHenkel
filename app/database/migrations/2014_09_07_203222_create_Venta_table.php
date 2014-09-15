<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateVentaTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('Venta', function(Blueprint $table)
		{
			$table->increments('id');
			$table->enum('tipo',['Factura-e','Factura','Nota']);
			$table->integer('folio');
			$table->date('fecha');
			$table->date('fecha_vencimiento');
			$table->date('fecha_ultimo_cobro');
			$table->time('hora');
			$table->float('descuento_global');
			$table->integer('cliente')->unsigned();
			$table->string('cuenta_bancaria');
			$table->integer('forma_pago')->unsigned();
			$table->integer('condicion_pago')->unsigned();
			$table->integer('vendedor')->unsigned();
			$table->text('observaciones_generales');
			$table->integer('concepto')->unsigned();
			$table->date('fecha_embarque');
			$table->string('direccion_embarque');
			$table->text('observaciones_embarque');
			$table->float('subtotal');
			$table->float('iva');
			$table->float('total');
			$table->float('total_cobrado');
			$table->boolean('estatus');
			$table->boolean('cancelado');
			$table->timestamps();

			$table->foreign('concepto')->references('id')->on('Concepto');
			$table->foreign('cliente')->references('id')->on('ClientesProovedores');
			$table->foreign('forma_pago')->references('id')->on('FormasPago');
			$table->foreign('condicion_pago')->references('id')->on('CondicionPago');
			$table->foreign('vendedor')->references('id')->on('Usuarios');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('Venta');
	}

}
