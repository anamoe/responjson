<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\hadiah;
use App\point;
use App\Anggota;
use App\Anggota_Hadiah;
use App\masyarakat;

class penukaranuser extends Controller
{
    //
    public function anggota(){
    	// return Anggota::all();

    	// $anggota = Anggota::get();
    	// return view('anggota', ['anggota' => $anggota]);
    
    	 // return response()->json([
    	 // 	'anggota', ['anggota' => $anggota],
      
      //   ],200);
    }
  public function anggota_hadiah(){
    	// return Anggota::all();

    	// return Anggota_Hadiah::all();
    	$anggota = Anggota_Hadiah::get();
    	return view('anggota', ['anggota' => $anggota]);
    
    	 // return response()->json([
    	 // 	'anggota', ['anggota' => $anggota],
      
      //   ],200);
    }
    public function poinku(){
        return point::all();
    }
     public function masyarakatku(){
    //    $hadiahs = Hadiah::all();
    // // $masyarakat=masyarakat::first();
    // // $hadiahs->hadiah->nama_hadiah;
          $m = masyarakat::with(['point','hadiah'])->get();

        return response()->json($m);
   
     return $hadiahs;
    }
    public function hadiahku(){
        $hadiah= hadiah::all();
        // $poinnya = point::all();
        // $poinnya->poin->poin;
        return $hadiah;
    }
}
