<?php

use App\Http\Controllers\MotorController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\LoginController;






/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
// */
// Route::get('/motor', [MotorController::class, 'index']);
// Route::get('/motor/{id}', [MotorController::class, 'show']);
// Route::post('/', [MotorController::class, 'store']);
// // Route::put('/{id}', [MotorController::class, 'update']);
// // Route::delete('/{id}', [MotorController::class, 'destroy']);
// // Route::post('/motor', [MotorController::class, 'store']);
// // Route::put('/motor/{id}', [MotorController::class, 'update']);
// // Route::delete('/motor/{id}', [MotorController::class, 'destroy']);
// Route::apiResource('motor', MotorController::class);
// // Route::post('/api/motor', [MotorController::class, 'store']);
// Route::get('/get-image/{id}', [MotorController::class, 'getImage']);




// Route::post('/login', [LoginController::class, 'login']);
// Route::post('/logout', [LoginController::class, 'logout'])->middleware('auth:sanctum');

// Route::post('/register', [RegisterController::class, 'store']);
// Route::post('/login', [LoginController::class, 'check']);


// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::get('/motor_images/{filename}', function ($filename) {
//     $path = storage_path("app/public/motor_images/{$filename}");

//     if (!Storage::exists("public/motor_images/{$filename}") || !file_exists($path)) {
    //         abort(404);
    //     }
    
    //     return response()->file($path);
    // })->where('filename', '.*');
    
    // Route::get('/motor', [MotorController::class, 'index']);
    // Route::get('/motor/{id}', [MotorController::class, 'show']);
    // Route::post('/motor', [MotorController::class, 'store']);
    // Route::put('/motor/{id}', [MotorController::class, 'update']);
    
    Route::resource('/motor', MotorController::class);
    
    Route::delete('/motor/{id}', [MotorController::class, 'destroy']);
    Route::get('/get-image/{id}', [MotorController::class, 'getImage']);
    Route::get('/get-image/{id}', 'MotorController@getImage');

// Route::apiResource('motor', MotorController::class);

Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LoginController::class, 'logout'])->middleware('auth:sanctum');
Route::post('/register', [RegisterController::class, 'store']);
Route::post('/login', [LoginController::class, 'check']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/motor_images/{filename}', function ($filename) {
    $path = storage_path("app/public/{$filename}");

    if (!Storage::exists("public/{$filename}") || !file_exists($path)) {
        abort(404);
    }

    return response()->file($path);
})->where('filename', '.*');
