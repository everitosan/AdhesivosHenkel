<?php

use Adhesivos\Entities\FormasPago;

class FormasPagoTableSeeder extends Seeder {

	public function run()
	{
		
		FormasPago::create([
			'nombre'=>'Cheque'
		]);

		FormasPago::create([
			'nombre'=>'Efectivo'
		]);

		FormasPago::create([
			'nombre'=>'Dolares'
		]);
		
	}

}