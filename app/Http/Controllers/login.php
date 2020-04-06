<?php

namespace App\Http\Controllers;
use App\petugas;
use App\masyarakat;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class login extends Controller
{
    
    function masuk(Request $kiriman){
    	$data1= petugas::where('username',$kiriman->username)->where('password',$kiriman->password)->get();

    	$data2= masyarakat::where('username',$kiriman->username)->where('password',$kiriman->password)->get();

    	if(count($data1)>0){
    		Auth::guard('petugas')->LoginUsingId($data1[0]['id']);
    		  // return redirect('/petugas');
            return response()->json(['status'=>'petugas']);

    	}else if (count($data2)>0) {
    	//masyarakat	# code...
    		Auth::guard('masyarakat')->LoginUsingId($data2[0]['id']);
    		return redirect('/masyarakat');
    	}else{
    		return "login gagal";
    	}
    
    }

    function keluar(){
    	if(Auth::guard('petugas')->check()){
    		Auth::guard('petugas')->logout();
    	}elseif (Auth::guard('masyarakat')->check()) {
         Auth::guard('masyarakat')->logout();

    		# code...
    	}
    	return redirect('/masuk');
    }


}
