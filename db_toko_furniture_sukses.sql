-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 05:03 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko_furniture_sukses`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `harga_barang` int(100) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `harga_barang`, `nama_barang`, `id_supplier`) VALUES
(1, 13000, 'Pepsodent', 1),
(2, 1000, 'TicTac', 2),
(3, 2000, 'Indomie', 4),
(4, 50000, 'Mouse Logitech', 6),
(5, 70000, 'Coller Laptop', 8),
(6, 170000, 'Meja 3*4 Meter', 9),
(7, 90000, 'Kursi ', 10),
(8, 40000, 'Buku Tulis ', 7),
(9, 3500, 'Aqua 600 ml', 6),
(10, 20000, 'Lampu Tl ', 9);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(250) NOT NULL,
  `alamat_karyawan` varchar(130) NOT NULL,
  `email_karyawan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `email_karyawan`) VALUES
(1, 'Muhammad Eka Setio Aji', 'Cilegon', 'muhammadeka@gmail.com'),
(2, 'Agus Fatmanto', 'Cilegon', 'agusfatmanto@gmail.com'),
(3, 'Hilda', 'Cilegon', 'hilda@gmail.com'),
(4, 'Dony ', 'Tanggerang', 'donny@gmail.com'),
(5, 'Ner Fauzi', 'Serang', 'nerfauzi@gmail.com'),
(6, 'riza', 'Brebes', 'riza@gmail.com'),
(7, 'sopyan', 'Cibeber', 'sopyan@gmail.com'),
(8, 'Bouo', 'Cilegon', 'bouo@gmail.com'),
(9, 'Iqbal', 'BBS', 'iqbal@gmail.com'),
(10, 'rakhasani', 'BBS', 'rakhasani@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(250) NOT NULL,
  `telepon_pembeli` int(16) NOT NULL,
  `alamat_pembeli` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `telepon_pembeli`, `alamat_pembeli`) VALUES
(1, 'Rifqi Fauzi', 813842, 'Serang'),
(2, 'Bagas Nuryanto', 87312312, 'Cilegon'),
(3, 'Donny Eka Pramata', 8712321, 'Tanggerang'),
(4, 'Ihsan', 87123212, 'Bekasi\r\n'),
(5, 'Rafli', 8123123, 'Cilegon'),
(6, 'Dayan', 871231232, 'Serang'),
(7, 'Naufal', 812323, 'Cilegon'),
(8, 'Vernand', 812323, 'Serang'),
(9, 'Fikri', 87123123, 'Cilegon'),
(10, 'Dimas Purba', 81232321, 'Pandeglang');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `alamat_supplier` varchar(250) NOT NULL,
  `telpon_supplier` int(15) NOT NULL,
  `nama_supplier` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `alamat_supplier`, `telpon_supplier`, `nama_supplier`) VALUES
