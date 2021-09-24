<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserRequestDeliveryDetail extends Model
{
    protected $table='user_request_delivery_details';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id',
        'user_request_id',
        'item_to_deliver',
        'delivery_address',
        'receiver_name',
        'receiver_mobile',
        'any_instructions',
        'status'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at'
    ];

}
