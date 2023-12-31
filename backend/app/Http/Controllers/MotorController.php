<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use App\Models\Motor;
use Illuminate\Support\Facades\Validator;

class MotorController extends Controller
{
    // Menampilkan semua data motor
    public function index(Request $request)
    {
        try {
            if ($request->has('tahun_produksi')) {
                $tahun_produksi = $request->input('tahun_produksi');
                $motor = Motor::where('tahun_produksi', $tahun_produksi)->get();
            } elseif ($request->has('search')) {
                $searchTerm = $request->input('search');
                $motor = Motor::where('name', 'LIKE', "%{$searchTerm}%")->get();
            } else {
                $motor = Motor::all();
            }

            return response()->json(['motor' => $motor], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error', 'error' => $e->getMessage()], 500);
        }
    }

    // Menampilkan detail motor tertentu berdasarkan ID
    public function show($id)
    {
        try {
            $motor = Motor::findOrFail($id);
            return response()->json(['motor' => $motor], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Motor not found', 'error' => $e->getMessage()], 404);
        }
    }

    // Menyimpan motor baru ke dalam database
    public function store(Request $request)
    {
        try {
            $this->validate($request, [
                'name' => 'required|string',
                'description' => 'required|string',
                'tahun_produksi' => 'required|integer',
                'price' => 'required|numeric',
                'CC_Motor' => 'required|string',
                'Torsi' => 'required|string',
                'Tipe_Mesin' => 'required|string',
                'Transmisi' => 'required|string',
                'Kapasitas_Tangki' => 'required|string',
                'Rasio_Kompresi' => 'required|string',
                'image' => 'required|image|mimes:jpeg,png,jpg,gif',
            ]);

             // Menyimpan file gambar dengan nama unik di direktori yang sama dengan model
             $imageName = time() . '.' . $request->file('image')->getClientOriginalExtension();
            $request->file('image')->move(public_path('storage'), $imageName);
     
             // Memulai transaksi database
             \DB::beginTransaction();
     
             try {
                 // Membuat motor baru dan menyimpan ke database
                 $motor = Motor::create([
                     'name' => $request->input('name'),
                     'description' => $request->input('description'),
                        'CC_Motor' => $request->input('CC_Motor'),
                        'Torsi' => $request->input('Torsi'),
                        'Tipe_Mesin' => $request->input('Tipe_Mesin'),
                        'Transmisi' => $request->input('Transmisi'),
                        'Kapasitas_Tangki' => $request->input('Kapasitas_Tangki'),
                        'Rasio_Kompresi' => $request->input('Rasio_Kompresi'),

                     'price' => $request->input('price'),
                     'image' => $imageName, // Menggunakan nama file, bukan path lengkap
                     'tahun_produksi' => $request->input('tahun_produksi'),
                 ]);
     
                 // Menyelesaikan transaksi database
                 \DB::commit();
     
                 return response()->json(['message' => 'Motor added successfully', 'motor' => $motor], 201);
             } catch (\Exception $e) {
                 // Menggagalkan transaksi database jika terjadi kesalahan
                 \DB::rollBack();
     
                 return response()->json(['message' => 'Error adding motor', 'error' => $e->getMessage()], 500);
             }
         } catch (\Exception $e) {
             return response()->json(['message' => 'Validation failed', 'error' => $e->getMessage()], 400);
         }
    }

    public function getImage($id)
    {
        try {
            $motor = Motor::findOrFail($id);

            $path = storage_path("app/public/{$motor->image}");

            if (!file_exists($path)) {
                abort(404);
            }

            return response()->file($path);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error', 'error' => $e->getMessage()], 500);
        }
    }

    // Mengupdate data motor berdasarkan ID
    public function update(Request $request, Motor $motor)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'description' => 'required|string',
            'tahun_produksi' => 'required|integer',
            'price' => 'required|numeric',
            'CC_Motor' => 'required|string',
            'Torsi' => 'required|string',
            'Tipe_Mesin' => 'required|string',
            'Transmisi' => 'required|string',
            'Kapasitas_Tangki' => 'required|string',
            'Rasio_Kompresi' => 'required|string',
            // 'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif',

        ]);

        if($validator->fails()){
            return response()->json($validator->errors(), 400);
        }

        $motor = Motor::findOrFail($motor->id);

        // if ($request->hasFile('image')) {
        //     // Get the original name of the uploaded file
        //     $originalName = $request->file('image')->getClientOriginalName();

        //     // Update the product's photo with the original file name
        //     $motor->update(['image' => $originalName]);

        //     // Move the uploaded file to the desired directory
        //     $request->file('image')->move(public_path('uploads'), $originalName);
        // }

        if($motor) {
            $motor->update([
                'name' => $request->name,
                'description' => $request->description,
                'tahun_produksi' => $request->tahun_produksi,
                'price' => $request->price,
                'CC_Motor' => $request->CC_Motor,
                'Torsi' => $request->Torsi,
                'Tipe_Mesin' => $request->Tipe_Mesin,
                'Transmisi' => $request->Transmisi,
                'Kapasitas_Tangki' => $request->Kapasitas_Tangki,
                'Rasio_Kompresi' => $request->Rasio_Kompresi,
                

            
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Motor Updated',
                'data'    => $motor  
            ], 200);

        }
        return response()->json([
            'success' => false,
            'message' => 'Motor Not Found',
            'data'    => ''
        ], 404);

    }

    // Menghapus data motor berdasarkan ID
    public function destroy($id)
    {
        try {
            $motor = Motor::findOrFail($id);
            $motor->delete();

            return response()->json(['message' => 'Motor deleted successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error', 'error' => $e->getMessage()], 500);
        }
    }
}