(1, 'Serang', 813562134, 'Bantara Group'),
(2, 'Serang', 87123123, 'Kisama Group'),
(3, 'Serang', 87126321, 'Hijrah Group');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `total_harga` int(18) NOT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `id_pembeli`, `id_karyawan`, `jumlah_beli`, `total_harga`, `tanggal_transaksi`, `keterangan`) VALUES
(1, 1, 1, 1, 2, 26000, '2021-08-09 13:01:55', 'tunai'),
(2, 1, 1, 1, 2, 26000, '2021-08-09 13:02:08', 'tunai'),
(3, 1, 1, 1, 2, 26000, '2021-08-02 07:09:41', 'tunai'),
(4, 1, 1, 1, 2, 26000, '2021-08-09 13:06:26', 'tunai'),
(5, 2, 1, 1, 3, 3000, '2021-08-10 07:17:05', 'Tunai'),
(6, 10, 1, 1, 2, 40000, '2021-08-10 07:17:05', 'Tunai'),
(7, 3, 1, 1, 6, 12000, '2021-08-10 07:17:05', 'Tunai'),
(8, 9, 1, 1, 100, 350000, '2021-08-10 07:17:05', 'Tunai'),
(9, 6, 1, 1, 2, 340000, '2021-08-10 07:17:05', 'Tunai'),
(10, 4, 1, 1, 1, 50000, '2021-08-10 07:17:05', 'Tunai'),
(11, 5, 2, 2, 1, 70000, '2021-08-10 07:25:30', 'Tunai'),
(12, 7, 2, 2, 1, 90000, '2021-08-10 07:25:30', 'Tunai'),
(13, 8, 2, 2, 2, 80000, '2021-08-10 07:25:30', 'Tunai'),
(14, 10, 2, 2, 10, 40000, '2021-08-10 07:25:30', 'Tunai'),
(15, 3, 2, 2, 20, 40000, '2021-08-10 07:25:30', 'Tunai'),
(16, 9, 2, 2, 3, 10500, '2021-08-10 07:25:30', 'Tunai'),
(17, 2, 2, 2, 10, 10000, '2021-08-10 07:25:30', 'Tunai'),
(18, 8, 2, 2, 4, 160000, '2021-08-10 07:25:30', 'Tunai'),
(19, 4, 2, 2, 1, 50000, '2021-08-10 07:25:30', 'Tunai'),
(20, 1, 2, 2, 3, 39000, '2021-08-10 07:25:30', 'Tunai'),
(21, 2, 3, 3, 3, 3000, '2021-08-12 14:26:29', 'Tunai'),
(22, 8, 1, 3, 2, 80000, '2021-08-12 14:26:29', 'tunai'),
(23, 1, 1, 3, 1, 13000, '2021-08-12 14:26:29', 'tunai'),
(24, 9, 1, 3, 2, 7000, '2021-08-12 14:26:29', 'tunai'),
(25, 7, 1, 3, 1, 90000, '2021-08-12 14:26:29', 'tunai'),
(26, 3, 6, 3, 1, 6000, '2021-08-12 14:26:29', 'tunai'),
(27, 4, 1, 3, 1, 50000, '2021-08-12 14:26:29', 'tunai'),
(28, 6, 9, 3, 1, 17000, '2021-08-12 14:26:29', 'tunai'),
(29, 2, 1, 3, 1, 1000, '2021-08-12 14:26:29', 'tunai'),
(30, 2, 10, 3, 2, 4000, '2021-08-12 14:26:29', 'tunai'),
(31, 2, 3, 4, 3, 3000, '2021-08-12 14:27:59', 'Tunai'),
(32, 8, 1, 4, 2, 80000, '2021-08-12 14:27:59', 'tunai'),
(33, 1, 1, 4, 1, 13000, '2021-08-12 14:27:59', 'tunai'),
(34, 9, 1, 4, 2, 7000, '2021-08-12 14:27:59', 'tunai'),
(35, 7, 1, 4, 1, 90000, '2021-08-12 14:27:59', 'tunai'),
(36, 3, 6, 4, 1, 6000, '2021-08-12 14:27:59', 'tunai'),
(37, 4, 1, 4, 1, 50000, '2021-08-12 14:27:59', 'tunai'),
(38, 6, 9, 4, 1, 17000, '2021-08-12 14:27:59', 'tunai'),
(39, 2, 1, 4, 1, 1000, '2021-08-12 14:27:59', 'tunai'),
(40, 2, 10, 4, 2, 4000, '2021-08-12 14:27:59', 'tunai'),
(41, 2, 3, 5, 3, 3000, '2021-08-12 14:29:38', 'Tunai'),
(42, 8, 1, 5, 2, 80000, '2021-08-12 14:29:38', 'tunai'),
(43, 1, 1, 5, 1, 13000, '2021-08-12 14:29:38', 'tunai'),
(44, 9, 1, 5, 2, 7000, '2021-08-12 14:29:38', 'tunai'),
(45, 7, 1, 5, 1, 90000, '2021-08-12 14:29:38', 'tunai'),
(46, 3, 6, 5, 1, 6000, '2021-08-12 14:29:38', 'tunai'),
(47, 4, 1, 5, 1, 50000, '2021-08-12 14:29:38', 'tunai'),
(48, 6, 9, 5, 1, 17000, '2021-08-12 14:29:38', 'tunai'),
(49, 2, 1, 5, 1, 1000, '2021-08-12 14:29:38', 'tunai'),
(50, 2, 10, 5, 2, 4000, '2021-08-12 14:29:38', 'tunai'),
(51, 10, 7, 6, 1, 20000, '2021-08-12 14:36:23', 'tunai'),
(52, 5, 8, 6, 1, 70000, '2021-08-12 14:36:23', 'tunai'),
(53, 1, 4, 6, 1, 13000, '2021-08-12 14:36:23', 'tunai'),
(54, 7, 6, 6, 1, 90000, '2021-08-12 14:36:23', 'tunai'),
(55, 10, 10, 6, 1, 20000, '2021-08-12 14:36:23', 'tunai'),
(56, 7, 8, 6, 2, 180000, '2021-08-12 14:36:23', 'tunai'),
(57, 9, 3, 6, 10, 35000, '2021-08-12 14:36:23', 'tunai'),
(58, 9, 9, 6, 3, 10500, '2021-08-12 14:36:23', 'tunai'),
(59, 1, 3, 6, 10, 130000, '2021-08-12 14:36:23', 'tunai'),
(60, 7, 2, 6, 1, 90000, '2021-08-12 14:36:23', 'tunai'),
(61, 10, 7, 7, 1, 20000, '2021-08-12 14:36:59', 'tunai'),
(62, 5, 8, 7, 1, 70000, '2021-08-12 14:36:59', 'tunai'),
(63, 1, 4, 7, 1, 13000, '2021-08-12 14:36:59', 'tunai'),
(64, 7, 6, 7, 1, 90000, '2021-08-12 14:36:59', 'tunai'),
(65, 10, 10, 7, 1, 20000, '2021-08-12 14:36:59', 'tunai'),
(66, 7, 8, 7, 2, 180000, '2021-08-12 14:36:59', 'tunai'),
(67, 9, 3, 7, 10, 35000, '2021-08-12 14:36:59', 'tunai'),
(68, 9, 9, 7, 3, 10500, '2021-08-12 14:36:59', 'tunai'),
(69, 1, 3, 7, 10, 130000, '2021-08-12 14:36:59', 'tunai'),
(70, 7, 2, 7, 1, 90000, '2021-08-12 14:36:59', 'tunai'),
(71, 10, 7, 8, 1, 20000, '2021-08-12 14:37:33', 'tunai'),
(72, 5, 8, 8, 1, 70000, '2021-08-12 14:37:33', 'tunai'),
(73, 1, 4, 8, 1, 13000, '2021-08-12 14:37:33', 'tunai'),
(74, 7, 6, 8, 1, 90000, '2021-08-12 14:37:33', 'tunai'),
(75, 10, 10, 8, 1, 20000, '2021-08-12 14:37:33', 'tunai'),
(76, 7, 8, 8, 2, 180000, '2021-08-12 14:37:33', 'tunai'),
(77, 9, 3, 8, 10, 35000, '2021-08-12 14:37:33', 'tunai'),
(78, 9, 9, 8, 3, 10500, '2021-08-12 14:37:33', 'tunai'),
(79, 1, 3, 8, 10, 130000, '2021-08-12 14:37:33', 'tunai'),
(80, 7, 2, 8, 1, 90000, '2021-08-12 14:37:33', 'tunai'),
(81, 10, 7, 9, 1, 20000, '2021-08-12 14:38:12', 'tunai'),
(82, 5, 8, 9, 1, 70000, '2021-08-12 14:38:12', 'tunai'),
(83, 1, 4, 9, 1, 13000, '2021-08-12 14:38:12', 'tunai'),
(84, 7, 6, 9, 1, 90000, '2021-08-12 14:38:12', 'tunai'),
(85, 10, 10, 9, 1, 20000, '2021-08-12 14:38:12', 'tunai'),
(86, 7, 8, 9, 2, 180000, '2021-08-12 14:38:12', 'tunai'),
(87, 9, 3, 9, 10, 35000, '2021-08-12 14:38:12', 'tunai'),
(88, 9, 9, 9, 3, 10500, '2021-08-12 14:38:12', 'tunai'),
(89, 1, 3, 9, 10, 130000, '2021-08-12 14:38:12', 'tunai'),
(90, 7, 2, 9, 1, 90000, '2021-08-12 14:38:12', 'tunai'),
(91, 10, 7, 10, 1, 20000, '2021-08-12 14:38:46', 'tunai'),
(92, 5, 8, 9, 1, 70000, '2021-08-12 14:38:46', 'tunai'),
(93, 1, 4, 10, 1, 13000, '2021-08-12 14:38:46', 'tunai'),
(94, 7, 6, 10, 1, 90000, '2021-08-12 14:38:46', 'tunai'),
(95, 10, 10, 10, 1, 20000, '2021-08-12 14:38:46', 'tunai'),
(96, 7, 8, 10, 2, 180000, '2021-08-12 14:38:46', 'tunai'),
(97, 9, 3, 10, 10, 35000, '2021-08-12 14:38:46', 'tunai'),
(98, 9, 9, 10, 3, 10500, '2021-08-12 14:38:46', 'tunai'),
(99, 1, 3, 10, 10, 130000, '2021-08-12 14:38:46', 'tunai'),
(100, 7, 2, 10, 1, 90000, '2021-08-12 14:38:46', 'tunai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
