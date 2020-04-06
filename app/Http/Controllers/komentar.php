<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\komentarmodel;

class komentar extends Controller
{
    //

    	public function lihatkomentar(){
		$upload = komentarmodel::all();
        return response()->json([
            'pesan' =>'sukses lah',
            'upload' => $upload
        ],200);
		// $gambar = upload::get();
		// return view('upload',['gambar' => $gambar]);
	}
 
	public function buatkomentar(Request $request){

 
   $komentars = new komentarmodel;

        $komentars->nama = $request->input('nama');
           $komentars->komentar = $request->input('komentar');
               $komentars->save();
         if (($komentars)) {
            $out = [
                "message" => "sukses nambah loh",
                "code"    => 201,
            ];
        } else {
            $out = [
                "message" => "yoalah gagal",
                "code"   => 404,
            ];
        }
 
        return response()->json($out, $out['code']);

  // return response()->json($komentars);
		//  // return redirect()->back();

	}

}
