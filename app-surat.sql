-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Bulan Mei 2022 pada 06.06
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app-surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip`
--

CREATE TABLE `arsip` (
  `id_arsip` int(220) NOT NULL,
  `tanggal` date NOT NULL,
  `nim` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `berkas` text NOT NULL,
  `filedoc` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `arsip`
--

INSERT INTO `arsip` (`id_arsip`, `tanggal`, `nim`, `nama`, `kategori`, `berkas`, `filedoc`, `status`) VALUES
(34, '2022-01-01', 1218619, 'Kaelan Humphries', 'Surat Observasi (Studi Pendahuluan)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Diproses'),
(35, '2022-01-01', 1218620, 'Cara Southern', 'Surat Penelitian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(36, '2022-01-01', 1218121, 'Umayr Parrish', 'Surat Observasi Tugas Mata Kuliah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(37, '2022-01-01', 1217955, 'Meg Collins', 'Surat Permohonan Izin Tempat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(38, '2022-01-01', 1217706, 'Fariha Brook', 'Surat Keterangan Lulus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(39, '2022-01-01', 1217457, 'Elly Avila', 'Surat Izin Kunjungan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(40, '2022-01-01', 1217208, 'Ishan Leon', 'Surat Ucapan Terimakasih', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(41, '2022-01-01', 1216959, 'Burhan Beech', 'Surat Permohonan Ahli', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(42, '2022-01-01', 1216710, 'Blossom Richard', 'Surat Rekomendasi Kampus Mengajar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(43, '2022-01-01', 1216461, 'Teri Cherry', 'Pengajuan Lembar Pengesahan Laporan Kampus Mengajar ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(44, '2022-01-01', 1216212, 'Rio Bonilla', 'Surat Keterangan Mahasiswa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(45, '2022-01-01', 1215963, 'Gerard Chadwick', 'Surat Pengantar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(46, '2022-01-01', 1215714, 'Katie-Louise Kendall', 'Surat Observasi (Studi Pendahuluan)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(47, '2022-01-01', 1215465, 'Issac Donaldson', 'Surat Penelitian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(48, '2022-01-01', 1215216, 'Amin Barber', 'Surat Observasi Tugas Mata Kuliah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(49, '2022-01-01', 1214967, 'Dorian Wallis', 'Surat Permohonan Izin Tempat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(50, '2022-01-01', 1214718, 'Marianna Parks', 'Surat Keterangan Lulus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(51, '2022-01-01', 1214469, 'Sonia Zimmerman', 'Surat Izin Kunjungan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(52, '2022-01-01', 1214220, 'Rian Castaneda', 'Surat Ucapan Terimakasih', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(53, '2022-01-01', 1213971, 'Lester Roche', 'Surat Permohonan Ahli', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(54, '2022-01-01', 1213722, 'Tamera Dickens', 'Surat Rekomendasi Kampus Mengajar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(55, '2022-01-01', 1213473, 'Buster Lugo', 'Pengajuan Lembar Pengesahan Laporan Kampus Mengajar ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(56, '2022-01-01', 1213224, 'Piers Battle', 'Surat Keterangan Mahasiswa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(57, '2022-01-01', 1212975, 'Tayyib Barnett', 'Surat Pengantar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(58, '2022-01-01', 1212726, 'Star Skinner', 'Surat Observasi (Studi Pendahuluan)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(59, '2022-01-01', 1212477, 'King Mcdougall', 'Surat Penelitian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(60, '2022-01-01', 1212228, 'Malaikah Farmer', 'Surat Observasi Tugas Mata Kuliah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(61, '2022-01-01', 1211979, 'Manha Padilla', 'Surat Permohonan Izin Tempat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e=60cH85', 'Perlu Tindakan'),
(72, '2022-04-22', 1218616, 'Natasha Adelia', 'Surat Penelitian', 'yee', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...', 'Selesai'),
(73, '2022-04-22', 1218616, 'Natasha Adelia', 'Surat Observasi Tugas Mata Kuliah', 'yee', 'http://localhost/app-surat/user/surat/alert', 'Perlu Tindakan'),
(74, '2022-05-08', 1218616, 'Natasha Adelia', 'Surat Rekomendasi Kampus Mengajar', '', 'http://localhost/app-surat/user/surat/alert', 'Perlu Tindakan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `filedoc`
--

CREATE TABLE `filedoc` (
  `id` int(10) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `filedoc`
--

INSERT INTO `filedoc` (`id`, `nama_file`, `link`) VALUES
(1, 'Surat Ucapan Terima Kasih', 'https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) NOT NULL,
  `nim` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `alamat`, `telepon`) VALUES
(1, 1218617, 'Jean Piere Polnaref', 'Ciparay', 586593243),
(2, 1218616, 'Natasha Adelia', 'Sukdam', 348738443),
(3, 1218619, 'Kaelan Humphries', 'Soreang', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'Perlu Tindakan'),
(3, 'Diproses'),
(4, 'Ditolak'),
(5, 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `blokir` enum('N','Y') NOT NULL,
  `id_session` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `level`, `blokir`, `id_session`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'N', ''),
(2, '1218616', '21232f297a57a5a743894a0e4a801fc3', '1218616@gmailc.om', 'user', 'N', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id_arsip`);

--
-- Indeks untuk tabel `filedoc`
--
ALTER TABLE `filedoc`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id_arsip` int(220) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `filedoc`
--
ALTER TABLE `filedoc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
