<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class income_custody extends Model
{
    use HasFactory;

     protected $table="income_custodys";
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'who_upload',
        'amount',
        'day',
        'month',
        'year',
        'file_name',

    ];

    protected $casts = [
        'created_at' => 'date:d-m-Y ',
        'updated_at'=>'date:d-m-Y '
    ];
}
