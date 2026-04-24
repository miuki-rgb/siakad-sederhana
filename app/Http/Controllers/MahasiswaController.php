<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use App\Models\Jurusan;
use Illuminate\Http\Request;

class MahasiswaController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->input('search');
        $mahasiswas = Mahasiswa::with('jurusan')
            ->when($search, function($query) use ($search) {
                return $query->where('nama', 'like', "%{$search}%")
                             ->orWhere('nim', 'like', "%{$search}%");
            })->paginate(10);
        
        return view('mahasiswa.index', compact('mahasiswas', 'search'));
    }

    public function create()
    {
        $jurusans = Jurusan::all();
        return view('mahasiswa.create', compact('jurusans'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'nim' => 'required|string|unique:mahasiswa,nim',
            'nama' => 'required|string|max:255',
            'id_jurusan' => 'required|exists:jurusan,id_jurusan',
        ]);

        Mahasiswa::create($request->all());

        return redirect()->route('mahasiswa.index')->with('success', 'Mahasiswa berhasil ditambahkan.');
    }

    public function edit(Mahasiswa $mahasiswa)
    {
        $jurusans = Jurusan::all();
        return view('mahasiswa.edit', compact('mahasiswa', 'jurusans'));
    }

    public function update(Request $request, Mahasiswa $mahasiswa)
    {
        $request->validate([
            'nim' => 'required|string|unique:mahasiswa,nim,' . $mahasiswa->id_mahasiswa . ',id_mahasiswa',
            'nama' => 'required|string|max:255',
            'id_jurusan' => 'required|exists:jurusan,id_jurusan',
        ]);

        $mahasiswa->update($request->all());

        return redirect()->route('mahasiswa.index')->with('success', 'Mahasiswa berhasil diperbarui.');
    }

    public function destroy(Mahasiswa $mahasiswa)
    {
        $mahasiswa->delete();

        return redirect()->route('mahasiswa.index')->with('success', 'Mahasiswa berhasil dihapus.');
    }
}
