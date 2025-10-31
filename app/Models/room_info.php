<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class room_info extends Model
{
    protected $fillable = [
        'room_id'
    ];
    use HasFactory;
}
