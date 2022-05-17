-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2019 at 05:53 AM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cleon`
--

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `tgl_upload` date NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` int(20) NOT NULL,
  `file` varchar(255) NOT NULL,
  `id_tipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `id_form`, `tgl_upload`, `nama_file`, `tipe_file`, `ukuran_file`, `file`, `id_tipe`) VALUES
(1, 2, '2019-11-27', 'Uplod(4)-2019-11-27-2', 'kmz', 40222, '../file/menara/KMS/Uplod(4)-2019-11-27-2.kmz', 1),
(2, 2, '2019-11-27', 'Uplod(4)-2019-11-27-2', 'xls', 24064, '../file/menara/excel/Uplod(4)-2019-11-27-2.xls', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun`
--

CREATE TABLE `tb_akun` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status_akun` enum('pengajuan','belum_verifikasi','terverifikasi','ditolak') NOT NULL DEFAULT 'pengajuan',
  `level` enum('admin','user') NOT NULL DEFAULT 'user',
  `hint` varchar(32) NOT NULL,
  `tipe_akun` enum('perusahaan','mitra') NOT NULL,
  `nm_user` varchar(50) NOT NULL,
  `no_hp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akun`
--

INSERT INTO `tb_akun` (`id_akun`, `username`, `email`, `password`, `status_akun`, `level`, `hint`, `tipe_akun`, `nm_user`, `no_hp`) VALUES
(1, 'admin', 'uwutest22@gmail.com', '698d51a19d8a121ce581499d7b701668', 'terverifikasi', 'admin', '', 'perusahaan', '', ''),
(10, 'overs.academy@gmail.com', 'overs.academy@gmail.com', '202cb962ac59075b964b07152d234b70', 'terverifikasi', 'user', 'b6edc1cd1f36e45daf6d7824d7bb2283', 'perusahaan', 'Sans', ''),
(11, 'irvanjunaidi9@gmail.com', 'irvanjunaidi9@gmail.com', '202cb962ac59075b964b07152d234b70', 'terverifikasi', 'user', 'e0c641195b27425bb056ac56f8953d24', 'mitra', 'irvan', ''),
(12, 'irvanjunaidi2@gmail.com', 'irvanjunaidi2@gmail.com', '202cb962ac59075b964b07152d234b70', '', 'user', '', 'perusahaan', 'irvan', '088805949569');

-- --------------------------------------------------------

--
-- Table structure for table `tb_file`
--

CREATE TABLE `tb_file` (
  `id_tipe` int(11) NOT NULL,
  `tipe_file` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_file`
--

INSERT INTO `tb_file` (`id_tipe`, `tipe_file`) VALUES
(1, 'KMZ'),
(2, 'excel');

-- --------------------------------------------------------

--
-- Table structure for table `tb_file_fiber`
--

