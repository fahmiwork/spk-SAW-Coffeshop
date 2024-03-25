-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 12:14 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kopi`
--

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_subkriteria` varchar(200) NOT NULL,
  `nilai` text NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub`, `id_kriteria`, `nama_subkriteria`, `nilai`, `keterangan`) VALUES
(5, 1, 'Tidak direkomendasikan ( 35.000 - 75.000 )', '5', 'Cukup'),
(6, 1, 'Direkomendasikan ( 25.000 - 50.000 )', '3', 'Sedang'),
(7, 1, 'Sangat direkomendasikan ( 10.000 - 25.000 )', '1', 'Baik'),
(10, 2, 'Tidak direkomendasikan ( Wifi, Stop Kontak, Toilet )', '1', 'Cukup'),
(11, 2, 'Direkomendasikan ( Wifi, Stop Kontak, Ac, Live Music, Outdoor & Indoor, Toilet, Tempat Shalat )', '3', 'Sedang'),
(12, 2, 'Sangat direkomendasikan ( Wifi, Stop Kontak, Ac, Live Music, Area Smoking, Spot Foto, Outdoor & Indo', '5', 'Baik'),
(14, 3, 'Tidak direkomendasikan ( Latte, Cappucino )', '1', 'Cukup'),
(15, 3, 'Direkomendasikan ( Latte, Cappucino, Espresso, Mocha, Americano, Cold Brew )', '3', 'Sedang'),
(19, 4, 'Tidak direkomendasikan ( Dekat Pusat Kota )', '5', 'Cukup'),
(20, 4, 'Direkomendasikan ( Dekat Pusat Kota, Dekat Pusat Pembelanjaan, Dekat dengan penginapan/hotel )', '3', 'Sedang'),
(25, 5, 'Tidak direkomendasikan ( Sopan dan ramah )', '1', 'Cukup'),
(26, 5, 'Rekomendasi ( Sopan dan ramah, pelayanan yang cepat dan efektif, ketersediaan menu )', '3', 'Sedang'),
(27, 5, 'Sangat direkomendasikan ( Sopan dan ramah, pelayanan yang cepat dan efektif, ketersediaan menu, responsif terhadap keluhan, bersih dan rapi )', '5', 'Baik'),
(30, 6, 'Tidak direkomendasikan ( Sore - Malam / 14.00 - 23.00 )', '1', 'Cukup'),
(31, 6, 'Direkomendasikan ( Siang  - Malam / 11.00 - 23.00 )', '3', 'Sedang'),
(32, 6, 'Sangat direkomendasikan ( Pagi - Malam / 08.00 - 23.00 )', '5', 'Baik'),
(36, 7, '50-69', '2', 'KURANG'),
(37, 7, '<60', '1', 'SANGAT KURANG'),
(38, 9, '90-100', '5', 'SANGAT BAIK'),
(39, 9, '80-89', '4', 'BAIK'),
(40, 9, '70-79', '3', 'CUKUP'),
(41, 9, '50-69', '2', 'KURANG'),
(42, 9, '<60', '1', 'SANGAT KURANG'),
(43, 8, '>5', '5', 'SANGAT BAIK'),
(44, 8, '4', '4', 'BAIK'),
(45, 8, '3', '3', 'CUKUP'),
(46, 8, '2', '2', 'KURANG'),
(47, 8, '1', '1', 'SANGAT KURANG'),
(48, 10, '>5', '5', 'SANGAT BAIK'),
(49, 10, '5', '4', 'BAIK'),
(50, 10, '3.4', '3', 'CUKUP'),
(51, 10, '1.2', '2', 'KURANG'),
(52, 10, '0', '1', 'SANGAT KURANG'),
(56, 3, 'Sangat direkomendasikan ( Latte, Cappucino, Machiatto, Espresso, Mocha, Americano, Cold Brew, Affoga', '5', 'Baik'),
(57, 4, 'Sangat direkomendasikan ( Dekat Pusat Kota, Dekat Kampus, Dekat Pusat Pembelanjaan, Dekat dengan pen', '1', 'Baik');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kriteria`
--

