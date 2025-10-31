<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class schedule_tour extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'email',
        'phone',
        'space_type',
        'user_id',
        'meeting_date',
        'time_from',
        'time_until',
        'room_id',
        'message',
        'looking_for'
    ];
    public $timestamps = false;
}
