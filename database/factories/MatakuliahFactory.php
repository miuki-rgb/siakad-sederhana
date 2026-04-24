<?php

namespace Database\Factories;

use App\Models\Matakuliah;
use App\Models\Jurusan;
use Illuminate\Database\Eloquent\Factories\Factory;

class MatakuliahFactory extends Factory
{
    protected $model = Matakuliah::class;

    public function definition(): array
    {
        $matkul = [
            'Algoritma dan Pemrograman', 'Struktur Data', 'Basis Data', 
            'Jaringan Komputer', 'Sistem Operasi', 'Pemrograman Web', 
            'Kecerdasan Buatan', 'Etika Profesi', 'Pancasila', 
            'Bahasa Indonesia', 'Matematika Diskrit', 'Statistika',
            'Manajemen Proyek', 'Analisis Sistem', 'Arsitektur Komputer'
        ];

        return [
            'nama_matakuliah' => $this->faker->randomElement($matkul) . ' ' . $this->faker->randomElement(['I', 'II', 'Lanjut', 'Dasar']),
            'sks' => $this->faker->numberBetween(2, 4),
            'id_jurusan' => Jurusan::all()->random()->id_jurusan,
        ];
    }
}
