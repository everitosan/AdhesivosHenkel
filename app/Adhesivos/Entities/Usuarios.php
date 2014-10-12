<?php namespace Adhesivos\Entities;

use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class Usuarios extends \Eloquent implements UserInterface, RemindableInterface {
	
	use UserTrait, RemindableTrait;


	protected $fillable = [];
	protected $table = "Usuarios";
	protected $hidden = array('password', 'remember_token');


}