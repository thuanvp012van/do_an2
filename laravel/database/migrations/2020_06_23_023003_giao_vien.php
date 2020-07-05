<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class GiaoVien extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('giao_vien', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tk', 20);
            $table->string('mk', 200);
            $table->string('email', 100)->nullable();
            $table->string('ten_gv', 50);
            $table->date('ns');
            $table->char('sdt', 20);
            $table->string('dia_chi', 200);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('giao_vien');
    }
}
