<?php

namespace Adhesivos\Components;
use Illuminate\Support\ServiceProvider;

Class Currency_toolServiceProvider extends ServiceProvider{
	public function register()
	{
		$this->app['CurrencyTool']=$this->app->share(function($app){
			$Currency_tool= new Currency_tool();
			return $Currency_tool;
		});
	}
}