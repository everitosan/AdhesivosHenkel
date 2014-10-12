<?php

namespace Adhesivos\Components;

use OpenBuildings\Monetary\Monetary;
Class Currency_tool{

	function dollar_peso($quantity)
	{
		$value=round(Monetary::instance()->convert($quantity, 'USD', 'MXN'),2);
			
		return $value;
	}
}