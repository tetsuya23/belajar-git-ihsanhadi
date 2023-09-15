-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 10:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_merek`
--

CREATE TABLE `detail_merek` (
  `id` int(11) NOT NULL,
  `alamat_produksi` text DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `nomor_hp` int(11) DEFAULT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_merek`
--

INSERT INTO `detail_merek` (`id`, `alamat_produksi`, `email`, `nomor_hp`, `id_obat`) VALUES
(1, 'bandung', 'oskadon@gmail.com', 82123423, 1),
(2, 'tangerang', 'antangin@gmail.com', 823412345, 2),
(3, 'solo', 'paramex@gmail.com', 82341234, 4),
(4, 'bandung', 'paracetamol@gmail.com', 82345234, 5),
(5, 'tangerang', 'oralit@gmail.com', 8723746, 6),
(6, 'jakarta', 'capkakitiga@gmail.com', 82342134, 7),
(7, 'kediri', 'suncream@gmail.com', 8238451, 8),
(8, 'banten', 'panadol@gmail.com', 87234865, 9),
(9, 'banten', 'bejo@gmail.com', 8172346, 10),
(10, 'bandung', 'diapet@gmail.com', 823846132, 11);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `id_obat`, `id_transaksi`, `harga`) VALUES
(1, 6, 1, 20000),
(2, 2, 1, 10000),
(3, 8, 2, 20000),
(4, 7, 2, 15000),
(5, 11, 4, 5000),
(6, 10, 4, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `merek_obat`
--

CREATE TABLE `merek_obat` (
  `id` int(11) NOT NULL,
  `nama_merek` varchar(32) DEFAULT NULL,
  `tanggal_datang` date NOT NULL,
  `no_telp` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merek_obat`
--

INSERT INTO `merek_obat` (`id`, `nama_merek`, `tanggal_datang`, `no_telp`) VALUES
(1, 'oskadon', '2022-08-03', '089678016819'),
(2, 'antangin', '2022-08-05', '08966577432'),
(4, 'paramex', '2023-08-23', '08412345212'),
(5, 'paracatamol', '2023-08-20', '08345712345'),
(6, 'oralit', '2023-08-11', '08245826'),
(7, 'cap kaki tiga', '2022-08-04', '0834756'),
(8, 'sun cream', '2019-09-20', '08243163254'),
(9, 'panadol', '2016-09-18', '08523462135'),
(10, 'bejo', '2016-09-21', '08234813264'),
(11, 'diapet', '2013-09-26', '08823412');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varchar(64) DEFAULT NULL,
  `keterangan_obat` text DEFAULT NULL,
  `dimunim` varchar(32) NOT NULL,
  `kadarluarsa` int(11) DEFAULT NULL,
  `qty_stock` int(8) NOT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama_obat`, `keterangan_obat`, `dimunim`, `kadarluarsa`, `qty_stock`, `id_obat`) VALUES
(1, 'bejo', 'obat untuk masuk angin', '2xsehari', 2024, 11, 2),
(2, 'oskadon', 'obat pusing', '3xsehari', 2027, 14, 1),
(3, 'antangin', 'obat masuk angin', '3xsehari', 2026, 10, 2),
(4, 'paramex', 'obat untuk pusing sebelah', '3xsehari', 2028, 26, 4),
(5, 'paracetamol', 'obat pusing dosis rendah', '3xsehari', 2025, 15, 5),
(6, 'oralit', 'obat untuk BAB', '2xsehari', 2024, 18, 6),
(7, 'cap kaki tiga', 'untuk meyegarkan tubuh', '1xsehari', 2028, 15, 7),
(9, 'panadol', 'obat pusing bisa sebelum makan', '2xsehari', 2025, 23, 9),
(10, 'bejo', 'obat penghangat badan', '2xsehari', 2024, 26, 10),
(11, 'diapet', 'obat untuk menahan BAB', '1xsehari', 2029, 32, 11);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id` int(11) NOT NULL,
  `list_pembelian` text NOT NULL,
  `total` int(11) NOT NULL,
  `diminum` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id`, `list_pembelian`, `total`, `diminum`) VALUES
(1, '2 oskadon, oralit', 3, '2xsehari'),
(2, '4 oralit , 3 paracetamol', 7, '3x sehari'),
(3, 'diapet 5, bejo 3', 8, '2xsehari'),
(4, 'sun cream, cap kaki tiga', 2, '1xsehari');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `list_beli` text NOT NULL,
  `total` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal_pembelian`, `list_beli`, `total`, `id_pembeli`) VALUES
(1, '2023-08-06', '2 oralit oskadon', 2, 1),
(2, '2023-08-14', 'sun cream, cap kaki tiga', 2, 4),
(3, '2023-08-30', '4 oralit 3 paracetamol', 7, 2),
(4, '2023-08-31', 'diapet, bejo', 8, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_merek`
--
ALTER TABLE `detail_merek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_obat` (`id_obat`),
  ADD KEY `fk_detail_transaksi` (`id_transaksi`);

--
-- Indexes for table `merek_obat`
--
ALTER TABLE `merek_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_merek` (`id_obat`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembeli` (`id_pembeli`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_merek`
--
ALTER TABLE `detail_merek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `merek_obat`
--
ALTER TABLE `merek_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_merek`
--
ALTER TABLE `detail_merek`
  ADD CONSTRAINT `detail_merek_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `merek_obat` (`id`);

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `fk_detail_transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`),
  ADD CONSTRAINT `fk_obat` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id`);

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `FK_merek` FOREIGN KEY (`id_obat`) REFERENCES `merek_obat` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_pembeli` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
