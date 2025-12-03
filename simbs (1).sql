-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 03 Des 2025 pada 12.36
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simbs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(12) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `stok` int(12) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_input` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `id_kategori` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `nama_buku`, `deskripsi`, `stok`, `gambar`, `tanggal_input`, `id_kategori`) VALUES
(1004, 'Tensura', 'Tensura adalah buku manga bercerita yang tentang seorang pria bernama Satoru Mikami yang tewas secara tak sengaja dan bereinkarnasi di dunia fantasi sebagai monster slime bernama Rimuru Tempest', 40, 'Tensura_.webp', '2025-11-27 18:32:45.552872', 1014),
(1006, 'Overlod', 'Overlord adalah manga fantasi gelap tentang Momonga, seorang pemain yang terjebak di dunia game VRMMORPG setelah server ditutup. Dia menjadi Ainz Ooal Gown, penguasa kuburan besar Nazarick, dan berusaha menjelajahi dunia baru sambil membangun kekuasaan, m', 36, 'Overlod_.webp', '2025-11-27 17:00:00.000000', 1014),
(1007, 'IPA SD', 'IPA SD adalah buku pelajaran yang mempelajari benda, makhluk hidup, dan lingkungan sekitar, serta fenomena alam seperti cuaca, air, energi, dan tumbuhan. Tujuannya agar siswa memahami alam, menjaga lingkungan, dan menerapkan ilmu ', 20, 'IPA SD_.jpg', '2025-11-27 18:34:00.182124', 1006),
(1008, 'Matematika SD', 'Matematika SD adalah buku pelajaran yang mempelajari bilangan, operasi hitung, bentuk, ukuran, dan pola. Tujuannya agar siswa dapat berhitung, memecahkan masalah sehari-hari, dan berpikir logis serta sistematis.', 22, 'Matematika SD_.png', '2025-11-27 18:34:09.808394', 1006),
(1009, 'Mikrotik', 'Buku Mikrotik adalah buku yang membahas pengaturan dan manajemen jaringan menggunakan perangkat Mikrotik. seperti konfigurasi router, pengaturan IP, firewall, hotspot, VPN, dan troubleshooting jaringan secara praktis.', 13, 'Mikrotik_.jpg', '2025-11-27 17:00:00.000000', 1007),
(1010, 'AI', 'AI adalah buku yang membahas konsep, teori, dan penerapan kecerdasan buatan. Isi buku biasanya mencakup machine learning, neural networks, algoritma AI, pemrosesan bahasa alami, dan aplikasi AI dalam kehidupan nyata', 7, 'AI_.jpg', '2025-11-27 17:00:00.000000', 1007),
(1011, 'Tafsir Al-Azhar', 'Tafsir Islam Al-Azhar adalah buku yang menjelaskan makna, kandungan, dan penafsiran ayat-ayat Al-Qurâ€™an. Buku ini membahas asbab al-nuzul (sebab turunnya ayat), konteks sejarah, hikmah, dan aplikasi ajaran Al-Qurâ€™an dalam kehidupan sehari-hari.', 32, 'Tafsir Al-Azhar_.jpg', '2025-11-27 17:00:00.000000', 1009),
(1012, '365 Cerita Alkitab', 'Buku 365 Cerita Alkitab adalah kumpulan cerita singkat dari Perjanjian Lama dan Baru, disajikan dengan bahasa yang mudah dipahami. Buku ini menyajikan nilai-nilai moral, teladan iman, dan ajaran Kristen melalui kisah-kisah tokoh Alkitab seperti Musa, Daud', 32, '365 Cerita Alkitab_.jpg', '2025-11-26 17:00:00.000000', 1009),
(1013, 'Seni musik', 'Buku Seni Musik adalah panduan singkat mengenai teori, sejarah, dan praktik musik. Buku ini membahas unsur-unsur musik seperti nada, ritme, melodi, harmoni, dan instrumen, serta cara mengapresiasi dan menciptakan musik. Cocok untuk pelajar', 6, 'Seni musik_.jpg', '2025-11-26 18:44:26.489746', 1010),
(1014, 'Seni Tari', 'Buku Seni Tari adalah panduan singkat mengenai teori dan praktik tari. Buku ini menjelaskan jenis-jenis tari, gerak dasar, teknik tubuh, dan ekspresi artistik. Selain itu, membahas sejarah dan budaya tari dari berbagai daerah', 8, 'Seni Tari_.png', '2025-11-27 18:46:03.174506', 1010),
(1015, 'Investasi Saham', 'Buku Investasi Saham adalah panduan singkat untuk memahami cara membeli, menjual, dan mengelola saham. Buku ini menjelaskan dasar-dasar pasar saham, analisis fundamental dan teknikal, risiko investasi, serta strategi untuk memaksimalkan keuntungan.', 27, 'Investasi Saham_.jpg', '2025-11-27 17:00:00.000000', 1011),
(1016, 'Etika Bisnis', 'Buku Etika Bisnis adalah panduan singkat tentang prinsip moral dan nilai-nilai dalam dunia bisnis. Buku ini membahas tanggung jawab perusahaan, integritas, kejujuran, dan perilaku profesional agar bisnis berjalan secara etis, adil, dan berkelanjutan.', 4, 'Etika Bisnis_.webp', '2025-11-27 17:00:00.000000', 1011),
(1017, 'Setia Kawan', 'Buku Anak Setia Kawan adalah kumpulan cerita ringan untuk anak-anak yang mengajarkan nilai persahabatan, kerja sama, dan kesetiaan. Cerita-ceritanya mudah dipahami, penuh ilustrasi, dan menekankan pentingnya saling menghargai teman dan menolong satu sama ', 13, 'Setia Kawan_.jpg', '2025-11-27 17:00:00.000000', 1013),
(1018, 'Panggung Sejarah', 'Buku Panggung Sejarah menyajikan perjalanan bangsa Indonesia dari zaman prasejarah, kerajaan-kerajaan, penjajahan, hingga kemerdekaan. Buku ini menekankan peristiwa penting, tokoh nasional, dan perjuangan rakyat, sehingga pembaca bisa memahami latar belak', 45, 'Panggung Sejarah_.jpg', '2025-11-27 17:00:00.000000', 1016),
(1019, 'Kill a kill', 'Manga Kill la Kill bercerita tentang Ryuko Matoi, seorang siswi yang mencari pembunuh ayahnya. Dalam perjalanannya, ia berhadapan dengan Satsuki Kiryuin dan Honnouji Academy, sekolah dengan kekuatan pakaian khusus bernama Goku Uniform. Cerita penuh aksi c', 21, 'Kill a kill_.jpg', '2025-11-27 17:00:00.000000', 1014),
(1020, 'Bleach', 'Manga Bleach bercerita tentang Ichigo Kurosaki, seorang remaja yang tiba-tiba mendapatkan kekuatan Shinigami (Dewa Kematian). Dengan kekuatan ini, ia bertugas melindungi manusia dari roh jahat (Hollow) dan membimbing jiwa yang tersesat ke Dunia Roh. Cerit', 29, 'Bleach_.jpg', '2025-11-27 17:00:00.000000', 1014),
(1021, 'Naruto', 'Manga Naruto bercerita tentang Naruto Uzumaki, seorang ninja muda yang bercita-cita menjadi Hokage, pemimpin desa Konoha, agar diakui oleh orang-orang di sekitarnya. Ia memiliki Rubah Ekor Sembilan (Kurama) tersegel dalam tubuhnya, yang memberinya kekuata', 17, 'Naruto_.jpg', '2025-11-26 17:00:00.000000', 1014);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(12) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_input` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `deskripsi`, `tanggal_input`) VALUES
(1006, 'Pendidikan', 'Buku pelajaran, modul, dan materi akademik.', '2025-11-26 17:00:00.000000'),
(1007, 'Teknologi', 'Buku komputer, pemrograman, AI, jaringan, dan teknologi modern.', '2025-11-26 17:00:00.000000'),
(1009, 'Agama', 'Buku keagamaan, tafsir, ibadah, dan sejarah agama.', '2025-11-26 17:00:00.000000'),
(1010, 'Seni', 'Buku seni rupa, musik, tari, dan budaya.', '2025-11-27 17:39:46.902800'),
(1011, 'Bisnis', 'Buku manajemen, bisnis, dan keuangan.', '2025-11-27 17:39:57.363929'),
(1013, 'Anak-anak', 'Buku cerita dan edukasi anak bergambar.', '2025-11-26 17:00:00.000000'),
(1014, 'Komik', 'Komik, manga, dan graphic novel.', '2025-11-27 17:40:11.573489'),
(1016, 'Sejarah', 'Sejarah dunia, nasional, dan biografi tokoh.', '2025-11-27 17:00:00.000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(2, 'assidiq', 'achmadassidiq@gmail.com', '$2y$10$xtMAmyiO/xSKXV18jMP2kO0nXwfcTAb2TxiCfYSXYeAAWaTwsj/hW'),
(3, 'assidik', 'Assidiq@gmail.com', '$2y$10$zzRHLxiS7XAv08SlINFw0u6COtBMTTNmxPiGRbyUhfGIWuin/BFv.'),
(4, 'mavhis', 'putranetfilz999@gmail.com', '$2y$10$uTAqBtUSgFNmdjrQ/wgjuOcvMbdaz17wMlnydyOsTG80YnqRc98EK'),
(5, 'ahmad', 'ahmad1@gmail.com', '$2y$10$ZHLs1kGn6OUU6X65b3Rqu.KnoG9NHZLoTHtS3sT/0PV2bx2Zdz5d6');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `fk_buku_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_buku_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
