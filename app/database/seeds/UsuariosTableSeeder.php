<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;
use Adhesivos\Entities\Usuarios;

class UsuariosTableSeeder extends Seeder {

	public function run()
	{
		$faker = Faker::create();

		foreach(range(1, 10) as $index)
		{
			Usuarios::create([
				'nombre'=>$faker->name,
				'direccion'=>$faker->streetAddress,
				'noexterior'=>$faker->randomDigit,
				'nointerior'=>$faker->randomDigit,
				'colonia'=>$faker->citySuffix,
				'delegacionmunicipio'=>$faker->country,
				'ciudad'=>$faker->city,
				'estado'=>$faker->state,
				'cp'=>$faker->postcode,
				'refereniasubicacion'=>$faker->text(20),
				'telefono'=>$faker->phoneNumber,
				'tipousuario'=>$faker->randomElement(['admin','user']),
				'nombreusuario'=>$faker->firstName,
				'password'=>\Hash::make(123456)
			]);
		}
	}

}