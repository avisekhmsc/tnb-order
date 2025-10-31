<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class virtual_booking extends Model
{
    use HasFactory;
    protected $fillable = [
        'starting_date',
        'end_date',
        'name',
        'email',
        'phone',
        'message'
    ];
    public $timestamps = false;
}
