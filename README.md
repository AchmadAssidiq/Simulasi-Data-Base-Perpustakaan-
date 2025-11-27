# Simulasi Database Perpustakaan

## Deskripsi
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
  - Registrasi
  - Registrasi Password akun minimal 8
- **Upload Gambar**
  - Setiap buku dapat memiliki gambar sampul
  - Gambar dapat diperbarui saat mengubah data buku

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


## Catatan
- Sistem ini bersifat **simulasi** dan digunakan **untuk tujuan pembelajaran**.
- Upload gambar dibatasi maksimal **2MB** dan hanya menerima format `.jpg`, `.jpeg`, `.png`, atau `.webp`.
- Pastikan direktori `img/` memiliki izin tulis agar gambar dapat diunggah.

## Penulis
- [Achmad Assidiq Lasawali]  
- Mata Kuliah: Pemrograman Internet
- Prodi: Pendidikan Sistem dan Teknologi Informasi
- Universitas: Universitas Pendidikan Indonesia
- Tahun Akademik: 2024