CREATE TABLE `tbl_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `atribute` varchar(50) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kriteria`
--

INSERT INTO `tbl_kriteria` (`id_kriteria`, `nama_kriteria`, `atribute`, `bobot`) VALUES
(1, 'Harga', 'cost', 16.3),
(2, 'Fasilitas', 'benefit', 33.3),
(3, 'Kelengkapan Menu', 'benefit', 16.3),
(4, 'Lokasi', 'cost', 11.9),
(5, 'Pelayanan', 'benefit', 18.5),
(6, 'Waktu Operasional', 'benefit', 3.7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'admin saja', 'admin', '123', 'admin'),
(8, 'user', 'user', '123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama_alternatif` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_coffeshop`
--

CREATE TABLE `tb_coffeshop` (
  `id_coffeshop` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_coffeshop`
--

INSERT INTO `tb_coffeshop` (`id_coffeshop`, `nama`) VALUES
(1, 'Bakedai Coffee'),
(3, 'Hai Coffee'),
(4, 'Dabie Coffee'),
(5, 'Najha Coffee'),
(6, 'Rain Forest Coffee'),
(7, 'Kopi Dari Hati'),
(8, 'Menyala Coffee'),
(9, 'DW'),
(10, 'Kopi Teras BGW'),
(11, 'Kokula Co Working Space'),
(12, 'Kopi Om Ben'),
(13, 'Figura Coffee'),
(14, 'Coffee Shop Simpang 8'),
(15, 'Coffee Shop Pak Datuak'),
(16, 'Kopi Arab'),
(17, 'Di Ruang Racik Coffee'),
(18, 'Meja Putih Coffee Place'),
(19, 'Jendela Tuo Coffee'),
(20, 'Waroeng FDV And Art Galery'),
(21, 'Gula Aren Coffee'),
(22, 'Coffee Shop Syariah'),
(23, 'Gubuk Coffee'),
(24, 'Khupi Laalu'),
(25, 'DM Bakmi & Coffee'),
(26, 'Coffee Shop Kopiton'),
(27, 'Ransam Coffee'),
(28, 'Teras Kartini');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kayu`
--

CREATE TABLE `tb_kayu` (
  `id_kayu` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kayu`
--

INSERT INTO `tb_kayu` (`id_kayu`, `nama`) VALUES
(1, 'Jati'),
(3, 'Sono Kelling'),
(4, 'Trembesi'),
(5, 'Mahoni'),
(6, 'Meranti'),
(7, 'Pinus'),
(8, 'Cendana'),
(9, 'Sungkai');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_coffeshop` int(11) NOT NULL,
  `kriteria1` text NOT NULL,
  `kriteria2` text NOT NULL,
  `kriteria3` text NOT NULL,
  `kriteria4` text NOT NULL,
  `kriteria5` text NOT NULL,
  `kriteria6` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`id_nilai`, `id_coffeshop`, `kriteria1`, `kriteria2`, `kriteria3`, `kriteria4`, `kriteria5`, `kriteria6`) VALUES
(129, 1, '3', '1', '1', '3', '3', '5'),
(130, 3, '3', '3', '1', '3', '1', '5'),
(131, 4, '5', '5', '1', '3', '5', '3'),
(132, 5, '3', '3', '5', '5', '1', '3'),
(133, 6, '3', '1', '1', '3', '3', '5'),
(134, 7, '3', '1', '5', '1', '5', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `tb_coffeshop`
--
ALTER TABLE `tb_coffeshop`
  ADD PRIMARY KEY (`id_coffeshop`);

--
-- Indexes for table `tb_kayu`
--
ALTER TABLE `tb_kayu`
  ADD PRIMARY KEY (`id_kayu`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tb_coffeshop`
--
ALTER TABLE `tb_coffeshop`
  MODIFY `id_coffeshop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_kayu`
--
ALTER TABLE `tb_kayu`
  MODIFY `id_kayu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
