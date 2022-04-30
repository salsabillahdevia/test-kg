-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Waktu pembuatan: 30 Apr 2022 pada 07.24
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kompas_gramedia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_buku`
--

CREATE TABLE `penjualan_buku` (
  `id_penjualan` int(11) NOT NULL,
  `ean` varchar(15) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga_setelah_diskon` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(5) NOT NULL,
  `tgl_beli` varchar(20) NOT NULL,
  `pajak` varchar(3) NOT NULL,
  `diskon` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan_buku`
--

INSERT INTO `penjualan_buku` (`id_penjualan`, `ean`, `judul`, `jumlah`, `harga_setelah_diskon`, `harga`, `berat`, `tgl_beli`, `pajak`, `diskon`) VALUES
(1, '40201120013', 'Koleksi Kasus Sherlock Holmes', 1, 32680, 38000, 250, '9/8/2014 16:07:59', 'BKP', '14%'),
(2, '40108009', 'Horeluya', 1, 31000, 31000, 199, '9/8/2014 16:07:02', 'DTP', '0%'),
(3, '236112540', 'Sup Tomat Sepatu Basah', 1, 28208, 32800, 175, '9/8/2014 16:06:32', 'DTP', '14%'),
(4, '20101120003', 'Menciptakan Karakter Tokoh', 1, 25800, 30000, 250, '9/8/2014 16:06:00', 'BKP', '14%'),
(5, '121141626', 'Aplikasi untuk Jahil', 1, 29928, 34800, 170, '9/8/2014 16:05:30', 'BKP', '14%'),
(6, '41101130012', 'Facelift', 1, 30100, 35000, 234, '9/8/2014 16:04:59', 'BKP', '14%'),
(7, '20101120050', 'Kisah Muram di Restoran Cepat Saji', 1, 34400, 40000, 234, '9/8/2014 16:04:31', 'BKP', '14%'),
(8, '237112695', 'Secret Psychology of Millionaire Traders', 1, 45408, 52800, 300, '9/8/2014 16:02:24', 'DTP', '14%'),
(9, '237120157', 'Jalan Pintas menjadi Kaya', 1, 89800, 89800, 500, '9/8/2014 16:01:19', 'DTP', '0%'),
(10, '40101100012', 'Entrok', 1, 45000, 45000, 199, '9/8/2014 16:00:08', 'DTP', '0%'),
(11, '150131765', 'A Town Where You Live 07', 1, 15910, 18500, 150, '9/8/2014 15:59:00', 'BKP', '14%'),
(12, '150140053', 'A Town Where You Live Vol 11', 1, 15910, 18500, 225, '9/8/2014 15:58:16', 'BKP', '14%'),
(13, '150132413', 'A Town Where You Live Vol 10', 1, 15910, 18500, 225, '9/8/2014 15:57:46', 'BKP', '14%'),
(14, '150131956', 'A Town Where You Live 08', 1, 15910, 18500, 225, '9/8/2014 15:57:17', 'BKP', '14%'),
(15, '150132222', 'A Town Where You Live 09', 1, 18500, 18500, 225, '9/8/2014 15:56:48', 'BKP', '0%'),
(16, '150130598', 'A Town Where You Live 03', 1, 15910, 18500, 105, '9/8/2014 15:56:17', 'BKP', '14%'),
(17, '150130345', 'A Town Where You Live 01', 1, 15910, 18500, 140, '9/8/2014 15:55:45', 'BKP', '14%'),
(18, '150130440', 'A Town Where You Live 02', 1, 15910, 18500, 140, '9/8/2014 15:55:12', 'BKP', '14%'),
(19, '150131315', 'A Town Where You Live 06', 1, 15910, 18500, 100, '9/8/2014 15:54:38', 'BKP', '14%'),
(20, '150130883', 'A Town Where You Live 04', 1, 15910, 18500, 105, '9/8/2014 15:54:05', 'BKP', '14%'),
(21, '150130884', 'A Town Where You Live 05', 1, 15910, 18500, 105, '9/8/2014 15:53:34', 'BKP', '14%'),
(22, '20801140035', 'Memahami Bisnis Bank Syariah', 1, 84280, 98000, 234, '9/8/2014 15:52:04', 'BKP', '14%'),
(23, '150141758', 'Sushi Chef Tsukasa Vol 01', 1, 15910, 18500, 225, '9/8/2014 15:50:33', 'BKP', '14%'),
(24, '150130193', 'New KungFu Boy 01 Premium', 1, 25800, 30000, 280, '9/8/2014 15:49:09', 'BKP', '14%'),
(25, '40101130065', 'A Wish For Love', 1, 58480, 68000, 234, '9/8/2014 15:47:53', 'BKP', '14%'),
(26, '40101100005', 'Spring in London', 1, 36120, 42000, 199, '9/8/2014 15:47:24', 'DTP', '14%'),
(27, '40201140079', 'Pembunuhan Monogram', 1, 66300, 78000, 234, '9/8/2014 15:46:14', 'BKP', '15%'),
(28, '82S25309', 'Kisah Tiga Kerajaan Sam Kok Jilid 2', 1, 30100, 35000, 168, '9/8/2014 15:43:54', 'DTP', '14%'),
(29, '89504090284', 'Kisah Tiga Kerajaan Sam Kok Jilid 6', 1, 30100, 35000, 172, '9/8/2014 15:43:23', 'DTP', '14%'),
(30, '89504090299', 'Kisah Tiga Kerajaan Sam Kok Jilid 9', 1, 30100, 35000, 171, '9/8/2014 15:42:51', 'DTP', '14%'),
(31, '82S24709', 'Kisah Tiga Kerajaan Sam Kok Jilid 1', 1, 30100, 35000, 161, '9/8/2014 15:42:20', 'DTP', '14%'),
(32, '89504090256', 'Kisah Tiga Kerajaan Sam Kok Jilid 3', 1, 30100, 35000, 169, '9/8/2014 15:41:49', 'DTP', '14%'),
(33, '121120673', 'Trik Memanfaatkan Youtube untuk Bisnis', 1, 29928, 34800, 150, '9/8/2014 15:40:29', 'DTP', '14%'),
(34, '150141679', 'Magi Vol 09', 1, 15910, 18500, 225, '9/8/2014 15:39:18', 'BKP', '14%'),
(35, '150132121', 'Magi 03', 1, 15910, 18500, 225, '9/8/2014 15:38:49', 'BKP', '14%'),
(36, '150131698', 'Magi 01', 1, 15910, 18500, 225, '9/8/2014 15:38:18', 'BKP', '14%'),
(37, '143130658', 'Gembira Bermain Corat Coret', 1, 28208, 32800, 135, '9/8/2014 15:37:10', 'BKP', '14%'),
(38, 'KONSPJ64', 'Cinta Pertama', 1, 30100, 35000, 176, '9/8/2014 15:35:36', 'BKP', '14%'),
(39, 'KONSPJ66', 'Oidipus Sang Raja', 1, 27520, 32000, 148, '9/8/2014 15:35:05', 'BKP', '14%'),
(40, '150141755', 'Dr Koto Vol 15', 1, 15910, 18500, 225, '9/8/2014 15:33:53', 'BKP', '14%'),
(41, '41101130020', 'Apa Kata Rasulullah SAW', 1, 32680, 38000, 234, '9/8/2014 15:32:47', 'BKP', '14%'),
(42, '160132297', '40 Kisah Pengantar Tidur Islami', 1, 47300, 55000, 270, '9/8/2014 15:32:16', 'BKP', '14%'),
(43, '41101140015', '50 Permainan yang Disukai Anak Muslim', 1, 43000, 50000, 234, '9/8/2014 15:31:42', 'BKP', '14%'),
(44, '901130650', 'Roots and Wings 1', 1, 34400, 40000, 300, '9/8/2014 15:31:08', 'BKP', '14%'),
(45, '12901130001', 'My First Baby Book', 1, 150500, 175000, 234, '9/8/2014 15:30:39', 'BKP', '14%'),
(46, '238091937', 'Kiat Sukses Deniek G Sukarya dalam Fotografi dan Stok Foto', 1, 133920, 148800, 609, '9/8/2014 15:29:15', 'DTP', '10%'),
(47, '40207006', 'Selamat Datang Kegelapan - Hello Darkness', 1, 60200, 70000, 331, '9/8/2014 15:26:17', 'BKP', '14%'),
(48, '40209008', 'Thursday s Child', 1, 30100, 35000, 200, '9/8/2014 15:25:47', 'BKP', '14%'),
(49, '40201090080', 'Sunny Chandler s Return', 1, 35000, 35000, 200, '9/8/2014 15:25:16', 'BKP', '0%'),
(50, '40201100012', 'Demon Rumm', 1, 35000, 35000, 199, '9/8/2014 15:24:46', 'DTP', '0%'),
(51, '20401140087', 'Give and Take', 2, 154800, 90000, 468, '9/8/2014 15:21:13', 'BKP', '14%'),
(52, '235141809', 'Resign yang Sukses', 1, 31648, 36800, 180, '9/8/2014 15:20:44', 'BKP', '14%'),
(53, '40101140076', 'A Love Like an Obsession', 1, 40420, 47000, 234, '9/8/2014 15:20:15', 'BKP', '14%'),
(54, '188141700', 'The Fall', 1, 60028, 69800, 250, '9/8/2014 15:19:47', 'BKP', '14%'),
(55, '40201120034', 'Finding You', 1, 45000, 45000, 250, '9/8/2014 15:13:32', 'BKP', '0%'),
(56, '20401120055', 'Sup Cacing Tanah', 1, 32680, 38000, 250, '9/8/2014 15:12:41', 'BKP', '14%'),
(57, '20401120121', 'Hermes Temptation', 1, 68800, 80000, 234, '9/8/2014 15:12:08', 'BKP', '14%'),
(58, '150130204', 'Your Strange Temperature', 1, 15910, 18500, 135, '9/8/2014 15:11:00', 'BKP', '14%'),
(59, '40201130023', 'Pembunuhan Atas Roger Ackroyd', 2, 82560, 48000, 468, '9/8/2014 15:10:30', 'BKP', '14%'),
(60, '998130535', 'Bersama Merawat Cinta', 1, 38528, 44800, 265, '9/8/2014 15:10:00', 'BKP', '14%'),
(61, '40101130027', 'Milana: Perempuan yang Menunggu Senja', 1, 34400, 40000, 234, '9/8/2014 15:09:29', 'BKP', '14%'),
(62, '40201130069', 'Low Pressure', 1, 70520, 82000, 234, '9/8/2014 15:08:59', 'BKP', '14%'),
(63, '188130925', 'Kesturi dan Kepodang Kuning', 1, 42828, 49800, 230, '9/8/2014 15:08:29', 'BKP', '14%'),
(64, '998130971', 'Ranu: Saat Hati Menemukan Cintanya', 1, 34228, 39800, 320, '9/8/2014 15:07:57', 'BKP', '14%'),
(65, '40101130038', ' A Mission', 1, 38700, 45000, 234, '9/8/2014 15:07:01', 'BKP', '14%'),
(66, '155131169', 'Money and Economy', 1, 64500, 75000, 450, '9/8/2014 15:06:33', 'BKP', '14%'),
(67, '40101140065', 'Rahasia Imperia', 1, 70520, 82000, 384, '9/8/2014 15:06:05', 'BKP', '14%'),
(68, '21801130004', 'Flashpacking to London', 1, 49880, 58000, 234, '9/8/2014 15:05:31', 'BKP', '14%'),
(69, '20401140096', 'Life Skill Wisdoms from the Top', 1, 43000, 50000, 234, '9/8/2014 15:03:26', 'BKP', '14%'),
(70, '31001140010', 'Bintang Misterius', 3, 230910, 89500, 702, '9/8/2014 15:01:22', 'BKP', '14%'),
(71, '20101140028', 'Lelaki Harimau', 14, 541800, 45000, 3276, '9/8/2014 14:59:23', 'BKP', '14%'),
(72, '40201140061', 'Buku Harian', 5, 202100, 47000, 1170, '9/8/2014 14:58:16', 'BKP', '14%'),
(73, '237140745', 'Negative Investment', 1, 33368, 38800, 220, '9/8/2014 14:57:43', 'BKP', '14%'),
(74, '40201130103', 'Sang Alkemis', 3, 116100, 45000, 702, '9/8/2014 14:56:34', 'BKP', '14%'),
(75, '30301130002', 'Bukan Sakit Biasa', 1, 32680, 38000, 234, '9/8/2014 14:55:30', 'BKP', '14%'),
(76, '20801130020', 'The Business of the 21st Century', 1, 47300, 55000, 234, '9/8/2014 14:54:32', 'BKP', '14%'),
(77, '40101130043', 'Pasung Jiwa', 1, 47300, 55000, 234, '9/8/2014 14:53:24', 'BKP', '14%'),
(78, '30301130004', 'Lupus Kecil Klasik 1 3-in-1 ', 2, 99760, 58000, 468, '9/8/2014 14:52:39', 'BKP', '14%'),
(79, '40101130034', 'Mahogany Hills', 1, 49880, 58000, 234, '9/8/2014 14:51:57', 'BKP', '14%'),
(80, '32201130005', 'Seraphina', 3, 219300, 85000, 702, '9/8/2014 14:50:44', 'BKP', '14%'),
(81, '150051336', 'One Piece 31', 1, 15910, 18500, 200, '9/8/2014 14:49:38', 'BKP', '14%'),
(82, '20401120055', 'Sup Cacing Tanah', 1, 32680, 38000, 250, '9/8/2014 14:49:06', 'BKP', '14%'),
(83, '20101130011', 'Yang Menunggu dengan Payung', 1, 32680, 38000, 234, '9/8/2014 14:48:38', 'BKP', '14%'),
(84, '40101130004', 'Love Curse amp Hocus Pocus', 1, 49880, 58000, 234, '9/8/2014 14:47:29', 'BKP', '14%'),
(85, '40101130003', 'Love Hate amp Hocus Pocus', 1, 38700, 45000, 234, '9/8/2014 14:46:59', 'BKP', '14%'),
(86, '40101130005', 'The Devil in Black Jeans', 3, 154800, 60000, 702, '9/8/2014 14:45:51', 'BKP', '14%'),
(87, '40101130019', 'Negeri di Ujung Tanduk', 4, 223600, 65000, 936, '9/8/2014 14:45:17', 'BKP', '14%'),
(88, '150130141', 'Doraemon 18 Terbit Ulang ', 3, 47730, 18500, 405, '9/8/2014 14:42:51', 'BKP', '14%'),
(89, '32201130001', 'Misteri London Eye', 2, 77400, 45000, 468, '9/8/2014 14:41:42', 'BKP', '14%'),
(90, '21801130001', 'Haram Keliling Dunia', 1, 49880, 58000, 234, '9/8/2014 14:41:12', 'BKP', '14%'),
(91, '40101130029', 'Jakarta Kafe', 4, 189200, 55000, 900, '9/8/2014 14:40:44', 'BKP', '14%'),
(92, '20401130059', 'Mengajari Anak Calistung dengan Bermain', 2, 65360, 38000, 468, '9/8/2014 14:40:13', 'BKP', '14%'),
(93, '188130989', 'Coin Locker Babies', 1, 68628, 79800, 450, '9/8/2014 14:39:24', 'BKP', '14%'),
(94, '155131168', '40 Sains Fantastis', 1, 47300, 55000, 300, '9/8/2014 14:38:55', 'BKP', '14%'),
(95, '21701140005', 'Alex Ferguson', 8, 860000, 125000, 1872, '9/8/2014 14:38:12', 'BKP', '14%'),
(96, '22401140002', 'Belajar dari Ustad Yusuf Mansur', 1, 49880, 58000, 234, '9/8/2014 14:24:29', 'BKP', '14%'),
(97, '40101140047', 'Fantasy', 2, 106640, 62000, 468, '9/8/2014 14:22:50', 'BKP', '14%'),
(98, '40101140059', 'Dangerous Games', 1, 53320, 62000, 234, '9/8/2014 14:21:42', 'BKP', '14%'),
(99, '40201140072', 'Manuskrip Celestine', 2, 89440, 52000, 864, '9/8/2014 14:20:53', 'BKP', '14%'),
(100, '40101140069', 'Episode Para Lajang', 6, 247680, 48000, 2592, '9/8/2014 14:20:25', 'BKP', '14%');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `penjualan_buku`
--
ALTER TABLE `penjualan_buku`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `penjualan_buku`
--
ALTER TABLE `penjualan_buku`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
