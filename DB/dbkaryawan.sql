-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Okt 2023 pada 13.05
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkaryawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `id` int(4) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `jabatan` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `gaji` varchar(12) NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`id`, `nama`, `jabatan`, `email`, `phone`, `gaji`, `foto`) VALUES
(1, 'Michael White', 'Web Master', 'michaelwhite@gmail.com', '081321211344', '1.000.000', 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Michael_White_photo.jpg'),
(2, 'Leonardo Dicaprio', 'Web Developher', 'leodicaprio@gmail.com', '081321211345', '2.000.000', 'https://upload.wikimedia.org/wikipedia/commons/4/46/Leonardo_Dicaprio_Cannes_2019.jpg'),
(3, 'Taylor Swift', 'Web Designer', 'taylorswift@gmail.com', '081321211346', '3.000.000', 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Taylor_Swift_at_the_2023_MTV_Video_Music_Awards_%283%29.png'),
(4, 'Tom Cruise', 'Web Programmer', 'tomcruise@gmail.com', '081321211347', '4.000.000', 'https://upload.wikimedia.org/wikipedia/commons/3/33/Tom_Cruise_by_Gage_Skidmore_2.jpg'),
(5, 'Roger S.Pressman', 'System Analyst', 'roger.spressman@gmail.com', '081321211348', '5.000.000', 'https://m.media-amazon.com/images/I/9184FsZ6PDL._SX1488_CR0%2C0%2C1488%2C1488_.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
