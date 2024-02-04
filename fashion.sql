-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 03:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `barang` varchar(128) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `barang`, `keterangan`, `kategori`, `harga`, `stok`, `image`) VALUES
(1, 'Topi', 'Topi Twill UV Protection', 'Fashion Pria', 299000, 350, 'topi.jpg'),
(2, 'Kacamata', 'Kacamata Wellington Sport', 'Fashion Pria', 199000, 450, 'kacamata.jpg'),
(3, 'Kaos', 'Kaos Polo Dry Pique Pendek', 'Fashion Pria', 299000, 500, 'baju.jpg'),
(4, 'Celana Jeans', 'Jeans Regular Fit', 'Fashion Pria', 599000, 300, 'celana.jpg'),
(5, 'Kemeja', 'Jaket Kemeja Luaran', 'Fashion Pria', 899000, 300, 'kemeja.jpg'),
(6, 'Cardigan', 'Cardigan Souffle Yarn Fair Isle Uniqlo and JW Anderson', 'Fashion Wanita', 599000, 600, 'cardiganw.jpg'),
(7, 'Celana', 'Heattech Celana Legging Ultra Stretch Pinggang Tinggi', 'Fashion Wanita', 499000, 350, 'celanaw.jpg'),
(8, 'Sepatu', 'Sepatu Flat Round Comfeel Touch', 'Fashion Wanita', 499000, 500, 'sepatuw.jpg'),
(9, 'Tas', 'Tas Tote Brown Uniqlo and JW Anderson', 'Fashion Wanita', 499000, 600, 'tasw.jpg'),
(10, 'Kaos', 'T-Shirt Katun Warna Kerah Bulat', 'Fashion Anak-Anak', 149000, 750, 'bajua.jpg'),
(11, 'Celana', 'Kids Celana Legging Ultra Stretch', 'Fashion Anak-Anak', 299000, 400, 'celanaa.jpg'),
(12, 'Kemeja', 'Kemeja Flanel Kotak Panjang', 'Fashion Anak-Anak', 299000, 500, 'kemejaa.jpg'),
(13, 'Topi', 'Kids Heattech Topi Rajut', 'Fashion Anak-Anak', 149000, 600, 'topia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_faktur`
--

CREATE TABLE `detail_faktur` (
  `id` int(11) NOT NULL,
  `id_faktur` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `harga` int(15) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_faktur`
--

INSERT INTO `detail_faktur` (`id`, `id_faktur`, `id_barang`, `nama_barang`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 2, 3, 'Kaos', 1, 299000, ''),
(2, 2, 4, 'Celana Jeans', 1, 599000, '');

-- --------------------------------------------------------

--
-- Table structure for table `faktur`
--

CREATE TABLE `faktur` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_pembayaran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faktur`
--

INSERT INTO `faktur` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_pembayaran`) VALUES
(2, 'Muhammad Gunawan', 'Karadenan, Bogor, Jawa Barat', '2022-12-10 16:10:37', '2022-12-11 16:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Fashion Pria'),
(2, 'Fashion Wanita'),
(3, 'Fashion Anak-Anak');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Gunawan', '12211015@bsi.ac.id', 'pro16706502761.jpg', '$2y$10$2AC8qgopCV8gO9bSJHJnqupQSwFKmm7UCLv6bCUhiIq1Qi/uff2ua', 2, 1, 1670649212),
(2, 'Admin 1', 'admin123@gmail.com', 'default.jpg', '$2y$10$k65KCpbX9uskeOnIhs40YeLMY4kUn2Cwod3nuOLlWCxvtb8GzONGa', 1, 1, 1670664273);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_faktur`
--
ALTER TABLE `detail_faktur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `detail_faktur`
--
ALTER TABLE `detail_faktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faktur`
--
ALTER TABLE `faktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
