-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2024 at 11:27 AM
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
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_product`
--

CREATE TABLE `add_product` (
  `Nama` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', '123', 'admin'),
(2, 'user', 'user@gmail.com', '234', 'user'),
(3, 'indah', 'indahcalistaexcella@gmail.com', '238', 'admin'),
(4, 'fadila', 'fadila@gmail.com', 'gacor', 'admin'),
(5, 'ibnu', 'ibnu@gmail.com', 'oke', 'admin'),
(6, 'indah', 'ayushafira2107@gmail.com', '123', 'user'),
(7, 'OK', 'dummy@gmail.com', '111', 'user'),
(8, 'kayra', 'kayra@gmail.com', '90', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `message`) VALUES
(1, 'admin@gmail.com', '123'),
(2, 'user@gmail.com', '23242');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `kode_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`, `kode_kategori`) VALUES
(3, 'Umum', 'U'),
(4, 'Bebas Terbatas', 'B'),
(5, 'Keras', 'K');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `user_id`, `nama`, `total_harga`) VALUES
(22, 2, 'user', 88936),
(23, 2, 'user', 88936),
(24, 2, 'user', 44468),
(25, 2, 'user', 223),
(26, 2, 'user', 100000),
(27, 2, 'user', 222234),
(28, 2, 'user', 132234),
(29, 2, 'user', 85),
(30, 2, 'user', 60000),
(31, 3, 'indah', 22234),
(32, 3, 'indah', 100000),
(33, 7, 'OK', 50000),
(34, 7, 'OK', 223),
(35, 7, 'OK', 22234),
(36, 2, 'user', 30),
(37, 2, 'user', 30),
(38, 2, 'user', 20),
(39, 8, 'kayra', 100000),
(40, 8, 'kayra', 400000),
(41, 2, 'user', 35),
(42, 2, 'user', 35),
(43, 2, 'user', 0),
(44, 2, 'user', 0),
(45, 2, 'user', 0),
(46, 2, 'user', 0),
(47, 2, 'user', 0),
(48, 2, 'user', 0),
(49, 2, 'user', 0),
(50, 2, 'user', 0),
(51, 2, 'user', 0),
(52, 2, 'user', 0),
(53, 2, 'user', 0),
(54, 8, 'kayra', 35),
(55, 8, 'kayra', 20),
(56, 8, 'kayra', 30),
(57, 8, 'kayra', 20),
(58, 8, 'kayra', 20),
(59, 8, 'kayra', 20),
(60, 8, 'kayra', 30),
(61, 8, 'kayra', 30),
(62, 8, 'kayra', 35),
(63, 8, 'kayra', 30),
(64, 8, 'kayra', 35),
(65, 8, 'kayra', 20),
(66, 8, 'kayra', 20),
(67, 8, 'kayra', 20),
(68, 8, 'kayra', 20),
(69, 8, 'kayra', 35);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_items`
--

