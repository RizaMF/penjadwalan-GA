-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Agu 2018 pada 06.23
-- Versi Server: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_jadwal_jti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `foto`) VALUES
(2, 'admin', 'b3479af95e34b53e346a5cdec2eb9054', 'Admin JTI', 'admin1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
`kode` int(2) NOT NULL,
  `nidn` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kode`, `nidn`, `nama`, `alamat`, `telp`) VALUES
(1, '0410108601 / 09098630', 'A. Sumarudin, S.Pd., MT., M.Sc.', 'asumarudin@gmail.com', '085222629105'),
(2, '0409078101 / 08048123', 'Eka ISmantohadi, S.Kom., M.Eng.', 'ekaismanto@gmail.com', '085323043616'),
(3, '0420078502 / 08098543', 'Munengsih Sari Bunga, S.Kom., M.Eng.', 'nengslim85@gmail.com', '087727602434'),
(4, '0407038004 / 09058001', 'Mohammad Yani, ST., MT., M.Sc', 'myani0703@gmail.com', '081586691068'),
(5, '0404108601 / 08098642', 'Willy Permana Putra, ST., M.Eng.', 'putranunuk@gmail.com', '085878356247'),
(6, '0410058601 / 09098631', 'Ahmad Lubis Ghozali, S.Kom., M.Kom.', 'alghoz@gmail.com', '082126542727'),
(7, '0406098102 / 08098145', 'Darsih, S.kom., M.kom.', 'darsih82@gmail.com', '083838451031'),
(8, '0419056503 / 08096544', 'Ir. Muh. Lukman Sifa', 'lukmanpolindra@yahoo.co.id', '082320833013'),
(9, '00010890 / 16039001', 'Iryanto,S.Si., M.Si., M.Sc', 'iryanto.math@gmail.com', '085795163129'),
(10, '- / 17039203', 'Muhamad Mustamiin, S.Pd., M.Kom,', 'm.mustamiin@gmail.com', '087828723432'),
(11, '- / 17039101', 'Arya Sony, ST., M.Eng.', 'aryasny@gmail.com', '08112721709'),
(12, '- / 17038902', 'Azran Budi Arief, ST., MT', 'azran.azr07@gmail.com', '081217882373'),
(13, '- / 17089004', 'Adi Suheryadi, S.ST., M.Kom.', 'adi.suheryadi@gmail.com', '085224100065'),
(14, '- / 17099206', 'Fachrul Pralienka Bani Muhammad, M.kom.', 'fachrul.pbm@gmail.com', '082219226664'),
(15, '-', 'Esti Ermawati', '-', '-'),
(16, '-', 'Drs. M.A Rosyid, MM', '-', '-'),
(17, '-', 'Deddy S.', '-', '-'),
(18, '-', 'Ojo Suharja', '-', '-'),
(19, '-', 'Abdul Gofur', '-', '-'),
(20, '-', 'Alifia Puspaningrum, S.Pd., M.Kom', '-', '-'),
(21, '-', 'Kurnia Adi Cahyanto, ST., M.Kom', '-', '-'),
(22, '-', 'Esti Mulyani, S.Kom., M.Kom', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE IF NOT EXISTS `hari` (
`kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`kode`, `nama`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalkuliah`
--

CREATE TABLE IF NOT EXISTS `jadwalkuliah` (
`kode` int(10) NOT NULL,
  `kode_pengampu` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_ruang` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COMMENT='hasil proses';

--
-- Dumping data untuk tabel `jadwalkuliah`
--

INSERT INTO `jadwalkuliah` (`kode`, `kode_pengampu`, `kode_jam`, `kode_hari`, `kode_ruang`) VALUES
(1, 188, 4, 2, 33),
(2, 189, 2, 4, 1),
(3, 190, 1, 2, 26),
(4, 191, 8, 1, 1),
(5, 192, 1, 3, 1),
(6, 193, 6, 4, 1),
(7, 194, 9, 2, 34),
(8, 195, 6, 4, 33),
(9, 196, 7, 5, 1),
(10, 197, 6, 3, 21),
(11, 198, 8, 3, 1),
(12, 199, 5, 1, 27),
(13, 200, 5, 4, 23),
(14, 201, 5, 3, 26),
(15, 202, 5, 1, 1),
(16, 203, 6, 3, 24),
(17, 204, 5, 4, 21),
(18, 205, 4, 3, 1),
(19, 206, 7, 3, 2),
(20, 207, 1, 4, 28),
(21, 208, 3, 4, 28),
(22, 209, 2, 1, 1),
(23, 210, 3, 2, 34);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE IF NOT EXISTS `jam` (
`kode` int(10) NOT NULL,
  `range_jam` varchar(50) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`kode`, `range_jam`, `aktif`) VALUES
(1, '07:30-08:20', NULL),
(2, '08:20-09:10', NULL),
(3, '09:10-10:00', NULL),
(4, '10:00-10:50', NULL),
(5, '10:50-11:40', NULL),
(6, '11:40-12.40', NULL),
(7, '12:40-13:30', NULL),
(8, '13:30-14:20', NULL),
(9, '14:20-15:10', NULL),
(10, '15:10-16:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
`kode` int(10) NOT NULL,
  `kode_mk` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `sks` int(6) DEFAULT NULL,
  `semester` int(6) DEFAULT NULL,
  `aktif` enum('True','False') DEFAULT 'True',
  `jenis` enum('TEORI','PRAKTIKUM','PROYEK','BAHASA') DEFAULT 'TEORI'
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1 COMMENT='example kode_mk = 0765109 ';

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `kode_mk`, `nama`, `sks`, `semester`, `aktif`, `jenis`) VALUES
(1, 'TIKK1092', ' Matematika Teknik', 2, 1, 'True', 'TEORI'),
(2, 'TIKK1023', 'Bahasa Pemrograman', 3, 1, 'True', 'PRAKTIKUM'),
(3, 'TIKK1052 ', 'Pengantar Teknologi Informasi', 2, 1, 'True', 'TEORI'),
(4, 'TIKK1082', 'Aplikasi Bisnis', 2, 1, 'True', 'PRAKTIKUM'),
(5, 'TIKK1033 ', 'Rangkaian Listrik dan Elektronika', 3, 1, 'True', 'PRAKTIKUM'),
(6, 'TIKB1103', 'Arsitektur dan Organisasi Komputer', 3, 1, 'True', 'TEORI'),
(7, 'TIKB1053', 'Sistem Operasi', 3, 1, 'True', 'PRAKTIKUM'),
(8, 'TIKB1062', 'Desain Grafis', 2, 1, 'True', 'PRAKTIKUM'),
(9, 'TIKK1102', 'Matematika Diskrit', 2, 2, 'True', 'TEORI'),
(10, 'TIKK1072', 'Metode Numerik', 2, 2, 'True', 'TEORI'),
(11, 'TIKB1073', 'Sistem Digital', 2, 2, 'True', 'PRAKTIKUM'),
(12, 'TIKB1084', 'Algoritma dan Pemrograman', 4, 2, 'True', 'PRAKTIKUM'),
(13, 'TIKB1093', 'Jaringan Komputer I', 3, 2, 'True', 'PRAKTIKUM'),
(14, 'TIKB1003', 'Basis Data', 3, 2, 'True', 'PRAKTIKUM'),
(15, 'TIKB1183', 'Struktur Data', 2, 2, 'True', 'PRAKTIKUM'),
(16, 'KUPB1012', 'Bahasa Inggris I', 2, 2, 'True', 'BAHASA'),
(17, 'TIKB2273', 'Jaringan Komputer II', 3, 3, 'True', 'PRAKTIKUM'),
(18, 'TIKB2253', 'Basis Data lanjut', 2, 3, 'True', 'PRAKTIKUM'),
(19, 'TIKB2263', 'Pemrograman Berorientasi Objek', 3, 3, 'True', 'PRAKTIKUM'),
(20, 'TIKB2154', 'Pemrograman Web', 3, 3, 'True', 'PRAKTIKUM'),
(21, 'TIKB2283', 'Proyek I ', 3, 3, 'True', 'PROYEK'),
(22, 'TIKB2162', 'Multimedia', 2, 3, 'True', 'PRAKTIKUM'),
(23, 'TIKB2183', 'Sistem Embedded', 3, 3, 'True', 'PRAKTIKUM'),
(24, 'KUPB2022', 'Bahasa Inggris II', 2, 3, 'True', 'BAHASA'),
(25, 'TIKB2193', 'Interaksi Manusia – Komputer', 3, 4, 'True', 'PRAKTIKUM'),
(26, 'TIKB2293', 'Proyek II', 3, 4, 'True', 'PROYEK'),
(27, 'TIKB2213 ', 'Rekayasa Perangkat Lunak', 3, 4, 'True', 'PRAKTIKUM'),
(28, 'TIKB2223', 'Administrasi Jaringan', 3, 4, 'True', 'PRAKTIKUM'),
(29, 'TIKB2233', 'Jaringan Nirkabel', 3, 4, 'True', 'PRAKTIKUM'),
(30, 'KUPB2032', 'Bahasa Inggris III', 2, 4, 'True', 'BAHASA'),
(31, 'TIKB2243', 'Pemrograman Perangkat Bergerak ', 3, 4, 'True', 'PRAKTIKUM'),
(32, 'KUPK0012', 'Agama', 2, 5, 'True', 'TEORI'),
(33, 'KUPK0022', 'Bahasa Indonesia', 2, 5, 'True', 'TEORI'),
(34, 'TIKK3012', 'Pemrosesan Sinyal Digital', 2, 5, 'True', 'PRAKTIKUM'),
(35, 'TIKB3013', 'Proyek III', 3, 5, 'True', 'PROYEK'),
(36, 'TIKB3023', 'Kecerdasan Buatan', 2, 5, 'True', 'PRAKTIKUM'),
(37, 'TIKB2203', 'Sistem Informasi', 2, 5, 'True', 'PRAKTIKUM'),
(38, 'TIKB2173', 'Pengolahan Citra', 2, 5, 'True', 'PRAKTIKUM'),
(39, 'KUPK0032', 'Pendidikan Kewarganegaraan', 2, 6, 'True', 'TEORI'),
(40, 'KUPB3032', 'Etika Profesi', 2, 6, 'True', 'TEORI'),
(41, 'KUPB3042', 'Manajemen Proyek Perangkat Lunak', 2, 6, 'True', 'TEORI'),
(42, 'KUPB3052 ', 'Enterprise Resources Planning ', 2, 6, 'True', 'TEORI'),
(43, 'KUPB3062', 'Kewirausahaan', 2, 6, 'True', 'TEORI'),
(44, 'KUPB3076 ', 'Tugas Akhir', 5, 6, 'True', 'PROYEK'),
(45, 'SE10322', 'Bahasa Inggris Fundamental', 2, 1, 'True', 'BAHASA'),
(46, 'SE11012', 'Diskrit & Aljabar Kombinatorial 1 ', 2, 1, 'True', 'TEORI'),
(47, 'SE11022', 'Kalkulus 1', 2, 1, 'True', 'TEORI'),
(48, 'SE11313', 'Pengantar Teknologi Informasi & Komunikasi', 3, 1, 'True', 'TEORI'),
(49, 'SE11033', 'Pemrograman Komputer', 3, 1, 'True', 'PRAKTIKUM'),
(50, 'SE11043', 'Pengantar Algoritma', 3, 1, 'True', 'TEORI'),
(51, 'SE11053', 'Pengantar Sistem Komputer', 3, 1, 'True', 'TEORI'),
(52, 'SE10472', 'Pendidikan Agama', 2, 1, 'True', 'TEORI'),
(53, 'SE31123', 'Pemrograman Mobile', 3, 3, 'True', 'PRAKTIKUM'),
(54, 'SE31132', 'Aljabar Linear', 2, 3, 'True', 'TEORI'),
(55, 'SE31213', 'Pemrograman Web 1', 3, 3, 'True', 'PRAKTIKUM'),
(56, 'SE33153', 'Manajemen Sistem Basis Data', 3, 3, 'True', 'TEORI'),
(57, 'SE31163', 'Pemodelan Perangkat Lunak', 3, 3, 'True', 'PRAKTIKUM'),
(58, 'SE31173', 'Analisis & Desain Perangkat Lunak', 3, 3, 'True', 'PRAKTIKUM'),
(59, 'SE31183', 'Sistem Operasi (D4)', 3, 3, 'True', 'PRAKTIKUM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengampu`
--

CREATE TABLE IF NOT EXISTS `pengampu` (
`kode` int(10) NOT NULL,
  `kode_mk` int(10) DEFAULT NULL,
  `kode_dosen` int(10) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `tahun_akademik` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengampu`
--

INSERT INTO `pengampu` (`kode`, `kode_mk`, `kode_dosen`, `kelas`, `tahun_akademik`) VALUES
(1, 23, 1, 'D3TI.2A', '2017-2018'),
(2, 23, 1, 'D3TI.2B', '2017-2018'),
(3, 21, 1, 'D3TI.2C', '2017-2018'),
(4, 35, 1, 'D3TI.3D', '2017-2018'),
(5, 3, 2, 'D3TI.1A', '2017-2018'),
(6, 3, 2, 'D3TI.1B', '2017-2018'),
(7, 8, 2, 'D3TI.1C', '2017-2018'),
(8, 18, 2, 'D3TI.2C', '2017-2018'),
(9, 18, 2, 'D3TI.2D', '2017-2018'),
(10, 35, 2, 'D3TI.3B', '2017-2018'),
(11, 2, 3, 'D3TI.1B', '2017-2018'),
(12, 2, 3, 'D3TI.1C', '2017-2018'),
(13, 22, 3, 'D3TI.2A', '2017-2018'),
(14, 22, 3, 'D3TI.2B', '2017-2018'),
(15, 35, 3, 'D3TI.3D', '2017-2018'),
(16, 19, 4, 'D3TI.2C', '2017-2018'),
(17, 19, 4, 'D3TI.2D', '2017-2018'),
(18, 35, 4, 'D3TI.3A', '2017-2018'),
(19, 7, 5, 'D3TI.1A', '2017-2018'),
(20, 7, 5, 'D3TI.1B', '2017-2018'),
(21, 17, 5, 'D3TI.2C', '2017-2018'),
(22, 17, 5, 'D3TI.2D', '2017-2018'),
(23, 35, 5, 'D3TI.3B', '2017-2018'),
(24, 8, 6, 'D3TI.1B', '2017-2018'),
(25, 20, 6, 'D3TI.2A', '2017-2018'),
(26, 20, 6, 'D3TI.2B', '2017-2018'),
(27, 35, 6, 'D3TI.3C', '2017-2018'),
(28, 37, 6, 'D3TI.3C', '2017-2018'),
(29, 37, 6, 'D3TI.3D', '2017-2018'),
(30, 6, 7, 'D3TI.1A', '2017-2018'),
(31, 6, 7, 'D3TI.1B', '2017-2018'),
(32, 3, 7, 'D3TI.1C', '2017-2018'),
(33, 35, 7, 'D3TI.3A', '2017-2018'),
(34, 37, 7, 'D3TI.3A', '2017-2018'),
(35, 37, 7, 'D3TI.3B', '2017-2018'),
(36, 21, 9, 'D3TI.2B', '2017-2018'),
(37, 35, 9, 'D3TI.3C', '2017-2018'),
(38, 36, 9, 'D3TI.3A', '2017-2018'),
(39, 36, 9, 'D3TI.3B', '2017-2018'),
(40, 38, 9, 'D3TI.3C', '2017-2018'),
(41, 38, 9, 'D3TI.3D', '2017-2018'),
(42, 4, 8, 'D3TI.1A', '2017-2018'),
(43, 4, 8, 'D3TI.1B', '2017-2018'),
(44, 4, 8, 'D3TI.1C', '2017-2018'),
(45, 5, 8, 'D3TI.1A', '2017-2018'),
(46, 5, 8, 'D3TI.1B', '2017-2018'),
(47, 21, 8, 'D3TI.2D', '2017-2018'),
(48, 8, 10, 'D3TI.1A', '2017-2018'),
(49, 18, 10, 'D3TI.2A', '2017-2018'),
(50, 18, 10, 'D3TI.2B', '2017-2018'),
(51, 22, 10, 'D3TI.2C', '2017-2018'),
(52, 22, 10, 'D3TI.2D', '2017-2018'),
(53, 21, 10, 'D3TI.2A', '2017-2018'),
(54, 17, 11, 'D3TI.2A', '2017-2018'),
(55, 17, 11, 'D3TI.2B', '2017-2018'),
(56, 21, 11, 'D3TI.2C', '2017-2018'),
(57, 34, 11, 'D3TI.3A', '2017-2018'),
(58, 34, 11, 'D3TI.3B', '2017-2018'),
(59, 7, 11, 'D3TI.1C', '2017-2018'),
(60, 5, 12, 'D3TI.1C', '2017-2018'),
(61, 23, 12, 'D3TI.2C', '2017-2018'),
(62, 23, 12, 'D3TI.2D', '2017-2018'),
(63, 21, 12, 'D3TI.2B', '2017-2018'),
(64, 34, 12, 'D3TI.3C', '2017-2018'),
(65, 34, 12, 'D3TI.3D', '2017-2018'),
(66, 19, 14, 'D3TI.2A', '2017-2018'),
(67, 19, 14, 'D3TI.2B', '2017-2018'),
(68, 20, 14, 'D3TI.2C', '2017-2018'),
(69, 20, 14, 'D3TI.2D', '2017-2018'),
(70, 21, 14, 'D3TI.2A', '2017-2018'),
(71, 6, 13, 'D3TI.1C', '2017-2018'),
(72, 2, 13, 'D3TI.1A', '2017-2018'),
(73, 21, 13, 'D3TI.2D', '2017-2018'),
(74, 36, 13, 'D3TI.3C', '2017-2018'),
(75, 36, 13, 'D3TI.3D', '2017-2018'),
(76, 38, 13, 'D3TI.3A', '2017-2018'),
(77, 38, 13, 'D3TI.3B', '2017-2018'),
(78, 24, 15, 'D3TI.2A', '2017-2018'),
(79, 24, 15, 'D3TI.2B', '2017-2018'),
(80, 24, 15, 'D3TI.2C', '2017-2018'),
(81, 24, 15, 'D3TI.2D', '2017-2018'),
(82, 33, 18, 'D3TI.3A', '2017-2018'),
(83, 33, 18, 'D3TI.3B', '2017-2018'),
(84, 33, 18, 'D3TI.3C', '2017-2018'),
(85, 33, 18, 'D3TI.3D', '2017-2018'),
(86, 32, 19, 'D3TI.3A', '2017-2018'),
(87, 32, 19, 'D3TI.3B', '2017-2018'),
(88, 32, 19, 'D3TI.3C', '2017-2018'),
(89, 32, 19, 'D3TI.3D', '2017-2018'),
(90, 13, 1, 'D3TI.1A', '2017-2018'),
(91, 13, 1, 'D3TI.1B', '2017-2018'),
(92, 29, 1, 'D3TI.2D', '2017-2018'),
(93, 26, 1, 'D3TI.2A', '2017-2018'),
(188, 51, 1, 'D4RPL.1A', '2018-2019'),
(189, 48, 3, 'D4RPL.1A', '2018-2019'),
(190, 53, 3, 'D4RPL.2', '2018-2019'),
(191, 56, 6, 'D4RPL.2', '2018-2019'),
(192, 46, 9, 'D4RPL.1A', '2018-2019'),
(193, 46, 9, 'D4RPL.1B', '2018-2019'),
(194, 47, 9, 'D4RPL.1A', '2018-2019'),
(195, 50, 10, 'D4RPL.1A', '2018-2019'),
(196, 50, 10, 'D4RPL.1B', '2018-2019'),
(197, 49, 10, 'D4RPL.1A', '2018-2019'),
(198, 51, 21, 'D4RPL.1B', '2018-2019'),
(199, 58, 14, 'D4RPL.2', '2018-2019'),
(200, 49, 22, 'D4RPL.1B', '2018-2019'),
(201, 55, 22, 'D4RPL.2', '2018-2019'),
(202, 48, 20, 'D4RPL.1B', '2018-2019'),
(203, 59, 20, 'D4RPL.2', '2018-2019'),
(204, 57, 20, 'D4RPL.2', '2018-2019'),
(205, 47, 16, 'D4RPL.1B', '2018-2019'),
(206, 54, 16, 'D4RPL.2', '2018-2019'),
(207, 45, 17, 'D4RPL.1A', '2018-2019'),
(208, 45, 17, 'D4RPL.1B', '2018-2019'),
(209, 52, 19, 'D4RPL.1A', '2018-2019'),
(210, 52, 19, 'D4RPL.1B', '2018-2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE IF NOT EXISTS `ruang` (
`kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kapasitas` int(10) DEFAULT NULL,
  `jenis` enum('TEORI','LABORATORIUM','PROYEK','BAHASA') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`kode`, `nama`, `kapasitas`, `jenis`) VALUES
(1, 'RK TI A', 30, 'TEORI'),
(2, 'RK TI B', 30, 'TEORI'),
(21, 'Lab Jarkom', 30, 'LABORATORIUM'),
(22, 'Lab. Multimedia', 30, 'LABORATORIUM'),
(23, 'lab. Basis Data', 30, 'LABORATORIUM'),
(24, 'Lab. Pemrograman', 30, 'LABORATORIUM'),
(25, 'Lab. Eldas', 30, 'LABORATORIUM'),
(26, 'Lab. SO', 30, 'LABORATORIUM'),
(27, 'Lab. RPL', 30, 'LABORATORIUM'),
(28, 'Lab. Bahasa Inggris', 30, 'BAHASA'),
(29, 'Lab. IT Terapan 1', 30, 'PROYEK'),
(30, 'Lab. IT Terapan 2', 30, 'PROYEK'),
(31, 'Lab. IT Terapan 3', 30, 'PROYEK'),
(33, 'Gd. Teori RK 11', 30, 'TEORI'),
(34, 'Gd. Teori RK 12', 30, 'TEORI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu_tidak_bersedia`
--

CREATE TABLE IF NOT EXISTS `waktu_tidak_bersedia` (
`kode` int(10) NOT NULL,
  `kode_dosen` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `waktu_tidak_bersedia`
--

INSERT INTO `waktu_tidak_bersedia` (`kode`, `kode_dosen`, `kode_hari`, `kode_jam`) VALUES
(1, 17, 1, 4),
(2, 17, 1, 5),
(3, 17, 1, 6),
(4, 17, 1, 7),
(5, 17, 1, 8),
(6, 17, 1, 9),
(7, 17, 1, 10),
(8, 17, 2, 4),
(9, 17, 2, 5),
(10, 17, 2, 6),
(11, 17, 2, 7),
(12, 17, 2, 8),
(13, 17, 2, 9),
(14, 17, 2, 10),
(15, 17, 3, 4),
(16, 17, 3, 5),
(17, 17, 3, 6),
(18, 17, 3, 7),
(19, 17, 3, 8),
(20, 17, 3, 9),
(21, 17, 3, 10),
(22, 17, 4, 2),
(23, 17, 4, 4),
(24, 17, 4, 5),
(25, 17, 4, 6),
(26, 17, 4, 7),
(27, 17, 4, 8),
(28, 17, 4, 9),
(29, 17, 4, 10),
(30, 17, 5, 4),
(31, 17, 5, 5),
(32, 17, 5, 6),
(33, 17, 5, 7),
(34, 17, 5, 8),
(35, 17, 5, 9),
(36, 17, 5, 10),
(37, 16, 1, 1),
(38, 16, 1, 2),
(39, 16, 1, 3),
(40, 16, 1, 4),
(41, 16, 1, 5),
(42, 16, 1, 6),
(43, 16, 1, 7),
(44, 16, 1, 8),
(45, 16, 1, 9),
(46, 16, 1, 10),
(47, 16, 2, 1),
(48, 16, 2, 2),
(49, 16, 2, 3),
(50, 16, 2, 4),
(51, 16, 2, 5),
(52, 16, 2, 6),
(53, 16, 2, 7),
(54, 16, 2, 8),
(55, 16, 2, 9),
(56, 16, 2, 10),
(57, 16, 4, 1),
(58, 16, 4, 2),
(59, 16, 4, 3),
(60, 16, 4, 4),
(61, 16, 4, 5),
(62, 16, 4, 6),
(63, 16, 4, 7),
(64, 16, 4, 8),
(65, 16, 4, 9),
(66, 16, 4, 10),
(67, 16, 5, 1),
(68, 16, 5, 2),
(69, 16, 5, 3),
(70, 16, 5, 4),
(71, 16, 5, 5),
(72, 16, 5, 6),
(73, 16, 5, 7),
(74, 16, 5, 8),
(75, 16, 5, 9),
(76, 16, 5, 10),
(77, 18, 2, 1),
(78, 18, 2, 2),
(79, 18, 2, 3),
(80, 18, 2, 4),
(81, 18, 2, 5),
(82, 18, 2, 6),
(83, 18, 2, 7),
(84, 18, 2, 8),
(85, 18, 2, 9),
(86, 18, 2, 10),
(87, 18, 3, 1),
(88, 18, 3, 2),
(89, 18, 3, 3),
(90, 18, 3, 4),
(91, 18, 3, 5),
(92, 18, 3, 6),
(93, 18, 3, 7),
(94, 18, 3, 8),
(95, 18, 3, 9),
(96, 18, 3, 10),
(97, 18, 4, 1),
(98, 18, 4, 2),
(99, 18, 4, 3),
(100, 18, 4, 4),
(101, 18, 4, 5),
(102, 18, 4, 6),
(103, 18, 4, 7),
(104, 18, 4, 8),
(105, 18, 4, 9),
(106, 18, 4, 10),
(107, 18, 5, 1),
(108, 18, 5, 2),
(109, 18, 5, 3),
(110, 18, 5, 4),
(111, 18, 5, 5),
(112, 18, 5, 6),
(113, 18, 5, 7),
(114, 18, 5, 8),
(115, 18, 5, 9),
(116, 18, 5, 10),
(117, 19, 1, 6),
(118, 19, 1, 7),
(119, 19, 1, 8),
(120, 19, 1, 9),
(121, 19, 1, 10),
(122, 19, 3, 1),
(123, 19, 3, 2),
(124, 19, 3, 3),
(125, 19, 3, 4),
(126, 19, 3, 5),
(127, 19, 3, 6),
(128, 19, 3, 7),
(129, 19, 3, 8),
(130, 19, 3, 9),
(131, 19, 3, 10),
(132, 19, 4, 1),
(133, 19, 4, 2),
(134, 19, 4, 3),
(135, 19, 4, 4),
(136, 19, 4, 5),
(137, 19, 4, 6),
(138, 19, 4, 7),
(139, 19, 4, 8),
(140, 19, 4, 9),
(141, 19, 4, 10),
(142, 19, 5, 1),
(143, 19, 5, 2),
(144, 19, 5, 3),
(145, 19, 5, 4),
(146, 19, 5, 5),
(147, 19, 5, 6),
(148, 19, 5, 7),
(149, 19, 5, 8),
(150, 19, 5, 9),
(151, 19, 5, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jadwalkuliah`
--
ALTER TABLE `jadwalkuliah`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pengampu`
--
ALTER TABLE `pengampu`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
 ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jadwalkuliah`
--
ALTER TABLE `jadwalkuliah`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `pengampu`
--
ALTER TABLE `pengampu`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=152;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
