-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2023 at 05:01 PM
-- Server version: 10.6.14-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aple7114_edtgpsm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username_admin`, `password_admin`) VALUES
(1, 'admin', 'edotadmin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `deskripsi_barang` varchar(255) NOT NULL,
  `harga_barang` varchar(255) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `foto_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `id_kategori`, `nama_barang`, `deskripsi_barang`, `harga_barang`, `stok_barang`, `foto_barang`) VALUES
(1, 1, 'Lis Gypsum 8 CM Polos', 'Gypsum bagus, ini yang paling murah', '13000', 10, '8 cm polos.jpeg'),
(3, 3, 'Roster motif pagar', 'Roster bos', '14000', 0, 'roster motif pagar harga 15k-min.jpg'),
(5, 1, 'Lis Polos 10 cm polos', 'Lis gypsum dengan ukuran panjang +dari 2meter dengan lebar 10cm, dengan motif Polos minimalis', '15000', 25, 'S0405NZ526EVVPAM10 cm polos.jpg'),
(6, 1, 'Bunga Lampu Oval Besar', 'Ornamen interior rumah, Sebagai dudukan lampu untuk menambah nilai estetika ruangan', '50000', 5, 'S0408RHYYAX89TWJbunga lampu oval besar.jpeg'),
(7, 1, 'Bunga Lampu Kotak', 'Ornamen interior rumah, Sebagai dudukan lampu untuk menambah nilai estetika ruangan', '30000', 9, 'S040BOGCQDBWJSRZbunga lampu kotak.jpeg'),
(10, 3, 'Bopen Kaca', 'Bopen kaca, bisa untuk ruang dapur, kamar mandi, dan ventilasi udara ruangan untuk ukuran besar.', '150000', 5, 'S04QEP05AM0BAMYKbopen kaca harga 150k.jpg'),
(13, 3, 'Roster Ukuran 50 Cm', '--', '40000', 8, 'S04QLBY6BM35FGZLroster 50cm harga 40k.jpg'),
(14, 2, 'Lis Beton 5cm', 'Panjang 1 meter', '13000', 14, 'S04R29PUKIQUMZNALis beton 5 cm harga 13k.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bukti`
--

CREATE TABLE `tb_bukti` (
  `id_bukti` int(11) NOT NULL,
  `id_pesanan` varchar(255) NOT NULL,
  `foto_bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_bukti`
--

INSERT INTO `tb_bukti` (`id_bukti`, `id_pesanan`, `foto_bukti`) VALUES
(1, 'ASBDHFJW5682ADKF', 'buktibayar1.jpg'),
(3, 'RZS7P9ZGKVWU14VF', 'RZSF5BMVGZTGWA60WhatsApp Image 2023-08-22 at 12.27.28.jpeg'),
(4, 'S04UK90S34E6ZEEG', 'S04UNBYRMTM27C2Jprofil perusahaan.jpg'),
(5, 'S04VIERAEQHSOVGP', 'S04VKILCGG3J2I7Vprofil perusahaan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_pesanan`
--

CREATE TABLE `tb_detail_pesanan` (
  `id_detail` int(11) NOT NULL,
  `id_pesanan` varchar(255) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `subtotal_harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_detail_pesanan`
--

INSERT INTO `tb_detail_pesanan` (`id_detail`, `id_pesanan`, `id_barang`, `jumlah_pesanan`, `subtotal_harga`) VALUES
(1, 'ASBDHFJW5682ADKF', 1, 10, '130000'),
(3, 'RZS64JKU2HXQBSYE', 1, 7, '91000'),
(4, 'RZS64JKU2HXQBSYE', 3, 10, '140000'),
(5, 'RZS7P9ZGKVWU14VF', 1, 1, '13000'),
(6, 'RZS91TIHVHOWF7B6', 1, 1, '13000'),
(7, 'RZSEOUDPLSCQ62KK', 3, 5, '70000'),
(8, 'RZSFJMRYD4M1FL65', 1, 1, '13000'),
(9, 'RZSFSEBEEV8CKNES', 3, 5, '70000'),
(10, 'S04UK90S34E6ZEEG', 7, 1, '30000'),
(11, 'S04UK90S34E6ZEEG', 13, 1, '40000'),
(12, 'S04VIERAEQHSOVGP', 14, 1, '13000'),
(13, 'S0CA2WDN20RP6MN5', 13, 1, '40000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Gypsum'),
(2, 'Beton '),
(3, 'Roster');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id_pesanan` varchar(255) NOT NULL,
  `nama_pesanan` varchar(255) NOT NULL,
  `alamat_pesanan` varchar(255) NOT NULL,
  `no_hp_pesanan` varchar(255) NOT NULL,
  `email_pesanan` varchar(255) NOT NULL,
  `total_harga_pesanan` varchar(255) NOT NULL,
  `status_pesanan` enum('Menunggu Pembayaran','Diproses','Dikirim','Ditolak','Selesai') NOT NULL,
  `tanggal_pesanan` date NOT NULL,
  `jenis_pembayaran` enum('COD','Transfer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id_pesanan`, `nama_pesanan`, `alamat_pesanan`, `no_hp_pesanan`, `email_pesanan`, `total_harga_pesanan`, `status_pesanan`, `tanggal_pesanan`, `jenis_pembayaran`) VALUES
('ASBDHFJW5682ADKF', 'Henky Fajar', 'Jl. Kawung', '0812345678123', 'henky@gmail.com', '130000', 'Menunggu Pembayaran', '2023-08-21', 'Transfer'),
('RZS64JKU2HXQBSYE', 'Awal Ariansyah', 'Jl. Dr. Wahidin Sindangsari', '628123432121', 'awal@gmail.com', '231000', 'Diproses', '2023-08-22', 'COD'),
('RZS7P9ZGKVWU14VF', 'Willy', 'Jl. Ki Adeg', '6281243454577', 'willysetiawan087@gmail.com', '13000', 'Diproses', '2023-08-22', 'Transfer'),
('RZS91TIHVHOWF7B6', 'diky', 'Rejodadi', '081802871921', 'dika@gmail.com', '13000', 'Menunggu Pembayaran', '2023-08-22', 'COD'),
('RZSEOUDPLSCQ62KK', 'aa', 'cilumuh', '123123', 'henky@gmail.com', '70000', 'Selesai', '2023-08-22', 'COD'),
('RZSFJMRYD4M1FL65', 'aa', 'cilumuh', '1', 'henky@gmail.com', '13000', 'Menunggu Pembayaran', '2023-08-22', 'Transfer'),
('RZSFSEBEEV8CKNES', 'udin', 'ciguling', '081212354566', 'udin@gmail.com', '70000', 'Menunggu Pembayaran', '2023-08-22', 'Transfer'),
('S04UK90S34E6ZEEG', 'udin', 'Cilopadang rt 2 rw 3', '628123456735', 'udin@gmail.com', '70000', 'Diproses', '2023-08-29', 'Transfer'),
('S04VIERAEQHSOVGP', 'pak slamet', 'Pahonjean', '123', 'slamet@gmail.com', '13000', 'Diproses', '2023-08-29', 'Transfer'),
('S0CA2WDN20RP6MN5', 'fadli', 'Majalengka', '087736553231', 'nahgamer@gmail.com', '40000', 'Menunggu Pembayaran', '2023-09-02', 'Transfer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_bukti`
--
ALTER TABLE `tb_bukti`
  ADD PRIMARY KEY (`id_bukti`);

--
-- Indexes for table `tb_detail_pesanan`
--
ALTER TABLE `tb_detail_pesanan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_bukti`
--
ALTER TABLE `tb_bukti`
  MODIFY `id_bukti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_detail_pesanan`
--
ALTER TABLE `tb_detail_pesanan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
