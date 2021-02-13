<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompanyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('company', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_by')->unsigned();
            $table->string('company_name_eng')->nullable();
            $table->string('company_name_arab')->nullable();
            $table->string('company_name_reg_eng')->nullable();
            $table->string('company_name_reg_arab')->nullable();
            $table->dateTime('incorporation_date')->nullable();
            $table->dateTime('incorporation_date_hijri')->nullable();
            $table->string('type_of_business_eng')->nullable();
            $table->string('type_of_business_arab')->nullable();
            $table->integer('no_br')->nullable();
            $table->foreign('user_by')->references('id')->on('users');
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
        Schema::dropIfExists('company');
    }
}
