<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class payrolls_after_calculate extends Model
{
    use HasFactory;
    protected $table="payrolls_after_calculate";
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
     'employee_id',
     'month',
     'year',
     'employee_name',
     'total_absent_hours',
     'total_attend_dayes',
     'total_absent_mins',
     'total_absent_dayes',
  
     'salary_before_overtime',
     'overtime_mins',
     'overtime_hours',
     'execuse',
     'salary',
     'salary_after_execuse',
     'total_salary_after_overtime',
     'update_counter',
     'file_name'
    ];

    protected $casts = [
        'created_at' => 'date:d-m-Y ',
        'updated_at'=>'date:d-m-Y '
    ];
}
