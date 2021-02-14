<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCostcentersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('costcenters', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('company_id')->unsigned();
            $table->integer('branch_id')->unsigned();
            // $table->integer('dep_id')->unsigned();
            // $table->integer('section_id')->unsigned();
            // $table->integer('costcenter_id')->unsigned();
           
            $table->integer('user_by')->unsigned();
            $table->string('costcenter_name_eng')->nullable();
            $table->string('costcenter_name_arab')->nullable();
            $table->string('costcenter_status')->nullable();
            $table->string('store_cc')->nullable();

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
        Schema::dropIfExists('costcenters');
    }
}
