<?php

namespace Database\Seeders;
use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PaketBreedingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        DB::table('pakets')->insert([
            'nama_paket' => 'Paket breeding VIP',
            'harga' => '29000000',
            'keterangan' => 'Paket ini berisikan domba berjumlah 12 dengan jenis dormas super',
            'gambar' => 'domba_vip.jpg',
        ]);
        DB::table('pakets')->insert([
            'nama_paket' => 'Paket breeding Medium',
            'harga' => '18000000',
            'keterangan' => 'Paket breeding medium merupakan paket yang berisikan 8 jenis domba dormas yang siap untuk dikembang biakkan',
            'gambar' => 'domba_medium.jpg',
        ]);
        DB::table('pakets')->insert([
            'nama_paket' => 'Paket breeding Ekonomis',
            'harga' => '11000000',
            'keterangan' => 'Paket breeding ekonomis merupakan paket yang berisikan 5 jenis domba dormas yang siap untuk dikembang biakkan',
            'gambar' => 'domba_ekonomis.jpg',
        ]);
    }
}
