-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20250825.8f1adbf5cb
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2026 at 04:16 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'seragam_sekolah',
  `subkategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `harga_siswa` decimal(12,2) NOT NULL,
  `harga_umum` decimal(12,2) NOT NULL,
  `stok` int UNSIGNED NOT NULL DEFAULT '0',
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `kategori`, `subkategori`, `angkatan`, `deskripsi`, `harga_siswa`, `harga_umum`, `stok`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Seragam Jurusan RPL', 'seragam_jurusan', 'RPL', '2024-2027', 'Seragam jurusan Rekayasa Perangkat Lunak untuk angkatan 2024-2027.', 185000.00, 210000.00, 24, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(2, 'Seragam Jurusan TKJ', 'seragam_jurusan', 'TKJ', '2024-2027', 'Seragam jurusan Teknik Komputer dan Jaringan untuk angkatan 2024-2027.', 185000.00, 210000.00, 20, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(3, 'Seragam Jurusan AKL', 'seragam_jurusan', 'AKL', '2024-2027', 'Seragam jurusan Akuntansi dan Keuangan Lembaga untuk angkatan 2024-2027.', 185000.00, 210000.00, 18, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(4, 'Seragam Jurusan RPL', 'seragam_jurusan', 'RPL', '2025-2028', 'Seragam jurusan Rekayasa Perangkat Lunak untuk angkatan 2025-2028.', 190000.00, 215000.00, 26, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(5, 'Seragam Jurusan TKJ', 'seragam_jurusan', 'TKJ', '2025-2028', 'Seragam jurusan Teknik Komputer dan Jaringan untuk angkatan 2025-2028.', 190000.00, 215000.00, 22, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(6, 'Seragam Jurusan AKL', 'seragam_jurusan', 'AKL', '2025-2028', 'Seragam jurusan Akuntansi dan Keuangan Lembaga untuk angkatan 2025-2028.', 190000.00, 215000.00, 20, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(7, 'Seragam Jurusan RPL', 'seragam_jurusan', 'RPL', '2026-2029', 'Seragam jurusan Rekayasa Perangkat Lunak untuk angkatan 2026-2029.', 195000.00, 220000.00, 28, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(8, 'Seragam Jurusan TKJ', 'seragam_jurusan', 'TKJ', '2026-2029', 'Seragam jurusan Teknik Komputer dan Jaringan untuk angkatan 2026-2029.', 195000.00, 220000.00, 24, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(9, 'Seragam Jurusan AKL', 'seragam_jurusan', 'AKL', '2026-2029', 'Seragam jurusan Akuntansi dan Keuangan Lembaga untuk angkatan 2026-2029.', 195000.00, 220000.00, 22, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(10, 'Baju Seragam Olahraga', 'seragam_sekolah', 'Olahraga', NULL, 'Baju olahraga resmi sekolah.', 85000.00, 100000.00, 40, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(11, 'Baju Seragam Putih Abu', 'seragam_sekolah', 'Putih Abu', NULL, 'Seragam putih abu untuk kegiatan belajar harian.', 135000.00, 155000.00, 36, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(12, 'Baju Seragam Pramuka', 'seragam_sekolah', 'Pramuka', NULL, 'Seragam pramuka lengkap sekolah.', 125000.00, 145000.00, 32, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(13, 'Baju Seragam Batik', 'seragam_sekolah', 'Batik', NULL, 'Baju batik resmi sekolah.', 140000.00, 160000.00, 30, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(14, 'Baju Seragam Muslim', 'seragam_sekolah', 'Muslim', NULL, 'Seragam muslim sekolah untuk siswa.', 150000.00, 170000.00, 28, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(15, 'Topi Sekolah', 'atribut_sekolah', 'Topi', NULL, 'Topi sekolah resmi.', 30000.00, 38000.00, 45, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(16, 'Dasi Sekolah', 'atribut_sekolah', 'Dasi', NULL, 'Dasi harian sekolah.', 20000.00, 26000.00, 50, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(17, 'Ikat Pinggang Sekolah', 'atribut_sekolah', 'Ikat Pinggang', NULL, 'Ikat pinggang seragam sekolah.', 28000.00, 35000.00, 42, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(18, 'Badge Logo Sekolah', 'atribut_sekolah', 'Badge', NULL, 'Badge logo sekolah untuk seragam.', 12000.00, 18000.00, 60, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` bigint UNSIGNED NOT NULL,
  `pesanan_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `pesanan_id`, `barang_id`, `qty`, `harga`, `subtotal`) VALUES
(1, 1, 2, 1, 185000.00, 185000.00),
(2, 1, 18, 2, 12000.00, 24000.00),
(3, 2, 10, 1, 85000.00, 85000.00),
(4, 3, 4, 1, 190000.00, 190000.00),
(5, 3, 16, 1, 20000.00, 20000.00),
(6, 4, 11, 1, 135000.00, 135000.00),
(7, 4, 17, 1, 28000.00, 28000.00),
(8, 5, 12, 1, 125000.00, 125000.00),
(9, 5, 15, 1, 30000.00, 30000.00),
(10, 6, 9, 1, 220000.00, 220000.00),
(11, 6, 13, 1, 160000.00, 160000.00),
(12, 7, 1, 1, 185000.00, 185000.00),
(13, 7, 18, 1, 12000.00, 12000.00),
(14, 8, 14, 1, 170000.00, 170000.00),
(15, 9, 15, 1, 30000.00, 30000.00),
(16, 9, 16, 1, 20000.00, 20000.00),
(17, 10, 5, 1, 190000.00, 190000.00),
(18, 10, 10, 1, 85000.00, 85000.00),
(19, 11, 18, 1, 12000.00, 12000.00);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_21_000001_create_koperasi_tables', 1),
(5, '2026_05_23_200000_add_kategori_fields_to_barang_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint UNSIGNED NOT NULL,
  `pesanan_id` bigint UNSIGNED NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `tanggal_pembayaran` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `pesanan_id`, `metode_pembayaran`, `bukti_pembayaran`, `status_pembayaran`, `tanggal_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 2, 'qris', NULL, 'pending', '2026-05-21 13:07:44', '2026-05-21 06:07:44', '2026-05-21 06:07:44'),
