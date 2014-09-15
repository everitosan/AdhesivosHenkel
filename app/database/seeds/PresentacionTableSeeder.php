<?php

use Adhesivos\Entities\Presentacion;

class PresentacionTableSeeder extends Seeder {

	public function run()
	{
		Presentacion::create([

			'id'	=>1,
			'nombre'=>'costal',
			'precio'=>'200'

			]);

		Presentacion::create([

			'id'	=>2,
			'nombre'=>'caja',
			'precio'=>'300'

			]);

		Presentacion::create([

			'id'	=>3,
			'nombre'=>'tambor',
			'precio'=>'500'

			]);
	}

}