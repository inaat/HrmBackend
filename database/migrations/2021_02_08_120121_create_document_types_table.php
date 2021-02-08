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
            $table->string('renew_flag')->nullable();
            $table->integer('user_by')->unsigned();
            $table->string('document_desc_eng')->nullable();
            $table->string('document_desc_arab')->nullable();
            $table->string('co_flog')->nullable();
            // $table->string('branch_id');
            // $table->string('company_id');
            $table->string('hijriflag')->nullable();
            $table->string('substitution')->nullable();
            $table->date('days_to_expire')->nullable();
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
