<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Lop extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lop', function (Blueprint $table) {
            $table->increments('id');
            $table->char('ten_lop', 10);
            $table->integer('id_nganh')->unsigned();
            $table->integer('id_khoa_hoc')->unsigned();
            $table->foreign('id_nganh')->references('id')->on('nganh');
            $table->foreign('id_khoa_hoc')->references('id')->on('khoa_hoc');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('lop');
    }
}
