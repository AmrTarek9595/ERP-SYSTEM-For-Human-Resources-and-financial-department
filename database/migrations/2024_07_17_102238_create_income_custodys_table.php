<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIncomeCustodysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('income_custodys', function (Blueprint $table) {
            $table->id();
            $table->integer("who_upload");
            $table->integer("amount");
            $table->integer("day");
            $table->integer("month");
            $table->integer("year");
            $table->string("file_name");

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
        Schema::dropIfExists('income_custodys');
    }
}
