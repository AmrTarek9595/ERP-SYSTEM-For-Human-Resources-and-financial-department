<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class payroll extends Model
{
    use HasFactory;

    protected $table="payrolls";
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'who_upload',
        'emp_id',
        'day',
        'month',
        'year',
        'date',
        'start_time',
        'start_end',
        'duration',
        'emp_name',
        'description',
        
        'absent_hours_start',
        'delay_mins_start',
        'extra_time_mins',
        'extra_time_hours',
        'absent_hours_end',
        'delay_mins_end'
        
    ];

    protected $casts = [
        'created_at' => 'date:d-m-Y ',
        'updated_at'=>'date:d-m-Y '
    ];
}
