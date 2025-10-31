<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class new_order_detail extends Model
{
    use HasFactory;
    protected $fillable = [
        'new_order_id',
        "user_id",
        "slot_id",        
        'item_id',
        'price',
        'qty',
        'amount'        
    ];

    public function productName()
    {
        return $this->belongsTo(food_item::class, 'item_id');
    }    

    public function slots()
    {
        return $this->belongsTo(slot::class, 'slot_id');
    }

    public function orderMaster()
    {
        return $this->belongsTo(new_order_master::class, 'new-order_id');
    }


}
