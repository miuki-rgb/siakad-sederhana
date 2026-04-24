<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Jurusan;
use App\Models\Mahasiswa;
use App\Models\Matakuliah;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;

class AkademikSeeder extends Seeder
{
    public function run(): void
    {
        // Kosongkan data lama untuk menghindari duplikasi saat seeding ulang
        Schema::disableForeignKeyConstraints();
        User::truncate();
        Jurusan::truncate();
        Mahasiswa::truncate();
        Matakuliah::truncate();
        Schema::enableForeignKeyConstraints();

        // 1. Admin User
        User::create([
            'name' => 'Admin Siakad',
            'email' => 'admin@siakad.com',
            'password' => Hash::make('password'),
        ]);

        // 2. Buat 10 Jurusan
        Jurusan::factory()->count(10)->create();

        // 3. Buat 50 Mahasiswa
        Mahasiswa::factory()->count(50)->create();

        // 4. Buat 30 Matakuliah
        Matakuliah::factory()->count(30)->create();
    }
}
