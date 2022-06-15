-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2022 pada 06.09
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_promo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `Kd_Barang` varchar(25) NOT NULL,
  `Nama_Barang` varchar(25) NOT NULL,
  `Harga_Barang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`Kd_Barang`, `Nama_Barang`, `Harga_Barang`) VALUES
('0120', 'Dancow', 'Rp.26.500'),
('0121', 'Daging Ayam', 'Rp.24.500'),
('0122', 'Khong Guan', 'Rp.42.500'),
('0123', 'Minyak', 'Rp.48.000'),
('0124', 'Gula Pasir', 'Rp.11.500'),
('0125', 'Tepung Terigu', 'Rp.14.000'),
('0126', 'Kecap ABC', 'Rp.10.500'),
('0127', 'Ultra Milk', 'Rp.12.500'),
('0128', 'Syrup Marjan', 'Rp.13.000'),
('0129', 'Monde', 'Rp.28.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_diskon`
--

CREATE TABLE `tb_diskon` (
  `No` varchar(7) NOT NULL,
  `IdMember` int(25) NOT NULL,
  `Kd_Barang` varchar(25) NOT NULL,
  `Kd_Promo` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_diskon`
--

INSERT INTO `tb_diskon` (`No`, `IdMember`, `Kd_Barang`, `Kd_Promo`) VALUES
('1', 40015, '0123', '0003'),
('2', 43050, '0124', '0003'),
('3', 43221, '0125', '0002'),
('4', 45050, '0125', '0001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_member`
--

CREATE TABLE `tb_member` (
  `IdMember` int(30) NOT NULL,
  `Nama` varchar(15) NOT NULL,
  `Alamat` varchar(35) NOT NULL,
  `NoKtp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_member`
--

INSERT INTO `tb_member` (`IdMember`, `Nama`, `Alamat`, `NoKtp`) VALUES
(14231, 'Indah Sari', 'Kp.Tlajung Gunung Putri', 12345678),
(14323, 'Fitri Intan', 'Depok', 112233),
(40015, 'Vina Aulia', 'Depok', 320032),
(40020, 'Rafif Cahyo', 'Bekasi', 315167),
(43020, 'Sarah Putri', 'Bogor', 320100),
(43050, 'Cecep Arifin', 'Banten', 321001),
(43120, 'Putra Siregar', 'Bogor', 321310),
(43121, 'Jainal Abidin', 'Bogor', 321322),
(43221, 'Siti Indah', 'Jakarta', 14325),
(45050, 'Sobiyah Nur', 'Depok', 112233);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_promo`
--

CREATE TABLE `tb_promo` (
  `Kd_Promo` varchar(25) NOT NULL,
  `Jenis_Promo` varchar(25) NOT NULL,
  `Periode` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_promo`
--

INSERT INTO `tb_promo` (`Kd_Promo`, `Jenis_Promo`, `Periode`) VALUES
('0001', 'Harian', '20 Juni-1 Juli'),
('0002', 'Buy 1 get 1', '11 Juni-20 Juni'),
('0003', 'Hemat', '20 Juni-25 Juni'),
('0004', 'Kupon', ' 1 Juni- 25 Juli');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`Kd_Barang`);

--
-- Indeks untuk tabel `tb_diskon`
--
ALTER TABLE `tb_diskon`
  ADD PRIMARY KEY (`IdMember`),
  ADD KEY `Kd_Barang` (`Kd_Barang`),
  ADD KEY `Kd_Promo` (`Kd_Promo`);

--
-- Indeks untuk tabel `tb_member`
--
ALTER TABLE `tb_member`
  ADD PRIMARY KEY (`IdMember`);

--
-- Indeks untuk tabel `tb_promo`
--
ALTER TABLE `tb_promo`
  ADD PRIMARY KEY (`Kd_Promo`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_diskon`
--
ALTER TABLE `tb_diskon`
  ADD CONSTRAINT `tb_diskon_ibfk_1` FOREIGN KEY (`IdMember`) REFERENCES `tb_member` (`IdMember`),
  ADD CONSTRAINT `tb_diskon_ibfk_2` FOREIGN KEY (`Kd_Barang`) REFERENCES `tb_barang` (`Kd_Barang`),
  ADD CONSTRAINT `tb_diskon_ibfk_3` FOREIGN KEY (`Kd_Promo`) REFERENCES `tb_promo` (`Kd_Promo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
