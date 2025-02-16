<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('bulks', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->bigInteger('user_id');
            $table->uuid('session_id');
            $table->bigInteger('campaign_id');
            $table->string('receiver_name')->nullable();
            $table->string('receiver');
            $table->string('receiver_billing');
            $table->string('message_type');
            $table->string('tgljt');
            $table->string('nodep');
            $table->string('baghas');
            $table->string('dob');
            $table->string('age');
            $table->longText('message');
            $table->enum('status', ['sent', 'invalid', 'failed', 'pending'])->default('pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bulks');
    }
};
