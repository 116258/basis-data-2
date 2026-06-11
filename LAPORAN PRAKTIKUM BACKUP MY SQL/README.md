-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2026 at 06:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitoring_jaringan`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas_teknisi`
--

CREATE TABLE `aktivitas_teknisi` (
  `id_aktivitas` int(11) NOT NULL,
  `id_teknisi` int(11) DEFAULT NULL,
  `id_perangkat` int(11) DEFAULT NULL,
  `tanggal_aktivitas` date DEFAULT NULL,
  `jenis_aktivitas` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aktivitas_teknisi`
--

INSERT INTO `aktivitas_teknisi` (`id_aktivitas`, `id_teknisi`, `id_perangkat`, `tanggal_aktivitas`, `jenis_aktivitas`, `keterangan`) VALUES
(1, 1, 1, '2026-05-21', 'Maintenance', 'Pengecekan router utama'),
(2, 2, 2, '2026-05-21', 'Perbaikan', 'Mengganti kabel switch'),
(3, 3, 4, '2026-05-21', 'Backup Data', 'Backup server database'),
(4, 4, 3, '2026-05-21', 'Instalasi', 'Instalasi access point baru'),
(5, 5, 5, '2026-05-21', 'Troubleshooting', 'Memperbaiki router offline');

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `id_monitoring` int(11) NOT NULL,
  `id_perangkat` int(11) DEFAULT NULL,
  `waktu_monitoring` datetime DEFAULT NULL,
  `bandwidth` varchar(50) DEFAULT NULL,
  `downtime` int(11) DEFAULT NULL,
  `status_koneksi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`id_monitoring`, `id_perangkat`, `waktu_monitoring`, `bandwidth`, `downtime`, `status_koneksi`) VALUES
(1, 1, '2026-05-21 08:00:00', '120 Mbps', 0, 'Online'),
(2, 2, '2026-05-21 08:05:00', '85 Mbps', 5, 'Online'),
(3, 3, '2026-05-21 08:10:00', '60 Mbps', 0, 'Online'),
(4, 4, '2026-05-21 08:15:00', '200 Mbps', 0, 'Online'),
(5, 5, '2026-05-21 08:20:00', '0 Mbps', 60, 'Offline');

-- --------------------------------------------------------

--
-- Table structure for table `perangkat`
--

CREATE TABLE `perangkat` (
  `id_perangkat` int(11) NOT NULL,
  `nama_perangkat` varchar(100) DEFAULT NULL,
  `jenis_perangkat` varchar(50) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `status_perangkat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perangkat`
--

INSERT INTO `perangkat` (`id_perangkat`, `nama_perangkat`, `jenis_perangkat`, `ip_address`, `lokasi`, `status_perangkat`) VALUES
(1, 'Router Utama', 'Router', '192.168.1.1', 'Ruang Server', 'Aktif'),
(2, 'Switch Lantai 1', 'Switch', '192.168.1.2', 'Lantai 1', 'Aktif'),
(3, 'Access Point Lobby', 'Access Point', '192.168.1.3', 'Lobby', 'Aktif'),
(4, 'Server Database', 'Server', '192.168.1.10', 'Data Center', 'Aktif'),
(5, 'Router Cadangan', 'Router', '192.168.1.4', 'Ruang Backup', 'Nonaktif');

-- --------------------------------------------------------

--
-- Table structure for table `teknisi`
--

CREATE TABLE `teknisi` (
  `id_teknisi` int(11) NOT NULL,
  `nama_teknisi` varchar(100) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teknisi`
--

INSERT INTO `teknisi` (`id_teknisi`, `nama_teknisi`, `no_telepon`, `email`, `jabatan`) VALUES
(1, 'Andi Saputra', '08123456789', 'andi@gmail.com', 'Network Engineer'),
(2, 'Andi Saputra', '08123456789', 'andi@gmail.com', 'Network Engineer'),
(3, 'Budi Santoso', '082233445566', 'budi@gmail.com', 'IT Support'),
(4, 'Rina Marlina', '083344556677', 'rina@gmail.com', 'Administrator'),
(5, 'Dedi Kurniawan', '085566778899', 'dedi@gmail.com', 'Teknisi Lapangan'),
(6, 'Siti Aisyah', '087788990011', 'siti@gmail.com', 'System Analyst');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas_teknisi`
--
ALTER TABLE `aktivitas_teknisi`
  ADD PRIMARY KEY (`id_aktivitas`),
  ADD KEY `id_teknisi` (`id_teknisi`),
  ADD KEY `id_perangkat` (`id_perangkat`);

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id_monitoring`),
  ADD KEY `id_perangkat` (`id_perangkat`);

--
-- Indexes for table `perangkat`
--
ALTER TABLE `perangkat`
  ADD PRIMARY KEY (`id_perangkat`);

--
-- Indexes for table `teknisi`
--
ALTER TABLE `teknisi`
  ADD PRIMARY KEY (`id_teknisi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas_teknisi`
--
ALTER TABLE `aktivitas_teknisi`
  MODIFY `id_aktivitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `perangkat`
--
ALTER TABLE `perangkat`
  MODIFY `id_perangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teknisi`
--
ALTER TABLE `teknisi`
  MODIFY `id_teknisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aktivitas_teknisi`
--
ALTER TABLE `aktivitas_teknisi`
  ADD CONSTRAINT `aktivitas_teknisi_ibfk_1` FOREIGN KEY (`id_teknisi`) REFERENCES `teknisi` (`id_teknisi`),
  ADD CONSTRAINT `aktivitas_teknisi_ibfk_2` FOREIGN KEY (`id_perangkat`) REFERENCES `perangkat` (`id_perangkat`);

--
-- Constraints for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD CONSTRAINT `monitoring_ibfk_1` FOREIGN KEY (`id_perangkat`) REFERENCES `perangkat` (`id_perangkat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
