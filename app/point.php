<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class point extends Model
{
    //
           protected $table ='point';
      protected $fillable=[
'point'
      ];
       public function hadiah(){
    
    	return $this->belongsTo('App\Hadiah','id');
    }
}
