-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2024 at 05:40 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliah`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int NOT NULL,
  `id_dokter` varchar(255) NOT NULL,
  `nama_dokter` varchar(255) NOT NULL,
  `bidang_dokter` varchar(255) NOT NULL,
  `ruang_praktik` varchar(255) NOT NULL,
  `jadwal_praktik` varchar(255) NOT NULL,
  `jam_praktik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `id_dokter`, `nama_dokter`, `bidang_dokter`, `ruang_praktik`, `jadwal_praktik`, `jam_praktik`) VALUES
(29, '1', 'dr.lisa', 'Spesialis Kandungan', 'Lt.1/1A', 'Senin', '07.00'),
(30, '2', 'dr.roky', 'Spesialis Kandungan', 'Lt.1/1B', 'Selasa', '07.00'),
(31, '3', 'dr.roy', 'Spesialis Kandungan', 'Lt.1/1C', 'Rabu', '07.00'),
(32, '4', 'dr.gunawan', 'Spesialis Kandungan', 'Lt.2/2A', 'Kamis', '07.00'),
(35, '5', 'dr.yuni', 'Spesialis Anak', 'Lt.1/1A', 'Senin', '07.00'),
(37, '7', 'dr.rani', 'Spesialis Anak', 'Lt.1/1C', 'Rabu', '09.00'),
(38, '8', 'dr.rudi', 'Spesialis Anak', 'Lt.2/2A', 'Kamis', '07.00'),
(39, '9', 'dr.eri', 'Spesialis Penyakit Dalam', 'Lt.1/1A', 'Senin', '13.00'),
(40, '9', 'dr.egy', 'Spesialis Penyakit Dalam', 'Lt.1/1B', 'Selasa', '13.00'),
(41, '10', 'dr.rangga', 'Spesialis Penyakit Dalam', 'Lt.1/1C', 'Rabu', '13.00'),
(42, '11', 'dr.tery', 'Spesialis Penyakit Dalam', 'Lt.2/2A', 'Kamis', '13.00'),
(43, '12', 'dr.yeni', 'Spesialis Bedah Umum', 'Lt.1/1A', 'Senin', '15.00'),
(44, '13', 'dr.untung', 'Spesialis Bedah Umum', 'Lt.1/1B', 'Selasa', '15.00'),
(45, '14', 'dr.intan', 'Spesialis Bedah Umum', 'Lt.1/1C', 'Rabu', '15.00'),
(46, '15', 'dr.oki', 'Spesialis Bedah Umum', 'Lt.2/2A', 'Kamis', '15.00'),
(47, '16', 'dr.putri', 'Spesialis Gigi', 'Lt.2/2B', 'Senin', '15.00'),
(48, '17', 'dr.anisa', 'Spesialis Gigi', 'Lt.2/2B', 'Senin', '19.00'),
(51, '18', 'dr.dewi', 'Spesialis Kandungan', 'Lt.1/1B', 'Selasa', '07.00'),
(59, '25', 'Dr.azizah', 'Spesialis Kandungan', 'Lt.3/3C', 'Jumat', '11:00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int NOT NULL,
  `id_pasien` varchar(255) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `ruangan` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `usia` int NOT NULL,
  `tanggal_masuk` varchar(255) NOT NULL,
  `keluhan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `id_pasien`, `nama_pasien`, `ruangan`, `jenis_kelamin`, `usia`, `tanggal_masuk`, `keluhan`) VALUES
(11, '1', 'reza gunawan', 'VIP', 'Laki-Laki', 20, '27 Juni 2024', 'demam'),
(12, '2', 'dewi putri', 'President Suite', 'Perempuan', 21, '26 Juni 2024', 'Sakit Mata'),
(13, '3', 'rudi gunawan', 'VIP', 'Laki-Laki', 20, '27 Juni 2024', 'Sakit Mata');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
