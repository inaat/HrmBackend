<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEvaluationCompetenciesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('evaluation_competencies', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_by')->unsigned();
            $table->integer('company_id')->unsigned();
            $table->integer('branch_id')->unsigned();
            $table->string('evaluation_desc_eng');
            $table->string('evaluation_desc_arab')->nullable();
            $table->string('evaluation_cycle')->nullable();
            $table->integer('max_mark')->nullable();
            $table->foreign('company_id')->references('id')->on('companies')->onDelete('cascade');
            $table->foreign('branch_id')->references('id')->on('branches')->onDelete('cascade');
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
        Schema::dropIfExists('evaluation_competencies');
    }
}
