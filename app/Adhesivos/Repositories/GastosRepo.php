<?php

namespace Adhesivos\Repositories;

use Adhesivos\Entities\Gasto;
use Adhesivos\Entities\RobrosGasto;


	class GastosRepo extends BaseRepo {
	
		public function obten_gastos()
		{
			return Gasto::all();
		}

		public function obten_rubrosgasto()
		{
			return RobrosGasto::all();
		}

		
	}