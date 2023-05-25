-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Bulan Mei 2023 pada 06.03
-- Versi server: 10.6.5-MariaDB-1:10.6.5+maria~bionic
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amertas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(10) NOT NULL,
  `nama_kegiatan` text DEFAULT NULL,
  `tempat_kegiatan` text DEFAULT NULL,
  `tgl_kegiatan` datetime DEFAULT NULL,
  `poin_kegiatan` text DEFAULT NULL,
  `peserta` text DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  `status` enum('menunggu','perbaikan','proses','konfirmasi','selesai') DEFAULT NULL,
  `pesan_humas` text DEFAULT NULL,
  `lamp_foto1` text DEFAULT NULL,
  `lamp_foto2` text DEFAULT NULL,
  `lamp_foto3` text DEFAULT NULL,
  `lamp_foto4` text DEFAULT NULL,
  `lamp_foto5` text DEFAULT NULL,
  `lamp_foto6` text DEFAULT NULL,
  `lamp_surat_undangan` text DEFAULT NULL,
  `lamp_sambutan` text DEFAULT NULL,
  `lamp_paparan` text DEFAULT NULL,
  `lamp_lain` text DEFAULT NULL,
  `id_user` int(10) NOT NULL,
  `jenis_dokumen` varchar(255) DEFAULT NULL,
  `zona_dokumen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `nama_kegiatan`, `tempat_kegiatan`, `tgl_kegiatan`, `poin_kegiatan`, `peserta`, `tgl_input`, `status`, `pesan_humas`, `lamp_foto1`, `lamp_foto2`, `lamp_foto3`, `lamp_foto4`, `lamp_foto5`, `lamp_foto6`, `lamp_surat_undangan`, `lamp_sambutan`, `lamp_paparan`, `lamp_lain`, `id_user`, `jenis_dokumen`, `zona_dokumen`) VALUES
(40, 'Pajak Daerah dan Retribusi Daerah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_berita/Surat_Hasil_Harmonisasi_PDRD_KoMat.pdf', NULL, NULL, NULL, 1, 'raperda', 'pemkot_bima'),
(41, 'RENCANA INDUK PEMBANGUNAN KEPARIWISATAAN DAERAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_berita/Surat_Hasil_Harmonisasi_PDRD_kab_bima.pdf', NULL, NULL, NULL, 1, 'raperda', 'pemkab_bima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_notif`
--

