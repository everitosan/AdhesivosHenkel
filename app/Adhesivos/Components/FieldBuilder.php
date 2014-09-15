<?php

namespace Adhesivos\Components;

Class FieldBuilder{

	public function buildLabel($name)
	{
		if(\Lang::has('validation.attributes.' .$name))
		{
			$label=\Lang::has('validation.attributes.' .$name);
		}
		else
		{
			$label=str_replace('_',' ',$name);
		}	
		return ucfirst($label);
	}

	public function buildControl($type, $name, $value = null, $attributes = array(), $options = array())
	{
		switch ($type) {
			case 'select':
				return \Form::select($name, $options, $value, $attributes);
				break;
			case 'password':
				return \Form::password($name, $attributes);
				break;
			case 'checkbox':
				return \Form::checkbox($name);
				break;
			default:
				return \Form::input($type, $name, $value, $attributes);
				break;
		}
	}

	public function buildError($name)
	{
		$error=null;
		if(\Session::has('errors'))
		{
			$errors=\Session::get('errors');
			if($errors->has($name))
			{
				$error=$errors->first($name);
			}
		}

		return $error;
	}

	public function buildTemplate($type)
	{
		if(\File::exists('app/views/fields/'. $type . '.blade.php'))
		{
			return 'fields/'.$type;
		}
		return 'fields/default';
	}

	public function input($type, $name, $value = null, $attributes = array(), $options = array())
	{
		$label=$this->buildLabel($name);
		$control=$this->buildControl($type, $name, $value, $attributes, $options);
		$error=$this->buildError($name);
		$template=$this->buildTemplate($type);

		return \View::make($template, compact('name','label','control','error'));
	}

}