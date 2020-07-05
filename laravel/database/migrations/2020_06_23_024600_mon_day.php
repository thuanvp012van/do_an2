<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class MonDay extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mon_day', function (Blueprint $table) {
            $table->integer('id_mon')->unsigned();
            $table->integer('id_gv')->unsigned();
            $table->foreign('id_mon')->references('id')->on('mon');
            $table->foreign('id_gv')->references('id')->on('giao_vien');
            $table->primary('id_mon', 'id_gv');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mon_day');
    }
}
