<?php

namespace App\Http\Controllers;

use App\Models\landingPage;
use Illuminate\Http\Request;

class LandingController extends Controller
{
    public function index()
    {
        $landingpage = LandingPage::find(1);

        return view('landing/landing', compact('landingpage'));
    }

    public function detail()
    {
        return view('landing/detail_landing');
    }

    public function all()
    {
        return view('landing/lihat_semua_domba');
    }

    public function slider()
    {
        return view('pengaturan/slider');
    }

    public function landingpage()
    {
        $landingpage = LandingPage::all();

        return view('pengaturan/landing_page', compact('landingpage'));
    }

    public function UpdateLandingpage(Request $request, $id)
    {

        // $validator = $request->validate([
        //     'judul_beranda' => 'required',
        //     'deskripsi_beranda' => 'required',
        // ]);

        // $data = LandingPage::find($id);
        // $data->update(['judul_beranda' => $request->judul_beranda, 'deskripsi_beranda' => $request->deskripsi_beranda]);

        $validated = $request->validate([
            'judul_beranda' => 'required',
            'deskripsi_beranda' => 'required',
        ]);
        $data = LandingPage::find($id);
        $data->update($validated);

        return redirect()->back()->with('success', 'Data Berhasil Di Update');
    }

    public function tentangkami()
    {
        $landingpage = LandingPage::all();

        return view('pengaturan/tentang_kami', compact('landingpage'));
    }

    public function Updatetentangkami(Request $request, $id)
    {

        $validated = $request->validate([
            'deskripsi_tentangkami' => 'required',
        ]);
        $data = LandingPage::find($id);
        $data->update($validated);

        return redirect()->back()->with('success', 'Data Berhasil Di Update');
    }

    public function sosialmedia()
    {
        $landingpage = LandingPage::all();

        return view('pengaturan/sosial_media', compact('landingpage'));
    }

    public function Updatesosialmedia(Request $request, $id)
    {

        $validated = $request->validate([
            'instagram' => 'required',
            'tiktok' => 'required',
        ]);
        $data = LandingPage::find($id);
        $data->update($validated);

        return redirect()->back()->with('success', 'Data Berhasil Di Update');
    }

    public function footer()
    {
        $landingpage = LandingPage::all();

        return view('pengaturan/footer', compact('landingpage'));
    }

    public function Updatefooter(Request $request, $id)
    {

        $validated = $request->validate([
            'deskripsi_footer' => 'required',
            'nomor_telepon' => 'required',
            'email' => 'required',
        ]);
        $data = LandingPage::find($id);
        $data->update($validated);

        return redirect()->back()->with('success', 'Data Berhasil Di Update');
    }
}
