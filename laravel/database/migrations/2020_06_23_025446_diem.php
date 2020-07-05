<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Diem extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('diem', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_sv')->unsigned();
            $table->integer('id_mon')->unsigned();
            $table->tinyInteger('diem')->unsigned();
            $table->boolean('pt_thi');
            $table->foreign('id_sv')->references('id')->on('sinh_vien');
            $table->foreign('id_mon')->references('id')->on('mon');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('diem');
    }
}
