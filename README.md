# kelompok-4
```
Johanes Mula Febrian Sihombing (312210224)
Riski probo sadewo (312210191)
faiz fauzi muzaki (312210278)
rafa pramuditya (312210181)
ivan
```

![intro](https://github.com/riskibowo/kelompok-4/assets/115862112/ed983310-9ad2-4093-9395-e139c0b779bb)

```
Setelah Anda memasukkan perintah "mysql -u root" di command prompt atau terminal, Anda akan diminta memasukkan kata sandi untuk pengguna root. Setelah memasukkan kata sandi, Anda akan masuk ke shell MySQL sebagai pengguna root. Dari sini, Anda dapat mulai menjalankan perintah MySQL dan mengelola database Anda
```

![pertama yg harus di lakukan](https://github.com/riskibowo/kelompok-4/assets/115862112/278b12c5-07ce-4f92-907c-58164c76852c)

```
CREATE TABLE `instansi` (
  `kode_instansi` varchar(15) NOT NULL,
  `nama_instansi` varchar(200) DEFAULT NULL,
  `alamat` text DEFAULT NULL
```

```
INSERT INTO `instansi` (`kode_instansi`, `nama_instansi`, `alamat`) VALUES
('ppp', 'PT.BBB', 'jl.B no.4'),
('PPT', 'PT.KTD', 'jl.B no.5'),
('Skep', 'PT.ABC', 'jl.B no.1'),
('Sp', 'PT.ACB', 'jl.B no.2'),
('Spp', 'PT.AB', 'jl.B no.3');
```

<img width="546" alt="image" src="https://github.com/riskibowo/kelompok-4/assets/115862112/0038eab4-eaa8-425e-90c5-b808ee8594b4">

```
CREATE TABLE `pengguna` (
  `id_pengguna` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL
  ```

  ```
INSERT INTO `pengguna` (`id_pengguna`, `username`, `password`, `nama_lengkap`, `last_login`) VALUES
(1, 'admin', 'admin', 'USER 1', '2016-11-11 13:57:22'),
(3, 'admin', 'admin', 'USER 1', '2016-11-11 13:57:22'),
(4, 'admin2', 'admin2', 'USER 2', '2016-11-11 13:57:23'),
(5, 'admin3', 'admin3', 'USER 3', '2016-11-11 13:57:24'),
(6, 'admin4', 'admin4', 'USER 4', '2016-11-11 13:57:25'),
(7, 'admin6', 'admin6', 'USER 6', '2016-11-11 13:57:26');
```

![image](https://github.com/riskibowo/kelompok-4/assets/115862112/93cf10c1-a1b2-45b2-ad74-0b77a05184c9)

```
CREATE TABLE `surat_keluar` (
  `no_surat` varchar(30) NOT NULL,
  `tgl_surat` date DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `sifat` enum('BIASA','RAHASIA','SANGAT RAHASIA','SEGERA','PENTING','KONFIDENSIAL') NOT NULL,
  `lampiran` int(3) DEFAULT NULL,
  `kode_instansi` varchar(15) NOT NULL,
  `no_surat_masuk` varchar(30) DEFAULT NULL,
  `file` text DEFAULT NULL
```

```
INSERT INTO `surat_keluar` (`no_surat`, `tgl_surat`, `perihal`, `sifat`, `lampiran`, `kode_instansi`, `no_surat_masuk`, `file`) VALUES
('', '2023-08-02', 'surat edaran', 'BIASA', 10, 'Spp', '3122', 'pdf'),
('1011', '2023-07-01', 'surat pengelola keuangan', 'RAHASIA', 1, 'ppp', '31111', 'pdf'),
('10987', '2023-07-02', 'surat perjanjian', 'RAHASIA', 123, 'Spp', '3177', 'pdf'),
('1574', '2023-07-03', 'surat penawaran', 'RAHASIA', 871, 'Sp', '31111', 'pdf '),
('1877', '2023-07-18', 'surat keputusan', 'BIASA', 198, 'Skep', '3133', 'pdf'),
('1933', '2023-07-05', 'surat permohonan', 'BIASA', 18, 'PPT', '3122', 'pdf');
```
![image](https://github.com/riskibowo/kelompok-4/assets/115862112/0d7d008d-8730-418c-a097-2418f1a7fb45)

```
CREATE TABLE `surat_masuk` (
  `no_surat` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `perihal` text DEFAULT NULL,
  `sifat` enum('BIASA','RAHASIA','SANGAT RAHASIA','SEGERA','PENTING','KONFIDENSIAL') DEFAULT NULL,
  `lampiran` int(3) DEFAULT 0,
  `kode_instansi` varchar(15) NOT NULL,
  `file` text DEFAULT NULL
```

```
INSERT INTO `surat_masuk` (`no_surat`, `tgl_surat`, `tgl_diterima`, `perihal`, `sifat`, `lampiran`, `kode_instansi`, `file`) VALUES
('31111', '2023-07-02', '2023-07-31', 'surat pengunduran diri', 'BIASA', 3, 'Skep', 'pdf'),
('3122', '2023-07-01', '2023-07-02', 'surat penugasan', 'RAHASIA', 2, 'PPT', 'pdf'),
('3133', '2023-07-03', '2023-07-06', 'surat kerjasama bisnis', 'BIASA', 1, 'Skep', 'pdf'),
('3144', '2023-07-21', '2023-07-29', 'surat persetujuan HRD meminta cuti', 'PENTING', 1, 'Sp', 'pdf'),
('3177', '2023-07-24', '2023-07-27', 'surat lamaran kerja', 'BIASA', 1, 'ppp', 'pdf'),
('3199', '2023-07-01', '2023-07-31', 'surat laporan transaksi', 'PENTING', 5, 'ppp', 'pdf');
```
![image](https://github.com/riskibowo/kelompok-4/assets/115862112/89e7ee1f-2185-47a2-9e61-0188c1775fe9)



