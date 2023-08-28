-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 11:49 AM
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
-- Table structure for table `merek_obat`
--

CREATE TABLE `merek_obat` (
  `id` int(11) NOT NULL,
  `nama merek` varchar(32) DEFAULT NULL,
  `tanggal datang` date NOT NULL,
  `no telp` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merek_obat`
--

INSERT INTO `merek_obat` (`id`, `nama merek`, `tanggal datang`, `no telp`) VALUES
(1, 'oskadon', '2022-08-03', '089678016819'),
(2, 'antangin', '2022-08-05', '08966577432'),
(3, 'antangin', '2022-08-05', '08966577432');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama obat` varchar(64) DEFAULT NULL,
  `keterangan obat` text DEFAULT NULL,
  `dimunim` varchar(32) NOT NULL,
  `kadarluarsa` int(11) DEFAULT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama obat`, `keterangan obat`, `dimunim`, `kadarluarsa`, `id_obat`) VALUES
(1, 'bejo', 'obat untuk masuk angin', '2x1hari', 101024, 2);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `merek_obat`
--
ALTER TABLE `merek_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `FK_merek` FOREIGN KEY (`id_obat`) REFERENCES `merek_obat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
