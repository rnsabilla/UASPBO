-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2021 pada 10.10
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uasparkir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `no_pol` varchar(10) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_in` time NOT NULL,
  `jam_out` time NOT NULL,
  `biaya` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`no_pol`, `jenis`, `tanggal`, `jam_in`, `jam_out`, `biaya`) VALUES
('H 8910 DW', 'MOBIL', '2021-07-01', '10:00:00', '14:00:05', 12000),
('AD 411 TU', 'MOBIL', '2021-07-01', '10:05:00', '12:25:00', 9000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `parkir`
--

CREATE TABLE `parkir` (
  `id` int(11) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `tipe` varchar(10) NOT NULL COMMENT 'Motor, Mobil, Truk',
  `tanggal` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time DEFAULT NULL,
  `biaya_parkir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `parkir`
--

INSERT INTO `parkir` (`id`, `nopol`, `tipe`, `tanggal`, `jam_masuk`, `jam_keluar`, `biaya_parkir`) VALUES
(1, 'B 5252 JI', 'Mobil', '2021-07-06', '00:04:00', '01:58:00', 8000),
(2, 'H 9889 JN', 'MOTOR', '2021-07-06', '15:00:00', '17:00:00', 4000),
(3, 'G 4565 KL', 'MOBIL', '2021-07-06', '15:11:00', '22:18:00', 32000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `nama`, `username`, `password`) VALUES
(1, 'DITHA WK', 'dithawk', '123hahaha'),
(2, 'RUWA NS', 'nsruwa', 'hahaha123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `parkir`
--
ALTER TABLE `parkir`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `parkir`
--
ALTER TABLE `parkir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
