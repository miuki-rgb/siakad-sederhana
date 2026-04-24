<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Tambah Matakuliah') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
                <form action="{{ route('matakuliah.store') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="nama_matakuliah" class="form-label">Nama Matakuliah</label>
                        <input type="text" class="form-control @error('nama_matakuliah') is-invalid @enderror" id="nama_matakuliah" name="nama_matakuliah" value="{{ old('nama_matakuliah') }}">
                        @error('nama_matakuliah')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="sks" class="form-label">SKS</label>
                        <input type="number" class="form-control @error('sks') is-invalid @enderror" id="sks" name="sks" value="{{ old('sks') }}" min="1" max="6">
                        @error('sks')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="id_jurusan" class="form-label">Jurusan</label>
                        <select class="form-select @error('id_jurusan') is-invalid @enderror" id="id_jurusan" name="id_jurusan">
                            <option value="">Pilih Jurusan</option>
                            @foreach($jurusans as $jurusan)
                                <option value="{{ $jurusan->id_jurusan }}" {{ old('id_jurusan') == $jurusan->id_jurusan ? 'selected' : '' }}>
                                    {{ $jurusan->nama_jurusan }}
                                </option>
                            @endforeach
                        </select>
                        @error('id_jurusan')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                    <a href="{{ route('matakuliah.index') }}" class="btn btn-secondary">Batal</a>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
