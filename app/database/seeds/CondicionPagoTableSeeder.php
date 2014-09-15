<?php

use Adhesivos\Entities\CondicionPago;

class CondicionPagoTableSeeder extends Seeder {

	public function run()
	{
		
		CondicionPago::create([
				'nombre'=>'crédito 10 días',
				'diascredito'=>'10'
		]);
		CondicionPago::create([
				'nombre'=>'crédito 15 días',
				'diascredito'=>'15'
		]);
		CondicionPago::create([
				'nombre'=>'crédito 20 días',
				'diascredito'=>'20'
		]);
		CondicionPago::create([
				'nombre'=>'crédito 30 días',
				'diascredito'=>'30'
		]);
		CondicionPago::create([
				'nombre'=>'crédito 40 días',
				'diascredito'=>'40'
		]);
		
	}

}