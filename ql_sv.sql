-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2020 at 02:08 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_sv`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `tk` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mk` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gt` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_sv` int(10) UNSIGNED NOT NULL,
  `id_mon` int(10) UNSIGNED NOT NULL,
  `diem` tinyint(3) UNSIGNED NOT NULL,
  `pt_thi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diem_danh`
--

CREATE TABLE `diem_danh` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_lop` int(10) UNSIGNED NOT NULL,
  `id_gv` int(10) UNSIGNED NOT NULL,
  `id_mon` int(10) UNSIGNED NOT NULL,
  `id_sv` int(10) UNSIGNED NOT NULL,
  `tinh_trang` tinyint(4) NOT NULL,
  `gio_diem_danh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giao_vien`
--

CREATE TABLE `giao_vien` (
  `id` int(10) UNSIGNED NOT NULL,
  `tk` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mk` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_gv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ns` date NOT NULL,
  `sdt` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khoa_hoc`
--

CREATE TABLE `khoa_hoc` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_khoa` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bat_dau` date NOT NULL,
  `ket_thuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_lop` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nganh` int(10) UNSIGNED NOT NULL,
  `id_khoa_hoc` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_06_23_014758_admin', 1),
(2, '2020_06_23_015328_khoa_hoc', 1),
(3, '2020_06_23_021214_nganh', 1),
(4, '2020_06_23_021654_lop', 1),
(5, '2020_06_23_022021_mon', 1),
(6, '2020_06_23_022323_sinh_vien', 1),
(7, '2020_06_23_023003_giao_vien', 1),
(8, '2020_06_23_024600_mon_day', 1),
(9, '2020_06_23_025446_diem', 1),
(10, '2020_06_23_031737_phan_cong', 1),
(11, '2020_06_23_032522_diem_danh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mon`
--

CREATE TABLE `mon` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_,mon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nganh` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mon_day`
--

CREATE TABLE `mon_day` (
  `id_mon` int(10) UNSIGNED NOT NULL,
  `id_gv` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nganh`
--

CREATE TABLE `nganh` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_nganh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phan_cong`
--

CREATE TABLE `phan_cong` (
  `id_lop` int(10) UNSIGNED NOT NULL,
  `id_gv` int(10) UNSIGNED NOT NULL,
  `id_mon` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `id` int(10) UNSIGNED NOT NULL,
  `tk` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mk` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ns` date NOT NULL,
  `sdt` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gt` tinyint(1) NOT NULL,
  `id_lop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diem_id_sv_foreign` (`id_sv`),
  ADD KEY `diem_id_mon_foreign` (`id_mon`);

--
-- Indexes for table `diem_danh`
--
ALTER TABLE `diem_danh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diem_danh_id_lop_foreign` (`id_lop`),
  ADD KEY `diem_danh_id_gv_foreign` (`id_gv`),
  ADD KEY `diem_danh_id_mon_foreign` (`id_mon`),
  ADD KEY `diem_danh_id_sv_foreign` (`id_sv`);

--
-- Indexes for table `giao_vien`
--
ALTER TABLE `giao_vien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lop_id_nganh_foreign` (`id_nganh`),
  ADD KEY `lop_id_khoa_hoc_foreign` (`id_khoa_hoc`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mon`
--
ALTER TABLE `mon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mon_id_nganh_foreign` (`id_nganh`);

--
-- Indexes for table `mon_day`
--
ALTER TABLE `mon_day`
  ADD PRIMARY KEY (`id_mon`),
  ADD KEY `mon_day_id_gv_foreign` (`id_gv`);

--
-- Indexes for table `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phan_cong`
--
ALTER TABLE `phan_cong`
  ADD PRIMARY KEY (`id_lop`),
  ADD KEY `phan_cong_id_gv_foreign` (`id_gv`),
  ADD KEY `phan_cong_id_mon_foreign` (`id_mon`);

--
-- Indexes for table `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sinh_vien_id_lop_foreign` (`id_lop`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `diem`
--
ALTER TABLE `diem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `diem_danh`
--
ALTER TABLE `diem_danh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `giao_vien`
--
ALTER TABLE `giao_vien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mon`
--
ALTER TABLE `mon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nganh`
--
ALTER TABLE `nganh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sinh_vien`
--
ALTER TABLE `sinh_vien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_id_mon_foreign` FOREIGN KEY (`id_mon`) REFERENCES `mon` (`id`),
  ADD CONSTRAINT `diem_id_sv_foreign` FOREIGN KEY (`id_sv`) REFERENCES `sinh_vien` (`id`);

--
-- Constraints for table `diem_danh`
--
ALTER TABLE `diem_danh`
  ADD CONSTRAINT `diem_danh_id_gv_foreign` FOREIGN KEY (`id_gv`) REFERENCES `giao_vien` (`id`),
  ADD CONSTRAINT `diem_danh_id_lop_foreign` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id`),
  ADD CONSTRAINT `diem_danh_id_mon_foreign` FOREIGN KEY (`id_mon`) REFERENCES `mon` (`id`),
  ADD CONSTRAINT `diem_danh_id_sv_foreign` FOREIGN KEY (`id_sv`) REFERENCES `sinh_vien` (`id`);

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_id_khoa_hoc_foreign` FOREIGN KEY (`id_khoa_hoc`) REFERENCES `khoa_hoc` (`id`),
  ADD CONSTRAINT `lop_id_nganh_foreign` FOREIGN KEY (`id_nganh`) REFERENCES `nganh` (`id`);

--
-- Constraints for table `mon`
--
ALTER TABLE `mon`
  ADD CONSTRAINT `mon_id_nganh_foreign` FOREIGN KEY (`id_nganh`) REFERENCES `nganh` (`id`);

--
-- Constraints for table `mon_day`
--
ALTER TABLE `mon_day`
  ADD CONSTRAINT `mon_day_id_gv_foreign` FOREIGN KEY (`id_gv`) REFERENCES `giao_vien` (`id`),
  ADD CONSTRAINT `mon_day_id_mon_foreign` FOREIGN KEY (`id_mon`) REFERENCES `mon` (`id`);

--
-- Constraints for table `phan_cong`
--
ALTER TABLE `phan_cong`
  ADD CONSTRAINT `phan_cong_id_gv_foreign` FOREIGN KEY (`id_gv`) REFERENCES `giao_vien` (`id`),
  ADD CONSTRAINT `phan_cong_id_lop_foreign` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id`),
  ADD CONSTRAINT `phan_cong_id_mon_foreign` FOREIGN KEY (`id_mon`) REFERENCES `mon` (`id`);

--
-- Constraints for table `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD CONSTRAINT `sinh_vien_id_lop_foreign` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
