<?php

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Eloquent::unguard();

		$this->call('PresentacionTableSeeder');
		$this->call('UsuariosTableSeeder');
		//$this->call('RubosGastoTableSeeder');
		$this->call('FormasPagoTableSeeder');
		$this->call('CondicionPagoTableSeeder');
		//$this->call('CobroPendientesTableSeeder');
		//--$this->call('TelefonosTableSeeder');
		//$this->call('InventarioTableSeeder');
		//$this->call('PendientesTableSeeder');
		$this->call('ProductoTableSeeder');
		//$this->call('GastoTableSeeder');
		//$this->call('PrecioEnvaseTableSeeder');
		//--$this->call('DatosContactoTableSeeder');
		//$this->call('PrecioProductoTableSeeder');
		//$this->call('CorteInventarioTableSeeder');
		//--$this->call('ConceptoTableSeeder');
		$this->call('ClientesProovedoresTableSeeder');
		$this->call('CompraTableSeeder');
		$this->call('VentaTableSeeder');

		// $this->call('UserTableSeeder');
	}

}
