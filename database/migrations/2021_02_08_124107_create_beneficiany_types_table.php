<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBeneficianyTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('beneficiany_types', function (Blueprint $table) {
            $table->increments('id');
            
            $table->integer('user_by')->unsigned();
            $table->string('beneficiany_desc_eng')->nullable();
            $table->string('beneficiany_desc_arab')->nullable();
            // $table->string('branch_id');
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
        Schema::dropIfExists('beneficiany_type');
    }
}
