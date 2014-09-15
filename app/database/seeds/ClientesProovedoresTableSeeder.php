<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;
use Adhesivos\Entities\Telefonos;
use Adhesivos\Entities\DatosContacto;
use Adhesivos\Entities\ClientesProovedores;

class ClientesProovedoresTableSeeder extends Seeder {

	public function run()
	{
		$faker = Faker::create();

		foreach(range(1, 20) as $index)
		{
			$telefono=Telefonos::create([
					'telefono'=>$faker->randomDigit,
					'celular'=>$faker->randomDigit,
					'nextel'=>$faker->randomDigit
			]);

			$contacto=DatosContacto::create([
					'nombre'=>$faker->firstName,
					'apppaterno'=>$faker->lastName,
					'appmaterno'=>$faker->lastName,
					'genero'=>$faker->randomElement(['masculino','femenino']),
					'email'=>$faker->email,
					'telefonos'=>$telefono->id
			]);

			ClientesProovedores::create([
					'rfc'=>$faker->text(16),
					'razonsocial'=>$faker->text(16),
					'calle'=>$faker->streetName,
					'noexterior'=>$faker->randomDigit,
					'nointerior'=>$faker->randomDigit,
					'colonia'=>$faker->citySuffix,
					'delegacionmunicipio'=>$faker->country,
					'ciudad'=>$faker->city,
					'estado'=>$faker->state,
					'cp'=>$faker->postcode,
					'referenciasubicacion'=>$faker->text(20),
					'contacto'=>$contacto->id,
					'tipo'=>$faker->randomElement(['Cliente','Proveedor'])

			]);
		}
	}

}