<?php

use Adhesivos\Entities\Presentacion;

class PresentacionTableSeeder extends Seeder {

	public function run()
	{
		Presentacion::create([

			'id'	=>1,
			'nombre'=>'costal'

			]);

		Presentacion::create([

			'id'	=>2,
			'nombre'=>'caja'

			]);

		Presentacion::create([

			'id'	=>3,
			'nombre'=>'tambor'

			]);
	}

}