CREATE TABLE `tbl_notif` (
  `id_notif` int(11) NOT NULL,
  `pengirim` int(11) DEFAULT NULL,
  `penerima` int(11) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `tgl_notif` datetime DEFAULT NULL,
  `baca_notif` text DEFAULT NULL,
  `hapus_notif` text DEFAULT NULL,
  `id_berita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_notif`
--

INSERT INTO `tbl_notif` (`id_notif`, `pengirim`, `penerima`, `pesan`, `link`, `tgl_notif`, `baca_notif`, `hapus_notif`, `id_berita`) VALUES
(16, 2, 1, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', '1, ', NULL, 7),
(17, 2, 2, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', '2, ', NULL, 7),
(18, 2, 3, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7),
(19, 2, 4, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7),
(20, 2, 5, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7),
(21, 2, 6, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7),
(22, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', '1, ', NULL, 8),
(23, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8),
(24, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8),
(25, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8),
(26, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8),
(27, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8),
(28, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', '1, ', NULL, 9),
(29, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9),
(30, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9),
(31, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9),
(32, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9),
(33, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9),
(34, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', '1, ', NULL, 10),
(35, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10),
(36, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10),
(37, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10),
(38, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10),
(39, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10),
(40, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', '1, ', NULL, 11),
(41, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11),
(42, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11),
(43, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11),
(44, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11),
(45, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11),
(46, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', '1, ', NULL, 12),
(47, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12),
(48, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12),
(49, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12),
(50, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12),
(51, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12),
(52, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', '1, ', NULL, 13),
(53, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13),
(54, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13),
(55, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13),
(56, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13),
(57, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13),
(58, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', '1, ', NULL, 14),
(59, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14),
(60, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14),
(61, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14),
(62, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14),
(63, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14),
(64, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', '1, ', NULL, 15),
(65, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15),
(66, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15),
(67, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15),
(68, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15),
(69, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15),
(70, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', '1, ', NULL, 16),
(71, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16),
(72, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16),
(73, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16),
(74, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16),
(75, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16),
(76, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', '1, ', NULL, 17),
(77, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17),
(78, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17),
(79, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17),
(80, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17),
(81, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17),
(82, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', '1, ', NULL, 18),
(83, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18),
(84, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18),
(85, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18),
(86, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18),
(87, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18),
(88, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', '1, ', NULL, 29),
(89, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29),
(90, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29),
(91, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29),
(92, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29),
(93, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29),
(94, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', '1, ', NULL, 30),
(95, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30),
(96, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30),
(97, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30),
(98, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30),
(99, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30),
(100, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', '1, ', NULL, 31),
(101, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31),
(102, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31),
(103, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31),
(104, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31),
(105, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31),
(106, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', '1, ', NULL, 32),
(107, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32),
(108, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32),
(109, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32),
(110, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32),
(111, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32),
(112, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', '1, ', NULL, 33),
(113, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33),
(114, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33),
(115, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33),
(116, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33),
(117, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33),
(118, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', '1, ', NULL, 34),
(119, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34),
(120, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34),
(121, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34),
(122, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34),
(123, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34),
(124, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', '1, ', NULL, 35),
(125, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35),
(126, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35),
(127, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35),
(128, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35),
(129, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35),
(130, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', '1, ', NULL, 36),
(131, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36),
(132, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36),
(133, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36),
(134, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36),
(135, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36),
(136, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', '1, ', NULL, 37),
(137, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37),
(138, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37),
(139, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37),
(140, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37),
(141, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37),
(142, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 08:10:34', '1, ', NULL, 38),
(143, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 08:10:34', NULL, NULL, 38),
(144, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 08:10:34', NULL, NULL, 38),
(145, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 08:10:34', NULL, NULL, 38),
(146, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 08:10:34', NULL, NULL, 38),
(147, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 08:10:34', NULL, NULL, 38),
(148, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 08:17:12', '1, ', NULL, 39),
(149, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 08:17:12', NULL, NULL, 39),
(150, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 08:17:12', NULL, NULL, 39),
(151, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 08:17:12', NULL, NULL, 39),
(152, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 08:17:12', NULL, NULL, 39),
(153, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 08:17:12', NULL, NULL, 39),
(154, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 08:31:12', '1, ', NULL, 40),
(155, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 08:31:12', NULL, NULL, 40),
(156, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 08:31:12', NULL, NULL, 40),
(157, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 08:31:12', NULL, NULL, 40),
(158, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 08:31:12', NULL, NULL, 40),
(159, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 08:31:12', NULL, NULL, 40),
(160, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-11 15:25:28', '1, ', NULL, 41),
(161, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-11 15:25:28', NULL, NULL, 41),
(162, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-11 15:25:28', NULL, NULL, 41),
(163, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-11 15:25:28', NULL, NULL, 41),
(164, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-11 15:25:28', NULL, NULL, 41),
(165, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-11 15:25:28', NULL, NULL, 41),
(166, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-12 10:12:11', '1, ', NULL, 42),
(167, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-12 10:12:11', NULL, NULL, 42),
(168, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-12 10:12:11', NULL, NULL, 42),
(169, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-12 10:12:11', NULL, NULL, 42),
(170, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-12 10:12:11', NULL, NULL, 42),
(171, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-12 10:12:11', NULL, NULL, 42);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'administrator', 'Admin1234', 'superadmin'),
(2, 'pelaksana', 'pelaksana', '1234', 'pelaksana'),
(3, 'humas', 'humas', '1234', 'humas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`) USING BTREE,
  ADD KEY `FOREIGN` (`id_user`) USING BTREE;

--
-- Indeks untuk tabel `tbl_notif`
--
ALTER TABLE `tbl_notif`
  ADD PRIMARY KEY (`id_notif`) USING BTREE,
  ADD KEY `FOREIGN` (`id_berita`) USING BTREE;

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `tbl_notif`
--
ALTER TABLE `tbl_notif`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
