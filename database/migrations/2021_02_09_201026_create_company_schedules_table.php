<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompanySchedulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('company_schedules', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_by')->unsigned();
            $table->string('schedule_desc_eng');
            $table->string('schedule_desc_arab');
            $table->dateTime('from_date');
            $table->time('from_date_h');
            $table->dateTime('to_date');
            $table->time('to_date_h');
            $table->string('no_work');
            $table->string('for_schedule');
            $table->string('paid_overtime');
            

            // $table->string('company_id');

            $table->foreign('user_by')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('company_schedules');
    }
}
