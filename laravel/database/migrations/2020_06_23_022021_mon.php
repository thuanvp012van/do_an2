<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Mon extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mon', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ten_,mon', 20);
            $table->integer('id_nganh')->unsigned();
            $table->foreign('id_nganh')->references('id')->on('nganh');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mon');
    }
}
