-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Apr 2025 pada 19.51
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `jenis_barang`, `harga_beli`, `harga_jual`) VALUES
('KB001', 'Botol', 'Barang Konsumsi', 300, 5000),
('KB002', 'Tas', 'Barang Produksi', 20000, 50000),
('KB003', 'Mouse', 'Barang Ekonomi', 35000, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(6) NOT NULL,
  `nama_kasir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `jenis_kelamin`, `telepon`, `alamat`) VALUES
('K001', 'Rahayu', 'Perempuan', '08997788213', 'Jakarta'),
('K002', 'Sugeng', 'Laki-Laki', '089644555231', 'Tangerang'),
('K003', 'Tika', 'Perempuan', '082177766553', 'Tangerang'),
('K004', 'Tono', 'Laki-Laki', '08961234321', 'Depok'),
('K005', 'Niko', 'Laki-Laki', '0876544433522', 'Bogor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(6) NOT NULL,
  `nama_pelanggan` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `telepon`, `alamat`) VALUES
('01', 'Rizqi M', 'Laki-Laki', '085782128527', 'Jakarta'),
('02', 'Echa', 'Perempuan', '08967775554442', 'Jakarta'),
('03', 'Sena', 'Laki-Laki', '08573355544442', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
