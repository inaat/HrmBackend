<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBranchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('branches', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('company_id')->unsigned();
            $table->integer('country_id')->unsigned();
            $table->integer('city_id')->unsigned();
            $table->integer('user_by')->unsigned();
            $table->string('branch_name_eng')->nullable();
            $table->string('branch_name_arab')->nullable();
            $table->string('branch_manager_eng')->nullable();
            $table->string('branch_manager_arab')->nullable();
            $table->string('address_1')->nullable();
            $table->string('address_2')->nullable();
            $table->string('address_3')->nullable();
            $table->string('address_4')->nullable();
            $table->string('postal_code')->nullable();
            $table->string('state_region')->nullable();
            $table->string('phone_1')->nullable();
            $table->string('phone_2')->nullable();
            $table->string('phone_3')->nullable();
            $table->string('fax_1')->nullable();
            $table->string('fax_2')->nullable();
            $table->string('email')->nullable();
            $table->string('website')->nullable();
            $table->string('status')->nullable();
            $table->string('remarks_1')->nullable();
            $table->string('remarks_2')->nullable();
            $table->string('remarks_3')->nullable();
            $table->string('default_emp')->nullable();

            $table->foreign('user_by')->references('id')->on('users')->softDeletes();
            $table->foreign('country_id')->references('id')->on('countries')->softDeletes();
            $table->foreign('city_id')->references('id')->on('cities')->softDeletes();
            $table->foreign('company_id')->references('id')->on('companies')->softDeletes();
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
        Schema::dropIfExists('branches');
    }
}
