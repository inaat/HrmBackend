<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSessionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sessions', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('company_id')->unsigned();
           // $table->integer('sched_id')->unsigned();
            $table->integer('user_by')->unsigned();
            $table->integer('cosched_id')->unsigned();
            
            $table->string('sched_name_eng');
            $table->string('sched_name_arab');
            $table->Time('start_time');
            $table->Time('end_time');
            $table->integer('late_minutes')->nullable();
            $table->integer('early_minutes')->nullable();
            $table->integer('check_in')->nullable();
            $table->integer('check_out')->nullable();
            $table->string('overtime')->nullable();
            $table->string('flex_time')->nullable();
            $table->integer('hpd')->nullable();
            $table->integer('day_off')->nullable();
            $table->string('ignore_aw')->nullable();
            $table->integer('absent_factor')->nullable();
            $table->Time('in_begin')->nullable();
            $table->Time('in_end')->nullable();
            $table->Time('out_begin')->nullable();
            $table->Time('out_end')->nullable();
            $table->string('extra_mins_overtime')->nullable();
            $table->integer('no_log_penality')->nullable();
            $table->integer('monthly_grace_period')->nullable();
            $table->string('no_late')->nullable();
            $table->string('no_absent')->nullable();
            $table->string('no_ot')->nullable();
            
           
           // $table->foreign('sched_id')->references('id')->on('branches')->onDelete('cascade');
            $table->foreign('cosched_id')->references('id')->on('company_schedules')->onDelete('cascade');
            $table->foreign('company_id')->references('id')->on('companies')->onDelete('cascade');
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
        Schema::dropIfExists('sessions');
    }
}
