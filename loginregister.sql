-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2020 at 05:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginregister`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'aku', '2020-04-06 01:36:32', '2020-04-06 01:36:32'),
(2, 'saya', '2020-04-06 01:36:32', '2020-04-06 01:36:32'),
(3, 'sama', '2020-04-06 02:01:01', '2020-04-06 02:01:01'),
(4, 'joi', '2020-04-06 02:01:01', '2020-04-06 02:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int(11) NOT NULL,
  `anggota_id` int(11) NOT NULL,
  `hadiah_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-04-06 01:40:54', '2020-04-06 01:40:54'),
(2, 1, 2, '2020-04-06 01:40:54', '2020-04-06 01:40:54'),
(3, 2, 1, '2020-04-06 01:41:06', '2020-04-06 01:41:06'),
(4, 2, 2, '2020-04-06 01:41:06', '2020-04-06 01:41:06'),
(5, 4, 3, '2020-04-06 02:02:20', '2020-04-06 02:02:20'),
(6, 4, 1, '2020-04-06 02:02:20', '2020-04-06 02:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `bukus`
--

CREATE TABLE `bukus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sampul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bukus`
--

INSERT INTO `bukus` (`id`, `sampul`, `nama`, `pengarang`, `tahun_terbit`, `isbn`, `created_at`, `updated_at`) VALUES
(1, '0', 'Dormouse,\' thought.', 'Mr. Elian Ortiz', '1988', '9780179726048', '2020-03-15 19:59:34', '2020-03-15 19:59:34'),
(2, 'public/foto\\b26094ac951b17e29e66f297b65616a3.jpg', 'This time there could.', 'Mollie Ward', '1998', '9782252828472', '2020-03-15 20:00:35', '2020-03-15 20:00:35'),
(3, '0', 'ME\' were beautifully.', 'Miss Mertie Altenwerth', '2012', '9798522117856', '2020-03-15 20:00:57', '2020-03-15 20:00:57'),
(4, 'public/foto\\07a0ea505f64d6f8c878cc6c4f87cfb2.jpg', 'First it marked out a.', 'Ivory Lesch I', '1987', '9797982319589', '2020-03-15 20:01:57', '2020-03-15 20:01:57'),
(5, 'public/foto\\7ba992a8381da881222541463ef2fac5.jpg', 'Mock Turtle. So she.', 'Rowland Wyman', '2015', '9782798941123', '2020-03-15 20:02:28', '2020-03-15 20:02:28'),
(6, '0', 'Pray, what is the same.', 'Elinor Stamm', '1977', '9799344402526', '2020-03-15 20:02:49', '2020-03-15 20:02:49'),
(7, '0', 'Shall I try the effect.', 'Furman Murphy', '1971', '9799496784273', '2020-03-15 20:03:11', '2020-03-15 20:03:11'),
(8, '0', 'However, she did not.', 'Javier Wehner', '1994', '9790801687623', '2020-03-15 20:03:33', '2020-03-15 20:03:33'),
(9, '0', 'Hatter. \'You MUST.', 'Dr. Horacio Olson DVM', '2017', '9783208710872', '2020-03-15 20:05:01', '2020-03-15 20:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `komentar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `nama`, `komentar`, `created_at`, `updated_at`) VALUES
(1, 'kita', 'anam@gmail.com', '2020-03-28 07:42:09', '2020-03-28 07:42:09'),
(2, 'kita', 'anam@gmail.com', '2020-03-28 07:42:27', '2020-03-28 07:42:27'),
(3, 'kitas', 'anam@gmail.com', '2020-03-28 07:43:11', '2020-03-28 07:43:11'),
(4, 'a', 'anam@gmail.com', '2020-03-28 07:44:07', '2020-03-28 07:44:07'),
(5, 'a', 'anam@gmail.com', '2020-03-28 07:44:29', '2020-03-28 07:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `fileupload`
--

CREATE TABLE `fileupload` (
  `id` int(11) NOT NULL,
  `uploaded_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int(11) NOT NULL,
  `nama_hadiah` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'buah', '2020-04-06 01:37:46', '2020-04-06 01:37:46'),
(2, 'apel', '2020-04-06 01:37:46', '2020-04-06 01:37:46'),
(3, 'ssemngk', '2020-04-06 02:01:47', '2020-04-06 02:01:47'),
(4, 'jruk', '2020-04-06 02:01:47', '2020-04-06 02:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'khoirul', 'khoirul@gmail.com', NULL, '123456', NULL, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_25_112740_petugas', 1),
(5, '2020_02_25_112931_masyarakat', 1),
(6, '2020_03_15_132440_create_bukus_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `id` int(5) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`id`, `nama`, `keterangan`, `gambar`, `lat`, `lng`) VALUES
(1, 'Pulau merah satu', 'Kondisi : Penuh\r\nSegera angkut lah', 'a.jpg', '-8.603904', '114.030082'),
(2, 'pulau merah dua', 'Kondisi Sampah \r\nMasih ksong\r\nBersih\r\nUhuy', '2.jpg', '-8.603002', '114.030185');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `hadiah_id` int(11) NOT NULL,
  `point_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `hadiah_id`, `point_id`, `created_at`, `updated_at`) VALUES
(1, 'anam', 1, 1, '2020-04-06 12:19:07', '2020-04-06 12:19:07'),
(2, 'khoirul', 1, 2, '2020-04-06 12:19:07', '2020-04-06 12:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'anam', 'anam@gmail.com', NULL, '123456', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE `point` (
  `id` int(11) NOT NULL,
  `point_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `point`
--

INSERT INTO `point` (`id`, `point_id`, `created_at`, `updated_at`) VALUES
(1, 300, '2020-04-06 12:16:51', '2020-04-06 12:16:51'),
(2, 1000, '2020-04-06 12:16:51', '2020-04-06 12:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `nama`, `file`, `created_at`, `updated_at`) VALUES
(32, 'kami', '1585022012_.jpeg', '2020-03-23 20:53:32', '2020-03-23 20:53:32'),
(33, 'kami', '1585022016_.jpeg', '2020-03-23 20:53:36', '2020-03-23 20:53:36'),
(34, 'kami', '1585022107_.jpeg', '2020-03-23 20:55:07', '2020-03-23 20:55:07'),
(35, 'namajh', '1585022202_.jpeg', '2020-03-23 20:56:42', '2020-03-23 20:56:42'),
(36, 'nama', '1585022524_.jpeg', '2020-03-23 21:02:04', '2020-03-23 21:02:04'),
(37, 'nama', '1585028615_.jpeg', '2020-03-23 22:43:35', '2020-03-23 22:43:35'),
(38, 'nama', '1585031506_.jpeg', '2020-03-23 23:31:46', '2020-03-23 23:31:46'),
(39, 'namasas', '1585106555_.jpeg', '2020-03-24 20:22:35', '2020-03-24 20:22:35'),
(40, 'feedback', '1585310985_.jpeg', '2020-03-27 05:09:45', '2020-03-27 05:09:45'),
(41, 'feedback', '1585311016_.jpeg', '2020-03-27 05:10:16', '2020-03-27 05:10:16'),
(42, 'feedback', '1585311020_.jpeg', '2020-03-27 05:10:20', '2020-03-27 05:10:20'),
(43, 'feedbacks', '1585311098.jpeg', '2020-03-27 05:11:38', '2020-03-27 05:11:38'),
(44, 'feedbacks', '1585402859.jpeg', '2020-03-28 06:40:59', '2020-03-28 06:40:59'),
(45, 'feedbacks', '1585402880.jpeg', '2020-03-28 06:41:20', '2020-03-28 06:41:20'),
(46, 'feedbacks', '1585402883.jpeg', '2020-03-28 06:41:23', '2020-03-28 06:41:23'),
(47, 'a', '1585402908.jpeg', '2020-03-28 06:41:48', '2020-03-28 06:41:48'),
(48, 'a', '1585402951.jpeg', '2020-03-28 06:42:31', '2020-03-28 06:42:31'),
(49, 'a', '1585402983.jpeg', '2020-03-28 06:43:03', '2020-03-28 06:43:03'),
(50, 'aa', '1585402991.jpeg', '2020-03-28 06:43:11', '2020-03-28 06:43:11'),
(51, 'aa', '1585403001.jpeg', '2020-03-28 06:43:21', '2020-03-28 06:43:21'),
(52, 'aas', '1585403025.jpeg', '2020-03-28 06:43:45', '2020-03-28 06:43:45'),
(53, 'nama', '1585578119.jpeg', '2020-03-30 07:22:00', '2020-03-30 07:22:00'),
(54, 'nama', '1585578119.jpeg', '2020-03-30 07:22:00', '2020-03-30 07:22:00'),
(55, 'Ss', '1585578146.jpeg', '2020-03-30 07:22:26', '2020-03-30 07:22:26'),
(56, 'namaku Kan', 'asik.mp4', '2020-03-30 07:23:09', '2020-03-30 07:23:09'),
(57, 'nama', '1585635005.jpeg', '2020-03-30 23:10:05', '2020-03-30 23:10:05'),
(58, 'nama', '1585637273.jpeg', '2020-03-30 23:47:53', '2020-03-30 23:47:53'),
(59, 'nama', '1585641473.jpeg', '2020-03-31 00:57:53', '2020-03-31 00:57:53'),
(60, 'nama', '1585641473.jpeg', '2020-03-31 00:57:53', '2020-03-31 00:57:53'),
(61, 'namas', '1585641490.jpeg', '2020-03-31 00:58:10', '2020-03-31 00:58:10'),
(62, 'namass', '1585641623.jpeg', '2020-03-31 01:00:23', '2020-03-31 01:00:23'),
(63, 'nama', '1585641932.jpeg', '2020-03-31 01:05:32', '2020-03-31 01:05:32'),
(64, 'namaffcv', '1585641995.jpeg', '2020-03-31 01:06:36', '2020-03-31 01:06:36'),
(65, 'nama', '1585664076.jpeg', '2020-03-31 07:14:36', '2020-03-31 07:14:36'),
(66, 'nammakaksa', '1585664159.jpeg', '2020-03-31 07:15:59', '2020-03-31 07:15:59'),
(67, 'nammakaksa', '1585664193.jpeg', '2020-03-31 07:16:33', '2020-03-31 07:16:33'),
(68, 'nama', '1586093046.jpeg', '2020-04-05 06:24:07', '2020-04-05 06:24:07'),
(69, 'nama', '1586093046.jpeg', '2020-04-05 06:24:07', '2020-04-05 06:24:07'),
(70, 'nama', '1586093081.jpeg', '2020-04-05 06:24:41', '2020-04-05 06:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bukus`
--
ALTER TABLE `bukus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Indexes for table `fileupload`
--
ALTER TABLE `fileupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `masyarakat_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hadiah_id` (`hadiah_id`,`point_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `petugas_email_unique` (`email`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bukus`
--
ALTER TABLE `bukus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fileupload`
--
ALTER TABLE `fileupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `point`
--
ALTER TABLE `point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
