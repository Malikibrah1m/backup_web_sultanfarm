<?php

namespace Database\Seeders;
use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class KamarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('kamars')->insert([
            'id_plasma' => '1',
            'no_kamar' => '1',
            'status' => 'Tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '1',
            'no_kamar' => '2',
            'status' => 'Tidak tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '1',
            'no_kamar' => '3',
            'status' => 'Tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '1',
            'no_kamar' => '4',
            'status' => 'Tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '2',
            'no_kamar' => '1',
            'status' => 'Tidak tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '2',
            'no_kamar' => '2',
            'status' => 'Tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '2',
            'no_kamar' => '3',
            'status' => 'Tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '2',
            'no_kamar' => '4',
            'status' => 'Tidak tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '3',
            'no_kamar' => '1',
            'status' => 'Tidak tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '3',
            'no_kamar' => '2',
            'status' => 'Tidak tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '3',
            'no_kamar' => '3',
            'status' => 'Tersedia',
        ]);
        DB::table('kamars')->insert([
            'id_plasma' => '3',
            'no_kamar' => '4',
            'status' => 'Tersedia',
        ]);
    }
}
