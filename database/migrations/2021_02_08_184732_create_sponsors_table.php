<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSponsorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sponsors', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_by')->unsigned();
            $table->string('sponsor_name_eng')->nullable();
            $table->string('sponsor_name_arab')->nullable();
            $table->string('sponsor_address')->nullable();
            $table->string('sponsor_telphone_no')->nullable();
            $table->string('contact_person_eng')->nullable();
            $table->string('contact_person_arab')->nullable();
            $table->string('sponsor_no')->nullable();

            // $table->string('company_id')->nullable();
            // $table->string('branch_id')->nullable();
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
        Schema::dropIfExists('sponsors');
    }
}
