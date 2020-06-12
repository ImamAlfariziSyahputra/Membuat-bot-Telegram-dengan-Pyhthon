-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 04:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_belajarbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_siswa`
--

CREATE TABLE `table_siswa` (
  `idsiswa` int(10) NOT NULL,
  `nisn` varchar(12) NOT NULL,
  `nipd` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode_jurusan` tinyint(1) NOT NULL,
  `komli` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(30) NOT NULL,
  `foto_nipd` varchar(20) NOT NULL,
  `id_telegram` varchar(20) NOT NULL,
  `username_telegram` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_siswa`
--

INSERT INTO `table_siswa` (`idsiswa`, `nisn`, `nipd`, `nama`, `kode_jurusan`, `komli`, `kelas`, `tempat_lahir`, `tanggal_lahir`, `foto_nipd`, `id_telegram`, `username_telegram`, `status`) VALUES
(2, '0030759785', '1819100075', 'Akmal Permata Sukma', 3, 'Rekayasa Perangkat Lunak', 'XI RPL 2', 'CIANJUR', '37678', 'foto.jpg', '', '', 1),
(3, '213123', '3453383', 'Siapa kek', 3, 'Rekayasa Perangkat Lunak', 'XI RPL 2', 'DEPOK', '21355', '', '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_siswa`
--
ALTER TABLE `table_siswa`
  ADD PRIMARY KEY (`idsiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_siswa`
--
ALTER TABLE `table_siswa`
  MODIFY `idsiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
