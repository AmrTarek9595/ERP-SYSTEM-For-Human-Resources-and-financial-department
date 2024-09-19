<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSupplysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supplys', function (Blueprint $table) {
            $table->id();
            $table->integer("who_upload");
            $table->string("description");
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
        Schema::dropIfExists('supplys');
    }
}
