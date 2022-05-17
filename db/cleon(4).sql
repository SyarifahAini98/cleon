-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2019 at 09:56 AM
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
(1, 1, '2019-12-04', 'Upload-2019-12-04-1', 'kmz', 40222, '../file/menara/KMS/Upload-2019-12-04-1.kmz', 1),
(2, 1, '2019-12-04', 'Upload-2019-12-04-1', 'xls', 25088, '../file/menara/excel/Upload-2019-12-04-1.xls', 2),
(3, 2, '2019-12-04', 'Upload-2019-12-04-2', 'kmz', 40222, '../file/menara/KMS/Upload-2019-12-04-2.kmz', 1),
(4, 2, '2019-12-04', 'Upload-2019-12-04-2', 'xls', 25088, '../file/menara/excel/Upload-2019-12-04-2.xls', 2);

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
-- Table structure for table `tb_atasan`
--

CREATE TABLE `tb_atasan` (
  `id_atasan` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nip` bigint(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_atasan`
--

INSERT INTO `tb_atasan` (`id_atasan`, `nama`, `nip`, `jabatan`) VALUES
(1, 'Tri Haryanto, ST, MT', 197307311999031005, 'Ka. Bidang Persandian dan Telekomunikasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita_acara`
--

CREATE TABLE `tb_berita_acara` (
  `id_berita` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `Nomor_surat` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tgl_survey` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita_acara`
--

INSERT INTO `tb_berita_acara` (`id_berita`, `id_form`, `Nomor_surat`, `tahun`, `tgl_survey`) VALUES
(1, 1, 1, 2019, '0000-00-00');

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
  `tgl_pengajuan` date NOT NULL,
  `status_form` enum('pemeriksaan','lengkap','tidak_lengkap') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_form_menara`
--

INSERT INTO `tb_form_menara` (`id_form`, `id_perusahaan`, `soal_1`, `soal_2`, `soal_3`, `soal_4`, `soal_5`, `soal_6`, `soal_7`, `soal_8`, `soal_9`, `soal_10`, `soal_11`, `tgl_pengajuan`, `status_form`) VALUES
(1, 2, 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', '2019-12-04', 'lengkap'),
(2, 2, 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', '2019-12-04', 'lengkap');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kecamatan`
--

CREATE TABLE `tb_kecamatan` (
  `digit_awal` int(11) NOT NULL,
  `kecamatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kecamatan`
--

INSERT INTO `tb_kecamatan` (`digit_awal`, `kecamatan`) VALUES
(1, 'DANUREJAN'),
(2, 'GEDONGTENGEN'),
(3, 'GONDOKUSUMAN'),
(4, 'GONDOMANAN'),
(5, 'JETIS'),
(6, 'KOTAGEDE'),
(7, 'KRATON'),
(8, 'MANTRIJERON'),
(9, 'MERGANGSAN'),
(10, 'NGAMPILAN'),
(11, 'PAKUALAMAN'),
(12, 'TEGALREJO'),
(13, 'UMBULHARJO'),
(14, 'WIROBRAJAN');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelurahan`
--

CREATE TABLE `tb_kelurahan` (
  `digit_awal` int(11) NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `digit_akhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelurahan`
--

INSERT INTO `tb_kelurahan` (`digit_awal`, `kelurahan`, `digit_akhir`) VALUES
(1, 'BAUSASRAN', 1),
(1, 'SURYATMAJAN', 2),
(1, 'TEGALPANGGUNG', 3),
(2, 'PRINGGOKUSUMAN', 1),
(2, 'SOSROMENDURAN', 2),
(3, 'BACIRO', 1),
(3, 'DEMANGAN', 2),
(3, 'KLITREN', 3),
(3, 'KOTABARU', 4),
(3, 'TERBAN', 5),
(4, 'NGUPASAN', 1),
(4, 'PRAWIRODIRJAN', 2),
(5, 'BUMIJO', 1),
(5, 'COKRODININGRATAN', 2),
(5, 'GOWONGAN', 3),
(6, 'PRENGGAN', 1),
(6, 'PURBAYAN', 2),
(6, 'REJOWINANGUN', 3),
(7, 'KADIPATEN', 1),
(7, 'PANEMBAHAN', 2),
(7, 'PATEHAN', 3),
(8, 'GEDONGKIWO', 1),
(8, 'MANTRIJERON', 2),
(8, 'SURYODININGRATAN', 3),
(9, 'BRONTOKUSUMAN', 1),
(9, 'KEPARAKAN', 2),
(9, 'WIROGUNAN', 3),
(10, 'NGAMPILAN', 1),
(10, 'NOTOPRAJAN', 2),
(11, 'GUNUNGKETUR', 1),
(11, 'PURWOKINANTI', 2),
(12, 'BENER', 1),
(12, 'KARANGWARU', 2),
(12, 'KRICAK', 3),
(12, 'TEGALREJO', 4),
(13, 'GIWANGAN', 1),
(13, 'MUJAMUJU', 2),
(13, 'PANDEYAN', 3),
(13, 'SEMAKI', 4),
(13, 'SOROSUTAN', 5),
(13, 'TAHUNAN', 6),
(13, 'WARUNGBOTO', 7),
(14, 'PAKUNCEN', 1),
(14, 'PATANGPULUHAN', 2),
(14, 'WIROBRAJAN', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengawas`
--

CREATE TABLE `tb_pengawas` (
  `id_pengawas` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nip` bigint(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengawas`
--

INSERT INTO `tb_pengawas` (`id_pengawas`, `nama`, `nip`, `jabatan`) VALUES
(1, 'Ananto Susetyawan, A. Md', 197904291998121001, 'Dinas Komunikasi Informatika & Persandian'),
(2, 'Laras Prilawati, A. Md', 198104042006042015, 'Dinas Penanaman Modal & Perizinan'),
(5, 'Ir. Ariatmawan Prihandono', 196401221990031006, 'Dinas Pertahanan & Tata Ruang'),
(6, 'Edy Suwantara', 196912061993031007, 'Dinas Pekerjaan Umum Perumahan & Kawasan Permukiman'),
(7, 'Nanang Supriyanta', 197804262009011005, 'Satuan Polisi Pamong Praja'),
(8, 'Turasno', 198410282010011003, 'Dinas Komunikasi Informatika & Persandian');

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
-- Table structure for table `tb_rekomendasi`
--

CREATE TABLE `tb_rekomendasi` (
  `id_rekomendasi` int(11) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tgl_rekomendasi` date NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `alamat_rekomendasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rekomendasi`
--

INSERT INTO `tb_rekomendasi` (`id_rekomendasi`, `id_tempat`, `no`, `nama`, `tgl_rekomendasi`, `tujuan`, `alamat_rekomendasi`) VALUES
(1, 1, 1, '', '2019-12-04', 'irvan', 'jogja');

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
  `tipe_site` enum('1','3','4') NOT NULL,
  `tinggi` double NOT NULL,
  `status_tempat` enum('pengajuan','revisi','proses_survey','proses_rekom','cetak_rekom','belum_dikirim') NOT NULL,
  `alasan` text NOT NULL,
  `tgl_disetujui` date NOT NULL,
  `aset_lokasi` enum('persil warga','pemkot yogya','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat_menara`
--

INSERT INTO `tb_tempat_menara` (`id_tempat`, `id_form`, `nomor`, `site_id`, `alamat`, `kelurahan`, `kecamatan`, `lat`, `lng`, `tipe_menara`, `tipe_site`, `tinggi`, `status_tempat`, `alasan`, `tgl_disetujui`, `aset_lokasi`) VALUES
(1, 1, 1, 12121, 'Yogyakarta', 'Yogyoakarta', 'Mirota Kampus', -7.81668, 110.37929, 'Macrocell-RT', '1', 100, 'proses_survey', 'diterima dengan menggunakan aset Pemkot Yogya', '0000-00-00', 'pemkot yogya'),
(2, 1, 2, 12122, 'Bulaksumur, Caturtunggal, Kec. Depok, Kabupaten Sl', 'Bulaksumur', 'Depok', -7.7713794, 110.375111, 'Macrocell-GF', '', 100, 'revisi', 'kamu baik', '0000-00-00', ''),
(3, 1, 3, 12123, 'Jl. Blunyah Rejo Tr. II No.1130, Karangwaru, Kec. ', 'Karangwaru', 'Tegalrejo', -7.7713527, 110.368745, 'Macrocell-GF', '', 100, 'proses_survey', 'diterima dengan menggunakan persil warga', '0000-00-00', 'persil warga'),
(4, 2, 1, 12121, 'Yogyakarta', 'Yogyoakarta', 'Mirota Kampus', -7.81668, 110.37929, 'Macrocell-GF', '', 100, 'pengajuan', '', '0000-00-00', ''),
(5, 2, 2, 12122, 'Bulaksumur, Caturtunggal, Kec. Depok, Kabupaten Sl', 'Bulaksumur', 'Depok', -7.7713794, 110.375111, 'Macrocell-GF', '', 100, 'pengajuan', '', '0000-00-00', ''),
(6, 2, 3, 12123, 'Jl. Blunyah Rejo Tr. II No.1130, Karangwaru, Kec. ', 'Karangwaru', 'Tegalrejo', -7.7713527, 110.368745, 'Microcell', '', 100, 'pengajuan', '', '0000-00-00', '');

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
-- Indexes for table `tb_atasan`
--
ALTER TABLE `tb_atasan`
  ADD PRIMARY KEY (`id_atasan`);

--
-- Indexes for table `tb_berita_acara`
--
ALTER TABLE `tb_berita_acara`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_form` (`id_form`);

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
-- Indexes for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  ADD PRIMARY KEY (`digit_awal`);

--
-- Indexes for table `tb_pengawas`
--
ALTER TABLE `tb_pengawas`
  ADD PRIMARY KEY (`id_pengawas`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`),
  ADD UNIQUE KEY `nm_perusahaan` (`nm_perusahaan`);

--
-- Indexes for table `tb_rekomendasi`
--
ALTER TABLE `tb_rekomendasi`
  ADD PRIMARY KEY (`id_rekomendasi`),
  ADD KEY `id_tempat` (`id_tempat`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_akun`
--
ALTER TABLE `tb_akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_atasan`
--
ALTER TABLE `tb_atasan`
  MODIFY `id_atasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_berita_acara`
--
ALTER TABLE `tb_berita_acara`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  MODIFY `digit_awal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_pengawas`
--
ALTER TABLE `tb_pengawas`
  MODIFY `id_pengawas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_rekomendasi`
--
ALTER TABLE `tb_rekomendasi`
  MODIFY `id_rekomendasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_berita_acara`
--
ALTER TABLE `tb_berita_acara`
  ADD CONSTRAINT `tb_berita_acara_ibfk_1` FOREIGN KEY (`id_form`) REFERENCES `tb_form_menara` (`id_form`);

--
-- Constraints for table `tb_form_fiber`
--
ALTER TABLE `tb_form_fiber`
  ADD CONSTRAINT `tb_form_fiber_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `tb_perusahaan` (`id_perusahaan`);

--
-- Constraints for table `tb_rekomendasi`
--
ALTER TABLE `tb_rekomendasi`
  ADD CONSTRAINT `tb_rekomendasi_ibfk_1` FOREIGN KEY (`id_tempat`) REFERENCES `tb_tempat_menara` (`id_tempat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
