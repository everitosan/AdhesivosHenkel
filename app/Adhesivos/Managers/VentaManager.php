<?php

namespace Adhesivos\Managers;

class VentaManager extends BaseManager{
	public function getRules()
	{
		$rules=[
				'tipo',
				'folio'	=>'required',
				'fecha'	=>'required',
				'fecha_vencimiento'=>'required',
				'hora'	=>'required',
				'cliente'	=>'required',
				'cuenta_bancaria'	=>'required',
				'condicion_pago'	=>'required',
				'forma_pago'	=>'required',
				'vendedor'	=>'required',
				'no_pedido'	=>'required',
				'fecha_embarque'	=>'required',
				'direccion_embarque'	=>'required',
				'subtotal'	=>'required',
				'iva'	=>'required',
				'total'	=>'required',
				'estatus'=>'required'
		];

		return $rules;

	}

}