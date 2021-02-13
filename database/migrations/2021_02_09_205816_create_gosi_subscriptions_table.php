<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGosiSubscriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gosi_subscriptions', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_by')->unsigned();
            $table->string('yearmonth_id_gr')->nullable();
            $table->string('yearmonth_id_hi')->nullable();
            $table->integer('gosi_saudi_employee')->nullable();
            $table->integer('gosi_saudi_company')->nullable();
            $table->integer('gosi_nonsaudi_employee')->nullable();
            $table->integer('gosi_nonsaudi_company')->nullable();
            $table->string('current_flag')->nullable();
            $table->string('comments')->nullable();
            
            $table->integer('branch_id')->unsigned();
            $table->integer('company_id')->unsigned();
            $table->foreign('branch_id')->references('id')->on('branches')->onDelete('cascade');
            $table->foreign('company_id')->references('id')->on('companies')->onDelete('cascade');

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
        Schema::dropIfExists('gosi_subscriptions');
    }
}