CREATE TABLE `keranjang_items` (
  `id` int(11) NOT NULL,
  `keranjang_id` int(11) NOT NULL,
  `obat_id` int(11) NOT NULL,
  `quantitiy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang_items`
--

INSERT INTO `keranjang_items` (`id`, `keranjang_id`, `obat_id`, `quantitiy`) VALUES
(44, 36, 16, 1),
(45, 37, 16, 1),
(46, 29, 16, 1),
(47, 29, 17, 1),
(48, 29, 18, 1),
(49, 38, 18, 1),
(50, 41, 17, 1),
(51, 42, 17, 1),
(52, 54, 17, 1),
(53, 55, 18, 1),
(54, 56, 16, 1),
(55, 57, 18, 1),
(56, 58, 18, 1),
(57, 59, 18, 1),
(58, 60, 16, 1),
(59, 61, 16, 1),
(60, 62, 17, 1),
(61, 63, 16, 1),
(62, 64, 17, 1),
(63, 65, 18, 1),
(64, 66, 18, 1),
(65, 67, 18, 1),
(66, 68, 20, 1),
(67, 69, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id_notifikasi` int(100) NOT NULL,
  `id_customer` int(100) NOT NULL,
  `pesan` text NOT NULL,
  `tgl_notifikasi` date NOT NULL,
  `status_baca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id_notifikasi`, `id_customer`, `pesan`, `tgl_notifikasi`, `status_baca`) VALUES
(1, 0, 'Customer dengan ID  telah membeli produk dengan ID ', '0000-00-00', '1'),
(5, 1, 'Pembelian atas nama Nama Pelanggan SUKSES. Transaksi ID: 5045883325', '0000-00-00', '1'),
(14, 1, 'Pembelian atas nama Nama Pelanggan SUKSES. Transaksi ID: 1251158769', '0000-00-00', '1'),
(15, 1, 'Pembelian atas nama Nama Pelanggan SUKSES. Transaksi ID: 5992313215', '0000-00-00', '1'),
(16, 1, 'Pembelian atas nama Nama Pelanggan SUKSES. Transaksi ID: 9368666721', '0000-00-00', '0'),
(17, 1, 'Pembelian atas nama Nama Pelanggan SUKSES. Transaksi ID: 1178656711', '0000-00-00', '0'),
(18, 1, 'Pembelian atas nama Nama Pelanggan SUKSES. Transaksi ID: 4024457194', '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(100) NOT NULL,
  `merek` varchar(255) NOT NULL,
  `fid_kategori` int(100) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `indikasi` text NOT NULL,
  `stok_obat` varchar(255) NOT NULL,
  `tanggal_produksi` date NOT NULL,
  `tanggal_eks` date NOT NULL,
  `komposisi` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `fid_admin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `merek`, `fid_kategori`, `kategori`, `indikasi`, `stok_obat`, `tanggal_produksi`, `tanggal_eks`, `komposisi`, `harga`, `gambar`, `fid_admin`) VALUES
(16, 'Betadine mouthwash', 3, 'U', '', '81', '2024-11-30', '2024-12-07', 'daun kering', '30.000', '6746b9cac8b33.png', 3),
(17, 'Bodrex', 3, 'U', 'oke', '80', '2024-10-27', '2024-12-07', 'Caffeine', '35.000', '6746ba7bc2ca5.png', 3),
(18, 'Proris', 3, '', '', '39', '2024-10-28', '2024-11-28', 'Profen', '20.000', '6746bab057d6b.png', 3),
(20, 'Marina', 3, '', '', '79', '2024-10-27', '2024-12-07', 'Yogurt dan berry', '20.000', '674869beaf2d2.jpeg', 1),
(21, 'Freshcare', 3, 'U', 'care', '90', '2024-10-30', '2024-12-07', 'pepermint', '10.000', '67486b7d4883d.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `no_pesanan` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `Id` int(200) NOT NULL,
  `Tanggal` varchar(200) NOT NULL,
  `Nama_Obat` varchar(200) NOT NULL,
  `Kategori` varchar(200) NOT NULL,
  `Jumlah_Terjual` varchar(200) NOT NULL,
  `Harga_Satuan` varchar(200) NOT NULL,
  `Total_Penjualan` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`Id`, `Tanggal`, `Nama_Obat`, `Kategori`, `Jumlah_Terjual`, `Harga_Satuan`, `Total_Penjualan`) VALUES
(2, '12-12-23', '23697qweqwewwwawfsdjkghodlawu3', 'tahuuu', '1222', '90000', 999),
(15, '12-12-24', 'amer', 'keras', '90', '190', 100),
(16, '23/12/2025', 'golin', '0909', '100', '5454', 65625353),
(18, '12-12-26', 'cok', 'coklagt', '24234', '2532', 23);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pembelian`
--

CREATE TABLE `riwayat_pembelian` (
  `id_pembelian` int(100) NOT NULL,
  `id_customer` int(100) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `jml_pembelian` varchar(255) NOT NULL,
  `status_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(100) NOT NULL,
  `keranjang_id` int(11) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jml_transaksi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `keranjang_id`, `tgl_transaksi`, `jml_transaksi`) VALUES
