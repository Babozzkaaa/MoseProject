<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class motor extends Model
{
    protected $fillable = [
        'name',
        'description',
        'tahun_produksi',
        'price',
        'CC_Motor',
        'Torsi',
        'Tipe_Mesin',
        'Transmisi',
        'Kapasitas_Tangki',
        'Rasio_Kompresi',
        'image',
    ];
}
