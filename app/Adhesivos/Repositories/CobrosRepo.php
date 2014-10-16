<?php

namespace Adhesivos\Repositories;

use Adhesivos\Entities\CobroPendientes;
use Adhesivos\Entities\FormasPago;
use Adhesivos\Entities\CondicionPago;

	class CobrosRepo extends BaseRepo {
	
		public function obten_cobros()
		{
			return CobroPendientes::all();
		}

		public function obten_formpaspago()
		{
			return FormasPago::all();
		}

		public function obten_condicionespago()
		{
			return CondicionPago::all();
		}
	}