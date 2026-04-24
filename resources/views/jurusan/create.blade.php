<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Tambah Jurusan') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
                <form action="{{ route('jurusan.store') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="nama_jurusan" class="form-label">Nama Jurusan</label>
                        <input type="text" class="form-control @error('nama_jurusan') is-invalid @enderror" id="nama_jurusan" name="nama_jurusan" value="{{ old('nama_jurusan') }}">
                        @error('nama_jurusan')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="akreditasi" class="form-label">Akreditasi</label>
                        <select class="form-select @error('akreditasi') is-invalid @enderror" id="akreditasi" name="akreditasi">
                            <option value="">Pilih Akreditasi</option>
                            <option value="A" {{ old('akreditasi') == 'A' ? 'selected' : '' }}>A</option>
                            <option value="B" {{ old('akreditasi') == 'B' ? 'selected' : '' }}>B</option>
                            <option value="C" {{ old('akreditasi') == 'C' ? 'selected' : '' }}>C</option>
                        </select>
                        @error('akreditasi')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                    <a href="{{ route('jurusan.index') }}" class="btn btn-secondary">Batal</a>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
