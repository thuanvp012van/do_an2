<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DiemDanh extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('diem_danh', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_lop')->unsigned();
            $table->integer('id_gv')->unsigned();
            $table->integer('id_mon')->unsigned();
            $table->integer('id_sv')->unsigned();
            $table->tinyInteger('tinh_trang');
            $table->date('gio_diem_danh');
            $table->foreign('id_lop')->references('id')->on('lop');
            $table->foreign('id_gv')->references('id')->on('giao_vien');
            $table->foreign('id_mon')->references('id')->on('mon');
            $table->foreign('id_sv')->references('id')->on('sinh_vien');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('diem_danh');
    }
}
