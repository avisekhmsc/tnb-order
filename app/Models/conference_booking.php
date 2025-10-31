<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class conference_booking extends Model
{
    use HasFactory;
    protected $fillable = [
        'date',
        'time_from',
        'time_until',
        'name',
        'email',
        'phone',
        'message',
        'add_ons'
    ];
    public $timestamps = false;
}
