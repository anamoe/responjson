<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class masyarakat extends Model
{
        protected $table ='pengguna';
      protected $fillable=[
'nama','hadiah_id','point_id'
      ];

      public function hadiah() {
    	
    	return $this->belongsTo('App\Hadiah','hadiah_id','id');
    }
      public function point() {
    
    	return $this->belongsTo('App\Point','point_id','id');
    }
}

