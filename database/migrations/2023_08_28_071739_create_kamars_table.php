<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('kamars', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('id_plasma')->nullable()->default(12)->unsigned();
            $table->foreign('id_plasma')->references('id')->on('plasmas')->onDelete('cascade');
            $table->smallInteger('no_kamar')->nullable()->default(12);
            $table->enum('status', ['Tersedia', 'Tidak tersedia']);
            $table->timestamp('waktu_kembali_tersedia')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('kamars');
    }
};

