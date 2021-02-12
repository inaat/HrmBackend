<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sections', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_by')->unsigned();

            $table->string('section_desc_eng')->nullable();
            $table->string('section_desc_arab')->nullable();
            $table->integer('exchange_rate')->nullable();
          
           
            // $table->string('depart_id')->nullable();
            // $table->string('company_id');
            // $table->string('branch_id');
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
        Schema::dropIfExists('sections');
    }
}