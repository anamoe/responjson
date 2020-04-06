<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\upload;
use App\FileUpload;
// use App\upload;

class UploadController extends Controller
{
    //
	public function upload(){
		$upload = upload::all();
        return response()->json([
            'pesan' =>'sukses lah',
            'upload' => $upload
        ],200);
		// $gambar = upload::get();
		// return view('upload',['gambar' => $gambar]);
	}
 
	public function proses_upload(Request $request){

		// menyimpan data file yang diupload ke variabel $file
		$file = $request->input('file');
		$nama_file = time().".jpeg";
		// $tujuan_upload = '../resource/gambar/';
			$tujuan_upload = 'data_file/';

 if (file_put_contents($tujuan_upload . $nama_file , base64_decode($file)))

  {
        // code...
        $response['code'] =1;
        $response['msg'] ="Sukses";
        echo "Sukses Photo" . $response['msg'];
      } else {
        // code...
        $response['code'] =0;
        $response['msg'] ="error";
      }

		upload::create([
			'file' => $nama_file,
			'nama' => $request->input('nama'),
		]);


  return response()->json($response);
		 // return redirect()->back();

	}




}
