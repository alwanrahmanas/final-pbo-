-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 07:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `ipkm`
--

CREATE TABLE `ipkm` (
  `id` int(11) NOT NULL,
  `namaKegiatan` varchar(50) NOT NULL,
  `tanggalKegiatan` varchar(50) NOT NULL,
  `tempatKegiatan` varchar(50) NOT NULL,
  `dimensi` varchar(1000) NOT NULL,
  `kategori` varchar(1000) NOT NULL,
  `subKategori` varchar(1000) NOT NULL,
  `nim` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ipkm`
--

INSERT INTO `ipkm` (`id`, `namaKegiatan`, `tanggalKegiatan`, `tempatKegiatan`, `dimensi`, `kategori`, `subKategori`, `nim`) VALUES
(2, 's', 'Wed Jun 01 00:00:00 WIB 2022', 's', 'Pengembangan Minat dan Kreativitas', 'Keanggotaan UKM/Bidang/Divisi', 'Anggota UKM/Bidang/Divisi', '222011374'),
(3, 'Relawan Banjir', 'Wed Jul 10 00:00:00 WIB 2019', 'Bonsay', 'Jiwa Sosial', 'Panitia Kegiatan Sosial', 'Panitia kegiatan internal sosial dan pengabdian masyarakat terafiliasi kampus', 'a'),
(4, 'Ulang tahun sendiri', 'Sat Dec 08 08:28:06 WIB 2018', 'Rmh', 'Kompetensi Individu', 'Kompetisi Internal STIS', 'Juara 2', 'a'),
(5, 'Lupa', 'Wed Feb 11 00:00:00 WIB 2015', 'Lupa', 'Jiwa Sosial', 'Relawan Kegiatan Sosial', 'Relawan kegiatan sosial dan pengabdian masyarakat tidak terafiliasi kampus diketahui Ketua Senat Mahasiswa', '222011347'),
(6, 'Classmeeting', 'Wed May 17 00:00:00 WIB 2017', 'STIS', 'Kompetensi Individu', 'Juara Kompetisi', 'Juara 1 Kompetisi tingkat Internasional', 'a'),
(7, 'Pramuka', 'Fri Jun 23 00:00:00 WIB 2017', 'Polstat STIS', 'Kepemimpinan', 'Pendidikan', 'Diklat Kepemimpinan Tingkat Nasional', '222011374'),
(8, 'zxcasd', 'Thu Aug 22 00:00:00 WIB 2019', 'zxcddd', 'Kompetensi Individu', 'Peserta Kompetisi', 'Kompetisi tingkat Internasional', '222011374'),
(9, 'Relawan Banjir', 'Thu Jan 13 00:00:00 WIB 2022', 'Rumah saya', 'Dimensi', 'Kategori', 'Sub-kategori', 'a'),
(10, 'Ultah', 'Sat Jun 03 00:00:00 WIB 2017', 'bumi', 'Kompetensi Individu', 'Peserta Kompetisi', 'Kompetisi tingkat Kabupaten/Kota', '222011374'),
(11, 'test', 'Fri Jun 13 00:00:00 WIB 2014', '2', 'Kompetensi Individu', 'Peserta Kompetisi', 'Kompetisi tingkat Provinsi', '222011374'),
(12, 'Sale', 'Thu Jun 16 00:00:00 WIB 2016', 'Ramayana', 'Pengembangan Minat dan Kreativitas', 'Keanggotaan UKM/Bidang/Divisi', 'Anggota UKM/Bidang/Divisi', '222011374'),
(13, 'Papistis', 'Fri Oct 18 00:00:00 WIB 2019', 'STIS', 'Kompetensi Individu', 'Putra-Putri STIS', 'Juara 1', '222011374'),
(22, 'a', 'Wed May 04 19:27:23 WIB 2022', 'a', 'Jiwa Sosial', 'Relawan Kegiatan Sosial', 'Relawan kegiatan sosial dan pengabdian masyarakat tidak terafiliasi kampus diketahui Ketua Senat Mahasiswa', 'a'),
(23, 'fddsa', 'Thu Jun 02 08:28:06 WIB 2022', 'fdg', 'Kompetensi Individu', 'Kompetisi Internal STIS', 'Juara 2', 'a'),
(25, 'gf', 'Wed Jun 01 19:30:43 WIB 2022', 'gfr', 'Kompetensi Individu', 'Kompetisi Internal STIS', 'Juara 3', 'a'),
(26, 'a', 'Thu Jun 23 19:42:31 WIB 2022', 'a', 'Jiwa Sosial', 'Pelatihan dan Pengabdian Masyarakat', 'Mengikuti kegiatan\n Seminar/Lokakarya/Pelatihan\n Sosial dan Pengabdian Masyarakat\n Tingkat Nasional', 'a'),
(29, 'a', 'Thu Jun 16 19:51:43 WIB 2022', 'a', 'Jiwa Sosial', 'Pelatihan dan Pengabdian Masyarakat', 'Mengikuti kegiatan\n Seminar/Lokakarya/Pelatihan\n Sosial dan Pengabdian Masyarakat\n Tingkat Internasional', 'a'),
(31, 'a', 'Wed Jun 08 19:53:28 WIB 2022', 'a', 'Jiwa Sosial', 'Panitia Kegiatan Sosial', 'Panitia kegiatan sosial dan pengabdian masyarakat tidak terafiliasi kampus diketahui Ketua Senat Mahasiswa', 'a'),
(32, 'a', 'Wed Jun 01 19:54:33 WIB 2022', 'a', 'Jiwa Sosial', 'Relawan Kegiatan Sosial', 'Relawan kegiatan sosial dan pengabdian masyarakat tidak terafiliasi kampus diketahui Ketua Senat Mahasiswa', 'a'),
(33, 'aasdaw13', 'Thu Dec 01 00:09:56 WIB 2022', '321dwa', 'Jiwa Sosial', 'Relawan Kegiatan Sosial', 'Relawan kegiatan sosial dan pengabdian masyarakat tidak terafiliasi kampus diketahui Ketua Senat Mahasiswa', 'a'),
(35, 'a', 'Thu Jun 23 19:57:52 WIB 2022', 'a', 'Kompetensi Individu', 'Olimpiade Perguruan Tinggi Kedinasan', 'Peraih medali emas', 'a'),
(36, 'a', 'Thu Jun 23 19:57:52 WIB 2022', 'a', 'Jiwa Sosial', 'Panitia Kegiatan Sosial', 'Panitia kegiatan internal sosial dan pengabdian masyarakat terafiliasi kampus', 'a'),
(37, 'a', 'Thu Jun 23 19:57:52 WIB 2022', 's', 'Pengembangan Minat dan Kreativitas', 'Peserta Seminar', 'Mengikuti kegiatan\nseminar/lokakarya/pelatihan\ntingkat internasional', 'a'),
(38, 'sdsadwq2', 'Thu Jun 23 19:57:52 WIB 2022', '2dsa', 'Kompetensi Individu', 'Olimpiade Perguruan Tinggi Kedinasan', 'peraih medali perak', 'a'),
(39, 'a', 'Wed Jun 01 20:05:09 WIB 2022', 'aa', 'Jiwa Sosial', 'Pelatihan dan Pengabdian Masyarakat', 'Mengikuti kegiatan\n Seminar/Lokakarya/Pelatihan\n Sosial dan Pengabdian Masyarakat\n Tingkat Regional/Provinsi', 'a'),
(40, 'a', 'Wed Jun 01 20:05:09 WIB 2022', 'aaaaaa', 'Jiwa Sosial', 'Panitia Kegiatan Sosial', 'Panitia Kegitaan eksternal sosial dan pengabdian masyarakat terafiliasi kampus', 'a'),
(41, 'wq213', 'Wed Jun 01 20:05:09 WIB 2022', 'dsa', 'Pengembangan Minat dan Kreativitas', 'Keanggotaan UKM/Bidang/Divisi', 'Anggota UKM/Bidang/Divisi', 'a'),
(42, '123', 'Thu Jun 02 20:15:20 WIB 2022', '231', 'Kompetensi Individu', 'Olimpiade Perguruan Tinggi Kedinasan', 'Peraih medali perunggu', '222011374'),
(43, 'a', 'Thu Jun 02 20:17:18 WIB 2022', 'aaaaaaaaaaaa', 'Jiwa Sosial', 'Relawan Kegiatan Sosial', 'Relawan kegiatan sosial dan pengabdian masyarakat tidak terafiliasi kampus diketahui Ketua Senat Mahasiswa', 'a'),
(44, 'dsa', 'Thu Jun 03 08:29:17 WIB 2021', 'dsadsa', 'Jiwa Sosial', 'Pelatihan dan Pengabdian Masyarakat', 'Mengikuti kegiatan \n Seminar/Lokakarya/Pelatihan\n Sosial dan Pengabdian Masyarakat\n Tingkat Nasional', ''),
(45, 's', 'Thu Jun 21 21:09:32 WIB 2018', 's', 'Kompetensi Individu', 'Juara Kompetisi', 'Juara 2 Kompetisi Tingkat Nasional', ''),
(46, 'abv123', 'Thu Jun 15 21:09:32 WIB 2017', '123', 'Kompetensi Individu', 'Peserta Kompetisi', 'Kompetisi tingkat Nasional', ''),
(51, 'dsadsa', 'Thu Jun 16 07:15:07 WIB 2016', 's', 'Kompetensi Individu', 'Peserta Kompetisi', 'Kompetisi tingkat Provinsi', ''),
(52, 's', 'Thu Jun 16 00:00:00 WIB 2016', 's', 'Pengembangan Minat dan Kreativitas', 'Peserta Kegiatan Terbuka UKM/SEMA', 'Peserta kegiatan terbuka yang\n diselenggarakan\n SEMA/UKM/Bidang', ''),
(53, 'Krismon', 'Wed May 20 07:31:54 WIB 1998', 'Senayan', 'Jiwa Sosial', 'Kegiatan Sosial Lainnya', 'Donor Darah', '222011377'),
(54, 'Donor Darah PMI', 'Thu Feb 15 07:31:54 WIB 2001', 'Sampit', 'Jiwa Sosial', 'Kegiatan Sosial Lainnya', 'Donor Darah', '222011377'),
(55, 'asad', 'Fri Jun 10 08:26:02 WIB 2022', 'a', 'Kepemimpinan', 'Pendidikan', 'Seminar Kepemimpinan Tingkat Internasional', ''),
(56, 'dsa', 'Thu Jun 02 08:32:41 WIB 2022', 'dasdsa', 'Jiwa Sosial', 'Panitia Kegiatan Sosial', 'Panitia Kegitaan eksternal sosial dan pengabdian masyarakat terafiliasi kampus', ''),
(57, 'Ingat', 'Wed Jun 01 12:53:33 WIB 2022', 'Lupa', 'Jiwa Sosial', 'Relawan Kegiatan Sosial', 'Relawan kegiatan sosial dan pengabdian masyarakat terafiliasi kampus', '222011377'),
(60, 'b', 'Fri Jun 03 15:20:46 WIB 2022', 's', 'Jiwa Sosial', 'Relawan Kegiatan Sosial', 'Relawan kegiatan sosial dan pengabdian masyarakat tidak terafiliasi kampus diketahui Ketua Senat Mahasiswa', '222011378'),
(63, 'bebas', 'Fri Jun 12 16:16:46 WIB 2020', 'bebas', 'Kepemimpinan', 'Narasumber', 'Pembicara (kegiatan < 5 jam)', '222011374'),
(64, 'aa', 'Thu Dec 01 00:09:56 WIB 2022', 'dsa', 'Kompetensi Individu', 'Kompetisi Internal STIS', 'Juara 3', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `nim` varchar(30) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`nim`, `nama`, `kelas`, `password`) VALUES
('', '', '', ''),
('1', 'asdasdasd', 'sdadasdas', 'aaaaaaaa'),
('12', 'a', 'a', 'aaaaaaaaa'),
('123123123', 'alwan', '2KS1123', 'aaaaaaaa'),
('202', 'alwan', '123', '123123123'),
('212011564', 'Erza', '2ST10', '123'),
('212011785', 'Lolo', '2ST11', '123123123'),
('222011011', 'beta', '2ks2', 'aaaaaaaa'),
('222011012', 'bebas2', '2ks1', '123123123'),
('222011347', 'Yanto', '2KS1', '123'),
('222011374', 'Alwan', '2KS1', '123'),
('222011375', 'mimi', '2ks2', '123123123'),
('222011377', 'Bento', '2KS1', 'namakubento'),
('222011378', 'bebas', '1', 'aaaaaaaaaa'),
('222011999', '', '', '123'),
('a', 'a', 'a', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ipkm`
--
ALTER TABLE `ipkm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ipkm`
--
ALTER TABLE `ipkm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
