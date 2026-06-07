<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $fillable = [
        'user_id',
        'nama_menu',
        'kategori_menu',
        'harga',
        'stok',
        'status_menu',
        'deskripsi',
        'tanggal_input',
    ];

    protected $casts = [
        'harga' => 'integer',
        'stok' => 'integer',
        'tanggal_input' => 'date',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
