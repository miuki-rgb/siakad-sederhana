<?php

namespace Database\Factories;

use App\Models\Jurusan;
use Illuminate\Database\Eloquent\Factories\Factory;

class JurusanFactory extends Factory
{
    protected $model = Jurusan::class;

    public function definition(): array
    {
        return [
            'nama_jurusan' => $this->faker->unique()->randomElement([
                'Teknik Informatika', 'Sistem Informasi', 'Teknik Sipil', 
                'Teknik Mesin', 'Akuntansi', 'Manajemen', 'Hukum', 
                'Kedokteran', 'Psikologi', 'Arsitektur'
            ]),
            'akreditasi' => $this->faker->randomElement(['A', 'B', 'C']),
        ];
    }
}
