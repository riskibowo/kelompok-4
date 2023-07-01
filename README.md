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
<img width="561" alt="SELECT from instansi" src="https://github.com/riskibowo/kelompok-4/assets/115862112/adf5a16f-1d82-4ff1-a9e9-efca3dff9fdc">
