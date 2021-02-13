<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEarningsBenefitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('earnings_benefits', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_by')->unsigned();
        
            $table->string('benefit_desc_eng')->nullable();
            $table->string('benefit_desc_arab')->nullable();
            $table->integer('final_set_flag')->nullable();
            $table->string('money_value_flag')->nullable();
            $table->string('holiday_flag')->nullable();
            $table->string('printable')->nullable();
            $table->string('parentbenefit')->nullable();
            $table->string('modify_flag')->nullable();
            $table->string('gl_id')->nullable();
            $table->string('credit_gl_id')->nullable();
            $table->string('show_in_report')->nullable();
            $table->string('mulfactor')->nullable();
            $table->integer('parcent_frsalary')->nullable();
            $table->string('mb')->nullable();

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
        Schema::dropIfExists('earnings_benefits');
    }
}
