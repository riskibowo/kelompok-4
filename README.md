# kelompok-4
```
Johanes Mula Febrian Sihombing (312210224)
Riski probo sadewo (312210191)
faiz fauzi muzaki
rafa pramuditya
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

