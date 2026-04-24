<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Daftar Mahasiswa') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
                <div class="d-flex justify-content-between mb-3">
                    <a href="{{ route('mahasiswa.create') }}" class="btn btn-primary">Tambah Mahasiswa</a>
                    <form action="{{ route('mahasiswa.index') }}" method="GET" class="d-flex">
                        <input type="text" name="search" class="form-control me-2" placeholder="Cari mahasiswa..." value="{{ $search }}">
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
                            <th>NIM</th>
                            <th>Nama</th>
                            <th>Jurusan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($mahasiswas as $index => $mhs)
                            <tr>
                                <td>{{ $mahasiswas->firstItem() + $index }}</td>
                                <td>{{ $mhs->nim }}</td>
                                <td>{{ $mhs->nama }}</td>
                                <td>{{ $mhs->jurusan->nama_jurusan }}</td>
                                <td>
                                    <a href="{{ route('mahasiswa.edit', $mhs->id_mahasiswa) }}" class="btn btn-sm btn-warning">Edit</a>
                                    <form action="{{ route('mahasiswa.destroy', $mhs->id_mahasiswa) }}" method="POST" class="d-inline">
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
                    {{ $mahasiswas->appends(['search' => $search])->links() }}
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
