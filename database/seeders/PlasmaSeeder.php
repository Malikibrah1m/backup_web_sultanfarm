<?php

namespace Database\Seeders;
use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PlasmaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('plasmas')->insert([
            'nama_plasma' => 'Plasma 1',
            'alamat_plasma' => 'RPRP+V5H, Jambutan, Antirogo, Kec. Sumbersari, Kabupaten Jember, Jawa Timur 68124',
        ]);
        DB::table('plasmas')->insert([
            'nama_plasma' => 'Plasma 2',
            'alamat_plasma' => 'Jl. Kaliurang, Kec. Sumbersari, Kab. Jember',
        ]);
        DB::table('plasmas')->insert([
            'nama_plasma' => 'Plasma 3',
            'alamat_plasma' => 'Jl. Mawar Kec. Bangsalsari, Kab. Jember',
        ]);
    }
}
