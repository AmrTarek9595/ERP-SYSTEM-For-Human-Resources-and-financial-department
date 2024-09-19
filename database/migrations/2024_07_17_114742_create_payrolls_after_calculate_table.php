<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePayrollsAfterCalculateTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payrolls_after_calculate', function (Blueprint $table) {
            $table->id();
            $table->integer("employee_id");
            $table->integer("employee_name");
            $table->integer("total_absent_hours");
            $table->integer("total_attend_dayes");
            $table->integer("total_absent_mins");
            $table->integer("total_absent_dayes");
            
            $table->integer("net_salary");
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payrolls_after_calculate');
    }
}
