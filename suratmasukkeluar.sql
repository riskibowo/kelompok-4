-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2023 pada 10.49
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suratmasukkeluar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `instansi`
--

CREATE TABLE `instansi` (
  `kode_instansi` varchar(15) NOT NULL,
  `nama_instansi` varchar(200) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `instansi`
--

INSERT INTO `instansi` (`kode_instansi`, `nama_instansi`, `alamat`) VALUES
('ppp', 'PT.BBB', 'jl.B no.4'),
('PPT', 'PT.KTD', 'jl.B no.5'),
('Skep', 'PT.ABC', 'jl.B no.1'),
('Sp', 'PT.ACB', 'jl.B no.2'),
('Spp', 'PT.AB', 'jl.B no.3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `username`, `password`, `nama_lengkap`, `last_login`) VALUES
(1, 'admin', 'admin', 'USER 1', '2016-11-11 13:57:22'),
(3, 'admin', 'admin', 'USER 1', '2016-11-11 13:57:22'),
(4, 'admin2', 'admin2', 'USER 2', '2016-11-11 13:57:23'),
(5, 'admin3', 'admin3', 'USER 3', '2016-11-11 13:57:24'),
(6, 'admin4', 'admin4', 'USER 4', '2016-11-11 13:57:25'),
(7, 'admin6', 'admin6', 'USER 6', '2016-11-11 13:57:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `no_surat` varchar(30) NOT NULL,
  `tgl_surat` date DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `sifat` enum('BIASA','RAHASIA','SANGAT RAHASIA','SEGERA','PENTING','KONFIDENSIAL') NOT NULL,
  `lampiran` int(3) DEFAULT NULL,
  `kode_instansi` varchar(15) NOT NULL,
  `no_surat_masuk` varchar(30) DEFAULT NULL,
  `file` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`no_surat`, `tgl_surat`, `perihal`, `sifat`, `lampiran`, `kode_instansi`, `no_surat_masuk`, `file`) VALUES
('', '2023-08-02', 'surat edaran', 'BIASA', 10, 'Spp', '3122', 'pdf'),
('1011', '2023-07-01', 'surat pengelola keuangan', 'RAHASIA', 1, 'ppp', '31111', 'pdf'),
('10987', '2023-07-02', 'surat perjanjian', 'RAHASIA', 123, 'Spp', '3177', 'pdf'),
('1574', '2023-07-03', 'surat penawaran', 'RAHASIA', 871, 'Sp', '31111', 'pdf '),
('1877', '2023-07-18', 'surat keputusan', 'BIASA', 198, 'Skep', '3133', 'pdf'),
('1933', '2023-07-05', 'surat permohonan', 'BIASA', 18, 'PPT', '3122', 'pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `no_surat` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `perihal` text DEFAULT NULL,
  `sifat` enum('BIASA','RAHASIA','SANGAT RAHASIA','SEGERA','PENTING','KONFIDENSIAL') DEFAULT NULL,
  `lampiran` int(3) DEFAULT 0,
  `kode_instansi` varchar(15) NOT NULL,
  `file` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`no_surat`, `tgl_surat`, `tgl_diterima`, `perihal`, `sifat`, `lampiran`, `kode_instansi`, `file`) VALUES
('31111', '2023-07-02', '2023-07-31', 'surat pengunduran diri', 'BIASA', 3, 'Skep', 'pdf'),
('3122', '2023-07-01', '2023-07-02', 'surat penugasan', 'RAHASIA', 2, 'PPT', 'pdf'),
('3133', '2023-07-03', '2023-07-06', 'surat kerjasama bisnis', 'BIASA', 1, 'Skep', 'pdf'),
('3144', '2023-07-21', '2023-07-29', 'surat persetujuan HRD meminta cuti', 'PENTING', 1, 'Sp', 'pdf'),
('3177', '2023-07-24', '2023-07-27', 'surat lamaran kerja', 'BIASA', 1, 'ppp', 'pdf'),
('3199', '2023-07-01', '2023-07-31', 'surat laporan transaksi', 'PENTING', 5, 'ppp', 'pdf');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`kode_instansi`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`no_surat`),
  ADD KEY `kode_instansi_kl` (`kode_instansi`),
  ADD KEY `no_sm` (`no_surat_masuk`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`no_surat`),
  ADD KEY `kode_instansi` (`kode_instansi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD CONSTRAINT `kode_instansi_kl` FOREIGN KEY (`kode_instansi`) REFERENCES `instansi` (`kode_instansi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `no_sm` FOREIGN KEY (`no_surat_masuk`) REFERENCES `surat_masuk` (`no_surat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD CONSTRAINT `kode_instansi` FOREIGN KEY (`kode_instansi`) REFERENCES `instansi` (`kode_instansi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
