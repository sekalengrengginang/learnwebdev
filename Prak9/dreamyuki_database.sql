-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 07 Jun 2023 pada 05.16
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamyuki_database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id` int(7) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id`, `nama`, `deskripsi`) VALUES
(1, 'about us', 'about us');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penulis`
--

CREATE TABLE `tb_penulis` (
  `id` int(11) NOT NULL,
  `nama` varchar(220) NOT NULL,
  `foto` text NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_penulis`
--

INSERT INTO `tb_penulis` (`id`, `nama`, `foto`, `deskripsi`) VALUES
(1, 'Mas Rusdi', 'https://static.miraheze.org/tampvanwiki/0/0a/Rusdi_Omaygot.png', 'mas rusdi merupakan penulis asli ngawi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_post`
--

CREATE TABLE `tb_post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `kategori` int(7) NOT NULL,
  `konten` text NOT NULL,
  `foto` text NOT NULL,
  `date` date NOT NULL,
  `penulis` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_post`
--

INSERT INTO `tb_post` (`id`, `title`, `kategori`, `konten`, `foto`, `date`, `penulis`) VALUES
(1, 'Santai dulu g sih?', 1, 'Santai dulu masbroo', 'https://gallery.poskota.co.id/storage/Foto/santai-2.jpg', '2023-06-07', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_penulis`
--
ALTER TABLE `tb_penulis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`kategori`),
  ADD KEY `penulis` (`penulis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_penulis`
--
ALTER TABLE `tb_penulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_post`
--
ALTER TABLE `tb_post`
  ADD CONSTRAINT `id` FOREIGN KEY (`kategori`) REFERENCES `tb_kategori` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `penulis` FOREIGN KEY (`penulis`) REFERENCES `tb_penulis` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
