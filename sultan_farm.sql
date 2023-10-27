-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2023 at 11:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sultan_farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `breedings`
--

CREATE TABLE `breedings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(100) DEFAULT 'text',
  `harga` int(10) UNSIGNED DEFAULT 12,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_customer` varchar(100) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `nama_customer`, `no_telp`, `alamat`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Maulana Malik Ibrahim', '082333992333', 'Jl. Semeru No. 157 Lumajang', 'malik@gmail', '$2y$10$jyq3Ua8RA7D/wTFUhdmSOO1cHIUPx.mszN9ujiU0e8caXW0qRsbNS', '2023-10-18 03:43:23', '2023-10-18 03:43:23'),
(3, 'Yunanta', '089574888594', 'Jl. Kenanga 17 Kabupaten Banyuwangi', 'yunanta123456789@gmail.com', '$2y$10$twgaF0jsvVDDiWB4LlDFUO5G2Vpqd1VUXnhLSuBOMGODq2ESHJkve', '2023-10-18 03:52:07', '2023-10-19 06:24:38'),
(5, 'Toriqul Haq', '089333999333', 'Jl. Matrip 8', 'toriq@gmail.com', '$2y$10$7vSdyAJqzdujPL67kqQra.zicI5dkKOd3PHa6Df9gRdQgQRt5LaaS', '2023-10-18 03:58:14', '2023-10-18 03:58:14'),
(6, 'Malk Ibrahim', '082333992023', 'Jl. Semeru No. 157', 'malik@gmail.com', '$2y$10$nYdIB2GGDpKFKB.qm3fhluYF4oLGuYJaBblLvlr5B1Uf7S8q5MQLS', '2023-10-18 04:38:19', '2023-10-18 04:38:19'),
(7, 'Faisal Chandra Okta Brian', '085467946133', 'Jl. Kaliwates Perum Mangli, Jember', 'faisal@gmail.com', '$2y$10$vdVi.ZlnQceDCEoTUfA6TeYkmExZhMuQ1UWL5nA83C8UBKvR1cbxe', '2023-10-19 06:36:45', '2023-10-19 06:36:45'),
(8, 'Yunanta Dwi', '085745616430', 'Jember', 'hugo@gmail.com', '$2y$10$wPh61I6lq8a8uBdI3Yo1ge8ga4lGhkke0FYZBQncZvVJXqD8YV2bO', '2023-10-21 08:44:30', '2023-10-21 08:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelians`
--

CREATE TABLE `detail_pembelians` (
  `id_pembelian` bigint(20) UNSIGNED DEFAULT 12,
  `id_domba` bigint(20) UNSIGNED DEFAULT 12,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualans`
--

CREATE TABLE `detail_penjualans` (
  `id_penjualan` bigint(20) UNSIGNED DEFAULT 12,
  `id_domba` bigint(20) UNSIGNED DEFAULT 12,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dombas`
--

CREATE TABLE `dombas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_domba` varchar(20) DEFAULT NULL,
  `nama_domba` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tipe_domba` enum('Trading','Breeding') NOT NULL,
  `bobot` int(10) UNSIGNED DEFAULT 12,
  `induk_jantan` varchar(60) DEFAULT NULL,
  `induk_betina` varchar(60) DEFAULT NULL,
  `turunan` smallint(5) UNSIGNED DEFAULT 12,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `harga_beli` int(10) UNSIGNED DEFAULT 12,
  `harga_jual` int(10) UNSIGNED DEFAULT 12,
  `status` enum('Terjual','Mati','Tersedia') NOT NULL DEFAULT 'Tersedia',
  `tgl_lahir` date NOT NULL,
  `id_kamar` bigint(20) UNSIGNED DEFAULT 12,
  `id_jenis` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dombas`
--

INSERT INTO `dombas` (`id`, `kode_domba`, `nama_domba`, `jenis_kelamin`, `tipe_domba`, `bobot`, `induk_jantan`, `induk_betina`, `turunan`, `gambar`, `keterangan`, `harga_beli`, `harga_jual`, `status`, `tgl_lahir`, `id_kamar`, `id_jenis`, `created_at`, `updated_at`) VALUES
(1, 'JDEKJF20231019132701', NULL, 'Laki-laki', 'Trading', 200, NULL, NULL, 1, '1697696821.jpeg', 'Domba batur turunan pertama yang siap untuk di jual', 12, 2000000, 'Tersedia', '2023-10-01', 3, 1, '2023-10-19 06:27:01', '2023-10-19 06:27:01'),
(2, '4KL7KQ20231019132758', NULL, 'Perempuan', 'Trading', 250, NULL, NULL, 1, '1697696878.jpg', 'Domba jenis taxel yang siap untuk di jual', 12, 3400000, 'Tersedia', '2023-09-01', 4, 2, '2023-10-19 06:27:58', '2023-10-19 06:27:58'),
(3, 'DI9B3A20231019132951', NULL, 'Perempuan', 'Breeding', 340, NULL, NULL, 2, '1697696991.jpg', 'Domba dormas super yang siap untuk di perjual belikan', 12, 3460000, 'Tersedia', '2023-08-01', 10, 5, '2023-10-19 06:29:51', '2023-10-19 06:29:51'),
(4, 'Y3TB1Z20231019133128', NULL, 'Laki-laki', 'Trading', 160, NULL, NULL, 2, '1697697088.jpg', 'Domba jenis dorset yang siap untuk di perjual belikan', 12, 2430000, 'Tersedia', '2023-09-08', 12, 6, '2023-10-19 06:31:28', '2023-10-19 06:31:28'),
(5, 'KD75F620231019133231', NULL, 'Perempuan', 'Trading', 350, NULL, NULL, 1, '1697697151.jpeg', 'Domba jenis batur dengan bobot 350 yang siap untuk di perjual belikan', 12, 4000000, 'Tersedia', '2023-05-13', 11, 1, '2023-10-19 06:32:31', '2023-10-19 06:32:31');

--
-- Triggers `dombas`
--
DELIMITER $$
CREATE TRIGGER `tr_bobot` AFTER UPDATE ON `dombas` FOR EACH ROW BEGIN
                INSERT INTO historytimbang (kode_domba, bobot, updated_at) VALUES (OLD.kode_domba, OLD.bobot, OLD.updated_at);
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historytimbang`
--

CREATE TABLE `historytimbang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_domba` varchar(100) DEFAULT 'text',
  `bobot` smallint(6) DEFAULT 12,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_dombas`
--

CREATE TABLE `jenis_dombas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_domba` varchar(60) DEFAULT 'text',
  `kode` varchar(10) DEFAULT 'text',
  `gambar` text DEFAULT 'text',
  `urutan` smallint(6) DEFAULT 12,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_dombas`
--

INSERT INTO `jenis_dombas` (`id`, `jenis_domba`, `kode`, `gambar`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 'Batur', 'A', '1694026269.jfif', 1, NULL, NULL),
(2, 'Taxel', 'B', '1694026324.jfif', 2, NULL, NULL),
(3, 'Sopas', 'C', '1694026435.jfif', 3, NULL, NULL),
(4, 'Merino', 'D', '1694026269.jfif', 4, NULL, NULL),
(5, 'Dormas Super', 'E', '1694026269.jfif', 5, NULL, NULL),
(6, 'Crossing Dormas', 'F', '1694026269.jfif', 6, NULL, NULL),
(7, 'Lokal', 'G', '1694026269.jfif', 7, NULL, NULL),
(8, 'Crossing Lokal', 'H', '1694026269.jfif', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_plasma` bigint(20) UNSIGNED DEFAULT 12,
  `no_kamar` smallint(6) DEFAULT 12,
  `status` enum('Tersedia','Tidak tersedia') NOT NULL,
  `waktu_kembali_tersedia` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kamars`
--

INSERT INTO `kamars` (`id`, `id_plasma`, `no_kamar`, `status`, `waktu_kembali_tersedia`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tidak tersedia', NULL, NULL, NULL),
(2, 1, 2, 'Tidak tersedia', NULL, NULL, NULL),
(3, 1, 3, 'Tidak tersedia', '2023-10-19 04:22:15', NULL, NULL),
(4, 1, 4, 'Tidak tersedia', NULL, NULL, NULL),
(5, 2, 1, 'Tidak tersedia', NULL, NULL, NULL),
(6, 2, 2, 'Tidak tersedia', NULL, NULL, NULL),
(7, 2, 3, 'Tidak tersedia', NULL, NULL, NULL),
(8, 2, 4, 'Tidak tersedia', NULL, NULL, NULL),
(9, 3, 1, 'Tidak tersedia', NULL, NULL, NULL),
(10, 3, 2, 'Tidak tersedia', NULL, NULL, NULL),
(11, 3, 3, 'Tidak tersedia', NULL, NULL, NULL),
(12, 3, 4, 'Tidak tersedia', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_beranda` varchar(255) DEFAULT NULL,
  `deskripsi_beranda` varchar(255) DEFAULT NULL,
  `deskripsi_tentangkami` varchar(255) DEFAULT NULL,
  `deskripsi_footer` varchar(255) DEFAULT NULL,
  `nomor_telepon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `judul_beranda`, `deskripsi_beranda`, `deskripsi_tentangkami`, `deskripsi_footer`, `nomor_telepon`, `email`, `instagram`, `tiktok`, `created_at`, `updated_at`) VALUES
(1, 'CV SULTAN FARM JEMBER', 'TEMUKAN DOMBA SESUAI KEINGINAN ANDA DI SINI, Dapatkan berbagai macam pilihan domba sesuai dengan kriteria domba yang Anda cari', 'CV Sultan Farm Jember merupakan PUSAT PETERNAKAN DOMBA yang menyediakan domba dengan berbagai macam jenis domba yang diinginkan.', 'CV Sultan Farm Jember merupakan PUSAT PETERNAKAN DOMBA TERBAIK. Dan tempat untuk membeli domba terpercaya', '6282231931510', 'cvsultanfarm4@gmail.com', 'https://www.instagram.com/sultanfarm2_/', 'https://www.tiktok.com/@sultanfarm.plasma2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_11_032549_create_pakets_table', 1),
(7, '2023_08_21_043251_create_customers_table', 1),
(8, '2023_08_21_183317_create_plasmas_table', 1),
(9, '2023_08_22_040413_create_suppliers_table', 1),
(10, '2023_08_28_071739_create_kamars_table', 1),
(11, '2023_08_29_163805_create_jenis_dombas_table', 1),
(12, '2023_08_29_203331_create_dombas_table', 1),
(13, '2023_08_29_203524_create_pembelians_table', 1),
(14, '2023_08_29_203531_create_detail_pembelians_table', 1),
(15, '2023_08_29_203537_create_penjualans_table', 1),
(16, '2023_08_29_203544_create_detail_penjualans_table', 1),
(17, '2023_09_21_045315_create_landing_pages_table', 1),
(18, '2023_09_25_080558_create_breedings_table', 1),
(19, '2023_09_28_053052_create_historytimbang_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(100) DEFAULT 'text',
  `harga` int(10) UNSIGNED DEFAULT 12,
  `keterangan` text DEFAULT 'text',
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pakets`
--

INSERT INTO `pakets` (`id`, `nama_paket`, `harga`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Paket Breeding VIP', 29000000, 'Paket ini berisikan domba berjumlah 12 dengan jenis dormas super', 'breedingvip.jpeg', '2023-10-18 04:07:06', '2023-10-18 04:07:06'),
(2, 'Paket Breeding Medium', 18000000, 'Paket breeding medium merupakan paket yang berisikan 8 jenis domba dormas yang siap untuk dikembang biakkan', 'breedingdormas.jpeg', '2023-10-18 05:52:27', '2023-10-19 05:52:27'),
(3, 'Paket Breeding Ekonomis', 10000000, 'Paket breeding ekonomis merupakan paket yang berisikan 5 jenis domba dormas yang siap untuk dikembang biakkan', 'ekonomis.jpeg', '2023-10-18 05:52:27', '2023-10-18 06:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelians`
--

CREATE TABLE `pembelians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pembelian` varchar(20) DEFAULT NULL,
  `tgl_pembelian` date NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `id_user` bigint(20) UNSIGNED DEFAULT 12,
  `id_supplier` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualans`
--

CREATE TABLE `penjualans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_penjualan` varchar(20) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `akad` varchar(255) DEFAULT NULL,
  `status` enum('Diajukan','Diproses','Selesai','Ditolak') NOT NULL,
  `total` int(10) UNSIGNED DEFAULT 0,
  `id_kamar` bigint(20) UNSIGNED DEFAULT 12,
  `id_paket` bigint(20) UNSIGNED DEFAULT 12,
  `id_user` bigint(20) UNSIGNED DEFAULT 12,
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\customer', 5, 'customer login', '7ce5346e0d8d845706828a53ec8bc35945ef996ee26efc9d1bfbcf9ec237f365', '[\"*\"]', NULL, NULL, '2023-10-18 04:01:39', '2023-10-18 04:01:39'),
(2, 'App\\Models\\customer', 3, 'customer login', 'ddef1352f099dc7f084685fd10f8d7b995c87a1d7318ef95b274b30202805d62', '[\"*\"]', NULL, NULL, '2023-10-18 04:13:22', '2023-10-18 04:13:22'),
(3, 'App\\Models\\customer', 3, 'customer login', 'dd01f0d52e08647c2ebcf1ff3aed119b8d2c21a9720e0f9995e292b38e50169f', '[\"*\"]', NULL, NULL, '2023-10-18 04:13:23', '2023-10-18 04:13:23'),
(4, 'App\\Models\\customer', 3, 'customer login', '3ae2ba94fbc620e8e2b3e1aad9f7c8b6e44f1cdf28d55f4fd99332fa491dff6b', '[\"*\"]', NULL, NULL, '2023-10-18 16:17:32', '2023-10-18 16:17:32'),
(5, 'App\\Models\\customer', 3, 'customer login', 'f4ddb892a8e6a4a65a05b637350543df555073a35fc6d7b61ba97e32be742fb8', '[\"*\"]', NULL, NULL, '2023-10-18 16:17:34', '2023-10-18 16:17:34'),
(6, 'App\\Models\\customer', 3, 'customer login', 'd17f4d010f4e496414c741cc08b5080f6b5f1627af266e3ab52434ada3ebf893', '[\"*\"]', NULL, NULL, '2023-10-18 16:42:14', '2023-10-18 16:42:14'),
(7, 'App\\Models\\customer', 3, 'customer login', '71d28def1ccbb804311a025683eb36616ef8347814ea78c8df571f421e1618a5', '[\"*\"]', NULL, NULL, '2023-10-18 16:42:16', '2023-10-18 16:42:16'),
(8, 'App\\Models\\customer', 5, 'customer login', '9249088e1540e6fcc422957c90612a2e95c4e717093b3f459bcd3ac9ddfd8745', '[\"*\"]', NULL, NULL, '2023-10-19 06:23:09', '2023-10-19 06:23:09'),
(9, 'App\\Models\\customer', 7, 'customer login', '1b6c8fa2d3004012911fe22acc335e77ce486935a520e6d4f9222c9698d51b7c', '[\"*\"]', NULL, NULL, '2023-10-19 06:36:56', '2023-10-19 06:36:56'),
(10, 'App\\Models\\customer', 7, 'customer login', '0c785127be48822d97e084de032a88e6d6785be67ae8954f07ec2d83f2787fde', '[\"*\"]', NULL, NULL, '2023-10-19 06:36:57', '2023-10-19 06:36:57'),
(11, 'App\\Models\\customer', 7, 'customer login', '494a8a44fc5733bb86db864e35bac7fae63ed0835290511936dbaf0d974f278b', '[\"*\"]', NULL, NULL, '2023-10-19 07:36:13', '2023-10-19 07:36:13'),
(12, 'App\\Models\\customer', 7, 'customer login', '565b329ee2b7ebeae33aa9d83421325ab6340e5be579d36edd6fbd8b11a12c87', '[\"*\"]', NULL, NULL, '2023-10-19 08:37:19', '2023-10-19 08:37:19'),
(13, 'App\\Models\\customer', 7, 'customer login', 'fc92ef91e85d5c8e1995d56915dda7769efe6bc5881c835d0c86b8564d30f954', '[\"*\"]', NULL, NULL, '2023-10-19 08:37:20', '2023-10-19 08:37:20'),
(14, 'App\\Models\\customer', 7, 'customer login', '08239b45e139d0e7f81b8936f3408049b7e80e058021ada1f5cf551ed55da8fd', '[\"*\"]', NULL, NULL, '2023-10-20 07:46:02', '2023-10-20 07:46:02'),
(15, 'App\\Models\\customer', 7, 'customer login', 'f9957c9adfc945a6d874635d2e3ac684d78ca4ae3fa74b8a4a6b1bdd3bd2c48e', '[\"*\"]', NULL, NULL, '2023-10-20 07:46:03', '2023-10-20 07:46:03'),
(16, 'App\\Models\\customer', 8, 'customer login', '626b3eea5309875fa838de4547bfa9a3b63e0ebefc0fedcbe701dd404edb720a', '[\"*\"]', NULL, NULL, '2023-10-21 08:44:56', '2023-10-21 08:44:56'),
(17, 'App\\Models\\customer', 8, 'customer login', '23041a77d0803ee6642d3b169919dee8a8b80e97d98ede414f4303230b5ce893', '[\"*\"]', NULL, NULL, '2023-10-21 08:44:57', '2023-10-21 08:44:57'),
(18, 'App\\Models\\customer', 8, 'customer login', 'a6cf3586f8dd77a7abbb31c2145ff68818b40686b8504b078cba261ea1c02dde', '[\"*\"]', NULL, NULL, '2023-10-21 08:45:43', '2023-10-21 08:45:43'),
(19, 'App\\Models\\customer', 8, 'customer login', '2fa88b2129319a50f8df3191961365fc76e31d4773c3b1e9701dfd6a71d921a9', '[\"*\"]', NULL, NULL, '2023-10-21 08:45:43', '2023-10-21 08:45:43'),
(20, 'App\\Models\\customer', 7, 'customer login', 'c36ddb7aff2a25b546dfef062a6161e3204e63a5f71fb547b7b5f58e86b7d57c', '[\"*\"]', NULL, NULL, '2023-10-21 08:47:32', '2023-10-21 08:47:32'),
(21, 'App\\Models\\customer', 8, 'customer login', 'ce01e94d9c7225db23d01ee786f729483d684e17a8ea61b87433d536efbc7885', '[\"*\"]', NULL, NULL, '2023-10-21 08:50:31', '2023-10-21 08:50:31'),
(22, 'App\\Models\\customer', 8, 'customer login', '540be4b87c66db82dd240d864579d46c12b29d1fa4d5944a5ae63783b18ba4a4', '[\"*\"]', NULL, NULL, '2023-10-21 08:50:32', '2023-10-21 08:50:32'),
(23, 'App\\Models\\customer', 8, 'customer login', 'c4a5634bc23a37d85eb39a27b0014d8e5306d95d1720bb38005dae14ac8c3a69', '[\"*\"]', NULL, NULL, '2023-10-21 08:52:32', '2023-10-21 08:52:32'),
(24, 'App\\Models\\customer', 8, 'customer login', '8bb6d8f89bb3171ff065b360bd3940f4c49008177bf78378969745673933b42b', '[\"*\"]', NULL, NULL, '2023-10-21 08:52:33', '2023-10-21 08:52:33'),
(25, 'App\\Models\\customer', 8, 'customer login', '7c4e8780a34c81f7bf81df0c7fb7f19b5ae63526edb08fe8a3a96ce2a1880045', '[\"*\"]', NULL, NULL, '2023-10-21 09:05:16', '2023-10-21 09:05:16'),
(26, 'App\\Models\\customer', 8, 'customer login', 'd46fdc8536a6191252379e3a501cbf37d4a8a602de17397821b97385ce1e0414', '[\"*\"]', NULL, NULL, '2023-10-21 09:05:18', '2023-10-21 09:05:18'),
(27, 'App\\Models\\customer', 8, 'customer login', '4af67cbaccb966996f79d341808f12518cc1464591172084f8c95f8650f4a32b', '[\"*\"]', NULL, NULL, '2023-10-21 09:06:00', '2023-10-21 09:06:00'),
(28, 'App\\Models\\customer', 8, 'customer login', '4bfa8470234e280b4945fe2baa2097fed11b1b2cbc3f9b464c3726fb1cc3ff9c', '[\"*\"]', NULL, NULL, '2023-10-21 09:06:00', '2023-10-21 09:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `plasmas`
--

CREATE TABLE `plasmas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_plasma` varchar(100) DEFAULT 'text',
  `alamat_plasma` text DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plasmas`
--

INSERT INTO `plasmas` (`id`, `nama_plasma`, `alamat_plasma`, `created_at`, `updated_at`) VALUES
(1, 'Plasma 1', ' RPRP+V5H, Jambutan, Antirogo, Kec. Sumbersari, Kabupaten Jember, Jawa Timur 68124', '2023-10-18 04:21:10', '2023-10-18 04:21:10'),
(2, 'Plasma 2', 'Jl. Kaliurang, Kec. Sumbersari, Kab. Jember', NULL, NULL),
(3, 'Plasma 3', 'Jl. Mawar, Kec. Bangsalsari, Kab. Jember, Jawa Timur', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) DEFAULT 'text',
  `no_hp` varchar(13) DEFAULT 'text',
  `alamat` varchar(100) DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','pemilik') NOT NULL,
  `nip` varchar(20) DEFAULT '',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `no_telp`, `alamat`, `jenis_kelamin`, `email`, `role`, `nip`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Sultan Farm', NULL, NULL, 'Laki-laki', 'admin@gmail.com', 'admin', '', NULL, '$2y$10$qgbsGdmXsVTN2zzUBhdCHeIKuoDpXCSw.PnwEg.fXwf04YRDeCnJm', NULL, NULL, NULL),
(2, 'Pemilik Sultan Farm', NULL, NULL, 'Laki-laki', 'pemilik@gmail.com', 'pemilik', '', NULL, '$2y$10$NkAyO.gB.6kwclOoQbDF0OppQ53WMgvYCP4R1XZVLPNpVior8KNP.', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breedings`
--
ALTER TABLE `breedings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pembelians`
--
ALTER TABLE `detail_pembelians`
  ADD KEY `detail_pembelians_id_pembelian_foreign` (`id_pembelian`),
  ADD KEY `detail_pembelians_id_domba_foreign` (`id_domba`);

--
-- Indexes for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  ADD KEY `detail_penjualans_id_penjualan_foreign` (`id_penjualan`),
  ADD KEY `detail_penjualans_id_domba_foreign` (`id_domba`);

--
-- Indexes for table `dombas`
--
ALTER TABLE `dombas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dombas_id_kamar_foreign` (`id_kamar`),
  ADD KEY `dombas_id_jenis_foreign` (`id_jenis`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `historytimbang`
--
ALTER TABLE `historytimbang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_dombas`
--
ALTER TABLE `jenis_dombas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kamars_id_plasma_foreign` (`id_plasma`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembelians_id_user_foreign` (`id_user`),
  ADD KEY `pembelians_id_supplier_foreign` (`id_supplier`);

--
-- Indexes for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penjualans_id_kamar_foreign` (`id_kamar`),
  ADD KEY `penjualans_id_paket_foreign` (`id_paket`),
  ADD KEY `penjualans_id_user_foreign` (`id_user`),
  ADD KEY `penjualans_id_customer_foreign` (`id_customer`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plasmas`
--
ALTER TABLE `plasmas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `breedings`
--
ALTER TABLE `breedings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dombas`
--
ALTER TABLE `dombas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historytimbang`
--
ALTER TABLE `historytimbang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_dombas`
--
ALTER TABLE `jenis_dombas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `plasmas`
--
ALTER TABLE `plasmas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pembelians`
--
ALTER TABLE `detail_pembelians`
  ADD CONSTRAINT `detail_pembelians_id_domba_foreign` FOREIGN KEY (`id_domba`) REFERENCES `dombas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_pembelians_id_pembelian_foreign` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelians` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  ADD CONSTRAINT `detail_penjualans_id_domba_foreign` FOREIGN KEY (`id_domba`) REFERENCES `dombas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_penjualans_id_penjualan_foreign` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dombas`
--
ALTER TABLE `dombas`
  ADD CONSTRAINT `dombas_id_jenis_foreign` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_dombas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dombas_id_kamar_foreign` FOREIGN KEY (`id_kamar`) REFERENCES `kamars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kamars`
--
ALTER TABLE `kamars`
  ADD CONSTRAINT `kamars_id_plasma_foreign` FOREIGN KEY (`id_plasma`) REFERENCES `plasmas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembelians`
--
ALTER TABLE `pembelians`
  ADD CONSTRAINT `pembelians_id_supplier_foreign` FOREIGN KEY (`id_supplier`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembelians_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD CONSTRAINT `penjualans_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penjualans_id_kamar_foreign` FOREIGN KEY (`id_kamar`) REFERENCES `kamars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penjualans_id_paket_foreign` FOREIGN KEY (`id_paket`) REFERENCES `pakets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penjualans_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
