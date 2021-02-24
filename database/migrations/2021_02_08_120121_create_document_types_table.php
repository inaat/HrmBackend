<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDocumentTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('document_types', function (Blueprint $table) {
            $table->increments('id');
            $table->boolean('renew_flag')->default(0);
            $table->integer('user_by')->unsigned();
            $table->string('document_desc_eng')->nullable();
            $table->string('document_desc_arab')->nullable();
            $table->boolean('co_flag')->default(0);
            $table->boolean('hijriflag')->default(0);
            $table->boolean('substitution')->default(0);
            $table->integer('days_to_expire')->default(0);
            $table->integer('branch_id')->unsigned();
            $table->boolean('is_company')->default(0);
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
        Schema::dropIfExists('document_type');
    }
}
