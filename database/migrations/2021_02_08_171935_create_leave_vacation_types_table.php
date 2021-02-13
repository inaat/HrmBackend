<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLeaveVacationTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leave_vacation_types', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_by')->unsigned();
            $table->string('status')->nullable();
            $table->string('leave_desc_eng')->nullable();
            $table->string('leave_desc_arab')->nullable();
            $table->integer('leave_duration')->nullable();
            $table->string('require_visa')->nullable();
            $table->string('with_pay')->nullable();
            $table->string('operator')->nullable();
            $table->string('settlement')->nullable();
            $table->string('extra_leave_calc')->nullable();
            $table->string('request')->nullable();
            $table->integer('branch_id')->unsigned();
            $table->integer('company_id')->unsigned();
            $table->foreign('branch_id')->references('id')->on('branches')->onDelete('cascade');
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
        Schema::dropIfExists('leave_vacation_type');
    }
}
