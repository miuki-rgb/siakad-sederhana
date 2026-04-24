<?php

namespace App\Http\Controllers;

use App\Models\Jurusan;
use Illuminate\Http\Request;

class JurusanController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->input('search');
        $jurusans = Jurusan::when($search, function($query) use ($search) {
            return $query->where('nama_jurusan', 'like', "%{$search}%")
                         ->orWhere('akreditasi', 'like', "%{$search}%");
        })->paginate(10);
        
        return view('jurusan.index', compact('jurusans', 'search'));
    }

    public function create()
    {
        return view('jurusan.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_jurusan' => 'required|string|max:255',
            'akreditasi' => 'required|string|max:2',
        ]);

        Jurusan::create($request->all());

        return redirect()->route('jurusan.index')->with('success', 'Jurusan berhasil ditambahkan.');
    }

    public function edit(Jurusan $jurusan)
    {
        return view('jurusan.edit', compact('jurusan'));
    }

    public function update(Request $request, Jurusan $jurusan)
    {
        $request->validate([
            'nama_jurusan' => 'required|string|max:255',
            'akreditasi' => 'required|string|max:2',
        ]);

        $jurusan->update($request->all());

        return redirect()->route('jurusan.index')->with('success', 'Jurusan berhasil diperbarui.');
    }

    public function destroy(Jurusan $jurusan)
    {
        $jurusan->delete();

        return redirect()->route('jurusan.index')->with('success', 'Jurusan berhasil dihapus.');
    }
}
