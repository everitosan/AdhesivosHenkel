<?php

use Adhesivos\Entities\RubrosGasto;

class RubrosGastoTableSeeder extends Seeder {

	public function run()
	{
		RubrosGasto::create([
				'nombre'=>'agua',
				'descripcion'=>'Pago de Agua'
			]);
	}

}