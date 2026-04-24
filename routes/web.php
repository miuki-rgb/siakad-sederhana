<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\JurusanController;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\MatakuliahController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect()->route('login');
});

Route::get('/dashboard', function () {
    $stats = [
        'mahasiswa' => \App\Models\Mahasiswa::count(),
        'jurusan' => \App\Models\Jurusan::count(),
        'matakuliah' => \App\Models\Matakuliah::count(),
    ];
    return view('dashboard', compact('stats'));
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::resource('jurusan', JurusanController::class);
    Route::resource('mahasiswa', MahasiswaController::class);
    Route::resource('matakuliah', MatakuliahController::class);
});

require __DIR__.'/auth.php';