(2, 3, 'transfer', NULL, 'pending', '2026-05-22 13:07:44', '2026-05-22 06:07:44', '2026-05-22 06:07:44'),
(3, 5, 'cash', NULL, 'diterima', '2026-05-19 13:07:44', '2026-05-19 06:07:44', '2026-05-19 06:07:44'),
(4, 6, 'transfer', NULL, 'diterima', '2026-05-20 13:07:44', '2026-05-20 06:07:44', '2026-05-20 06:07:44'),
(5, 7, 'qris', NULL, 'diterima', '2026-05-16 13:07:44', '2026-05-16 06:07:44', '2026-05-16 06:07:44'),
(6, 8, 'cash', NULL, 'diterima', '2026-05-13 13:07:44', '2026-05-13 06:07:44', '2026-05-13 06:07:44'),
(7, 9, 'transfer', NULL, 'ditolak', '2026-05-18 13:07:44', '2026-05-18 06:07:44', '2026-05-18 06:07:44'),
(8, 10, 'transfer', NULL, 'diterima', '2026-05-09 13:07:45', '2026-05-09 06:07:45', '2026-05-09 06:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nomor_pesanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_harga` decimal(12,2) NOT NULL,
  `status_pesanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'menunggu_pembayaran',
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `user_id`, `nomor_pesanan`, `total_harga`, `status_pesanan`, `metode_pembayaran`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 2, 'KOP-SEED-0001', 209000.00, 'menunggu_pembayaran', 'transfer', 'Ambil saat istirahat kedua.', '2026-05-22 06:07:44', '2026-05-22 06:07:44'),
(2, 3, 'KOP-SEED-0002', 85000.00, 'menunggu_verifikasi', 'qris', NULL, '2026-05-21 06:07:44', '2026-05-21 06:07:44'),
(3, 4, 'KOP-SEED-0003', 210000.00, 'menunggu_verifikasi', 'transfer', 'Mohon pisahkan dengan atribut.', '2026-05-22 06:07:44', '2026-05-22 06:07:44'),
(4, 2, 'KOP-SEED-0004', 163000.00, 'menunggu_pembayaran', 'cash', NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(5, 5, 'KOP-SEED-0005', 155000.00, 'diproses', 'cash', NULL, '2026-05-19 06:07:44', '2026-05-19 06:07:44'),
(6, 6, 'KOP-SEED-0006', 380000.00, 'diproses', 'transfer', 'Untuk anak kelas X.', '2026-05-20 06:07:44', '2026-05-20 06:07:44'),
(7, 3, 'KOP-SEED-0007', 197000.00, 'selesai', 'qris', NULL, '2026-05-16 06:07:44', '2026-05-16 06:07:44'),
(8, 7, 'KOP-SEED-0008', 170000.00, 'selesai', 'cash', NULL, '2026-05-13 06:07:44', '2026-05-13 06:07:44'),
(9, 4, 'KOP-SEED-0009', 50000.00, 'ditolak', 'transfer', 'Bukti transfer tidak terbaca.', '2026-05-18 06:07:44', '2026-05-18 06:07:44'),
(10, 5, 'KOP-SEED-0010', 275000.00, 'selesai', 'transfer', NULL, '2026-05-09 06:07:45', '2026-05-09 06:07:45'),
(11, 3, 'KOP-20260523-0001', 12000.00, 'menunggu_pembayaran', 'transfer', NULL, '2026-05-23 07:59:30', '2026-05-23 07:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CdGtKtrrK0rbjiHhQGXUYv5nE47bkmZTLMSFMoJj', NULL, '127.0.0.1', 'Codex local server discovery', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkoybUU5SndQOEZ5dHlJZkh4c1Zac3JLemNicFE1TVlSQlNENEt2UyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1779541730),
('wKGZs95iqpVCtTabRPM9CyAedxROJ0s3VrsbS1xm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1poaGF5aGxTWlJpakFhek5SWm5VdFkzVDRGT1JtY3dQaDJuYWZ1bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1779550673),
('Z1PPYVuOmhVZE6EeGhoj7A918R9TJXwrksu1Ax2q', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Codex/26.519.22136 Chrome/148.0.7778.97 Electron/42.1.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0dDTDlLa1BpaVExSWozSExKSUtOUDV3RmN4VklUQnp1ZWh5NTBPayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1779541729);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint UNSIGNED NOT NULL,
  `pesanan_id` bigint UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_bayar` decimal(12,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `pesanan_id`, `kode_transaksi`, `total_bayar`, `created_at`) VALUES
(1, 5, 'TRX-SEED-0005', 155000.00, '2026-05-19 06:07:44'),
(2, 6, 'TRX-SEED-0006', 380000.00, '2026-05-20 06:07:44'),
(3, 7, 'TRX-SEED-0007', 197000.00, '2026-05-16 06:07:44'),
(4, 8, 'TRX-SEED-0008', 170000.00, '2026-05-13 06:07:44'),
(5, 10, 'TRX-SEED-0010', 275000.00, '2026-05-09 06:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'umum',
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `kelas`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pak Rizki', 'admin', '$2y$12$RmEqKpkF.sQikv4MdwkIzedy/maMP63NJPb4lXDO0yQebh82lZnru', 'admin', NULL, NULL, '2026-05-23 06:07:42', '2026-05-23 06:07:42'),
(2, 'Ahmad Fauzi', 'siswa1', '$2y$12$.jyyb84vGAjiXzH7WlUXvOCHtB08LU0dmqexD8Q2OQrBfQ49fRXxy', 'siswa', 'XII TKJ 1', NULL, '2026-05-23 06:07:42', '2026-05-23 06:07:42'),
(3, 'Siti Nurhaliza', 'siswa2', '$2y$12$KAj4HnI1Q5L3pdyZuWsc1ORKGLZpAebxwAHQbwaEvJ02iEU61kOaW', 'siswa', 'XI RPL 2', NULL, '2026-05-23 06:07:42', '2026-05-23 06:07:42'),
(4, 'Dedi Pratama', 'siswa3', '$2y$12$NBIAtJWAMNarzqnCfjqfke0Tki2YK3j/JEFrLzkBgxyf4UUuhGlc2', 'siswa', 'X DKV 1', NULL, '2026-05-23 06:07:43', '2026-05-23 06:07:43'),
(5, 'Rina Melati', 'siswa4', '$2y$12$QAzJTNC3EnrhEd6.8NTV7OwFEDpJkOWwG.jYiCH1ZA2SeBRC15KyK', 'siswa', 'XII AKL 1', NULL, '2026-05-23 06:07:43', '2026-05-23 06:07:43'),
(6, 'Bapak Hendra', 'umum1', '$2y$12$dR8UIcQzM7ebm4B.N2jrBOw/SBaGlVncfbYqw2ZaWkzMnhTWDuhd6', 'umum', NULL, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44'),
(7, 'Ibu Wulan', 'umum2', '$2y$12$VwWI5t3BKOOfSOUwG8/Sd.AwilL/kP3mkLFX5GL6wigwu1ZemHQj.', 'umum', NULL, NULL, '2026-05-23 06:07:44', '2026-05-23 06:07:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pesanan_pesanan_id_foreign` (`pesanan_id`),
  ADD KEY `detail_pesanan_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_pesanan_id_foreign` (`pesanan_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pesanan_nomor_pesanan_unique` (`nomor_pesanan`),
  ADD KEY `pesanan_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksi_kode_transaksi_unique` (`kode_transaksi`),
  ADD KEY `transaksi_pesanan_id_foreign` (`pesanan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `detail_pesanan_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
