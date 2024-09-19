<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class statice extends Model
{
    use HasFactory;

    protected $table="statics";
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'who_upload',
        'serial_number',
        'type',
        'brand',
        'month',
        'year',
        'cost',
        'available',
        'file_name',
        'notes'
    ];

    protected $casts = [
        'created_at' => 'date:d-m-Y ',
        'updated_at'=>'date:d-m-Y '
    ];
}
