<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePayrollsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payrolls', function (Blueprint $table) {
            $table->id();
            $table->integer("who_upload");
            $table->integer("emp_id");
            $table->integer("day")->nullable();
            $table->integer("month")->nullable();
            $table->integer("year")->nullable();
            $table->integer("date")->nullable();
            $table->integer("start_time");
            $table->integer("start_end");
            $table->integer("duration");
            $table->string("emp_name");
            $table->integer("absent_hours");
            $table->integer("delay_time");
            $table->string("description");
            
            
            
            

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
        Schema::dropIfExists('payrolls');
    }
}
