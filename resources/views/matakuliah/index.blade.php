<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Daftar Matakuliah') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
                <div class="d-flex justify-content-between mb-3">
                    <a href="{{ route('matakuliah.create') }}" class="btn btn-primary">Tambah Matakuliah</a>
                    <form action="{{ route('matakuliah.index') }}" method="GET" class="d-flex">
                        <input type="text" name="search" class="form-control me-2" placeholder="Cari matakuliah..." value="{{ $search }}">
                        <button type="submit" class="btn btn-outline-secondary">Cari</button>
                    </form>
                </div>

                @if(session('success'))
                    <div class="alert alert-success">{{ session('success') }}</div>
                @endif

                <table class="table table-bordered table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>No</th>
                            <th>Nama Matakuliah</th>
                            <th>SKS</th>
                            <th>Jurusan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($matakuliahs as $index => $mk)
                            <tr>
                                <td>{{ $matakuliahs->firstItem() + $index }}</td>
                                <td>{{ $mk->nama_matakuliah }}</td>
                                <td>{{ $mk->sks }}</td>
                                <td>{{ $mk->jurusan->nama_jurusan }}</td>
                                <td>
                                    <a href="{{ route('matakuliah.edit', $mk->id_matakuliah) }}" class="btn btn-sm btn-warning">Edit</a>
                                    <form action="{{ route('matakuliah.destroy', $mk->id_matakuliah) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Yakin ingin menghapus?')">Hapus</button>
                                    </form>
                                </td>
                            </tr>
@empty
                            <tr>
                                <td colspan="5" class="text-center">Data tidak ditemukan.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>

                <div class="mt-3">
                    {{ $matakuliahs->appends(['search' => $search])->links() }}
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
