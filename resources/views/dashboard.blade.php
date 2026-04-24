<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard Akademik') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <!-- Selamat Datang -->
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg mb-6">
                <div class="p-6 text-gray-900">
                    <h3 class="text-lg font-bold">Halo, {{ Auth::user()->name }}!</h3>
                    <p>Selamat datang di Sistem Informasi Akademik (SIAKAD). Gunakan menu di atas untuk mengelola data kampus.</p>
                </div>
            </div>

            <!-- Statistik Cards -->
            <div class="row">
                <!-- Jurusan -->
                <div class="col-md-4 mb-4">
                    <div class="card border-0 shadow-sm bg-primary text-white">
                        <div class="card-body p-4">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <h6 class="text-uppercase mb-2">Total Jurusan</h6>
                                    <h2 class="display-4 fw-bold mb-0">{{ $stats['jurusan'] }}</h2>
                                </div>
                                <i class="fs-1 opacity-50 bi bi-building"></i>
                            </div>
                            <a href="{{ route('jurusan.index') }}" class="text-white mt-3 d-inline-block text-decoration-none small">
                                Lihat Detail →
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Mahasiswa -->
                <div class="col-md-4 mb-4">
                    <div class="card border-0 shadow-sm bg-success text-white">
                        <div class="card-body p-4">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <h6 class="text-uppercase mb-2">Total Mahasiswa</h6>
                                    <h2 class="display-4 fw-bold mb-0">{{ $stats['mahasiswa'] }}</h2>
                                </div>
                                <i class="fs-1 opacity-50 bi bi-people"></i>
                            </div>
                            <a href="{{ route('mahasiswa.index') }}" class="text-white mt-3 d-inline-block text-decoration-none small">
                                Lihat Detail →
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Matakuliah -->
                <div class="col-md-4 mb-4">
                    <div class="card border-0 shadow-sm bg-warning text-white">
                        <div class="card-body p-4">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <h6 class="text-uppercase mb-2">Total Matakuliah</h6>
                                    <h2 class="display-4 fw-bold mb-0">{{ $stats['matakuliah'] }}</h2>
                                </div>
                                <i class="fs-1 opacity-50 bi bi-book"></i>
                            </div>
                            <a href="{{ route('matakuliah.index') }}" class="text-white mt-3 d-inline-block text-decoration-none small">
                                Lihat Detail →
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Panduan Cepat -->
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <h4 class="mb-4 font-bold border-bottom pb-2">Panduan Pengelolaan Data</h4>
                    <div class="row">
                        <div class="col-md-6">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex align-items-center">
                                    <span class="badge bg-primary rounded-pill me-3">1</span>
                                    Tambahkan data <strong>Jurusan</strong> terlebih dahulu sebelum Mahasiswa.
                                </li>
                                <li class="list-group-item d-flex align-items-center">
                                    <span class="badge bg-primary rounded-pill me-3">2</span>
                                    Gunakan fitur <strong>Search</strong> untuk mencari data secara spesifik.
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex align-items-center">
                                    <span class="badge bg-primary rounded-pill me-3">3</span>
                                    Data <strong>Mahasiswa</strong> wajib memiliki NIM yang unik.
                                </li>
                                <li class="list-group-item d-flex align-items-center">
                                    <span class="badge bg-primary rounded-pill me-3">4</span>
                                    Pastikan <strong>SKS</strong> matakuliah diisi dengan benar (1-6).
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
