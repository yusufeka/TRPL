-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 Okt 2017 pada 16.35
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trpl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_barang` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `harga` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_cat` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_kategori` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_kayu` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `foto` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `deleted_at`, `created_at`, `updated_at`, `nama_barang`, `harga`, `id_cat`, `id_kategori`, `id_kayu`, `foto`) VALUES
(1, NULL, '2017-10-25 03:53:10', '2017-10-25 03:53:10', 'Lemari Anak - anak', 500, 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_promos`
--

CREATE TABLE `barang_promos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `harga_potongan` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_barang` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_promo` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `barang_promos`
--

INSERT INTO `barang_promos` (`id`, `deleted_at`, `created_at`, `updated_at`, `harga_potongan`, `id_barang`, `id_promo`) VALUES
(1, NULL, '2017-10-25 03:55:16', '2017-10-25 03:55:16', 100, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alamat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noTelepon` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `kepalaToko` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `branches`
--

INSERT INTO `branches` (`id`, `deleted_at`, `created_at`, `updated_at`, `alamat`, `noTelepon`, `kepalaToko`) VALUES
(1, NULL, '2017-10-18 20:56:12', '2017-10-18 20:56:12', 'JL Bondoyudo gagng buntu no 24 belakang kodim 0824', '085606485066', 'Ammad devi'),
(2, NULL, '2017-10-18 20:57:18', '2017-10-18 20:57:18', 'JL. Halmahera 1 No 7 Sumbersari jember', '08642743854', 'dheta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cats`
--

CREATE TABLE `cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cats`
--

INSERT INTO `cats` (`id`, `deleted_at`, `created_at`, `updated_at`, `cat`) VALUES
(1, NULL, '2017-10-25 03:51:38', '2017-10-25 03:51:38', 'Merah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '[]', '#000', NULL, '2017-10-03 03:33:15', '2017-10-26 05:36:49'),
(3, 'AdminCabang', '[]', '#fff', NULL, '2017-10-11 19:56:19', '2017-10-11 19:56:19'),
(4, 'Ahmad ', '[]', '#fff', '2017-10-25 02:49:35', '2017-10-11 21:41:29', '2017-10-25 02:49:35'),
(5, 'AdminPusat', '[]', '#fff', NULL, '2017-10-26 01:23:33', '2017-10-26 01:23:33'),
(6, 'AdminJepara', '[]', '#00f', NULL, '2017-10-26 01:24:28', '2017-10-26 01:24:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_orders`
--

CREATE TABLE `detail_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_barang` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_order` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `jumlah_barang` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_toko` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_jabatan` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`, `id_toko`, `id_jabatan`) VALUES
(1, 'kentus', 'Super Admin', 'Male', '8888888888', '', 'trpl.jbt@gmail.com', 1, 'Pune', 'Banyuwangi', 'About user / biography', '1997-08-22', '2017-10-03', '2017-10-03', '0.000', NULL, '2017-10-03 03:35:31', '2017-10-11 20:01:50', 1, 1),
(2, 'Agus Adi Saputro', 'AdminCabang', 'Male', '085606485066', '', 'admincabang@gmail.com', 3, 'Jember', 'Jember', 'About user / biography', '1997-08-22', '2017-01-01', '2017-01-02', '0.000', NULL, '2017-10-11 20:07:01', '2017-10-11 20:07:01', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatans`
--

CREATE TABLE `jabatans` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jabatan` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `deleted_at`, `created_at`, `updated_at`, `kategori`) VALUES
(1, NULL, '2017-10-25 03:51:53', '2017-10-25 03:51:53', 'Lemari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporans`
--

CREATE TABLE `laporans` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal` date NOT NULL DEFAULT '1970-01-01',
  `id_toko` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Hasyim\'s Meubel', '2017-10-03 03:33:19', '2017-10-11 21:49:47'),
(2, 'sitename_part1', '', 'Hasyim\'s Meubel', '2017-10-03 03:33:19', '2017-10-11 21:49:47'),
(3, 'sitename_part2', '', ' Report', '2017-10-03 03:33:19', '2017-10-11 21:49:47'),
(4, 'sitename_short', '', '', '2017-10-03 03:33:19', '2017-10-11 21:49:47'),
(5, 'site_description', '', 'Mebelku adalah mebel yang bekerja sama dengan pengrajin mabel asli Jepara', '2017-10-03 03:33:19', '2017-10-11 21:49:47'),
(6, 'sidebar_search', '', '1', '2017-10-03 03:33:19', '2017-10-11 21:49:47'),
(7, 'show_messages', '', '1', '2017-10-03 03:33:19', '2017-10-11 21:49:48'),
(8, 'show_notifications', '', '1', '2017-10-03 03:33:19', '2017-10-11 21:49:48'),
(9, 'show_tasks', '', '1', '2017-10-03 03:33:19', '2017-10-11 21:49:48'),
(10, 'show_rightsidebar', '', '1', '2017-10-03 03:33:20', '2017-10-11 21:49:48'),
(11, 'skin', '', 'skin-green', '2017-10-03 03:33:20', '2017-10-11 21:49:48'),
(12, 'layout', '', 'layout-top-nav', '2017-10-03 03:33:20', '2017-10-11 21:49:48'),
(13, 'default_email', '', 'test@example.com', '2017-10-03 03:33:20', '2017-10-11 21:49:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(2, 'Users', 'users', 'fa-group', 'module', 1, 1, '2017-10-03 03:33:14', '2017-10-25 03:38:59'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 2, '2017-10-03 03:33:14', '2017-10-25 03:38:59'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 3, '2017-10-03 03:33:14', '2017-10-25 03:38:59'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 4, '2017-10-03 03:33:14', '2017-10-25 03:38:59'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 5, '2017-10-03 03:33:14', '2017-10-25 03:39:00'),
(22, 'Tokos', 'tokos', 'fa fa-cube', 'module', 28, 4, '2017-10-25 03:07:34', '2017-10-25 03:39:15'),
(23, 'Jabatans', 'jabatans', 'fa fa-cube', 'module', 28, 5, '2017-10-25 03:12:33', '2017-10-25 03:39:20'),
(24, 'Promos', 'promos', 'fa fa-cube', 'module', 28, 6, '2017-10-25 03:16:23', '2017-10-25 03:39:20'),
(25, 'Barang_Promos', 'barang_promos', 'fa fa-cube', 'module', 28, 2, '2017-10-25 03:19:25', '2017-10-25 03:39:09'),
(26, 'Laporans', 'laporans', 'fa fa-cube', 'module', 28, 3, '2017-10-25 03:21:36', '2017-10-25 03:39:09'),
(27, 'Detail_Orders', 'detail_orders', 'fa fa-cube', 'module', 28, 1, '2017-10-25 03:26:15', '2017-10-25 03:39:05'),
(29, 'Barang', 'http://', 'fa-cube', 'custom', 0, 4, '2017-10-25 03:42:39', '2017-10-26 01:01:15'),
(30, 'Barang_Promos', 'barang_promos', 'fa-cube', 'module', 29, 1, '2017-10-25 03:42:55', '2017-10-25 03:43:39'),
(31, 'Barangs', 'barangs', 'fa-cube', 'module', 29, 2, '2017-10-25 03:43:04', '2017-10-25 03:43:39'),
(32, 'Laporan', 'http://', 'fa-cube', 'custom', 38, 1, '2017-10-25 03:44:35', '2017-10-26 00:58:54'),
(35, 'Wooods', 'wooods', 'fa-cube', 'module', 0, 2, '2017-10-25 03:51:17', '2017-10-26 01:01:15'),
(36, 'Promos', 'promos', 'fa-cube', 'module', 0, 3, '2017-10-25 03:54:25', '2017-10-26 01:01:15'),
(37, 'Team', 'http://', 'fa-cube', 'custom', 0, 1, '2017-10-26 00:56:44', '2017-10-26 01:06:22'),
(39, 'Users', 'users', 'fa-group', 'module', 37, 1, '2017-10-26 00:58:08', '2017-10-26 00:59:48'),
(40, 'Departments', 'departments', 'fa-tags', 'module', 37, 2, '2017-10-26 00:59:56', '2017-10-26 01:01:17'),
(41, 'Roles', 'roles', 'fa-user-plus', 'module', 37, 4, '2017-10-26 01:00:56', '2017-10-26 01:17:41'),
(42, 'Employees', 'employees', 'fa-group', 'module', 37, 3, '2017-10-26 01:17:33', '2017-10-26 01:17:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2017-10-03 03:32:42', '2017-10-03 03:33:20'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2017-10-03 03:32:44', '2017-10-03 03:33:20'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2017-10-03 03:32:47', '2017-10-03 03:33:20'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2017-10-03 03:32:48', '2017-10-03 03:33:20'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2017-10-03 03:32:51', '2017-10-03 03:33:20'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2017-10-03 03:32:57', '2017-10-03 03:33:20'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2017-10-03 03:33:01', '2017-10-03 03:33:20'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2017-10-03 03:33:02', '2017-10-03 03:33:20'),
(15, 'Products', 'Products', 'products', 'namaBarang', 'Product', 'ProductsController', 'fa-cube', 1, '2017-10-18 05:21:37', '2017-10-18 06:02:15'),
(16, 'Branches', 'Branches', 'branches', 'alamat', 'Branch', 'BranchesController', 'fa-cube', 1, '2017-10-18 05:51:09', '2017-10-18 06:03:28'),
(18, 'Product_Types', 'Product_Types', 'product_types', 'productType', 'Product_Type', 'Product_TypesController', 'fa-cube', 1, '2017-10-18 07:47:32', '2017-10-18 07:49:49'),
(19, 'Orders', 'Orders', 'orders', 'tanggal', 'Order', 'OrdersController', 'fa-cube', 1, '2017-10-18 07:51:48', '2017-10-18 07:54:22'),
(20, 'Kategoris', 'Kategoris', 'kategoris', 'kategori', 'Kategori', 'KategorisController', 'fa-cube', 1, '2017-10-25 01:40:43', '2017-10-25 01:43:30'),
(22, 'Cats', 'Cats', 'cats', 'cat', 'Cat', 'CatsController', 'fa-cube', 1, '2017-10-25 02:02:19', '2017-10-25 02:03:14'),
(23, 'Barangs', 'Barangs', 'barangs', 'nama_barang', 'Barang', 'BarangsController', 'fa-cube', 1, '2017-10-25 02:03:58', '2017-10-25 02:54:51'),
(35, 'Wooods', 'Wooods', 'wooods', 'woods_name', 'Woood', 'WooodsController', 'fa-cube', 1, '2017-10-25 02:51:59', '2017-10-25 02:53:12'),
(36, 'Status_Pengirims', 'Status_Pengirims', 'status_pengirims', 'status_pengirim', 'Status_Pengirim', 'Status_PengirimsController', 'fa-cube', 1, '2017-10-25 02:56:14', '2017-10-25 02:59:49'),
(37, 'Tokos', 'Tokos', 'tokos', 'toko', 'Toko', 'TokosController', 'fa-cube', 1, '2017-10-25 03:06:10', '2017-10-25 03:07:34'),
(38, 'Jabatans', 'Jabatans', 'jabatans', 'jabatan', 'Jabatan', 'JabatansController', 'fa-cube', 1, '2017-10-25 03:12:01', '2017-10-25 03:12:33'),
(39, 'Promos', 'Promos', 'promos', 'tgl_mulai', 'Promo', 'PromosController', 'fa-cube', 1, '2017-10-25 03:14:53', '2017-10-25 03:16:23'),
(40, 'Barang_Promos', 'Barang_Promos', 'barang_promos', 'harga_potongan', 'Barang_Promo', 'Barang_PromosController', 'fa-cube', 1, '2017-10-25 03:16:54', '2017-10-25 03:19:25'),
(41, 'Laporans', 'Laporans', 'laporans', 'tanggal', 'Laporan', 'LaporansController', 'fa-cube', 1, '2017-10-25 03:20:23', '2017-10-25 03:21:36'),
(42, 'Detail_Orders', 'Detail_Orders', 'detail_orders', 'id_barang', 'Detail_Order', 'Detail_OrdersController', 'fa-cube', 1, '2017-10-25 03:24:27', '2017-10-25 03:26:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2017-10-03 03:32:42', '2017-10-03 03:32:42'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2017-10-03 03:32:42', '2017-10-03 03:32:42'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2017-10-03 03:32:42', '2017-10-03 03:32:42'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2017-10-03 03:32:42', '2017-10-03 03:32:42'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2017-10-03 03:32:42', '2017-10-03 03:32:42'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2017-10-03 03:32:44', '2017-10-03 03:32:44'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-10-03 03:32:44', '2017-10-03 03:32:44'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2017-10-03 03:32:45', '2017-10-03 03:32:45'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-10-03 03:32:45', '2017-10-03 03:32:45'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2017-10-03 03:32:45', '2017-10-03 03:32:45'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-10-03 03:32:45', '2017-10-03 03:32:45'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2017-10-03 03:32:45', '2017-10-03 03:32:45'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2017-10-03 03:32:47', '2017-10-03 03:32:47'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2017-10-03 03:32:47', '2017-10-03 03:32:47'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2017-10-03 03:32:47', '2017-10-03 03:32:47'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-10-03 03:32:48', '2017-10-03 03:32:48'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2017-10-03 03:32:49', '2017-10-03 03:32:49'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2017-10-03 03:32:51', '2017-10-03 03:32:51'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2017-10-03 03:32:51', '2017-10-03 03:32:51'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2017-10-03 03:32:51', '2017-10-03 03:32:51'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2017-10-03 03:32:51', '2017-10-03 03:32:51'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2017-10-03 03:32:51', '2017-10-03 03:32:51'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2017-10-03 03:32:57', '2017-10-03 03:32:57'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2017-10-03 03:32:57', '2017-10-03 03:32:57'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2017-10-03 03:32:57', '2017-10-03 03:32:57'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2017-10-03 03:32:58', '2017-10-03 03:32:58'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2017-10-03 03:32:58', '2017-10-03 03:32:58'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-10-03 03:32:58', '2017-10-03 03:32:58'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2017-10-03 03:32:58', '2017-10-03 03:32:58'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2017-10-03 03:32:58', '2017-10-03 03:32:58'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2017-10-03 03:32:58', '2017-10-03 03:32:58'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2017-10-03 03:32:58', '2017-10-03 03:32:58'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2017-10-03 03:32:58', '2017-10-03 03:32:58'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2017-10-03 03:33:01', '2017-10-03 03:33:01'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2017-10-03 03:33:01', '2017-10-03 03:33:01'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2017-10-03 03:33:01', '2017-10-03 03:33:01'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2017-10-03 03:33:02', '2017-10-03 03:33:02'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2017-10-03 03:33:02', '2017-10-03 03:33:02'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2017-10-03 03:33:02', '2017-10-03 03:33:02'),
(58, 'namaBarang', 'Nama Barang', 15, 19, 0, '', 10, 50, 0, '', 0, '2017-10-18 05:22:42', '2017-10-18 05:22:42'),
(59, 'idjenisBarang', 'ID Jenis', 15, 13, 0, '', 1, 10, 0, '', 0, '2017-10-18 05:24:33', '2017-10-18 05:24:33'),
(60, 'harga', 'Harga', 15, 13, 0, '', 5, 10, 0, '', 0, '2017-10-18 05:25:21', '2017-10-18 05:25:21'),
(62, 'alamat', 'Alamat', 16, 1, 0, '', 10, 100, 0, '', 0, '2017-10-18 05:54:13', '2017-10-18 05:54:13'),
(63, 'noTelepon', 'No. Telepon', 16, 19, 0, '', 10, 13, 0, '', 0, '2017-10-18 05:55:15', '2017-10-18 05:55:15'),
(64, 'kepalaToko', 'Kepala Toko', 16, 19, 0, '', 1, 10, 0, '', 0, '2017-10-18 05:56:04', '2017-10-18 05:56:04'),
(68, 'productType', 'Product Type', 18, 19, 0, '', 5, 20, 0, '', 0, '2017-10-18 07:48:45', '2017-10-18 07:48:45'),
(69, 'idCat', 'cat', 18, 19, 0, '', 1, 10, 0, '', 0, '2017-10-18 07:49:16', '2017-10-18 07:49:16'),
(70, 'idKayu', 'kayu', 18, 19, 0, '', 1, 10, 0, '', 0, '2017-10-18 07:49:41', '2017-10-18 07:49:41'),
(71, 'tanggal', 'Tanggal Order', 19, 4, 0, '', 0, 0, 0, '', 0, '2017-10-18 07:53:11', '2017-10-18 07:53:11'),
(74, 'kategori', 'Kategori', 20, 19, 1, '', 0, 256, 1, '', 0, '2017-10-25 01:42:44', '2017-10-25 01:42:44'),
(76, 'cat', 'Cat', 22, 19, 1, '', 0, 256, 1, '', 0, '2017-10-25 02:03:00', '2017-10-25 02:03:00'),
(77, 'nama_barang', 'Nama Barang', 23, 19, 1, '', 0, 256, 1, '', 0, '2017-10-25 02:04:28', '2017-10-25 02:09:32'),
(78, 'harga', 'Harga', 23, 13, 0, '', 0, 11, 1, '', 0, '2017-10-25 02:05:20', '2017-10-25 04:19:24'),
(80, 'id_cat', 'Cat', 23, 7, 0, '', 0, 0, 1, '@cats', 0, '2017-10-25 02:11:25', '2017-10-25 02:11:25'),
(81, 'id_kategori', 'Kategori', 23, 7, 0, '', 0, 0, 1, '@kategoris', 0, '2017-10-25 02:12:29', '2017-10-25 02:12:29'),
(95, 'woods_name', 'woods name', 35, 19, 1, '', 0, 256, 1, '', 0, '2017-10-25 02:53:00', '2017-10-25 02:53:00'),
(96, 'id_kayu', 'Jenis Kayu', 23, 7, 0, '', 0, 0, 1, '@wooods', 0, '2017-10-25 02:54:31', '2017-10-25 02:54:31'),
(97, 'status_pengirim', 'Status Pengirim', 36, 19, 0, '', 0, 256, 1, '', 0, '2017-10-25 02:57:08', '2017-10-25 03:34:03'),
(98, 'tgl_pengiriman', 'Tanggal Pengiriman', 36, 4, 0, '', 0, 0, 1, '', 0, '2017-10-25 02:57:57', '2017-10-25 03:34:11'),
(99, 'tgl_diterima', 'Tanggal Diterima', 36, 4, 0, '', 0, 0, 1, '', 0, '2017-10-25 02:58:29', '2017-10-25 03:34:21'),
(100, 'id_barang', 'Id Barang', 36, 7, 0, '', 0, 0, 1, '@barangs', 0, '2017-10-25 02:59:36', '2017-10-25 02:59:36'),
(101, 'nama_pembeli', 'Nama Pembeli', 19, 19, 0, '', 0, 256, 0, '', 0, '2017-10-25 03:02:39', '2017-10-25 03:02:39'),
(102, 'alamat', 'Alamat', 19, 19, 1, '', 0, 256, 1, '', 0, '2017-10-25 03:02:59', '2017-10-25 03:02:59'),
(103, 'no_tlp', 'No Tlp', 19, 13, 1, '', 0, 11, 1, '', 0, '2017-10-25 03:03:38', '2017-10-25 03:03:38'),
(104, 'toko', 'Toko', 37, 19, 1, '', 0, 256, 1, '', 0, '2017-10-25 03:06:37', '2017-10-25 03:06:37'),
(105, 'alamat', 'Alamat', 37, 19, 1, '', 0, 256, 1, '', 0, '2017-10-25 03:07:08', '2017-10-25 03:07:08'),
(106, 'id_toko', 'Id Toko', 19, 7, 0, '', 0, 0, 1, '@tokos', 0, '2017-10-25 03:08:32', '2017-10-25 03:08:32'),
(108, 'jabatan', 'Jabatan', 38, 19, 1, '', 0, 256, 1, '', 0, '2017-10-25 03:12:19', '2017-10-25 03:12:19'),
(109, 'tgl_mulai', 'Tanggal Mulai', 39, 4, 0, '', 0, 0, 1, '', 0, '2017-10-25 03:15:25', '2017-10-25 03:15:25'),
(110, 'tgl_berakhir', 'Tanggal Berakhir', 39, 4, 0, '', 0, 0, 1, '', 0, '2017-10-25 03:15:53', '2017-10-25 03:16:15'),
(111, 'harga_potongan', 'Harga Potongan', 40, 13, 0, '', 0, 11, 1, '', 0, '2017-10-25 03:17:31', '2017-10-25 03:17:31'),
(112, 'id_barang', 'Id Barang', 40, 7, 0, '', 0, 0, 1, '@barangs', 0, '2017-10-25 03:18:22', '2017-10-25 03:18:22'),
(113, 'id_promo', 'Id Promo', 40, 7, 0, '', 0, 0, 1, '@promos', 0, '2017-10-25 03:19:10', '2017-10-25 03:19:10'),
(114, 'tanggal', 'Tanggal', 41, 4, 0, '', 0, 0, 1, '', 0, '2017-10-25 03:20:44', '2017-10-25 03:20:44'),
(115, 'id_toko', 'Id Toko', 41, 7, 0, '', 0, 0, 1, '@tokos', 0, '2017-10-25 03:21:19', '2017-10-25 03:21:19'),
(116, 'id_barang', 'Id Barang', 42, 7, 0, '', 0, 0, 1, '@barangs', 0, '2017-10-25 03:24:58', '2017-10-25 03:24:58'),
(117, 'id_order', 'Id Order', 42, 7, 0, '', 0, 0, 1, '@orders', 0, '2017-10-25 03:25:29', '2017-10-25 03:25:29'),
(118, 'jumlah_barang', 'Jumlah Barang', 42, 13, 0, '', 0, 11, 1, '', 0, '2017-10-25 03:26:06', '2017-10-25 03:26:06'),
(119, 'id_toko', 'Id Toko', 4, 7, 0, '', 0, 0, 1, '@tokos', 0, '2017-10-25 03:30:25', '2017-10-25 03:30:25'),
(120, 'id_jabatan', 'Id Jabatan', 4, 7, 0, '', 0, 0, 1, '@jabatans', 0, '2017-10-25 03:31:39', '2017-10-25 03:31:39'),
(121, 'foto', 'Foto', 23, 12, 0, '', 0, 0, 1, '', 0, '2017-10-25 03:49:34', '2017-10-25 03:49:34'),
(122, 'nama_promo', 'Nama Promo', 39, 19, 0, '', 0, 256, 1, '', 0, '2017-10-25 04:58:26', '2017-10-25 04:58:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(2, 'Checkbox', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(3, 'Currency', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(4, 'Date', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(5, 'Datetime', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(6, 'Decimal', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(7, 'Dropdown', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(8, 'Email', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(9, 'File', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(10, 'Float', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(11, 'HTML', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(12, 'Image', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(13, 'Integer', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(14, 'Mobile', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(15, 'Multiselect', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(16, 'Name', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(17, 'Password', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(18, 'Radio', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(19, 'String', '2017-10-03 03:32:39', '2017-10-03 03:32:39'),
(20, 'Taginput', '2017-10-03 03:32:40', '2017-10-03 03:32:40'),
(21, 'Textarea', '2017-10-03 03:32:40', '2017-10-03 03:32:40'),
(22, 'TextField', '2017-10-03 03:32:40', '2017-10-03 03:32:40'),
(23, 'URL', '2017-10-03 03:32:40', '2017-10-03 03:32:40'),
(24, 'Files', '2017-10-03 03:32:40', '2017-10-03 03:32:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal` date NOT NULL,
  `nama_pembeli` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `no_tlp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_toko` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `deleted_at`, `created_at`, `updated_at`, `tanggal`, `nama_pembeli`, `alamat`, `no_tlp`, `id_toko`) VALUES
(1, '2017-10-18 10:57:30', '2017-10-18 10:57:08', '2017-10-18 10:57:30', '2017-10-11', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2017-10-03 03:33:19', '2017-10-03 03:33:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `namaBarang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idjenisBarang` int(10) UNSIGNED NOT NULL,
  `harga` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `deleted_at`, `created_at`, `updated_at`, `namaBarang`, `idjenisBarang`, `harga`) VALUES
(1, NULL, '2017-10-18 20:52:54', '2017-10-18 20:53:06', 'kursi belajar', 1, 100000),
(2, NULL, '2017-10-18 20:59:21', '2017-10-18 20:59:21', 'kursi makan', 2, 100000),
(3, NULL, '2017-10-18 21:00:14', '2017-10-18 21:00:14', 'kursi goyang dumang', 3, 400000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_types`
--

CREATE TABLE `product_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `productType` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `idCat` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idKayu` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `product_types`
--

INSERT INTO `product_types` (`id`, `deleted_at`, `created_at`, `updated_at`, `productType`, `idCat`, `idKayu`) VALUES
(1, NULL, '2017-10-18 20:51:52', '2017-10-18 20:51:52', 'kursi', 'merah', 'jati'),
(2, NULL, '2017-10-18 20:53:38', '2017-10-18 20:53:38', 'meja ', 'coklat', 'sengon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promos`
--

CREATE TABLE `promos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tgl_mulai` date NOT NULL DEFAULT '1970-01-01',
  `tgl_berakhir` date NOT NULL DEFAULT '1970-01-01',
  `nama_promo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `promos`
--

INSERT INTO `promos` (`id`, `deleted_at`, `created_at`, `updated_at`, `tgl_mulai`, `tgl_berakhir`, `nama_promo`) VALUES
(1, NULL, '2017-10-25 03:54:44', '2017-10-25 03:54:44', '2017-10-24', '2017-10-28', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(2, 'ADMINISTRATOR', 'Admin', 'Administrator Cabang', 1, 1, '2017-10-11 19:55:33', '2017-10-11 19:54:49', '2017-10-11 19:55:33'),
(3, 'ADMIN_CABANG', 'Admin Cabang', 'user', 1, 3, NULL, '2017-10-11 19:58:06', '2017-10-11 19:58:06'),
(4, 'ADMIN_PUSAT', 'Admin Pusat', 'hak akses untuk administrator mebel pusat yang ada di Genteng Banyuwangi', 1, 5, NULL, '2017-10-26 01:26:48', '2017-10-26 01:27:21'),
(5, 'ADMIN_JEPARA', 'AdminJepara', 'pengrajin kayu dari jepara', 1, 6, NULL, '2017-10-26 01:34:51', '2017-10-26 01:35:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(2, 1, 2, 1, 1, 1, 1, '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(3, 1, 3, 1, 1, 1, 1, '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(4, 1, 4, 1, 1, 1, 1, '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(5, 1, 5, 1, 1, 1, 1, '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(6, 1, 6, 1, 1, 1, 1, '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(7, 1, 7, 1, 1, 1, 1, '2017-10-03 03:33:18', '2017-10-03 03:33:18'),
(8, 1, 8, 1, 1, 1, 1, '2017-10-03 03:33:18', '2017-10-03 03:33:18'),
(11, 2, 1, 1, 0, 0, 0, '2017-10-11 19:54:49', '2017-10-11 19:54:49'),
(12, 2, 2, 1, 0, 0, 0, '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(13, 2, 3, 1, 0, 0, 0, '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(14, 2, 4, 1, 0, 0, 0, '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(15, 2, 5, 1, 0, 0, 0, '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(16, 2, 6, 1, 0, 0, 0, '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(17, 2, 7, 1, 0, 0, 0, '2017-10-11 19:54:52', '2017-10-11 19:54:52'),
(18, 2, 8, 1, 0, 0, 0, '2017-10-11 19:54:52', '2017-10-11 19:54:52'),
(19, 3, 1, 0, 0, 0, 0, '2017-10-11 19:58:06', '2017-10-11 19:58:06'),
(20, 3, 2, 0, 0, 0, 0, '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(21, 3, 3, 0, 0, 0, 0, '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(22, 3, 4, 0, 0, 0, 0, '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(23, 3, 5, 0, 0, 0, 0, '2017-10-11 19:58:08', '2017-10-11 19:58:08'),
(24, 3, 6, 0, 0, 0, 0, '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(25, 3, 7, 0, 0, 0, 0, '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(26, 3, 8, 0, 0, 0, 0, '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(28, 1, 15, 1, 1, 1, 1, '2017-10-18 05:25:28', '2017-10-18 05:25:28'),
(29, 1, 16, 1, 1, 1, 1, '2017-10-18 05:56:09', '2017-10-18 05:56:09'),
(31, 1, 18, 1, 1, 1, 1, '2017-10-18 07:49:49', '2017-10-18 07:49:49'),
(32, 1, 19, 1, 1, 1, 1, '2017-10-18 07:54:22', '2017-10-18 07:54:22'),
(34, 3, 15, 0, 0, 0, 0, '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(35, 3, 16, 0, 0, 0, 0, '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(36, 3, 18, 0, 0, 0, 0, '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(37, 3, 19, 1, 1, 1, 1, '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(38, 1, 20, 1, 1, 1, 1, '2017-10-25 01:43:30', '2017-10-25 01:43:30'),
(39, 1, 22, 1, 1, 1, 1, '2017-10-25 02:03:14', '2017-10-25 02:03:14'),
(41, 1, 23, 1, 1, 1, 1, '2017-10-25 02:38:15', '2017-10-25 02:38:15'),
(46, 1, 35, 1, 1, 1, 1, '2017-10-25 02:53:12', '2017-10-25 02:53:12'),
(47, 1, 36, 1, 1, 1, 1, '2017-10-25 02:59:49', '2017-10-25 02:59:49'),
(48, 1, 37, 1, 1, 1, 1, '2017-10-25 03:07:34', '2017-10-25 03:07:34'),
(49, 1, 38, 1, 1, 1, 1, '2017-10-25 03:12:33', '2017-10-25 03:12:33'),
(50, 1, 39, 1, 1, 1, 1, '2017-10-25 03:16:23', '2017-10-25 03:16:23'),
(51, 1, 40, 1, 1, 1, 1, '2017-10-25 03:19:26', '2017-10-25 03:19:26'),
(52, 1, 41, 1, 1, 1, 1, '2017-10-25 03:21:36', '2017-10-25 03:21:36'),
(53, 1, 42, 1, 1, 1, 1, '2017-10-25 03:26:15', '2017-10-25 03:26:15'),
(54, 4, 1, 1, 0, 0, 0, '2017-10-26 01:26:48', '2017-10-26 01:26:48'),
(55, 4, 2, 1, 0, 0, 0, '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(56, 4, 3, 1, 0, 0, 0, '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(57, 4, 4, 1, 1, 1, 1, '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(58, 4, 5, 1, 0, 0, 0, '2017-10-26 01:26:50', '2017-10-26 01:26:50'),
(59, 4, 6, 1, 0, 0, 0, '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(60, 4, 7, 1, 0, 0, 0, '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(61, 4, 8, 1, 0, 0, 0, '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(62, 4, 15, 1, 0, 0, 0, '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(63, 4, 16, 1, 0, 0, 0, '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(64, 4, 18, 1, 0, 0, 0, '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(65, 4, 19, 1, 0, 0, 0, '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(66, 4, 20, 1, 0, 0, 0, '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(67, 4, 22, 1, 0, 0, 0, '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(68, 4, 23, 1, 0, 0, 0, '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(69, 4, 35, 1, 0, 0, 0, '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(70, 4, 36, 1, 0, 0, 0, '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(71, 4, 37, 1, 0, 0, 0, '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(72, 4, 38, 1, 0, 0, 0, '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(73, 4, 39, 1, 0, 0, 0, '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(74, 4, 40, 1, 0, 0, 0, '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(75, 4, 41, 1, 0, 0, 0, '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(76, 4, 42, 1, 0, 0, 0, '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(77, 5, 1, 1, 0, 0, 0, '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(78, 5, 2, 1, 0, 0, 0, '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(79, 5, 3, 1, 0, 0, 0, '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(80, 5, 4, 1, 0, 0, 0, '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(81, 5, 5, 1, 0, 0, 0, '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(82, 5, 6, 1, 0, 0, 0, '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(83, 5, 7, 1, 0, 0, 0, '2017-10-26 01:34:54', '2017-10-26 01:34:54'),
(84, 5, 8, 1, 0, 0, 0, '2017-10-26 01:34:54', '2017-10-26 01:34:54'),
(85, 5, 15, 1, 0, 0, 0, '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(86, 5, 16, 1, 0, 0, 0, '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(87, 5, 18, 1, 0, 0, 0, '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(88, 5, 19, 1, 0, 0, 0, '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(89, 5, 20, 1, 0, 0, 0, '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(90, 5, 22, 1, 0, 0, 0, '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(91, 5, 23, 1, 0, 0, 0, '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(92, 5, 35, 1, 0, 0, 0, '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(93, 5, 36, 1, 0, 0, 0, '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(94, 5, 37, 1, 0, 0, 0, '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(95, 5, 38, 1, 0, 0, 0, '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(96, 5, 39, 1, 0, 0, 0, '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(97, 5, 40, 1, 0, 0, 0, '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(98, 5, 41, 1, 0, 0, 0, '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(99, 5, 42, 1, 0, 0, 0, '2017-10-26 01:34:58', '2017-10-26 01:34:58'),
(100, 3, 23, 1, 1, 1, 1, '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(101, 3, 41, 1, 1, 1, 1, '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(102, 3, 42, 0, 0, 0, 0, '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(103, 3, 20, 0, 0, 0, 0, '2017-10-26 04:18:21', '2017-10-26 04:18:21'),
(104, 3, 22, 0, 0, 0, 0, '2017-10-26 04:18:21', '2017-10-26 04:18:21'),
(105, 3, 35, 0, 0, 0, 0, '2017-10-26 04:18:21', '2017-10-26 04:18:21'),
(106, 3, 36, 0, 0, 0, 0, '2017-10-26 04:18:21', '2017-10-26 04:18:21'),
(107, 3, 37, 0, 0, 0, 0, '2017-10-26 04:18:21', '2017-10-26 04:18:21'),
(108, 3, 38, 0, 0, 0, 0, '2017-10-26 04:18:21', '2017-10-26 04:18:21'),
(109, 3, 39, 0, 0, 0, 0, '2017-10-26 04:18:21', '2017-10-26 04:18:21'),
(110, 3, 40, 0, 0, 0, 0, '2017-10-26 04:18:21', '2017-10-26 04:18:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(2, 1, 2, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(3, 1, 3, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(4, 1, 4, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(5, 1, 5, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(6, 1, 6, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(7, 1, 7, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(8, 1, 8, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(9, 1, 9, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(10, 1, 10, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(11, 1, 11, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(12, 1, 12, 'write', '2017-10-03 03:33:15', '2017-10-03 03:33:15'),
(13, 1, 13, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(14, 1, 14, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(15, 1, 15, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(16, 1, 16, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(17, 1, 17, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(18, 1, 18, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(19, 1, 19, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(20, 1, 20, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(21, 1, 21, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(22, 1, 22, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(23, 1, 23, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(24, 1, 24, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(25, 1, 25, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(26, 1, 26, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(27, 1, 27, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(28, 1, 28, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(29, 1, 29, 'write', '2017-10-03 03:33:16', '2017-10-03 03:33:16'),
(30, 1, 30, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(31, 1, 31, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(32, 1, 32, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(33, 1, 33, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(34, 1, 34, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(35, 1, 35, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(36, 1, 36, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(37, 1, 37, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(38, 1, 38, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(39, 1, 39, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(40, 1, 40, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(41, 1, 41, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(42, 1, 42, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(43, 1, 43, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(44, 1, 44, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(45, 1, 45, 'write', '2017-10-03 03:33:17', '2017-10-03 03:33:17'),
(46, 1, 46, 'write', '2017-10-03 03:33:18', '2017-10-03 03:33:18'),
(47, 1, 47, 'write', '2017-10-03 03:33:18', '2017-10-03 03:33:18'),
(48, 1, 48, 'write', '2017-10-03 03:33:18', '2017-10-03 03:33:18'),
(49, 1, 49, 'write', '2017-10-03 03:33:18', '2017-10-03 03:33:18'),
(50, 1, 50, 'write', '2017-10-03 03:33:18', '2017-10-03 03:33:18'),
(51, 1, 51, 'write', '2017-10-03 03:33:18', '2017-10-03 03:33:18'),
(60, 2, 1, 'readonly', '2017-10-11 19:54:49', '2017-10-11 19:54:49'),
(61, 2, 2, 'readonly', '2017-10-11 19:54:49', '2017-10-11 19:54:49'),
(62, 2, 3, 'readonly', '2017-10-11 19:54:49', '2017-10-11 19:54:49'),
(63, 2, 4, 'readonly', '2017-10-11 19:54:49', '2017-10-11 19:54:49'),
(64, 2, 5, 'readonly', '2017-10-11 19:54:49', '2017-10-11 19:54:49'),
(65, 2, 6, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(66, 2, 7, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(67, 2, 8, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(68, 2, 9, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(69, 2, 10, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(70, 2, 11, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(71, 2, 12, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(72, 2, 13, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(73, 2, 14, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(74, 2, 15, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(75, 2, 16, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(76, 2, 17, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(77, 2, 18, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(78, 2, 19, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(79, 2, 20, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(80, 2, 21, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(81, 2, 22, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(82, 2, 23, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(83, 2, 24, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(84, 2, 25, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(85, 2, 26, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(86, 2, 27, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(87, 2, 28, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(88, 2, 29, 'readonly', '2017-10-11 19:54:50', '2017-10-11 19:54:50'),
(89, 2, 30, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(90, 2, 31, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(91, 2, 32, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(92, 2, 33, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(93, 2, 34, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(94, 2, 35, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(95, 2, 36, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(96, 2, 37, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(97, 2, 38, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(98, 2, 39, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(99, 2, 40, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(100, 2, 41, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(101, 2, 42, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(102, 2, 43, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(103, 2, 44, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(104, 2, 45, 'readonly', '2017-10-11 19:54:51', '2017-10-11 19:54:51'),
(105, 2, 46, 'readonly', '2017-10-11 19:54:52', '2017-10-11 19:54:52'),
(106, 2, 47, 'readonly', '2017-10-11 19:54:52', '2017-10-11 19:54:52'),
(107, 2, 48, 'readonly', '2017-10-11 19:54:52', '2017-10-11 19:54:52'),
(108, 2, 49, 'readonly', '2017-10-11 19:54:52', '2017-10-11 19:54:52'),
(109, 2, 50, 'readonly', '2017-10-11 19:54:52', '2017-10-11 19:54:52'),
(110, 2, 51, 'readonly', '2017-10-11 19:54:52', '2017-10-11 19:54:52'),
(111, 3, 1, 'readonly', '2017-10-11 19:58:06', '2017-10-11 19:58:06'),
(112, 3, 2, 'readonly', '2017-10-11 19:58:06', '2017-10-11 19:58:06'),
(113, 3, 3, 'readonly', '2017-10-11 19:58:06', '2017-10-11 19:58:06'),
(114, 3, 4, 'readonly', '2017-10-11 19:58:06', '2017-10-11 19:58:06'),
(115, 3, 5, 'readonly', '2017-10-11 19:58:06', '2017-10-11 19:58:06'),
(116, 3, 6, 'write', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(117, 3, 7, 'write', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(118, 3, 8, 'write', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(119, 3, 9, 'write', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(120, 3, 10, 'write', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(121, 3, 11, 'write', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(122, 3, 12, 'write', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(123, 3, 13, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(124, 3, 14, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(125, 3, 15, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(126, 3, 16, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(127, 3, 17, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(128, 3, 18, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(129, 3, 19, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(130, 3, 20, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(131, 3, 21, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(132, 3, 22, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(133, 3, 23, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(134, 3, 24, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(135, 3, 25, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(136, 3, 26, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(137, 3, 27, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(138, 3, 28, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(139, 3, 29, 'readonly', '2017-10-11 19:58:07', '2017-10-11 19:58:07'),
(140, 3, 30, 'readonly', '2017-10-11 19:58:08', '2017-10-11 19:58:08'),
(141, 3, 31, 'readonly', '2017-10-11 19:58:08', '2017-10-11 19:58:08'),
(142, 3, 32, 'readonly', '2017-10-11 19:58:08', '2017-10-11 19:58:08'),
(143, 3, 33, 'readonly', '2017-10-11 19:58:08', '2017-10-11 19:58:08'),
(144, 3, 34, 'readonly', '2017-10-11 19:58:08', '2017-10-11 19:58:08'),
(145, 3, 35, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(146, 3, 36, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(147, 3, 37, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(148, 3, 38, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(149, 3, 39, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(150, 3, 40, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(151, 3, 41, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(152, 3, 42, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(153, 3, 43, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(154, 3, 44, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(155, 3, 45, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(156, 3, 46, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(157, 3, 47, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(158, 3, 48, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(159, 3, 49, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(160, 3, 50, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(161, 3, 51, 'readonly', '2017-10-11 19:58:09', '2017-10-11 19:58:09'),
(168, 1, 58, 'write', '2017-10-18 05:22:43', '2017-10-18 05:22:43'),
(169, 1, 59, 'write', '2017-10-18 05:24:34', '2017-10-18 05:24:34'),
(170, 1, 60, 'write', '2017-10-18 05:25:22', '2017-10-18 05:25:22'),
(172, 1, 62, 'write', '2017-10-18 05:54:13', '2017-10-18 05:54:13'),
(173, 1, 63, 'write', '2017-10-18 05:55:16', '2017-10-18 05:55:16'),
(174, 1, 64, 'write', '2017-10-18 05:56:05', '2017-10-18 05:56:05'),
(178, 1, 68, 'write', '2017-10-18 07:48:46', '2017-10-18 07:48:46'),
(179, 1, 69, 'write', '2017-10-18 07:49:17', '2017-10-18 07:49:17'),
(180, 1, 70, 'write', '2017-10-18 07:49:42', '2017-10-18 07:49:42'),
(181, 1, 71, 'write', '2017-10-18 07:53:13', '2017-10-18 07:53:13'),
(184, 3, 58, 'write', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(185, 3, 59, 'write', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(186, 3, 60, 'write', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(187, 3, 62, 'invisible', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(188, 3, 63, 'invisible', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(189, 3, 64, 'invisible', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(190, 3, 68, 'write', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(191, 3, 69, 'write', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(192, 3, 70, 'write', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(193, 3, 71, 'write', '2017-10-18 10:47:59', '2017-10-18 10:47:59'),
(196, 1, 74, 'write', '2017-10-25 01:42:47', '2017-10-25 01:42:47'),
(198, 1, 76, 'write', '2017-10-25 02:03:02', '2017-10-25 02:03:02'),
(199, 1, 77, 'write', '2017-10-25 02:04:29', '2017-10-25 02:04:29'),
(200, 1, 78, 'write', '2017-10-25 02:05:21', '2017-10-25 02:05:21'),
(202, 1, 80, 'write', '2017-10-25 02:11:29', '2017-10-25 02:11:29'),
(203, 1, 81, 'write', '2017-10-25 02:12:32', '2017-10-25 02:12:32'),
(218, 1, 95, 'write', '2017-10-25 02:53:01', '2017-10-25 02:53:01'),
(219, 1, 96, 'write', '2017-10-25 02:54:33', '2017-10-25 02:54:33'),
(220, 1, 97, 'write', '2017-10-25 02:57:09', '2017-10-25 02:57:09'),
(221, 1, 98, 'write', '2017-10-25 02:57:58', '2017-10-25 02:57:58'),
(222, 1, 99, 'write', '2017-10-25 02:58:30', '2017-10-25 02:58:30'),
(223, 1, 100, 'write', '2017-10-25 02:59:38', '2017-10-25 02:59:38'),
(224, 1, 101, 'write', '2017-10-25 03:02:40', '2017-10-25 03:02:40'),
(225, 1, 102, 'write', '2017-10-25 03:03:01', '2017-10-25 03:03:01'),
(226, 1, 103, 'write', '2017-10-25 03:03:39', '2017-10-25 03:03:39'),
(227, 1, 104, 'write', '2017-10-25 03:06:38', '2017-10-25 03:06:38'),
(228, 1, 105, 'write', '2017-10-25 03:07:09', '2017-10-25 03:07:09'),
(230, 1, 108, 'write', '2017-10-25 03:12:21', '2017-10-25 03:12:21'),
(231, 1, 109, 'write', '2017-10-25 03:15:26', '2017-10-25 03:15:26'),
(232, 1, 110, 'write', '2017-10-25 03:15:54', '2017-10-25 03:15:54'),
(233, 1, 111, 'write', '2017-10-25 03:17:32', '2017-10-25 03:17:32'),
(234, 1, 112, 'write', '2017-10-25 03:18:24', '2017-10-25 03:18:24'),
(235, 1, 113, 'write', '2017-10-25 03:19:13', '2017-10-25 03:19:13'),
(236, 1, 114, 'write', '2017-10-25 03:20:45', '2017-10-25 03:20:45'),
(237, 1, 115, 'write', '2017-10-25 03:21:21', '2017-10-25 03:21:21'),
(238, 1, 116, 'write', '2017-10-25 03:25:01', '2017-10-25 03:25:01'),
(239, 1, 117, 'write', '2017-10-25 03:25:31', '2017-10-25 03:25:31'),
(240, 1, 118, 'write', '2017-10-25 03:26:07', '2017-10-25 03:26:07'),
(241, 1, 120, 'write', '2017-10-25 03:33:02', '2017-10-25 03:33:02'),
(242, 1, 121, 'write', '2017-10-25 03:49:35', '2017-10-25 03:49:35'),
(243, 1, 122, 'write', '2017-10-25 04:58:28', '2017-10-25 04:58:28'),
(244, 4, 1, 'readonly', '2017-10-26 01:26:48', '2017-10-26 01:26:48'),
(245, 4, 2, 'readonly', '2017-10-26 01:26:48', '2017-10-26 01:26:48'),
(246, 4, 3, 'readonly', '2017-10-26 01:26:48', '2017-10-26 01:26:48'),
(247, 4, 4, 'readonly', '2017-10-26 01:26:48', '2017-10-26 01:26:48'),
(248, 4, 5, 'readonly', '2017-10-26 01:26:48', '2017-10-26 01:26:48'),
(249, 4, 6, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(250, 4, 7, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(251, 4, 8, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(252, 4, 9, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(253, 4, 10, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(254, 4, 11, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(255, 4, 12, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(256, 4, 13, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(257, 4, 14, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(258, 4, 15, 'readonly', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(259, 4, 16, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(260, 4, 17, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(261, 4, 18, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(262, 4, 19, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(263, 4, 20, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(264, 4, 21, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(265, 4, 22, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(266, 4, 23, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(267, 4, 24, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(268, 4, 25, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(269, 4, 26, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(270, 4, 27, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(271, 4, 28, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(272, 4, 29, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(273, 4, 119, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(274, 4, 120, 'write', '2017-10-26 01:26:49', '2017-10-26 01:26:49'),
(275, 4, 30, 'readonly', '2017-10-26 01:26:50', '2017-10-26 01:26:50'),
(276, 4, 31, 'readonly', '2017-10-26 01:26:50', '2017-10-26 01:26:50'),
(277, 4, 32, 'readonly', '2017-10-26 01:26:50', '2017-10-26 01:26:50'),
(278, 4, 33, 'readonly', '2017-10-26 01:26:50', '2017-10-26 01:26:50'),
(279, 4, 34, 'readonly', '2017-10-26 01:26:50', '2017-10-26 01:26:50'),
(280, 4, 35, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(281, 4, 36, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(282, 4, 37, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(283, 4, 38, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(284, 4, 39, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(285, 4, 40, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(286, 4, 41, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(287, 4, 42, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(288, 4, 43, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(289, 4, 44, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(290, 4, 45, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(291, 4, 46, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(292, 4, 47, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(293, 4, 48, 'readonly', '2017-10-26 01:26:51', '2017-10-26 01:26:51'),
(294, 4, 49, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(295, 4, 50, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(296, 4, 51, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(297, 4, 58, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(298, 4, 59, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(299, 4, 60, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(300, 4, 62, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(301, 4, 63, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(302, 4, 64, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(303, 4, 68, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(304, 4, 69, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(305, 4, 70, 'readonly', '2017-10-26 01:26:52', '2017-10-26 01:26:52'),
(306, 4, 71, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(307, 4, 101, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(308, 4, 102, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(309, 4, 103, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(310, 4, 106, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(311, 4, 74, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(312, 4, 76, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(313, 4, 77, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(314, 4, 78, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(315, 4, 80, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(316, 4, 81, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(317, 4, 96, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(318, 4, 121, 'readonly', '2017-10-26 01:26:53', '2017-10-26 01:26:53'),
(319, 4, 95, 'readonly', '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(320, 4, 97, 'readonly', '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(321, 4, 98, 'readonly', '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(322, 4, 99, 'readonly', '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(323, 4, 100, 'readonly', '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(324, 4, 104, 'readonly', '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(325, 4, 105, 'readonly', '2017-10-26 01:26:54', '2017-10-26 01:26:54'),
(326, 4, 108, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(327, 4, 109, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(328, 4, 110, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(329, 4, 122, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(330, 4, 111, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(331, 4, 112, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(332, 4, 113, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(333, 4, 114, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(334, 4, 115, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(335, 4, 116, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(336, 4, 117, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(337, 4, 118, 'readonly', '2017-10-26 01:26:55', '2017-10-26 01:26:55'),
(338, 5, 1, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(339, 5, 2, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(340, 5, 3, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(341, 5, 4, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(342, 5, 5, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(343, 5, 6, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(344, 5, 7, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(345, 5, 8, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(346, 5, 9, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(347, 5, 10, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(348, 5, 11, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(349, 5, 12, 'readonly', '2017-10-26 01:34:51', '2017-10-26 01:34:51'),
(350, 5, 13, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(351, 5, 14, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(352, 5, 15, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(353, 5, 16, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(354, 5, 17, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(355, 5, 18, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(356, 5, 19, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(357, 5, 20, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(358, 5, 21, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(359, 5, 22, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(360, 5, 23, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(361, 5, 24, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(362, 5, 25, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(363, 5, 26, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(364, 5, 27, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(365, 5, 28, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(366, 5, 29, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(367, 5, 119, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(368, 5, 120, 'readonly', '2017-10-26 01:34:52', '2017-10-26 01:34:52'),
(369, 5, 30, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(370, 5, 31, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(371, 5, 32, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(372, 5, 33, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(373, 5, 34, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(374, 5, 35, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(375, 5, 36, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(376, 5, 37, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(377, 5, 38, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(378, 5, 39, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(379, 5, 40, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(380, 5, 41, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(381, 5, 42, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(382, 5, 43, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(383, 5, 44, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(384, 5, 45, 'readonly', '2017-10-26 01:34:53', '2017-10-26 01:34:53'),
(385, 5, 46, 'readonly', '2017-10-26 01:34:54', '2017-10-26 01:34:54'),
(386, 5, 47, 'readonly', '2017-10-26 01:34:54', '2017-10-26 01:34:54'),
(387, 5, 48, 'readonly', '2017-10-26 01:34:54', '2017-10-26 01:34:54'),
(388, 5, 49, 'readonly', '2017-10-26 01:34:54', '2017-10-26 01:34:54'),
(389, 5, 50, 'readonly', '2017-10-26 01:34:54', '2017-10-26 01:34:54'),
(390, 5, 51, 'readonly', '2017-10-26 01:34:54', '2017-10-26 01:34:54'),
(391, 5, 58, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(392, 5, 59, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(393, 5, 60, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(394, 5, 62, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(395, 5, 63, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(396, 5, 64, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(397, 5, 68, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(398, 5, 69, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(399, 5, 70, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(400, 5, 71, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(401, 5, 101, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(402, 5, 102, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(403, 5, 103, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(404, 5, 106, 'readonly', '2017-10-26 01:34:55', '2017-10-26 01:34:55'),
(405, 5, 74, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(406, 5, 76, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(407, 5, 77, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(408, 5, 78, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(409, 5, 80, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(410, 5, 81, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(411, 5, 96, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(412, 5, 121, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(413, 5, 95, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(414, 5, 97, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(415, 5, 98, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(416, 5, 99, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(417, 5, 100, 'readonly', '2017-10-26 01:34:56', '2017-10-26 01:34:56'),
(418, 5, 104, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(419, 5, 105, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(420, 5, 108, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(421, 5, 109, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(422, 5, 110, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(423, 5, 122, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(424, 5, 111, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(425, 5, 112, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(426, 5, 113, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(427, 5, 114, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(428, 5, 115, 'readonly', '2017-10-26 01:34:57', '2017-10-26 01:34:57'),
(429, 5, 116, 'readonly', '2017-10-26 01:34:58', '2017-10-26 01:34:58'),
(430, 5, 117, 'readonly', '2017-10-26 01:34:58', '2017-10-26 01:34:58'),
(431, 5, 118, 'readonly', '2017-10-26 01:34:58', '2017-10-26 01:34:58'),
(432, 3, 119, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(433, 3, 120, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(434, 3, 101, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(435, 3, 102, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(436, 3, 103, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(437, 3, 106, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(438, 3, 74, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(439, 3, 76, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(440, 3, 77, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(441, 3, 78, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(442, 3, 80, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(443, 3, 81, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(444, 3, 96, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(445, 3, 121, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(446, 3, 95, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(447, 3, 97, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(448, 3, 98, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(449, 3, 99, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(450, 3, 100, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(451, 3, 104, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(452, 3, 105, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(453, 3, 108, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(454, 3, 109, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(455, 3, 110, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(456, 3, 122, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(457, 3, 111, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(458, 3, 112, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(459, 3, 113, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(460, 3, 114, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(461, 3, 115, 'write', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(462, 3, 116, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(463, 3, 117, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(464, 3, 118, 'invisible', '2017-10-26 04:15:20', '2017-10-26 04:15:20'),
(465, 1, 119, 'write', '2017-10-26 04:26:44', '2017-10-26 04:26:44'),
(466, 1, 106, 'invisible', '2017-10-26 04:26:44', '2017-10-26 04:26:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, NULL),
(3, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pengirims`
--

CREATE TABLE `status_pengirims` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_pengirim` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tgl_pengiriman` date NOT NULL DEFAULT '1970-01-01',
  `tgl_diterima` date NOT NULL DEFAULT '1970-01-01',
  `id_barang` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokos`
--

CREATE TABLE `tokos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `toko` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alamat` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '152410101111 - EM C (1).pdf', 'D:\\xampp\\htdocs\\la1\\storage\\uploads\\2017-10-19-011342-152410101111 - EM C (1).pdf', 'pdf', '', 2, 'tws2kujd0ti3bs9clrjn', 0, NULL, '2017-10-18 18:13:42', '2017-10-18 18:13:42'),
(2, '500px-Superman.png', 'D:\\xampp\\htdocs\\la1\\storage\\uploads\\2017-10-25-105256-500px-Superman.png', 'png', '', 1, 'yg6aslgtlmdjr3sfvwmv', 0, NULL, '2017-10-25 03:52:56', '2017-10-25 03:52:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'kentus', 1, 'trpl.jbt@gmail.com', '$2y$10$oHCjDv91RRvnoL7Epuffo.pZAdJSOonsXlS6PASHOUpeASbCw6zlW', 'Employee', 'Bbbxo14Uso66OnStRs7UHEN4F1l0gsuPpv8igEpGT1DkWQEeaF9VlNkz5uLy', NULL, '2017-10-03 03:35:31', '2017-10-26 07:05:27'),
(2, 'Agus Adi Saputro', 2, 'admincabang@gmail.com', '$2y$10$WoksgRkVzBf8/ZBG1hvl6uPetrI5wlDObbVSaI0VlwR0nC8qSgEm2', 'Employee', 'eS2uBtege63M7zygFvRkMyKoDLecV3mOTvZHGVpthMIg88PYDpvlGYZv7k9J', NULL, '2017-10-11 20:07:01', '2017-10-26 04:20:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wooods`
--

CREATE TABLE `wooods` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `woods_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `wooods`
--

INSERT INTO `wooods` (`id`, `deleted_at`, `created_at`, `updated_at`, `woods_name`) VALUES
(1, NULL, '2017-10-25 03:52:04', '2017-10-25 03:52:04', 'Jati');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barangs_harga_unique` (`harga`),
  ADD KEY `barangs_id_cat_foreign` (`id_cat`),
  ADD KEY `barangs_id_kategori_foreign` (`id_kategori`),
  ADD KEY `barangs_id_kayu_foreign` (`id_kayu`);

--
-- Indexes for table `barang_promos`
--
ALTER TABLE `barang_promos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_promos_id_barang_foreign` (`id_barang`),
  ADD KEY `barang_promos_id_promo_foreign` (`id_promo`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_orders_id_barang_foreign` (`id_barang`),
  ADD KEY `detail_orders_id_order_foreign` (`id_order`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporans_id_toko_foreign` (`id_toko`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_no_tlp_unique` (`no_tlp`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD UNIQUE KEY `organizations_email_unique` (`email`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `status_pengirims`
--
ALTER TABLE `status_pengirims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_pengirims_tgl_pengiriman_unique` (`tgl_pengiriman`),
  ADD UNIQUE KEY `status_pengirims_tgl_diterima_unique` (`tgl_diterima`),
  ADD KEY `status_pengirims_id_barang_foreign` (`id_barang`);

--
-- Indexes for table `tokos`
--
ALTER TABLE `tokos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wooods`
--
ALTER TABLE `wooods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang_promos`
--
ALTER TABLE `barang_promos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detail_orders`
--
ALTER TABLE `detail_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status_pengirims`
--
ALTER TABLE `status_pengirims`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokos`
--
ALTER TABLE `tokos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wooods`
--
ALTER TABLE `wooods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_id_cat_foreign` FOREIGN KEY (`id_cat`) REFERENCES `cats` (`id`),
  ADD CONSTRAINT `barangs_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategoris` (`id`),
  ADD CONSTRAINT `barangs_id_kayu_foreign` FOREIGN KEY (`id_kayu`) REFERENCES `wooods` (`id`);

--
-- Ketidakleluasaan untuk tabel `barang_promos`
--
ALTER TABLE `barang_promos`
  ADD CONSTRAINT `barang_promos_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barangs` (`id`),
  ADD CONSTRAINT `barang_promos_id_promo_foreign` FOREIGN KEY (`id_promo`) REFERENCES `promos` (`id`);

--
-- Ketidakleluasaan untuk tabel `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD CONSTRAINT `detail_orders_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barangs` (`id`),
  ADD CONSTRAINT `detail_orders_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`);

--
-- Ketidakleluasaan untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Ketidakleluasaan untuk tabel `laporans`
--
ALTER TABLE `laporans`
  ADD CONSTRAINT `laporans_id_toko_foreign` FOREIGN KEY (`id_toko`) REFERENCES `tokos` (`id`);

--
-- Ketidakleluasaan untuk tabel `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Ketidakleluasaan untuk tabel `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `status_pengirims`
--
ALTER TABLE `status_pengirims`
  ADD CONSTRAINT `status_pengirims_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barangs` (`id`);

--
-- Ketidakleluasaan untuk tabel `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
