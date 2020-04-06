<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Anggota_Hadiah extends Model
{
    //

	protected $table = "anggota_hadiah";
    //
      public function anggota()
    {
    	return $this->belongsToMany('App\Anggota',"anggota_id");
    }
       public function hadiah()
    {
    	return $this->belongsToMany('App\hadiah',"hadiah_id");
    }
}
