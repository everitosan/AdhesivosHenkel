<?php

namespace Adhesivos\Repositories;
use Adhesivos\Entities\Venta;

	class HomeRepo extends BaseRepo {
		public function obten_pendientes()
		{
			return Venta::where('estatus','=',0)->get();
		}
	}