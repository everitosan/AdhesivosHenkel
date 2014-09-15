<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;
use Adhesivos\Entities\Venta;

class VentaTableSeeder extends Seeder {

	public function run()
	{
		$faker = Faker::create();

		foreach(range(1, 10) as $index)
		{

			Venta::create([
				'tipo'=>$faker->randomElement(['Factura-e','Factura','Nota']),
				'folio'=>$index,
				'fecha'=>$faker->date($format = 'Y-m-d', $max = 'now'),
				'fecha_vencimiento'=>$faker->date($format = 'Y-m-d', $max = 'now'),
				'fecha_ultimo_cobro'=>$faker->date($format = 'Y-m-d', $max = 'now'),
				'hora'=>$faker->time($format = 'H:i:s', $max = 'now'),
				'descuento_global'=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
				'cliente'=>$faker->numberBetween($min=1, $max=20),
				'cuenta_bancaria'=>$faker->randomNumber($nbDigits = NULL),
				'forma_pago'=>$faker->randomElement([1,2,3]),
				'condicion_pago'=>$faker->randomElement([1,2,3,4,5]),
				'vendedor'=>$faker->randomElement([1,2,3]),
				'observaciones_generales'=>$faker->text,
				'concepto'=>$faker->randomElement([1,2,3,4,5]),
				'fecha_embarque'=>$faker->date($format = 'Y-m-d', $max = 'now'),
				'direccion_embarque'=>$faker->address,
				'subtotal'=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
				'iva'=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
				'total'=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
				'total_cobrado'=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
				'estatus'=>$faker->boolean($chanceOfGettingTrue = 50),
				'cancelado'=>$faker->boolean($chanceOfGettingTrue = 50),
			]);
		}
	}

}