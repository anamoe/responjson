<?php

namespace App;


use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class login_petugas extends Authenticatable
{
  protected $table ='petugas';
}
