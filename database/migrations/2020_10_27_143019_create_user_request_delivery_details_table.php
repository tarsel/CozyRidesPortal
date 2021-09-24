<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserRequestDeliveryDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_request_delivery_details', function (Blueprint $table) {
            $table->increments('id');

            $table->unsignedInteger('user_id');
            $table->unsignedInteger('user_request_id');
            $table->foreign('user_request_id')->references('id')->on('user_requests')->onDelete('cascade')->onUpdate('cascade');
            $table->string('item_to_deliver');
            $table->string('delivery_address');
            $table->string('receiver_name');
            $table->string('receiver_mobile');
            $table->string('any_instructions')->nullable();
            $table->enum('status', ['pending', 'pickedup','dropped'])->default('pending');



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
        Schema::dropIfExists('user_request_delivery_details');
    }
}
