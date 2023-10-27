<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Penjualan;
use Illuminate\Http\Request;

class MobileRiwayatController extends Controller
{
    public function riwayat_diajukan(Request $request)
    {
        $id_customer = $request->input('id_customer');

        $penjualans = Penjualan::select('penjualans.*', 'pakets.nama_paket', 'pakets.gambar', 'kamars.no_kamar')
            ->where('Penjualans.id_customer', $id_customer)
            ->join('pakets', 'penjualans.id_paket','=','pakets.id')
            ->join('kamars', 'penjualans.id_kamar','=','kamars.id')
            ->where('Penjualans.status', 'diajukan')
            ->get();

        return response()->json($penjualans);
    }

    public function riwayat_diproses(Request $request)
    {
        $id_customer = $request->input('id_customer');

        $penjualans = Penjualan::select('penjualans.*', 'pakets.nama_paket', 'pakets.gambar', 'kamars.no_kamar')
            ->where('Penjualans.id_customer', $id_customer)
            ->join('pakets', 'penjualans.id_paket','=','pakets.id')
            ->join('kamars', 'penjualans.id_kamar','=','kamars.id')
            ->where('Penjualans.status', 'diproses')
            ->get();

        return response()->json($penjualans);
    }

    public function riwayat_selesai(Request $request)
    {
        $id_customer = $request->input('id_customer');

        $penjualans = Penjualan::select('penjualans.*', 'pakets.nama_paket', 'pakets.gambar', 'kamars.no_kamar')
        ->where('Penjualans.id_customer', $id_customer)
        ->join('pakets', 'penjualans.id_paket','=','pakets.id')
        ->join('kamars', 'penjualans.id_kamar','=','kamars.id')
        ->where('Penjualans.status', 'selesai')
        ->get();

        return response()->json($penjualans);
    }
    public function riwayat_ditolak(Request $request)
    {
        $id_customer = $request->input('id_customer');

        $penjualans = Penjualan::select('penjualans.*', 'pakets.nama_paket', 'pakets.gambar', 'kamars.no_kamar')
        ->where('Penjualans.id_customer', $id_customer)
        ->join('pakets', 'penjualans.id_paket','=','pakets.id')
        ->join('kamars', 'penjualans.id_kamar','=','kamars.id')
        ->where('Penjualans.status', 'ditolak')
        ->get();

        return response()->json($penjualans);
    }
}
