<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class phim_theloai extends Model
{
    
    public $timestamps = false;
    use HasFactory;
    protected $table = 'phim_theloai';
    public function genre(){
        return $this->belongsTo(theloai::class, 'genre_id' ,'id');
       }
}