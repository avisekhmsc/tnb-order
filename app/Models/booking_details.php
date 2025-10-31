<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class booking_details extends Model
{
    use HasFactory;
    protected $fillable = [
        'starting_date',
        'end_date',
        'name',
        'email',
        'phone',
        'room_id',
        'message'
    ];
    public $timestamps = false;
}
