<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;
use Adhesivos\Entities\Producto;

class ProductoTableSeeder extends Seeder {

	public function run()
	{
		$faker = Faker::create();

		foreach(range(1, 10) as $index)
		{
			Producto::create([
				'nombre'=>$faker->name,
				'clave'=>$faker->text(5),
				'descripcion'=>$faker->text,
				'medida'=>$faker->randomElement(['Peso','Volumen','Pieza']),
				'presentacion'=>$faker->randomElement([1,2,3]),

			]);
		}
	}

}