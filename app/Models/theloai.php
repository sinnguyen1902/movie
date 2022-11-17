<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class theloai extends Model
{
    public $timestamps = false;
    use HasFactory;
    public function movie(){
        return $this->belongs(phim::class);
       }
}