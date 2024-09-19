<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class employee extends Model
{
    use HasFactory;

    protected $table="employees";
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'who_upload',
        'status',
        'name',
        'phone_number',
        'email',
        'location',
        'start_date',
        'end_date',
        'basic_salary',
        'start_job_title',
        'end_job_title',
        'requirements_paper',
        'custody_paper',


    ];

    protected $casts = [
        'created_at' => 'date:d-m-Y ',
        'updated_at'=>'date:d-m-Y '
    ];
}
