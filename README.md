Simulasi Database Perpustakaan

Deskripsi
Proyek ini merupakan simulasi **database perpustakaan digital** yang dikembangkan untuk memenuhi tugas **Uji Kompetensi Akhir (Ujikom)** pada mata kuliah **Pemrograman Internet**. Sistem ini memungkinkan pengguna untuk **menambahkan, mengubah, menghapus, dan melihat data buku serta kategori buku** melalui antarmuka web sederhana.

## Fitur
- **Manajemen Buku**
  - Tambah buku baru
  - Ubah data buku
  - Hapus buku
  - Lihat daftar buku
- **Manajemen Kategori**
  - Tambah kategori baru
  - Ubah kategori
  - Hapus kategori
  - Lihat daftar kategori
- **Autentikasi**
  - Login dan logout pengguna
  - Registrasi (opsional)
- **Upload Gambar**
  - Setiap buku dapat memiliki gambar sampul
  - Gambar dapat diperbarui saat mengubah data buku
- **Responsif**
  - Antarmuka web menggunakan **Bootstrap 5** dan **AdminLTE**

## Struktur Database
Database menggunakan **MySQL** dengan tabel utama:
1. `buku`  
   - `id_buku` (INT, PK)  
   - `nama_buku` (VARCHAR)  
   - `deskripsi` (TEXT)  
   - `stok` (INT)  
   - `gambar` (VARCHAR)  
   - `tanggal_input` (DATE)  
   - `id_kategori` (INT, FK ke `kategori`)
2. `kategori`  
   - `id_kategori` (INT, PK)  
   - `kategori` (VARCHAR)  
   - `deskripsi` (TEXT)  
   - `tanggal_input` (DATE)
3. `user`  
   - `id` (INT, PK)  
   - `username` (VARCHAR)  
   - `email` (VARCHAR)  
   - `password` (VARCHAR, hashed)

## Teknologi
- PHP (versi 7.4+)
- MySQL / MariaDB
- HTML, CSS, Bootstrap 5
- AdminLTE (template dashboard)
- JavaScript untuk interaksi dasar

## Instalasi
1. Pastikan **XAMPP/WAMP/LAMP** terpasang di komputer.
2. Buat database baru dengan nama `simbs`.
3. Import file SQL (misal `simbs.sql`) untuk membuat tabel dan data awal.
4. Letakkan seluruh file proyek di folder `htdocs` (XAMPP) atau root server lokal.
5. Buka browser dan akses `http://localhost/nama_folder_proyek/`.
6. Login menggunakan akun admin default (jika tersedia).

## Catatan
- Sistem ini bersifat **simulasi** dan digunakan **untuk tujuan pembelajaran**.
- Upload gambar dibatasi maksimal **2MB** dan hanya menerima format `.jpg`, `.jpeg`, `.png`, atau `.webp`.
- Pastikan direktori `img/` memiliki izin tulis agar gambar dapat diunggah.

## Penulis
- [Nama Mahasiswa]  
- Mata Kuliah: Pemrograman Internet  
- Tahun Akademik: 2025
