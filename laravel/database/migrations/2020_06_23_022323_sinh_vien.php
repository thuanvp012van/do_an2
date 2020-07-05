<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class SinhVien extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sinh_vien', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tk', 20);
            $table->string('mk', 200);
            $table->string('email', 100)->nullable();
            $table->string('ten', 50);
            $table->date('ns');
            $table->char('sdt', 20);
            $table->string('dia_chi', 200);
            $table->boolean('gt');
            $table->integer('id_lop')->unsigned();
            $table->foreign('id_lop')->references('id')->on('lop');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sinh_vien');
    }
}
