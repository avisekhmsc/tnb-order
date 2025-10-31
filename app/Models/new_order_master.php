<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class new_order_master extends Model
{
    use HasFactory;
    protected $fillable = [
        'order_id',
        'total_qty',
        'total_amount',
        "slot_id",
        "user_id",
        'status'
    ];

    public function slots()
    {
        return $this->belongsTo(slot::class, 'slot_id');
    }
}
