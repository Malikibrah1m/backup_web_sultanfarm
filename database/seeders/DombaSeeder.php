<?php

namespace Database\Seeders;
use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DombaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('dombas')->insert([
            'kode_domba' => 'A1',
            'nama_domba' => 'domba faisal',
            'jenis_kelamin' => 'jantan',
            'tipe_domba' => 'trading',
            'bobot' => '200',
            'induk_jantan' => 'domba dormas',
            'induk_betina' => 'domba batur',
            'turunan' => '1',
            'gambar' => '1697696991.jpg',
            'keterangan' => 'Domba dormas merupakan jenis domba dengan kualitas yang berkelas',
            'harga_beli' => '3000000',
            'harga_jual' => '4000000',
            'status' => 'tersedia',
            'tgl_lahir' => '2023-10-17',
            'id_kamar' => '1',
            'id_jenis' => '5',
        ]);
        DB::table('dombas')->insert([
            'kode_domba' => 'A2',
            'nama_domba' => 'domba malik',
            'jenis_kelamin' => 'jantan',
            'tipe_domba' => 'trading',
            'bobot' => '300',
            'induk_jantan' => 'domba taxel',
            'induk_betina' => 'domba taxel',
            'turunan' => '2',
            'gambar' => '1697696878.jpg',
            'keterangan' => 'Domba Taxel merupakan domba yang memiliki fisik yang lebih kuat daripada domba lokal',
            'harga_beli' => '3500000',
            'harga_jual' => '4000000',
            'status' => 'tersedia',
            'tgl_lahir' => '2023-05-01',
            'id_kamar' => '1',
            'id_jenis' => '2',
        ]);
        DB::table('dombas')->insert([
            'kode_domba' => 'A3',
            'nama_domba' => 'domba sugeng',
            'jenis_kelamin' => 'jantan',
            'tipe_domba' => 'trading',
            'bobot' => '230',
            'induk_jantan' => 'domba batur',
            'induk_betina' => 'domba lokal',
            'turunan' => '1',
            'gambar' => '1697696821.jpeg',
            'keterangan' => 'Domba Batur merupakan domba dengan jenis yang memiliki bulu cukup tebal',
            'harga_beli' => '2600000',
            'harga_jual' => '3400000',
            'status' => 'tersedia',
            'tgl_lahir' => '2023-01-12',
            'id_kamar' => '1',
            'id_jenis' => '1',
        ]);
        DB::table('dombas')->insert([
            'kode_domba' => 'A4',
            'nama_domba' => 'domba edy',
            'jenis_kelamin' => 'betina',
            'tipe_domba' => 'trading',
            'bobot' => '200',
            'induk_jantan' => 'domba dormas',
            'induk_betina' => 'domba batur',
            'turunan' => '3',
            'gambar' => '1697697088.jpg',
            'keterangan' => 'Domba crossing lokal merupakan jenis domba yang di kembang biakkan lewat persilangan',
            'harga_beli' => '1500000',
            'harga_jual' => '3200000',
            'status' => 'tersedia',
            'tgl_lahir' => '2022-10-17',
            'id_kamar' => '1',
            'id_jenis' => '8',
        ]);
        DB::table('dombas')->insert([
            'kode_domba' => 'A5',
            'nama_domba' => 'domba david',
            'jenis_kelamin' => 'jantan',
            'tipe_domba' => 'trading',
            'bobot' => '200',
            'induk_jantan' => 'domba dormas',
            'induk_betina' => 'domba batur',
            'turunan' => '3',
            'gambar' => '1697697151.jpeg',
            'keterangan' => 'Domba ini merupakan jenis domba yang memiliki kualitas cukup bagus',
            'harga_beli' => '4000000',
            'harga_jual' => '5000000',
            'status' => 'tersedia',
            'tgl_lahir' => '2021-10-17',
            'id_kamar' => '1',
            'id_jenis' => '1',
        ]);
    }
}
