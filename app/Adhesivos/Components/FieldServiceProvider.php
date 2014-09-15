<?php
namespace Adhesivos\Components;
use Illuminate\Support\ServiceProvider;

Class FieldServiceProvider extends ServiceProvider{

	public function register()
	{
		$this->app['field']= $this->app->share(function($app)
		{
			$fieldBuilder=new FieldBuilder();
			return $fieldBuilder;
		});
	}
}