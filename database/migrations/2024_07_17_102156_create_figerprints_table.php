<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFigerprintsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('figerprints', function (Blueprint $table) {
            $table->id();
            $table->integer("who_upload");
            $table->integer("month");
            $table->integer("year");
            $table->string("file_name");
            $table->boolean("status");
            $table->string("file_type");

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
        Schema::dropIfExists('figerprints');
    }
}
