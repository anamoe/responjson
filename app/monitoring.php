<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class monitoring extends Model
{
    //
       protected $table ='monitoring';
      protected $fillable=[
'nama','keterangan','gambar','lat','lng'
      ];
}
