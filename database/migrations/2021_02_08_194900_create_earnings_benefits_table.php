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
            $table->boolean('final_set_flag')->default(0);
            $table->boolean('money_value_flag')->default(0);
            $table->boolean('holiday_flag')->default(0);
            $table->boolean('printable')->default(0);
            $table->string('parentbenefit')->nullable();
            $table->boolean('modify_flag')->default(0);
            $table->string('gl_id')->nullable();
            $table->string('credit_gl_id')->nullable();
            $table->boolean('show_in_report')->default(0);
            $table->boolean('mulfactor')->default(0);
            $table->decimal('parcent_frsalary')->nullable();
            $table->boolean('mb')->default(0);
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
