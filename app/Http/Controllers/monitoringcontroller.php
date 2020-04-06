<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\monitoring;
class monitoringcontroller extends Controller
{
    
    public function lihat(){
$lihat= monitoring::all();
 return response()->json([
            'pesan' =>'sukses lah',
            'monitoring' => $lihat

        ],200);
    }

}
