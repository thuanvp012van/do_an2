<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PhanCong extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('phan_cong', function (Blueprint $table) {
            $table->integer('id_lop')->unsigned();
            $table->integer('id_gv')->unsigned();
            $table->integer('id_mon')->unsigned();
            $table->foreign('id_lop')->references('id')->on('lop');
            $table->foreign('id_gv')->references('id')->on('giao_vien');
            $table->foreign('id_mon')->references('id')->on('mon');
            $table->primary('id_lop', 'id_mon');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('phan_cong');
    }
}
