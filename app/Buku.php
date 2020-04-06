<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Buku extends Model
{
    //
  
    protected $fillable=[
    	'id','sampul','nama','pengarang','tahun_terbit,',
    	'isbn'
    ];
}
