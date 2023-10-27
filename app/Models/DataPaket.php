<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataPaket extends Model
{
    protected $table = 'pakets';

    protected $fillable = [
        'id',
        'nama_paket',
        'harga',
        'keterangan',
    ];

    // menambahkan atribute
    protected $appends = [
        'gambar_url', // getGambarUrlAttribute
    ];
    // memanggil gambar berdasarkan asset url
    function getGambarUrlAttribute() {
        return asset('/breeding/' . ($this->gambar ?: 'default.jpg'));
    }
}
