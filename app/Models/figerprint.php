<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class figerprint extends Model
{
    use HasFactory;
    protected $table="figerprints";
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'who_upload',
        'month',
        'year',
        'file_name',
        'status',
        'file_type',

    ];

    protected $casts = [
        'created_at' => 'date:d-m-Y ',
        'updated_at'=>'date:d-m-Y '
    ];
}
