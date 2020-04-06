<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FileUpload extends Model
{
    //
      protected $table ='FileUpload';
      protected $fillable=[
'id','email','po_number','uploaded_file'
      ];
}
