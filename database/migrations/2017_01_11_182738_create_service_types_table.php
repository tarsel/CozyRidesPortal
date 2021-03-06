<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateServiceTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('service_types', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('provider_name')->nullable();
            $table->string('image')->nullable();
            $table->string('marker')->nullable();
            $table->integer('capacity')->default(0);
            $table->float('fixed', 5, 2)->default(0);
            $table->float('price', 5, 2)->default(0);
            $table->float('minute', 5, 2)->default(0);
            $table->integer('hour')->nullable();
            $table->integer('distance');
            $table->enum('calculator', ['MIN', 'HOUR', 'DISTANCE', 'DISTANCEMIN', 'DISTANCEHOUR']);
            $table->string('description')->nullable();
            $table->integer('waiting_free_mins')->default(0);
            $table->float('waiting_min_charge', 5, 2)->default(0);
            $table->integer('status')->default(1);
            $table->enum('type', ['delivery', 'ride'])->default('ride');
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
        Schema::dropIfExists('service_types');
    }
}