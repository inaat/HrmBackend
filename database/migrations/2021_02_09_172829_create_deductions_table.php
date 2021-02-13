<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDeductionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('deductions', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_by')->unsigned();
            $table->string('deduction_desc_eng')->nullable();
            $table->string('deduction_desc_arab')->nullable();
            
            $table->string('printable')->nullable();
            $table->string('parent_deduction')->nullable();
            $table->string('modify_flag')->nullable();
            $table->string('gl_id')->nullable();
            $table->string('credit_gl_id')->nullable();
            $table->string('show_in_report')->nullable();
            $table->string('request')->nullable();
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
        Schema::dropIfExists('deductions');
    }
}
