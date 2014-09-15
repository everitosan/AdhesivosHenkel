<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;
use Adhesivos\Entities\Concepto;
use Adhesivos\Entities\Compra;

class CompraTableSeeder extends Seeder {

	public function run()
	{
		$faker = Faker::create();

		foreach(range(1, 10) as $index)
		{

			$concepto=Concepto::create([
				'producto'=>$faker->numberBetween($min=1, $max=10),
				'cantidad'=>$faker->randomDigit,		
				'descuento'=>$faker->randomDigit,		
				'noenvases'=>$faker->randomDigit,		
				'facturapor'=>$faker->text(20),		
				'preciobase'=>$faker->randomNumber($nbDigits = NULL),		
				'preciounitario'=>$faker->randomNumber($nbDigits = NULL),		
				'subtotalconcepto'=>$faker->randomNumber($nbDigits = NULL)			
			]);
		

			Compra::create([
				'tipo'=>$faker->randomElement(['Factura-e','Factura','Nota']),
				'foliofactura'=>$faker->randomDigit,
				'fecha'=>$faker->date($format = 'Y-m-d', $max = 'now'),
				'hora'=>$faker->time($format = 'H:i:s', $max = 'now'),
				'descuento'=>$faker->randomDigit,
				'formapago'=>$faker->randomElement([1,2,3]),
				'condicionpago'=>$faker->randomElement([1,2,3,4,5]),
				'comprador'=>$faker->numberBetween($min=1, $max=20),
				'proveedor'=>$faker->numberBetween($min=1, $max=20),
				'nopedido'=>$faker->randomDigit,
				'observacionesgenerales'=>$faker->text(20),
				'concepto'=>$concepto->id,
				'subtotal'=>$faker->randomNumber($nbDigits = NULL),
				'iva'=>$faker->randomNumber($nbDigits = NULL),
				'total'=>$faker->randomNumber($nbDigits = NULL),
				'status'=>$faker->boolean($chanceOfGettingTrue = 50)
			]);
		}
	}

}