CREATE TABLE `tb_file_fiber` (
  `id` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `tgl_upload` date NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `id_tipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_form_fiber`
--

CREATE TABLE `tb_form_fiber` (
  `id_form` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `soal_1` enum('Ada','Tidak') NOT NULL,
  `soal_2` enum('Ada','Tidak') NOT NULL,
  `soal_3` enum('Ada','Tidak') NOT NULL,
  `soal_4` enum('Ada','Tidak') NOT NULL,
  `soal_5` enum('Ada','Tidak') NOT NULL,
  `soal_6` enum('Ada','Tidak') NOT NULL,
  `soal_7` enum('Ada','Tidak') NOT NULL,
  `soal_8` enum('Ada','Tidak') NOT NULL,
  `soal_9` enum('Ada','Tidak') NOT NULL,
  `soal_10` enum('Ada','Tidak') NOT NULL,
  `tgl_pengajuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_form_menara`
--

CREATE TABLE `tb_form_menara` (
  `id_form` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `soal_1` enum('Ada','Tidak') NOT NULL,
  `soal_2` enum('Ada','Tidak') NOT NULL,
  `soal_3` enum('Ada','Tidak') NOT NULL,
  `soal_4` enum('Ada','Tidak') NOT NULL,
  `soal_5` enum('Ada','Tidak') NOT NULL,
  `soal_6` enum('Ada','Tidak') NOT NULL,
  `soal_7` enum('Ada','Tidak') NOT NULL,
  `soal_8` enum('Ada','Tidak') NOT NULL,
  `soal_9` enum('Ada','Tidak') NOT NULL,
  `soal_10` enum('Ada','Tidak') NOT NULL,
  `soal_11` enum('Ada','Tidak') NOT NULL,
  `tgl_pengajuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_form_menara`
--

INSERT INTO `tb_form_menara` (`id_form`, `id_perusahaan`, `soal_1`, `soal_2`, `soal_3`, `soal_4`, `soal_5`, `soal_6`, `soal_7`, `soal_8`, `soal_9`, `soal_10`, `soal_11`, `tgl_pengajuan`) VALUES
(1, 1, 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', '2019-11-27 00:00:00'),
(2, 2, 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', '2019-11-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_perusahaan`
--

CREATE TABLE `tb_perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `nm_perusahaan` varchar(50) NOT NULL,
  `alamat_perusahaan` varchar(50) NOT NULL,
  `status_aktif` enum('terkirim','ditolak','diterima') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_perusahaan`
--

INSERT INTO `tb_perusahaan` (`id_perusahaan`, `id_akun`, `nm_perusahaan`, `alamat_perusahaan`, `status_aktif`) VALUES
(1, 10, 'XYZ', 'X', 'diterima'),
(2, 11, 'PT ABC', 'Jl.Abc', 'diterima'),
(3, 12, 'PT ABC3', 'JL.ABC3', 'terkirim');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal`
--

CREATE TABLE `tb_soal` (
  `id` int(11) NOT NULL,
  `soal` text NOT NULL,
  `kategori` enum('menara','fiber optik') NOT NULL,
  `id_tipe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal`
--

INSERT INTO `tb_soal` (`id`, `soal`, `kategori`, `id_tipe`) VALUES
(1, 'Surat permohonan rekomendasi kepada Kepala Dinas Komunikasi Informatika dan Persandian (ttd Pimpinan Perusahaan)\r\ncatatan : memuat no surat, tanggal surat, data perusahaan dan lampiran data titik lokasi menara/fo', 'menara', '2'),
(2, 'FC bukti pembayaran PBB tahun berjalan, sertifikat dan surat perjanjian/pernyataan persetujuan penggunaan tanah\r\ncatatan : untuk persil warga/masyarakat & dijadikan satu per lokasi menara', 'menara', ''),
(3, 'Surat pernyataan yang menyatakan bahwa Menara Telekomunikasi akan beroperasional paling lambat 18 (delapan belas) bulan sejak Rekomendasi diterbitkan (ttd Pimpinan Perusahaan)\r\ncatatan : lampiran data titik lokasi menara sesuai pengajuan', 'menara', ''),
(4, 'Rekomendasi titik lokasi Menara Telekomunikasi, melampirkan srat pernyataan kesanggupan untuk menjadi Menara bersama (ttd Pimpinan Perusahaan)\r\ncatatan : lampiran data titik lokasi menara sesuai pengajuan', 'menara', ''),
(5, 'Peta lokasi titik lokasi Menara Telekomunikasi atau pergelaran jaringan Fiber Optik dan titik tiang Fiber Optik\r\ncatatan : persebaran menara/fo dalam 1 peta kota Yogyakarta sesuai pengajuan', 'menara', ''),
(6, 'FC Dokumen legalitas perusahaan\r\ncatatan : fc akta pendirian, fc ktp pimpinan, fc npwp perusahaan, fc tanda daftar perusahaan & fc perizinan lain yang dimiliki', 'menara', ''),
(7, 'Surat pernyataan yang berisi bahwa fotocopy dokumen yang dilampirkan sesuai dengan aslinya (ttd Pimpinan Perusahaan)', 'menara', ''),
(8, 'Surat kuasa atau surat penunjukan untuk mengurus Rekomendasi titik lokasi Menara Telekomunikasi atau jaringan Fiber Optik\r\ncatatan : apabila dikuasakan pihak lain bukan dari perusahaan & bermatrai Rp 6.000,-', 'menara', ''),
(9, 'Data/file softcopy titik lokasi Menara Telekomunikasi atau pergelaran jaringan Fiber Optik\r\ncatatan : data menara/fo selengkap mungkin sesuai pengajuan', 'menara', '1'),
(10, 'Surat keterangan kelaikan konstruksi bangunan untuk pendirian Menara Telekomunikasi dari penyedia jasa pengawasan yang memiliki sertifikat keahlian atau lembaga yang berkompeten di bidang bangunan gedung\r\ncatatan : sejumlah bangunan yang ada menara ketinggian s/d 6 meter (bukan sejumlah menara)', 'menara', ''),
(11, 'Surat pernyataan kesanggupan pemohon untuk bertanggung jawab dan menanggungjawab segala resiko/kerusakan/kerugian pihak lain termasuk pembiayaannya akibat bangunan Menara Telekomunikasi roboh (ttd Pimpinan Perusahaan)\r\ncatatan : lampiran data menara/fo sesuai pengajuan', 'menara', ''),
(12, 'Surat permohonan rekomendasi kepada Kepala Dinas Komunikasi Informatika dan Persandian (ttd Pimpinan Perusahaan)\r\ncatatan : memuat no surat, tanggal surat, data perusahaan dan lampiran data titik lokasi menara/fo', 'fiber optik', '2'),
(13, 'Rekomendasi jaringan Fiber Optik harus melampirkan FC izin penyelenggaraan jaringan tetap tertutup atau FC izin prinsip penyelenggaraan jaringan tetap tertutup dari Kementerian Komunikasi dan Informatika yang dilegalisir', 'fiber optik', ''),
(14, 'Surat pernyataan kesanggupan sewa aset Pemerintah Daerah', 'fiber optik', ''),
(15, 'Kesanggupan berpartisipasi untuk peningkatan sarana prasarana pelayanan publik kepada Pemerintah Daerah (ttd Pimpinan Perusahaan)\r\ncatatan : apabila menggunakan aset pemkot & lampiran data titik lokasi menara/fo sesuai pengajuan', 'fiber optik', ''),
(16, 'Rekomendasi jaringan Fiber Optik, melampirkan surat pernyataan kesanggupan untuk menjadi tiang Fiber Optik bersama (ttd Pimpinan Perusahaan)\r\ncatatan : lampiran data titik tiang fo sesuai pengajuan', 'fiber optik', ''),
(17, 'Peta lokasi titik lokasi Menara Telekomunikasi atau pergelaran jaringan Fiber Optik dan titik tiang Fiber Optik\r\ncatatan : persebaran menara/fo dalam 1 peta kota Yogyakarta sesuai pengajuan', 'fiber optik', ''),
(18, 'FC Dokumen legalitas perusahaan\r\ncatatan : fc akta pendirian, fc ktp pimpinan, fc npwp perusahaan, fc tanda daftar perusahaan & fc perizinan lain yang dimiliki', 'fiber optik', ''),
(19, 'Surat pernyataan yang berisi bahwa fotocopy dokumen yang dilampirkan sesuai dengan aslinya (ttd Pimpinan Perusahaan)', 'fiber optik', ''),
(20, 'Surat kuasa atau surat penunjukan untuk mengurus Rekomendasi titik lokasi Menara Telekomunikasi atau jaringan Fiber Optik\r\ncatatan : apabila dikuasakan pihak lain bukan dari perusahaan & bermatrai Rp 6.000,-', 'fiber optik', ''),
(21, 'Data/file softcopy titik lokasi Menara Telekomunikasi atau pergelaran jaringan Fiber Optik catatan : data menara/fo selengkap mungkin sesuai pengajuan', 'fiber optik', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat_fiber`
--

CREATE TABLE `tb_tempat_fiber` (
  `id_tempat` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `tipe_menara` varchar(50) NOT NULL,
  `tinggi` double NOT NULL,
  `status_tempat` enum('pengajuan','ditolak','hasil_survey','proses_rekom','cetak_rekom','belum_dikirim','pemeriksaan_berkas') NOT NULL,
  `alasan` text NOT NULL,
  `tgl_disetujui` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat_menara`
--

CREATE TABLE `tb_tempat_menara` (
  `id_tempat` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `tipe_menara` varchar(50) NOT NULL,
  `tinggi` double NOT NULL,
  `status_tempat` enum('pengajuan','ditolak','proses_survey','proses_rekom','cetak_rekom','belum_dikirim','pemeriksaan_berkas') NOT NULL,
  `alasan` text NOT NULL,
  `tgl_disetujui` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat_menara`
--

INSERT INTO `tb_tempat_menara` (`id_tempat`, `id_form`, `nomor`, `site_id`, `alamat`, `kelurahan`, `kecamatan`, `lat`, `lng`, `tipe_menara`, `tinggi`, `status_tempat`, `alasan`, `tgl_disetujui`) VALUES
(1, 1, 1, 1, 'alamat', 'lurah', 'camat', 12, 12, '', 123, 'cetak_rekom', '', '2019-11-27'),
(2, 2, 3, 12121, 'Yogyakarta', 'Yogyoakarta', 'Mirota Kampus', -7.81668, 110.37929, 'RT', 100, 'pengajuan', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_akun`
--
ALTER TABLE `tb_akun`
  ADD PRIMARY KEY (`id_akun`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tb_file`
--
ALTER TABLE `tb_file`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `tb_file_fiber`
--
ALTER TABLE `tb_file_fiber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_form_fiber`
--
ALTER TABLE `tb_form_fiber`
  ADD PRIMARY KEY (`id_form`),
  ADD KEY `id_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `tb_form_menara`
--
ALTER TABLE `tb_form_menara`
  ADD PRIMARY KEY (`id_form`);

--
-- Indexes for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`),
  ADD UNIQUE KEY `nm_perusahaan` (`nm_perusahaan`);

--
-- Indexes for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tempat_fiber`
--
ALTER TABLE `tb_tempat_fiber`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indexes for table `tb_tempat_menara`
--
ALTER TABLE `tb_tempat_menara`
  ADD PRIMARY KEY (`id_tempat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_akun`
--
ALTER TABLE `tb_akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_file`
--
ALTER TABLE `tb_file`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_file_fiber`
--
ALTER TABLE `tb_file_fiber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_form_fiber`
--
ALTER TABLE `tb_form_fiber`
  MODIFY `id_form` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_form_menara`
--
ALTER TABLE `tb_form_menara`
  MODIFY `id_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_soal`
--
ALTER TABLE `tb_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_tempat_fiber`
--
ALTER TABLE `tb_tempat_fiber`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tempat_menara`
--
ALTER TABLE `tb_tempat_menara`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_form_fiber`
--
ALTER TABLE `tb_form_fiber`
  ADD CONSTRAINT `tb_form_fiber_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `tb_perusahaan` (`id_perusahaan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
