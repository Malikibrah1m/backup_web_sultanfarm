<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StorecustomerRequest;
use App\Http\Requests\UpdatecustomerRequest;
use App\Http\Resources\CustomerResource;
use App\Models\Customer;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;

class MobileCustomerController extends Controller
{
    public function index()
    {
        $customers = customer::all();

        return view('customer', compact('customers'));
    }

    public function login(Request $request)
    {

        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $customer = Customer::where('email', $request->email)->first();

        if (!$customer) {
            return response()->json(['error' => 'Email tidak ditemukan.'], 400);
        }

        if (!Hash::check($request->password, $customer->password)) {
            return response()->json(['error' => 'Password salah'], 401);
        } else {
            // auth()->login($customer);
            // $token = $customer->createToken('customer login')->plainTextToken;
            // return response()->json(['token' => $token], 200);
            $token = $customer->createToken('customer login')->plainTextToken;

            // Kembalikan token dan data pelanggan dalam respons API
            return response()->json([
                'token' => $token,
                'id' => $customer->id,
                'nama_customer' => $customer->nama_customer,
                'no_telp' => $customer->no_telp,
                'alamat' => $customer->alamat,
                'email' => $customer->email,
                'jenis_kelamin' => $customer->jenis_kelamin,
            ], 200);
        }
        // if (!$customer || !Hash::check($request->password, $customer->password)) {
        //     throw ValidationException::withMessages([
        //         'email' => ['Email tidak ditemukan'],
        //         'password' => ['Password salah'],
        //     ]);
        // } else {
        //     $token = $customer->createToken('customer login')->plainTextToken;

        //     // Kembalikan token dan data pelanggan dalam respons API
        //     return response()->json([
        //         'token' => $token,
        //         'id' => $customer->id,
        //         'nama_customer' => $customer->nama_customer,
        //         'no_telp' => $customer->no_telp,
        //         'alamat' => $customer->alamat,
        //         'email' => $customer->email,
        //         'jenis_kelamin' => $customer->jenis_kelamin,
        //     ]);
        // }

        // Autentikasi pengguna dan kembalikan token yang sudah dibuat

    }

    public function checkEmail(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|unique:customers',
        ], [
            'email' => [
                'required' => 'email harus diisi',
                'unique' => 'email sudah digunakan',
            ],
        ]);

        if ($validator->fails()) {
            throw new HttpResponseException(Response([
                'success' => false,
                'email' => $validator->errors()->first('email'),
            ]));
        }

        return [
            'message' => 'email valid',
            'success' => true,
        ];
    }

    public function store(StorecustomerRequest $request)
    {
        $validated = $request->validated();
        $customer = Customer::create(
            [
                'nama_customer' => $validated['nama_customer'],
                'alamat' => $validated['alamat'],
                'no_telp' => $validated['no_telp'],
                'email' => $validated['email'],
                'password' => Hash::make($validated['password']),
            ]
        );

        return new CustomerResource($customer);
    }


    public function updateCustomer(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required',
            'nama_customer' => 'required',
            'alamat' => 'required',
            'no_telp' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $email = $request->input('email');
        $password = $request->input('password');
        $namaCustomer = $request->input('nama_customer');
        $alamat = $request->input('alamat');
        $noTelp = $request->input('no_telp');

        $customer = DB::table('customers')->where('email', $email)->first();

        if (!$customer) {
            return response()->json(['error' => 'Customer not found'], 404);
        }

        if (!Hash::check($password, $customer->password)) {
            // Password tidak cocok
            return response()->json(['error' => 'Password salah'], 400);
        }

        // Password cocok, lakukan pembaruan data
        DB::table('customers')->where('email', $email)->update([
            'nama_customer' => $namaCustomer,
            'alamat' => $alamat,
            'no_telp' => $noTelp,
        ]);

        $customer = customer::where('email', $request->email)->first();

        return response()->json([
            'id' => $customer->id,
            'nama_customer' => $customer->nama_customer,
            'no_telp' => $customer->no_telp,
            'alamat' => $customer->alamat,
            'email' => $customer->email,
            'jenis_kelamin' => $customer->jenis_kelamin,
        ]);
    }

    public function destroy($id)
    {
        $customers = Customer::findOrFail($id);
        $customers->delete();

        return back()->with('success', 'Data Berhasil Dihapus');
    }
}