-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 04:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum7`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`id`, `nim`, `nama`, `prodi`) VALUES
(2, '120140060', 'Devi Kurnia', 'Teknik Informatika'),
(3, '120430040 ', 'Rena Diana', 'Teknik Biomedis'),
(4, '120140001', 'Rauli Sipakkar', 'Teknik Informatika'),
(5, '120140063', 'Imam Windharko', 'Teknik Informatika'),
(6, '120140128', 'Nadhea Deni Putr', 'Teknik Informatika'),
(7, '119140114', 'Geizka Rozilia Ruicosta ', 'Teknik Informatika'),
(8, '120140149', 'Dewi Anggraini', 'Teknik Informatika'),
(9, '120140056', 'Cristian', 'Teknik Informatika'),
(10, '120140101', 'Joy Arta Br Sitinjak	', 'Teknik Informatika'),
(12, '120140189', 'Fanesa Hadi Pramana', 'Teknik Informatika'),
(13, '120140116', 'Muhammad Qomarudin', 'Teknik Informatika'),
(14, '120140022', 'Adli Mustofa', 'Teknik Informatika'),
(15, '120140011', 'Yogi Immanuel Pinem', 'Teknik Informatika'),
(16, '120140055', 'Fatya Asti Utami', 'Teknik Informatika'),
(17, ' 120140097', 'Oloan Soaloon Napitupulu', 'Teknik Informatika'),
(18, ' 120140179', 'Edo Sani', 'Teknik Informatika'),
(19, '120140201', 'Azka Hafidz Asianto', 'Teknik Informatika'),
(20, ' 120140203', 'Dandy Arkandhiya Putra', 'Teknik Informatika'),
(21, '120140203', 'Dandy Arkandhiya Putra', 'Teknik Informatika'),
(23, '120260068', 'Adean Naufal Ramadhani', 'Farmasi'),
(24, '120120051', 'Anisa Rahmi Anugrah', 'Teknik Geofisika'),
(25, '118280104', 'Arief Kurniawansyah', 'Teknik Kimia'),
(26, '120400013', 'Della Yusira Angelina', 'Teknik Telekomunikasi'),
(27, '120300053', 'Erlisa Cinthya Oktaviani', 'Teknik Kelautan'),
(28, '120430049', 'F. Regina Putri Hanungjati', 'Teknik Biomedis'),
(29, '120220181', 'Gugus Cahaya Pangestu', 'Perencanaan Wilayah dan Kota'),
(30, '119340020', 'Jahir Ali', 'Teknik Sistem Energi'),
(31, ' 120190137', 'Jihan Monica', 'Teknik Industri'),
(32, '119190106', 'Kemas M. Fadhlan F. F.', 'Teknik Industri'),
(33, '120450043', 'Kevin Anugrah', 'Sains Data'),
(34, '120170087', 'Layas Arganta Pelawi', 'Teknik Mesin'),
(35, '120280005', 'Luluinaita Br Pelawi', 'Teknik Kimia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