('0190712702', 64, '2024-11-27 02:37:56', '35'),
('0548990224', 60, '2024-11-27 02:26:53', '30'),
('0761872686', 57, '2024-11-27 02:21:28', '20'),
('0824178061', 64, '2024-11-27 02:36:45', '35'),
('0840389644', 29, '2024-11-27 02:05:44', '85'),
('1167037429', 23, '2024-11-04 19:01:38', '88936'),
('1178656711', 68, '2024-11-29 01:09:13', '20'),
('1251158769', 65, '2024-11-27 02:41:52', '20'),
('1323813665', 40, '2024-11-22 04:25:22', '400000'),
('1579355412', 61, '2024-11-27 02:28:31', '30'),
('2583631585', 63, '2024-11-27 02:36:07', '30'),
('2761242792', 65, '2024-11-27 02:38:38', '20'),
('2969247396', 64, '2024-11-27 02:37:49', '35'),
('2975002005', 25, '2024-11-06 03:22:56', '223'),
('3268924797', 30, '2024-11-25 22:06:42', '60000'),
('3496777196', 64, '2024-11-27 02:37:08', '35'),
('3862959012', 54, '2024-11-27 02:11:06', '35'),
('3939586407', 31, '2024-11-05 21:55:03', '22234'),
('4024457194', 69, '2024-11-29 22:17:19', '35'),
('4106817177', 59, '2024-11-27 02:25:29', '20'),
('4321175886', 27, '2024-11-05 20:35:21', '222234'),
('4404147658', 32, '2024-11-05 21:55:14', '100000'),
('4981301264', 22, '2024-11-04 18:51:43', '88936'),
('5045883325', 62, '2024-11-27 02:34:10', '35'),
('5157844188', 55, '2024-11-27 02:16:00', '20'),
('5173536109', 56, '2024-11-27 02:19:54', '30'),
('5203716863', 58, '2024-11-27 02:23:15', '20'),
('5687219453', 42, '2024-11-27 02:07:57', '35'),
('5690571732', 65, '2024-11-27 02:39:09', '20'),
('5992313215', 66, '2024-11-27 02:42:28', '20'),
('6264675284', 41, '2024-11-27 02:06:50', '35'),
('6491674362', 60, '2024-11-27 02:26:47', '30'),
('6727502929', 38, '2024-11-27 02:06:26', '20'),
('6964937102', 24, '2024-11-04 19:01:58', '44468'),
('8399784883', 63, '2024-11-27 02:36:22', '30'),
('8415792247', 39, '2024-11-22 04:16:32', '100000'),
('8427277657', 33, '2024-11-05 21:57:39', '50000'),
('8512018359', 34, '2024-11-05 21:57:53', '223'),
('8758188240', 35, '2024-11-05 21:58:06', '22234'),
('8872975628', 37, '2024-11-27 01:34:46', '30'),
('9368666721', 67, '2024-11-27 18:32:21', '20'),
('9372647479', 36, '2024-11-27 01:06:22', '30'),
('9672126685', 28, '2024-11-22 03:59:18', '132234'),
('9970892381', 26, '2024-11-05 20:34:19', '100000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `keranjang_items`
--
ALTER TABLE `keranjang_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keranjang_id` (`keranjang_id`,`obat_id`),
  ADD KEY `obat_id` (`obat_id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fid_kategori` (`fid_kategori`),
  ADD KEY `fid_admin` (`fid_admin`);

--
-- Indexes for table `pickup`
--
ALTER TABLE `pickup`
  ADD PRIMARY KEY (`no_pesanan`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Tanggal` (`Tanggal`);

--
-- Indexes for table `riwayat_pembelian`
--
ALTER TABLE `riwayat_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD UNIQUE KEY `id_customer` (`id_customer`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `keranjang_id` (`keranjang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `keranjang_items`
--
ALTER TABLE `keranjang_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id_notifikasi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `riwayat_pembelian`
--
ALTER TABLE `riwayat_pembelian`
  MODIFY `id_pembelian` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keranjang_items`
--
ALTER TABLE `keranjang_items`
  ADD CONSTRAINT `keranjang_items_ibfk_1` FOREIGN KEY (`keranjang_id`) REFERENCES `keranjang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_items_ibfk_2` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`fid_kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obat_ibfk_2` FOREIGN KEY (`fid_admin`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`keranjang_id`) REFERENCES `keranjang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
