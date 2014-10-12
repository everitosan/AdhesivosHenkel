<?php

namespace Adhesivos\Managers;

abstract Class BaseManager{

	protected $Entity;
	protected $data;
	protected $errors;

	public function __construct($Entity, $data)
	{
		$this->Entity 	= $Entity;
		$this->data 	= array_only($data, array_keys( $this->getRules() ));
	}	

	abstract public function getRules();

	public function isValid()
	{
		$rules=$this->getRules();
		$validation=\Validator::make($this->data, $rules);

		$isvalid=$validation->passes();

		$this->errors=$validation->messages();

		return $isvalid;
	}

	public function getErrors()
	{
		return $this->errors;
	}


	public function save()
	{
		if(!$this->isValid())
		{
			return false;
		}

		$this->Entity->fill($this->data);
		$this->Entity->save();
		return true;
	}

	public function saveorupdate($sel)
	{

		if(!$this->isValid())
		{
			return false;
		}


		$element=$this->Entity->firstOrNew([$sel=>$this->data[$sel]]);
		$element->fill($this->data);
		$element->save();
		return true;
	}

	
}