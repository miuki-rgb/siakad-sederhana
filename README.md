# Sistem Informasi Akademik (SIAKAD) - Laravel 12

Aplikasi web Sistem Informasi Akademik sederhana berbasis Laravel 12 dan MySQL untuk mengelola data master akademik meliputi Jurusan, Mahasiswa, dan Matakuliah.

## Fitur Utama

### 1. **Authentication & Registrasi**
- Sistem Login dan Registrasi menggunakan Laravel Breeze.
- Middleware `auth` untuk melindungi seluruh rute CRUD.
- Fitur Logout yang aman.

### 2. **Dashboard Statistik**
- Menampilkan ringkasan data secara real-time:
  - Total Jurusan.
  - Total Mahasiswa (Lokal Indonesia).
  - Total Matakuliah.
- Panduan cepat penggunaan aplikasi.

### 3. **Manajemen Jurusan**
- CRUD (Create, Read, Update, Delete) data Jurusan.
- Fitur Pencarian berdasarkan nama jurusan atau akreditasi.
- Pagination untuk pengelolaan data skala besar.

### 4. **Manajemen Mahasiswa**
- CRUD data Mahasiswa dengan relasi ke tabel Jurusan.
- Fitur Pencarian berdasarkan Nama atau NIM.
- Validasi NIM unik dan nama lokal Indonesia.

### 5. **Manajemen Matakuliah**
- CRUD data Matakuliah terintegrasi dengan Jurusan.
- Validasi SKS (1-6).

## Struktur Database (MySQL)

### Tabel: `jurusan`
- `id_jurusan` (PK)
- `nama_jurusan` (String)
- `akreditasi` (Enum/String: A, B, C)
- `timestamps`

### Tabel: `mahasiswa`
- `id_mahasiswa` (PK)
- `nim` (String, Unique)
- `nama` (String)
- `id_jurusan` (FK -> jurusan)
- `timestamps`

### Tabel: `matakuliah`
- `id_matakuliah` (PK)
- `nama_matakuliah` (String)
- `sks` (Integer)
- `id_jurusan` (FK -> jurusan)
- `timestamps`

## Relasi Eloquent

1. **One to Many**: `Jurusan` memiliki banyak `Mahasiswa` dan `Matakuliah`.
2. **Belongs To**: `Mahasiswa` dan `Matakuliah` merujuk ke satu `Jurusan`.

## Setup & Instalasi

### Prasyarat
- PHP >= 8.2
- Composer
- MySQL/MariaDB
- Node.js & NPM

### Langkah-langkah

1. **Clone & Install**
   ```bash
   git clone <url-repository-anda>
   cd siakad
   composer install
   npm install && npm run build
   ```

2. **Konfigurasi Environment**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

3. **Database Setup**
   Edit `.env` dan sesuaikan dengan database MySQL anda:
   ```env
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=siakad
   DB_USERNAME=root
   DB_PASSWORD=
   ```

4. **Migrasi & Seeding (Data Dummy)**
   Jalankan perintah ini untuk membuat tabel dan mengisi 50+ data dummy orang Indonesia:
   ```bash
   php artisan migrate --database=mysql
   php artisan db:seed --class=AkademikSeeder --database=mysql
   ```

5. **Jalankan Aplikasi**
   ```bash
   php artisan serve
   ```

6. **Akun Default**
   - **Email**: `admin@siakad.com`
   - **Password**: `password`

## Struktur Folder Penting
- `app/Http/Controllers/`: Logika CRUD (Jurusan, Mahasiswa, Matakuliah).
- `app/Models/`: Definisi Model dan Relasi Database.
- `database/migrations/`: Struktur Tabel Database.
- `resources/views/`: Tampilan UI berbasis Blade & Bootstrap.

---
*Projek ini dibuat sebagai studi kasus pengembangan sistem informasi akademik menggunakan Laravel 12.*
