<?php

namespace Database\Factories;

use App\Models\Mahasiswa;
use App\Models\Jurusan;
use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as FakerFactory;

class MahasiswaFactory extends Factory
{
    protected $model = Mahasiswa::class;

    public function definition(): array
    {
        // Menggunakan faker khusus Indonesia secara eksplisit
        $fakerId = FakerFactory::create('id_ID');

        return [
            'nim' => $fakerId->unique()->numerify('2024####'),
            'nama' => $fakerId->name(),
            'id_jurusan' => Jurusan::all()->random()->id_jurusan,
        ];
    }
}
