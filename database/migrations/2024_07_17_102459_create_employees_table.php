<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->id();
            $table->integer("who_upload");
            $table->string("name");
            $table->integer("phone_number");
            $table->string("email");
            $table->string("location");
            $table->integer("start_date");
            $table->integer("end_date")->nullable();
            $table->integer("basic_salary");
            $table->string("start_job_title");
            $table->string("end_job_title");
            $table->string("requirements_paper");
            $table->string("custody_paper");

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
        Schema::dropIfExists('employees');
    }
}
