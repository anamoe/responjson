<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class komentarmodel extends Model
{
    //
       protected $table ='feedback';
      protected $fillable=[
'nama','komentar'
      ];
}
