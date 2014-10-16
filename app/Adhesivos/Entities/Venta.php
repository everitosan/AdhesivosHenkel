<?php namespace Adhesivos\Entities;

class Venta extends \Eloquent {
	protected $fillable = ['tipo','folio','fecha','fecha_vencimiento','hora','descuento_global','cliente','cuenta_bancaria','forma_pago','condicion_pago', 'vendedor','observaciones_generales','no_pedido','fecha_embarque','direccion_embarque','observaciones_embarque','subtotal','iva','total','estatus'];
	protected $table 	= "Venta";

	public function client()
	{
		return $this->hasOne('Adhesivos\Entities\ClientesProovedores','id','cliente');
	}

	public function concept()
	{
		return $this->hasOne('Adhesivos\Entities\Concepto','id','concepto');
	}

	public function formadepago()
	{
		return $this->hasOne('Adhesivos\Entities\FormasPago','id','formapago');
	}

	public function condiciondepago()
	{
		return $this->hasOne('Adhesivos\Entities\CondicionPago','id','condicionpago');
	}
}