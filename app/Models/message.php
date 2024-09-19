<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class message extends Model
{
    use HasFactory;
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'from',
        'to',
        'time',
        'subject',
        'message'
    ];

    protected $casts = [
        'created_at' => 'date:d-m-Y ',
        'updated_at'=>'date:d-m-Y '
    ];

}
