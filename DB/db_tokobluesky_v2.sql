-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2016 at 08:25 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_tokobluesky_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE IF NOT EXISTS `advertise` (
  `id_advertise` int(5) NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id_advertise`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(2, 'Advertise 2', '#', 'Fortuna_172302a8.jpg', '2015-12-17'),
(3, '', '', 'Fortuna_11291a8.jpg', '2016-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `id_bank` int(11) NOT NULL,
  `no_rekening` varchar(128) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `no_rekening`, `nama`, `nama_bank`, `gambar`) VALUES
(1, '000-0000-0000', 'tokobluesky', 'BCA', '400421Bca.jpg'),
(3, '000-000-000-000', 'tokobluesky', 'MANDIRI', '837341Logo-Bank-Mandiri.png');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'Banner 1 TESTER', '#', 'Fortuna_3425591.jpg', '2015-12-10'),
(2, 'Banner 2', '#', 'Fortuna_4752192.jpg', '2015-12-10'),
(3, 'Banner 3', '#', 'Fortuna_3631893.jpg', '2015-12-10'),
(4, 'Banner 4', '#', 'Fortuna_517089banner_4.jpg', '2015-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(11) NOT NULL,
  `nama_berita` varchar(128) DEFAULT NULL,
  `isi_berita` text,
  `gambar` varchar(128) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `seo` varchar(128) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `nama_berita`, `isi_berita`, `gambar`, `tanggal`, `seo`) VALUES
(1, 'Tips Memilih Random Access Memory (RAM)', '<p><span style="font-family: ''times new roman'', times; font-size: 12pt;">RAM (Random Access Memory) merupakan salah satu dari sekian banyaknya perangkat, yang digunakan untuk menjalankan sebuah komputer. Sebuah RAM dengan kapasitas yang tinggi dapat menunjang performa komputer agar berjalan lebih baik. Pemilihan RAM dengan performa yang bagus tidak hanya dilihat dari kemampuannya&nbsp;saja, namun dari merk dan jenisnya juga.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style="font-size: 12pt; font-family: ''times new roman'', times;">Perbedaan RAM yang mahal dengan umum terdapat pada performa kecepatan dan sistem overclocking dari vendornya. Untuk RAM yang mahal walau tanpa overclocking vendor tetap saja sama dengan RAM yang harga umum. Namun, jika Anda berbelanja di toko hardware komputer, tentu sang penjual menawarkan Anda harga yang lebih mahal tentunya.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style="font-size: 12pt; font-family: ''times new roman'', times;">Untuk membedakan mana RAM yang masih memiliki keadaan standar atau umum dan overclock dapat kita jabarkan sebagai berikut :</span></p>\r\n<p style="padding-left: 30px;"><span style="font-size: 12pt; font-family: ''times new roman'', times;">1. RAM yang sudah di overclocking bisa Anda cek melalui stiker yang tertempal pada RAM tersebut. Jika jenis RAM nya sama-sama DDR3 coba lihat kapasitasnya. RAM berjenis DDR3 ini memiliki varian clock berbeda-beda mulai dari 1 gb, 2 gb, 4 gb, hingga sekarang mencapai 8 gb perkepingnya.</span></p>\r\n<p style="padding-left: 30px;"><span style="font-size: 12pt; font-family: ''times new roman'', times;">2.Biasanya RAM yang memiliki clock yang tinggi dipasangi berupa pendingin atau heatsink khusus agar hasil overclocking dari RAM tersebut tidak membuat RAM tersebut kepanasan.</span></p>\r\n<p><span style="font-family: ''times new roman'', times; font-size: 12pt;">Memilih RAM untuk PC Gaming juga harus berhati-hati. Perhatikan socket yang ada pada motherboard Anda terlebih dahulu. Karena, setiap socket motherboard berbeda-beda bentuk dan ukurannya untuk RAM. Jenis RAM memang berbeda seiring dengan perkembangan jaman yaitu DDR1, DDR2, dan yang sekarang yang terbaru ada DDR3. RAM dengan performa terbaik saat ini adalah DDR3. Bentuk RAM dari DDR3 yaitu memiliki satu patahan kecil pada bagian bawahnya. Atau untuk mengetahuinya bisa juga dengan melihat stiker atau tulisan yang melekat pada papan PCB RAM tersebut.</span></p>\r\n<p><span style="font-family: ''times new roman'', times; font-size: 12pt;">Semakin tinggi clock memory pada RAM tersebut, semakin bagus pula performanya untuk menjalankan aplikasi-aplikasi berat. Biasanya para gamers selalu memilih RAM yang memiliki performa terbaik dengan clock tertinggi yaitu 8 gb. RAM dengan clock seperti ini memang sangat membantu sebuah PC untuk bekerja lebih optimal dan maksimal. Sehingga kemampuan merender aplikasi 3 Dimensi dapat dengan cepat terpenuhi.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style="font-family: ''times new roman'', times; font-size: 12pt;">Sumber: <a href="http://segiempat.com/tips-dan-cara/teknologi/komputer/tips-memilih-ram-yang-bagus-untuk-pc-gaming/"><strong>Segiempat.com</strong></a></span></p>', '28442RAM-corsair.jpg', '2015-01-20', 'tips-memilih-random-access-memory-ram'),
(2, 'Pengertian Power Bank', '<div>Power Bank adalah sebagai pengisi daya gadget saat kita sedang berada diluar dan jauh dari sumber listrik. Fungsi power bank dapat disebut juga sebagai penyimpan daya atau dapat dianalogikan sebagai batrei cadangan, namun untuk penggunannya kita tidak perlu mencopot batrei handphone, kita cukup menacapkan kabel seperti saat kita men-charger menggunakan charger biasa.</div>\r\n<div>&nbsp;</div>\r\n<div class="separator"><a href="http://4.bp.blogspot.com/-5ULEKkb3k1g/U_5BDC1JwXI/AAAAAAAABCw/BxlhEmG1pdI/s1600/It%2BJurnal.jpeg"><img src="http://4.bp.blogspot.com/-5ULEKkb3k1g/U_5BDC1JwXI/AAAAAAAABCw/BxlhEmG1pdI/s1600/It%2BJurnal.jpeg" alt="" width="320" height="252" border="0" /></a></div>\r\n<div>Power bank memang khusus dibuat untuk orang-orang lapangan yang jarang masuk ruangan, dan orang yang sering dalam perjalanan. Benda mungil itu memiliki bermacam-macam kapasitas daya mulai dari ribuan mAh sampai puluhan ribu mAh.<br /><br />Untuk penggunaan power bank sendiri cukup mudah. Untuk pengisian cukup dilakukan seperti saat kita men-charge handphone biasa. Setelah penuh power bank dapat digunakan. Pemasangannya juga hanya seperti saat kita men-charge handphone biasa. Untuk lama tidaknya sebuah power bank dapat digunakan tergantung dari daya yang dapat disimpan dari power bank tersebut(biasanya dalam ukuran mAh).<br /><br />Misalnya saja sebuah perangkat Blackberry, memiliki baterai berkapasitas 1500 mAh. Jadi, power bankberkapasitas 6000 mAh dapat mengisi baterai 1500 mAh hingga empat kali charge. Namun ada juga kemungkinan kurang dari empat kali charger, hal ini dikarenakan berbagai sebab misalnya saat pengisian power bank tidak maksimal.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div><span style="text-decoration: underline;"><strong>Cara merawat power bank :</strong></span><br /><br />\r\n<div>Salah satu kesalahan fatal pengguna power bank adalah membiarkan sampai habis baru kemudian dicharge. Ini adalah cara yang salah sehingga menyebabkan powerbank anda cepat rusak.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Isi Power Bank adalah baterai, persis seperti baterai blackberry anda. Jadi cara merawatnyapun sama dengan baterai smartphone anda.&nbsp;</div>\r\n</div>', 'elivebuy_power_bank_thumb800.jpg', '2016-04-26', 'pengertian-power-bank'),
(3, 'Mengembalikan file yang terkena virus di Flashdisk', '<p><strong><br class="Apple-interchange-newline" />flashdisk / usb&nbsp;</strong>adalah penyimpanan eksternal yang paling banyak digunakan saat ini. selain karena mudah dibawa kemana-mana, flashdisk juga sudah memiliki kapasitas penyimpanan yang cukup besar.&nbsp;tetapi masalah yang muncul adalah keamanan pada flashdisk itu sendiri. seperti yang kita tahu flashdisk sangat rentan terkena virus karena sering digunakan untuk memindahkan data dari berbagai komputer.<br /><br />ketika flashdisk sudah terkena virus hal yang paling sering terjadi adalah data didalam flashdisk tersebut hilang. hal ini menjadi sangat menjengkelkan jika data yang hilang sangat penting.<br /><br />sebenarnya ada cara untuk mengemballikkan data tersebut karena biasanya file itu cuma ke super hidden sehingga terlihat seperti hilang. berikut ini trik simpel untuk mengembalikkan lagi file/data yang terkena virus tersebut&nbsp;</p>\r\n<div>\r\n<div class="separator"><a href="https://images-blogger-opensocial.googleusercontent.com/gadgets/proxy?url=http%3A%2F%2F4.bp.blogspot.com%2F-EeELBmrLx9M%2FUELFX5h4TRI%2FAAAAAAAAA8A%2F7cf2nNKR8UU%2Fs1600%2Fc.JPG&amp;container=blogger&amp;gadget=a&amp;rewriteMime=image%2F*"><img title="Mengembalikan file yang terkena virus di Flashdisk tanpa menggunakan Software" src="https://images-blogger-opensocial.googleusercontent.com/gadgets/proxy?url=http%3A%2F%2F4.bp.blogspot.com%2F-EeELBmrLx9M%2FUELFX5h4TRI%2FAAAAAAAAA8A%2F7cf2nNKR8UU%2Fs1600%2Fc.JPG&amp;container=blogger&amp;gadget=a&amp;rewriteMime=image%2F*" alt="Mengembalikan file yang terkena virus di Flashdisk tanpa menggunakan Software" width="400" height="195" border="0" /></a></div>\r\n<br /><strong>ada dua cara yang dapat kita lakukan&nbsp;</strong><br /><br />pertama dengan mengatur untuk menampilkan file hidden pada folder atau tidak</div>\r\n<div>berikut caranya&nbsp;<br /><br />1. Buka windows explorer, trus pilih organize&nbsp;<br />\r\n<div class="separator">&nbsp;</div>\r\n<div><img src="https://images-blogger-opensocial.googleusercontent.com/gadgets/proxy?url=http%3A%2F%2F1.bp.blogspot.com%2F-L_lMHJclLq0%2FU-aAkiy5tTI%2FAAAAAAAABrc%2FTuNAsNKuiKw%2Fs1600%2Fmengembalikan%2Bfile%2Byang%2Bterkena%2Bvirus.png&amp;container=blogger&amp;gadget=a&amp;rewriteMime=image%2F*" alt="" width="320" height="177" border="0" /></div>\r\n<div class="separator">&nbsp;</div>\r\n2. klik&nbsp;<strong>Folder and search</strong>&nbsp;<strong>Options --&gt;View --&gt; Show Hidden Files, folder and drives</strong>&nbsp;.<br /><br />tetapi cara diatas terkadang tidak berhasil memunculkan kembali data/file yang ke hidden. untuk itu kita dapat menggunakan perintah yang ada di command prompt berikut caranya<br /><br /><br />\r\n<div>1.sambungkan&nbsp;<strong>flashdisk</strong>&nbsp;ke komputer, lihat flashdisk terbaca di drive apa.<br /><br />disini kita ambil contoh kebacanya di&nbsp;<strong>drive E</strong><br /><br />2. sekarang klik&nbsp;<strong>Start</strong>&nbsp;ketik&nbsp;<strong>cmd</strong>&nbsp;lalu tekan enter maka akan muncul kotak cmd.<br /><br />3. karena flashdisk terbaca di drive E maka kita harus&nbsp;<strong>pindah direktori</strong>&nbsp;ke E terlebih dahulu. cara untuk pindah tinggal ketik&nbsp;<strong>E:</strong>&nbsp;lalu enter<br /><br /><br />setelah itu ketik perintah berikut</div>\r\n<div>&nbsp;</div>\r\n<div><strong>&nbsp; &nbsp; &nbsp; &nbsp; attrib -s -h /s /d *.*</strong></div>\r\n<div><strong>&nbsp;</strong></div>\r\n<div>\r\n<div><img title="Mengembalikan file yang terkena virus di flashdisk" src="http://4.bp.blogspot.com/-YDthjY97W3A/UEK9a62i2xI/AAAAAAAAA7Y/FlSk1OBdJKM/s1600/vu.JPG" alt="Mengembalikan file yang terkena virus di flashdisk" /></div>\r\n</div>\r\n<div>\r\n<div>4. terakhir tekan enter<br /><br />maka data yang ke hidden atau hilang akibat virus akan muncul kembali.saran saya setelah muncul , simpan data ketempat yang aman lalu format flashdisk tersebut.&nbsp;<br /><br /></div>\r\n</div>\r\n<div>Supaya tidak terkena virus lagi ada baiknya menginstall antivirus khusus flashdisk, jika anda bingung mau install antivirus yang mana bisa lihat disini<br /><a href="http://www.it-jurnal.com/2014/06/antivirus-terbaik-untuk-usbflashdrive-flashdisk.html" target="_blank"><strong>4 Antivirus Terbaik untuk USB/Flashdisk</strong></a></div>\r\n</div>', 'fortuna_784790Cara-Memperbaiki-Flashdisk-Rusak-Error-Tidak-Bisa-Di-Format.jpg', '2016-04-26', 'mengembalikan-file-yang-terkena-virus-di-flashdisk');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id_brand` int(11) NOT NULL,
  `nama_brand` varchar(128) NOT NULL,
  `seo` varchar(128) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_brand`, `nama_brand`, `seo`, `gambar`) VALUES
(2, 'ASUS', 'asus', 'Fortuna_1549071280px-ASUS_Logo.svg.png'),
(3, 'ADVAN', 'advan', 'Fortuna_449127Advan.png'),
(4, 'LENOVO', 'lenovo', 'Fortuna_278198Lenovo_logo.png'),
(5, 'SAMSUNG', 'samsung', 'Fortuna_762847samsung-logo.png'),
(6, 'SMARTFREN', 'smartfren', 'Fortuna_503479Logo-smartfren.png'),
(7, 'OPPO', 'oppo', 'Fortuna_74035Oppo_green.png');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id_catalog` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `seo` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `id_color` int(11) NOT NULL,
  `color` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id_color`, `color`) VALUES
(6, '#ff0000'),
(5, '#ffffff'),
(4, '#000000'),
(7, '#0000ff');

-- --------------------------------------------------------

--
-- Table structure for table `custom_link`
--

CREATE TABLE IF NOT EXISTS `custom_link` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `link` varchar(225) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_link`
--

INSERT INTO `custom_link` (`id`, `nama`, `link`, `tanggal`) VALUES
(2, 'Sample1 Tester', 'www.tokobluesky.com', '2015-11-10'),
(3, 'Sample Two', '#', '2015-10-13'),
(4, 'Sample three', '#', '2015-10-13'),
(5, 'Sample Four', '#', '2015-10-13'),
(6, 'Sample Five', '#', '2015-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `desk`
--

CREATE TABLE IF NOT EXISTS `desk` (
  `id_desk` int(11) NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `deskripsi` tinytext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desk`
--

INSERT INTO `desk` (`id_desk`, `judul`, `deskripsi`, `gambar`, `tgl_posting`) VALUES
(1, 'MONEY BACK', '<p>30 Day Money Back Guarantee. &nbsp;TESTER</p>', 'tes', '2016-04-26'),
(2, 'FREE SHIPPING', '<p>free ship-on oder over $600.00 TESTER</p>', 'tes', '2016-04-26'),
(3, 'SPECIAL SALE', '<p>All items-sale up to 20% off</p>', 'tes', '2016-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(128) NOT NULL,
  `nama_file` varchar(128) NOT NULL,
  `jumlah_download` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `tanggal`, `judul`, `nama_file`, `jumlah_download`) VALUES
(19, '2016-04-26', 'Opinion', '15-1171.Opinion.2-24-2016.1.PDF', 0),
(18, '2016-04-26', 'SAMSUNG 2016', 'samsung2016.pdf', 0),
(17, '2016-04-26', 'Samsung', 'samsung_2016_se210_manual.pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE IF NOT EXISTS `foto` (
  `id_foto` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1009 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jasa`
--

CREATE TABLE IF NOT EXISTS `jasa` (
  `id_jasa` int(2) NOT NULL,
  `jasa_pengiriman` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jasa`
--

INSERT INTO `jasa` (`id_jasa`, `jasa_pengiriman`) VALUES
(1, 'JNE');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `seo` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`, `seo`) VALUES
(1, 'Produk', 'produk');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE IF NOT EXISTS `kategori_produk` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `meta_keyword` varchar(100) NOT NULL,
  `meta_deskripsi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE IF NOT EXISTS `konfirmasi` (
  `id_konfirmasi` int(11) NOT NULL,
  `no_order` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `no_rekening` varchar(128) NOT NULL,
  `nama_rekening` varchar(128) NOT NULL,
  `nama_bank` varchar(128) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `approve` varchar(5) NOT NULL DEFAULT 'N'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_konfirmasi`, `no_order`, `email`, `phone`, `no_rekening`, `nama_rekening`, `nama_bank`, `jumlah`, `catatan`, `tanggal`, `approve`) VALUES
(1, '1', 'anisa@yahoo.com', '08128731', '2378462783', '8734223', 'BCA', 1111, '111111', '0000-00-00 00:00:00', 'Y'),
(2, '8', 'test@yahoo.com', '29834792', '2368273687268', 'Joker Dent', 'BCA', 1300000, 'TEST', '2016-04-26 00:00:00', 'N'),
(3, '11', 'tya@yahoo.com', '198273912', '7328973', 'tya yuliani', 'BCA', 10000000, 'Helloo Test Sistem', '2016-04-28 00:00:00', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE IF NOT EXISTS `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(1, 'Nama', 'email@email.com', 'subjek', 'pesan', '2015-12-07'),
(2, 'tes', 'sule@gmail.com', 'tes', 'tes', '2016-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(3) NOT NULL,
  `id_jasa` int(2) NOT NULL,
  `nama_kota` varchar(28) NOT NULL,
  `ongkos_kirim` int(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `id_jasa`, `nama_kota`, `ongkos_kirim`) VALUES
(1, 1, 'GAMBIR - JAKARTA PUSAT', 18000),
(2, 1, 'TANAH ABANG - JAKARTA PUSAT', 18000),
(3, 1, 'MENTENG - JAKARTA PUSAT', 18000),
(4, 1, 'SENEN - JAKARTA PUSAT', 18000),
(5, 1, 'CEMPAKA PUTIH-JAKARTA PUSAT', 18000),
(6, 1, 'JOHAR BARU - JAKARTA PUSAT', 18000),
(7, 1, 'KEMAYORAN - JAKARTA PUSAT', 18000),
(8, 1, 'SAWAH BESAR - JAKARTA PUSAT', 18000),
(9, 1, 'KOJA - JAKARTA UTARA', 18000),
(10, 1, 'KELAPA GADING-JAKARTA UTARA', 18000),
(11, 1, 'TANJUNGPRIOK-JAKARTA UTARA', 18000),
(12, 1, 'PADEMANGAN-JAKARTA UTARA', 18000),
(13, 1, 'PENJARINGAN-JAKARTA UTARA', 18000),
(14, 1, 'CILINCING-JAKARTA UTARA', 18000),
(15, 1, 'MATRAMAN-JAKARTA TIMUR', 18000),
(16, 1, 'PULOGADUNG-JAKARTA TIMUR', 18000),
(17, 1, 'JATINEGARA-JAKARTA TIMUR', 18000),
(18, 1, 'DUREN SAWIT-JAKARTA TIMUR', 18000),
(19, 1, 'KRAMATJATI-JAKARTA TIMUR', 18000),
(20, 1, 'MAKASAR-JAKARTA TIMUR', 18000),
(21, 1, 'PASAR REBO-JAKARTA TIMUR', 18000),
(22, 1, 'CIRACAS-JAKARTA TIMUR', 18000),
(23, 1, 'CIPAYUNG-JAKARTA TIMUR', 18000),
(24, 1, 'CAKUNG-JAKARTA TIMUR', 18000),
(25, 1, 'KEBAYORANBARU-JAKARTASELATAN', 18000),
(26, 1, 'KEBAYORANLAMA-JAKARTASELATAN', 18000),
(27, 1, 'PESANGGRAHAN-JAKARTA SELATAN', 18000),
(28, 1, 'CILANDAK-JAKARTA SELATAN', 18000),
(29, 1, 'PASARMINGGU-JAKARTA SELATAN', 18000),
(30, 1, 'JAGAKARSA-JAKARTA SELATAN', 18000),
(31, 1, 'MAMPANGPRAPATAN-JAKARTASELAT', 18000),
(32, 1, 'PANCORAN-JAKARTA SELATAN', 18000),
(33, 1, 'TEBET-JAKARTA SELATAN', 18000),
(34, 1, 'SETIABUDI-JAKARTA SELATAN', 18000),
(35, 1, 'CENGKARENG-JAKARTA BARAT', 18000),
(36, 1, 'GROGOLPETAMBURAN-JAKARTA BAR', 18000),
(37, 1, 'KALIDERES-JAKARTA BARAT', 18000),
(38, 1, 'KEBON JERUK-JAKARTA BARAT', 18000),
(39, 1, 'KEMBANGAN-JAKARTA BARAT', 18000),
(40, 1, 'PALMERAH-JAKARTA BARAT', 18000),
(41, 1, 'TAMAN SARI-JAKARTA BARAT', 18000),
(42, 1, 'TAMBORA-JAKARTA BARAT', 18000),
(43, 1, 'ANDIR-BANDUNG', 19000),
(44, 1, 'ANTAPANI-BANDUNG', 19000),
(45, 1, 'ARCAMANIK-BANDUNG', 19000),
(46, 1, 'ASTANAANYAR-BANDUNG', 19000),
(47, 1, 'BABAKANCIPARAY-BANDUNG', 19000),
(48, 1, 'BANDUNG KIDUL-BANDUNG', 19000),
(49, 1, 'BANDUNG KULON-BANDUNG', 19000),
(50, 1, 'BANDUNG WETAN-BANDUNG', 19000),
(51, 1, 'BATUNUNGGAL-BANDUNG', 19000),
(52, 1, 'BOJONGLOA KALER-BANDUNG', 19000),
(53, 1, 'BOJONGLOA KIDUL-BANDUNG', 19000),
(54, 1, 'BUAH BATU-BANDUNG', 19000),
(55, 1, 'CIBEUNYING KALER-BANDUNG', 19000),
(56, 1, 'CIBEUNYING KIDUL-BANDUNG', 19000),
(57, 1, 'CIBIRU-BANDUNG', 19000),
(58, 1, 'CICENDO-BANDUNG', 19000),
(59, 1, 'CIDADAP-BANDUNG', 19000),
(60, 1, 'CINAMBO-BANDUNG', 19000),
(61, 1, 'COBLONG-BANDUNG', 19000),
(62, 1, 'GEDEBAGE-BANDUNG', 19000),
(63, 1, 'KIARACONDONG-BANDUNG', 19000),
(64, 1, 'LENGKONG-BANDUNG', 19000),
(65, 1, 'MANDALAJATI-BANDUNG', 19000),
(66, 1, 'PANYILEUKAN-BANDUNG', 19000),
(67, 1, 'RANCASARI-BANDUNG', 19000),
(68, 1, 'REGOL-BANDUNG', 19000),
(69, 1, 'SUKAJADI-BANDUNG', 19000),
(70, 1, 'SUKASARI-BANDUNG', 19000),
(71, 1, 'SUMURBANDUNG-BANDUNG', 19000),
(72, 1, 'UJUNGBERUNG-BANDUNG', 19000),
(73, 1, 'BABAKAN MADANG-BOGOR', 21000),
(74, 1, 'BOJONGGEDE-BOGOR', 21000),
(75, 1, 'CARINGIN-BOGOR', 21000),
(76, 1, 'CARIU-BOGOR', 21000),
(77, 1, 'CIAMPEA-BOGOR', 21000),
(78, 1, 'CIAWI-BOGOR', 21000),
(79, 1, 'CIBINONG-BOGOR', 21000),
(80, 1, 'CIBUNGBULANG-BOGOR', 21000),
(81, 1, 'CIGOMBONG-BOGOR', 21000),
(82, 1, 'CIGUDEG-BOGOR', 21000),
(83, 1, 'CIJERUK-BOGOR', 21000),
(84, 1, 'CILEUNGSI-BOGOR', 21000),
(85, 1, 'CIOMAS-BOGOR', 21000),
(86, 1, 'CISARUA-BOGOR', 21000),
(87, 1, 'CISEENG-BOGOR', 21000),
(88, 1, 'CITEUREUP-BOGOR', 21000),
(89, 1, 'DRAMAGA-BOGOR', 21000),
(90, 1, 'GUNUNG PUTRI-BOGOR', 21000),
(91, 1, 'GUNUNG SINDUR-BOGOR', 21000),
(92, 1, 'JASINGA-BOGOR', 21000),
(93, 1, 'JONGGOL-BOGOR', 21000),
(94, 1, 'KEMANG-BOGOR', 21000),
(95, 1, 'KLAPANUNGGAL-BOGOR', 21000),
(96, 1, 'LEUWILIANG-BOGOR', 21000),
(97, 1, 'LEUWISADENG-BOGOR', 21000),
(98, 1, 'MEGAMENDUNG-BOGOR', 21000),
(99, 1, 'NANGGUNG-BOGOR', 21000),
(100, 1, 'PAMIJAHAN-BOGOR', 21000),
(101, 1, 'PARUNGPANJANG-BOGOR', 21000),
(102, 1, 'PARUNG-BOGOR', 21000),
(103, 1, 'RANCA BUNGUR-BOGOR', 21000),
(104, 1, 'RUMPIN-BOGOR', 21000),
(105, 1, 'SUKAJAYA-BOGOR', 21000),
(106, 1, 'SUKAMAKMUR-BOGOR', 21000),
(107, 1, 'SUKARAJA-BOGOR', 21000),
(108, 1, 'TAJUR HALANG-BOGOR', 21000),
(109, 1, 'TAMANSARI-BOGOR', 21000),
(110, 1, 'TANJUNGSARI-BOGOR', 21000),
(111, 1, 'TENJO-BOGOR', 21000),
(112, 1, 'TENJOLAYA-BOGOR', 21000),
(113, 1, 'BEJI-DEPOK', 21000),
(114, 1, 'BOJONGSARI-DEPOK', 21000),
(115, 1, 'CILODONG-DEPOK', 21000),
(116, 1, 'CIMANGGIS-DEPOK', 21000),
(117, 1, 'CINERE-DEPOK', 21000),
(118, 1, 'CIPAYUNG-DEPOK', 21000),
(119, 1, 'LIMO-DEPOK', 21000),
(120, 1, 'PANCORAN MAS-DEPOK', 21000),
(121, 1, 'SAWANGAN-DEPOK', 21000),
(122, 1, 'SUKMAJAYA-DEPOK', 21000),
(123, 1, 'TAPOS-DEPOK', 21000),
(124, 1, 'BANTARGEBANG-BEKASI', 21000),
(125, 1, 'BEKASI BARAT-BEKASI', 21000),
(126, 1, 'BEKASI SELATAN-BEKASI', 21000),
(127, 1, 'BEKASI TIMUR-BEKASI', 21000),
(128, 1, 'BEKASI UTARA-BEKASI', 21000),
(129, 1, 'JATIASIH-BEKASI', 21000),
(130, 1, 'JATISAMPURNA-BEKASI', 21000),
(131, 1, 'MEDAN SATRIA-BEKASI', 21000),
(132, 1, 'MUSTIKA JAYA-BEKASI', 21000),
(133, 1, 'PONDOK GEDE-BEKASI', 21000),
(134, 1, 'PONDOK MELATI-BEKASI', 21000),
(135, 1, 'RAWALUMBU-BEKASI', 21000),
(136, 1, 'BANJARSARI-CIAMIS', 35000),
(137, 1, 'BAREGBEG-CIAMIS', 35000),
(138, 1, 'KAB.CIAMIS-CIAMIS', 28000),
(139, 1, 'CIDOLOG-CIAMIS', 35000),
(140, 1, 'CIHAURBEUTI-CIAMIS', 35000),
(141, 1, 'CIJEUNGJING-CIAMIS', 35000),
(142, 1, 'CIKONENG-CIAMIS', 35000),
(143, 1, 'CIMARAGAS-CIAMIS', 35000),
(144, 1, 'CIPAKU-CIAMIS', 35000),
(145, 1, 'CISAGA-CIAMIS', 35000),
(146, 1, 'JATINAGARA-CIAMIS', 35000),
(147, 1, 'KAWALI-CIAMIS', 35000),
(148, 1, 'LAKBOK-CIAMIS', 35000),
(149, 1, 'LUMBUNG-CIAMIS', 35000),
(150, 1, 'PAMARICAN-CIAMIS', 35000),
(151, 1, 'PANAWANGAN,CIAMIS', 35000),
(152, 1, 'PANJALU-CIAMIS', 35000),
(153, 1, 'PANUMBANGAN-CIAMIS', 35000),
(154, 1, 'PURWADADI-CIAMIS', 35000),
(155, 1, 'RAJADESA-CIAMIS', 35000),
(156, 1, 'RANCAH-CIAMIS', 35000),
(157, 1, 'SADANANYA-CIAMIS', 35000),
(158, 1, 'SINDANGKASIH-CIAMIS', 35000),
(159, 1, 'SUKADANA-CIAMIS', 35000),
(160, 1, 'SUKAMANTRI-CIAMIS', 35000),
(161, 1, 'TAMBAKSARI-CIAMIS', 35000),
(162, 1, 'PANJALU-CIAMIS', 35000),
(163, 1, 'AGRABINTA-CIANJUR', 42000),
(164, 1, 'BOJONGPICUNG-CIANJUR', 42000),
(165, 1, 'CAMPAKA-CIANJUR', 42000),
(166, 1, 'CAMPAKA MULYA-CIANJUR', 42000),
(167, 1, 'KAB.CIANJUR-CIANJUR', 33000),
(168, 1, 'CIBEBER-CIANJUR', 42000),
(169, 1, 'CIBINONG-CIANJUR', 42000),
(170, 1, 'CIDAUN-CIANJUR', 42000),
(171, 1, 'CIJATI-CIANJUR', 42000),
(172, 1, 'CIKADU-CIANJUR', 42000),
(173, 1, 'CILAKU-CIANJUR', 42000),
(174, 1, 'CIKALONGKULON-CIANJUR', 42000),
(175, 1, 'CIPANAS-CIANJUR', 42000),
(176, 1, 'CIRANJANG-CIANJUR', 42000),
(177, 1, 'CUGENANG-CIANJUR', 42000),
(178, 1, 'GEKBRONG-CIANJUR', 42000),
(179, 1, 'HAURWANGI-CIANJUR', 42000),
(180, 1, 'KADUPANDAK-CIANJUR', 42000),
(181, 1, 'KARANGTENGAH-CIANJUR', 42000),
(182, 1, 'LELES-CIANJUR', 42000),
(183, 1, 'MANDE-CIANJUR', 42000),
(184, 1, 'NARINGGUL-CIANJUR', 42000),
(185, 1, 'PACET-CIANJUR', 42000),
(186, 1, 'PAGELARAN-CIANJUR', 42000),
(187, 1, 'PASIRKUDA-CIANJUR', 42000),
(188, 1, 'SINDANGBARANG-CIANJUR', 42000),
(189, 1, 'SUKALUYU-CIANJUR', 42000),
(190, 1, 'SUKANEGARA-CIANJUR', 42000),
(191, 1, 'SUKARESMI-CIANJUR', 42000),
(192, 1, 'TAKOKAK-CIANJUR', 42000),
(193, 1, 'TANGGEUNG-CIANJUR', 42000),
(194, 1, 'WARUNGKONDANG-CIANJUR', 42000),
(195, 1, 'ARJAWINANGUN-SUMBER', 35000),
(196, 1, 'ASTANAJAPURA-SUMBER', 35000),
(197, 1, 'BABAKAN-SUMBER', 35000),
(198, 1, 'BEBER-SUMBER', 35000),
(199, 1, 'CILEDUG-SUMBER', 35000),
(200, 1, 'CIWARINGIN-SUMBER', 35000),
(201, 1, 'DEPOK-SUMBER', 35000),
(202, 1, 'DUKUPUNTANG-SUMBER', 35000),
(203, 1, 'GEBANG-SUMBER', 35000),
(204, 1, 'GEGESIK-SUMBER', 35000),
(205, 1, 'GEMPOL-SUMBER', 35000),
(206, 1, 'GREGED-SUMBER', 35000),
(207, 1, 'GUNGUNG JATI-SUMBER', 35000),
(208, 1, 'JAMBLANG-SUMBER', 35000),
(209, 1, 'KALIWEDI-SUMBER', 35000),
(210, 1, 'KAPETAKAN-SUMBER', 35000),
(211, 1, 'KARANGSEMBUNG-SUMBER', 35000),
(212, 1, 'KARANGWARENG-SUMBER', 35000),
(213, 1, 'KEDAWUNG-SUMBER', 35000),
(214, 1, 'KLANGENAN-SUMBER', 35000),
(215, 1, 'LEMAHABANG-SUMBER', 35000),
(216, 1, 'LOSARI-SUMBER', 35000),
(217, 1, 'MUNDU-SUMBER', 35000),
(218, 1, 'PABEDILAN-SUMBER', 35000),
(219, 1, 'PABUARAN-SUMBER', 35000),
(220, 1, 'PALIMANAN-SUMBER', 35000),
(221, 1, 'PANGENAN-SUMBER', 35000),
(222, 1, 'PANGURAGAN-SUMBER', 35000),
(223, 1, 'PASALEMAN-SUMBER', 35000),
(224, 1, 'PLERED-SUMBER', 35000),
(225, 1, 'PLUMBON-SUMBER', 35000),
(226, 1, 'SEDONG-SUMBER', 35000),
(227, 1, 'SUMBER-KAB CIREBON', 28000),
(228, 1, 'SURANENGGALA-SUMBER', 35000),
(229, 1, 'SUSUKAN-SUMBER', 35000),
(230, 1, 'SUSUKAN LEBAK-SUMBER', 35000),
(231, 1, 'TALUN-SUMBER', 35000),
(232, 1, 'WALED-SUMBER', 35000),
(233, 1, 'TENGAH TANI-SUMBER', 35000),
(234, 1, 'WERU-SUMBER', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE IF NOT EXISTS `kurir` (
  `id_kurir` int(11) NOT NULL,
  `nama_kurir` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `megamenu`
--

CREATE TABLE IF NOT EXISTS `megamenu` (
  `id_megamenu` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `memberarea`
--

CREATE TABLE IF NOT EXISTS `memberarea` (
  `id_member` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `blokir` varchar(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_session` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberarea`
--

INSERT INTO `memberarea` (`id_member`, `nama`, `password`, `alamat`, `no_telp`, `level`, `blokir`, `email`, `id_session`) VALUES
(1, 'Wahyu Elan', '5a06cc059b39d1b3508efe00d044db05', 'Jalan Kaliurang', '08175425259', 'member', 'N', 'wen_2111@yahoo.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(1, 'Profil', '', '<p>Profil sedang dalam penginputan oleh admin</p>\r\n<p>&nbsp;</p>', '', 'Y', 'admin', 'Y', 0, ''),
(2, 'Maps', '', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.1310398061837!2d110.41343441437634!3d-7.775927079297553!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59f26725cec5%3A0x5d92cb00d610a618!2sBlue+Sky!5e0!3m2!1sid!2sid!4v1461662419964" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'Y', 'admin', 'Y', 0, ''),
(3, 'Press', '', '<p>Jalan Kaliurang KM 5.5 Gg Pandega Mandala 2355281, Yogyakarta, Indonesia.</p>\r\n<p>&nbsp;</p>', '', 'Y', 'admin', 'Y', 0, ''),
(4, 'Help', '', '<p>Halaman Help</p>', '', 'Y', 'admin', 'Y', 0, ''),
(5, 'FAQ', '', '<p><strong>Frequently Asked Questions :</strong>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1. Bagaimana Cara Membeli &amp; Bertransaksi?</p>\r\n<p>&nbsp;</p>\r\n<p>Untuk kemudahan Anda dalam berbelanja &amp; bertransaksi mohon mendaftar pada website kami terlebih dahulu dengan klik SIGN IN lalu klik CREATE ACCOUNT. Bila Anda sudah mendaftar akun pada kami silahkan masukan email dan password Anda klik SIGN IN untuk melanjutkan transaksi.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>2.&nbsp;Syarat &amp; Ketentuan</p>\r\n<p>&nbsp;</p>\r\n<p>Harga dari setiap produk yang ada pada www.dpj.co.id merupakan harga terbaru dan kami senantiasa untuk selalu meng-update harga pada setiap produk yang kami jual. Namun jika anda ingin menyakinkan harga terakhir, anda dapat menguhubungi Customer Service kami via telepon, mesengger, atau email. Harga bisa berubah sewaktu-waktu tanpa pemberitahuan sebelumnya dan kami berhak membatalkan transaksi jika terdapat ketidaksesuaian harga dan informasi.</p>\r\n<p>&nbsp;</p>\r\n<p>Sebelum melakukan transaksi dan memasukan barang dalam chart, sebaiknya terlebih dahulu Anda berkomunikasi dengan Customer Service kami, untuk memastikan ketersediaan barang dan memastikan harga barang yang akan Anda beli.</p>\r\n<p>&nbsp;</p>\r\n<p>Tidak semua produk yang kami tampilkan di website adalah ready stock/tersedia di outlet kami. Mengenai waktu ketersediaan barang/lama pesan silakan menghubungi Customer Service kami.</p>\r\n<p>&nbsp;</p>\r\n<p>Pemesanan baru dianggap Final, bila telah ada dana yang masuk ke rekening bank kami. Kecuali pemesanan melalui COD (Cash on Delivery), barang pesanan akan kami antar ke tempat tujuan setelah kami mem-verifikasi keakuratan data dan alamat tujuan.</p>\r\n<p>&nbsp;</p>\r\n<p>Pengiriman barang akan kami lakukan segera setelah kami menerima pembayaran. Lama pengiriman barang disesuaikan dengan jauh dekatnya alamat yang kami terima dan setiap produk yang di kirim kami sarankan untuk di asuransikan untuk mencegah dari hal-hal yang tidak diinginkan seperti kehilangan atau kerusakan selama dalam perjalanan.</p>\r\n<p>&nbsp;</p>\r\n<p>Setiap perkembangan pengiriman produk yang telah anda beli dari www.dpj.co.id dapat anda lihat di account anda dan akan kami konfirmasikan via email, telepon, atau sms.</p>\r\n<p>&nbsp;</p>\r\n<p>Setiap produk yang dibeli dari www.dpj.co.id mendapatkan garansi sesuai dengan ketentuan yang kami tetapkan.</p>\r\n<p>&nbsp;</p>\r\n<p>Barang yang telah dibeli tidak dapat dikembalikan atau ditukar dengan barang lain, kecuali ada perjanjian terlebih dahulu.</p>\r\n<p>&nbsp;</p>\r\n<p>Segala usaha maksimal telah dilakukan untuk menyakinkan ketepatan seluruh informasi yang dimuat. www.dpj.co.id tidak menjamin dengan segala hormat akan ketepatan data tersebut, termasuk spesifikasi produknya maupun editorial.</p>\r\n<p>&nbsp;</p>\r\n<p>Jika dalam masa garansi, barang yang dibeli terjadi kerusakan, silahkan hubungi Customer Service kami untuk konfirmasi lebih lanjut.</p>\r\n<p>&nbsp;</p>\r\n<p>Jika anda tidak menemukan produk yang anda cari, silakan hubungi Customer Service kami via telepon, mesengger, atau email. Kami akan melayani anda dengan senang hati.</p>', '', 'Y', 'admin', 'Y', 0, ''),
(6, 'Store Location', '', '<p>Jln Raya Janti no. 348 Jogja</p>', '', 'Y', 'admin', 'Y', 0, ''),
(18, 'Email', '', 'admin@tokobluesky.com', '', 'Y', 'admin', 'Y', 0, ''),
(19, 'Opening Time', '', '<p>Monday-Friday:08.00 To 18.00</p>\r\n<p>Saturday:09.00 To 20.00</p>\r\n<p>Sunday:10.00 To 20.00</p>', '', 'Y', 'admin', 'Y', 0, ''),
(7, 'Customer Service', '', '<p>CV. SONJU Computer<br />Jl. Gajah Mada 23E Yogyakarta</p>\r\n<p>Tlp. 0274-543219 / 6819783 / 6922818</p>\r\n<p>Fax. 0274- 549856</p>\r\n<p>SMS hotline: 085729600201</p>\r\n<p>BB Pin: 3116FD81/ 2A4506BA/ 7B1B2340/ 7462DF51</p>', '', 'Y', 'admin', 'Y', 0, ''),
(8, 'Contact Us', '', '<p>CV. TOKOBLUESKY</p>\r\n<p>Jl. Gajah Mada 23E Yogyakarta</p>\r\n<p>Tlp. 0274-543219/6819783/6922818</p>\r\n<p>Fax. 0274- 549856</p>\r\n<p>SMS hotline: 085729600201</p>\r\n<p>BB Pin: 3116FD81/ 2A4506BA/ 7B1B2340/ 7462DF51</p>\r\n<p>YM: sonjuonline/ sonju.gbu_market/ sonju_gbumarket @yahoo.com</p>\r\n<p><span style="font-family: times new roman,times; font-size: 12pt;"><span style="font-family: ''book antiqua'', palatino; font-size: 14pt;">Untuk pertanyaan, kritik dan saran. Mohon isi form dibawah ini atau chat via Yahoo Messenger.</span><br /></span></p>', '', 'Y', '', 'Y', 0, ''),
(9, 'Terms and Condition', '', '<div id="content" class="grid_12">\r\n<p><span style="font-size: medium; font-family: times new roman,times;"><span style="text-decoration: underline;"><strong><span style="font-size: 14pt;">Syarat dan Ketentuan pengiriman :</span></strong></span></span></p>\r\n<p>&nbsp;</p>\r\n</div>', '', 'Y', 'admin', 'Y', 0, ''),
(16, 'Keyword Website', '', 'tokobluesky, bluesky, tokobluesky jogja, bluesky yogyakarta, toko bluesky yogyakarta, blueskycom, tokobluesky.com', '', 'Y', 'admin', 'Y', 0, ''),
(10, 'Register Account', '', 'Silahkan isi form dibawah ini dengan benar.', '', 'Y', 'admin', 'Y', 0, ''),
(11, 'Payment Confirmation', '', 'payment confirmation, silahkan mengisi form berikut ini untuk konfirmasi pembayaran.', '', 'Y', 'admin', 'Y', 0, ''),
(12, 'Fast Support', '', '081802727900', '', 'Y', '', 'Y', 0, ''),
(13, 'Cara Beli', '', '<p>Cara beli masih sedang dalam penginputan data</p>', '', 'Y', 'admin', 'Y', 0, ''),
(14, 'Title Website', '', 'tokobluesky - Mellayani grosir dan retail', '', 'Y', 'admin', 'Y', 0, ''),
(15, 'Description Website', '', 'tokobluesky menjual aksesoris handphone original', '', 'Y', 'admin', 'Y', 0, ''),
(17, 'HOTLINE', '', '08XX XXXX XXXX', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `nomor` varchar(24) NOT NULL,
  `email` varchar(128) NOT NULL,
  `id_jasa` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `status_order` varchar(50) NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `nama`, `alamat`, `nomor`, `email`, `id_jasa`, `id_kota`, `status_order`, `tgl_order`, `jam_order`, `id_member`) VALUES
(26, 'www', 'ed', '2321', 'edyuty@gmail.com', 1, 17, 'Canceled', '2016-05-13', '16:37:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`, `id_color`) VALUES
(1, 2, 1, 0),
(2, 14, 2, 0),
(2, 0, 7, 0),
(2, 13, 3, 0),
(2, 15, 1, 0),
(4, 12, 4, 0),
(4, 14, 1, 0),
(4, 13, 3, 0),
(4, 0, 1, 0),
(5, 17, 1, 0),
(5, 16, 1, 0),
(5, 18, 2, 0),
(5, 19, 1, 0),
(5, 13, 2, 0),
(5, 0, 1, 0),
(6, 12, 1, 0),
(6, 15, 1, 0),
(6, 13, 1, 0),
(6, 14, 2, 0),
(8, 14, 1, 0),
(9, 18, 1, 0),
(10, 15, 1, 0),
(11, 15, 1, 0),
(11, 14, 1, 0),
(11, 13, 1, 0),
(12, 20, 1, 0),
(12, 18, 1, 0),
(13, 15, 1, 0),
(14, 25, 1, 0),
(15, 12, 1, 0),
(16, 15, 1, 0),
(17, 12, 1, 0),
(19, 16, 1, 0),
(19, 13, 1, 0),
(20, 15, 1, 0),
(20, 21, 1, 0),
(21, 17, 1, 0),
(21, 15, 1, 0),
(22, 12, 1, 0),
(22, 17, 2, 0),
(23, 16, 1, 0),
(23, 17, 1, 0),
(24, 19, 1, 0),
(24, 17, 1, 0),
(25, 16, 1, 0),
(25, 20, 1, 0),
(26, 23, 1, 0),
(26, 17, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `stok_temp` varchar(100) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_temp`
--

INSERT INTO `orders_temp` (`id_orders_temp`, `id_produk`, `id_session`, `jumlah`, `stok_temp`, `tgl_order_temp`, `jam_order_temp`, `id_color`) VALUES
(1, 3, 'q11c945vpa78jadm9o75ig1n53', 1, '5', '2015-10-07', '10:16:26', 0),
(3, 11, 'ufp8jrhf7knhcd9ecihekdt4a5', 2, '0', '2016-04-25', '15:41:49', 0),
(27, 14, '2umo3ob9b5n04jofkmf83tibr0', 1, '12', '2016-04-28', '09:25:39', 0),
(22, 17, '8ne7lfasbloi5drbg53v6gua06', 1, '10', '2016-04-26', '17:02:00', 0),
(26, 0, 'ulnufmdmbdncnj2tpua62cjdu0', 1, '', '2016-04-28', '09:14:55', 0),
(25, 19, 'udkmudsh9q5695j630f7u0hje4', 1, '10', '2016-04-27', '17:27:33', 0),
(32, 0, '3b46c5d4d8eaab9e9cf1d6744f8d0a4f', 1, '', '2016-04-29', '10:31:25', 0),
(33, 15, '3733a1f244a7117912f556efbdfddd1b', 1, '23', '2016-04-29', '10:31:31', 0),
(34, 19, '48d8ee606881f6d0ca2e502222f2cf34', 1, '10', '2016-04-29', '10:31:32', 0),
(35, 20, '77dffa42d4c1ca323e4d772b0296a290', 1, '12', '2016-04-29', '10:31:35', 0),
(36, 21, '278195936a2d74468fb75d0d974c210c', 1, '11', '2016-04-29', '10:31:54', 0),
(37, 13, 'f07c771c4d767ab0065a4105ac83fc2e', 1, '12', '2016-04-29', '10:32:02', 0),
(38, 12, '8cb020f30faa28628d9c98319640811e', 1, '12000', '2016-04-29', '10:32:18', 0),
(39, 18, '893902718aa0f20be29bf425feb4d8b3', 1, '10', '2016-04-29', '10:32:22', 0),
(40, 17, '0c361ee541769046456f708ad0c34264', 1, '10', '2016-04-29', '10:32:26', 0),
(41, 14, 'cf536f37c34815eda5dfcbed011516cd', 1, '12', '2016-04-29', '10:32:37', 0),
(42, 16, '4356bd6cc7ce08f4782ce986abe481d3', 1, '11', '2016-04-29', '10:32:38', 0),
(43, 0, '8f5456a7a35cb3a811e8beff7d72fa58', 1, '', '2016-04-29', '10:32:43', 0),
(44, 18, '1f4813018eeb7acee4881e1a24afc400', 1, '10', '2016-04-29', '10:32:51', 0),
(45, 12, 'b00af127818e11ec23384814d5c3a084', 1, '12000', '2016-04-29', '10:33:17', 0),
(46, 15, 'bc4d01853446f96eaca6f365ffd28e8b', 1, '23', '2016-04-29', '10:33:32', 0),
(47, 20, '6528836dd0f717cbe2291c2b73895027', 1, '12', '2016-04-29', '10:33:38', 0),
(48, 21, '37e6ffbfb39100f623dbc90f5bb6e55d', 1, '11', '2016-04-29', '10:33:46', 0),
(49, 19, 'b36d92fe9af387590d594bdb9a2d1dc9', 1, '10', '2016-04-29', '10:33:51', 0),
(50, 14, '425ea457ace15999c5bcb54640b7db83', 1, '12', '2016-04-29', '10:34:04', 0),
(51, 17, 'cab454c709658b4a22ba2f87c99b9af1', 1, '10', '2016-04-29', '10:34:08', 0),
(52, 16, 'd7d04f2e5cf0842f455ac0ca0311af19', 1, '11', '2016-04-29', '10:34:13', 0),
(53, 13, 'f01fa7d77bec1baf589a9c21b7d79328', 1, '12', '2016-04-29', '10:34:15', 0),
(54, 23, 'ea16e32bbe06a286b7e2894b266abe4e', 1, '11', '2016-04-29', '10:37:54', 0),
(55, 25, '9f6c859e54f21f60916f21162cd38f03', 1, '1', '2016-04-29', '10:37:58', 0),
(56, 25, '1a467d1060ee4770896fec41330c17fb', 1, '1', '2016-04-29', '10:38:01', 0),
(57, 23, '514aa6f9facfd02a3074af51a122f6c8', 1, '11', '2016-04-29', '10:38:09', 0),
(58, 21, 'c55575352d7ecdf741c7b2ff0574a5de', 1, '11', '2016-04-29', '16:45:52', 0),
(59, 15, 'ad772f04d103a8f492f119b905bdc8dd', 1, '23', '2016-04-29', '16:50:41', 0),
(60, 18, 'aa7cff1b9dbfda094a5756f2668e5b33', 1, '10', '2016-04-29', '17:32:05', 0),
(61, 0, '98e54b504d86072730b713afa16d60e8', 1, '', '2016-04-30', '02:46:45', 0),
(62, 0, '8000e50b29a6fb32b434270a21914a92', 1, '', '2016-04-30', '10:34:58', 0),
(63, 18, 'a4a1c7b2118e59857af34a34c53dccc0', 1, '10', '2016-04-30', '22:49:25', 0),
(64, 15, 'd82ef8d60a9fd6978fb57489fdc04bf6', 1, '23', '2016-05-03', '06:44:57', 0),
(65, 18, '5663baea7da4622a5ca25b59fc5d9339', 1, '10', '2016-05-07', '06:20:56', 0),
(66, 15, 'eac82539a4c5b26580c9194a2034c369', 1, '23', '2016-05-09', '05:36:08', 0),
(73, 15, '177061a07fb03e26d824f0899c972a2b', 1, '23', '2016-05-12', '03:26:40', 0),
(92, 15, '422b7c7aa9c94ca966fe4151cf5afaa3', 1, '23', '2016-05-15', '02:06:04', 0),
(91, 15, '09e211285b8f75685f92c691d3c21ef1', 1, '23', '2016-05-13', '23:56:20', 0),
(93, 15, 'd79c71c3a7d23539bc8892d7630b3993', 1, '23', '2016-05-15', '07:42:44', 0),
(94, 15, '1de58ce3c073522cad5a543fedc9e11e', 1, '23', '2016-05-15', '22:41:47', 0),
(95, 15, 'cadf80a2f201d658c49c579925a69315', 1, '23', '2016-05-16', '00:50:13', 0),
(96, 15, '04af11f0aad0178d07063dd596c47796', 1, '23', '2016-05-16', '05:50:24', 0),
(97, 15, '7b542db592f67b1d2a496a9faaef9ca3', 1, '23', '2016-05-16', '08:45:08', 0),
(98, 23, '1fabced65f7f7592e8bee9cc72fc8b7a', 1, '11', '2016-05-16', '11:12:12', 0),
(99, 17, '7u858eutqn7kfvvindrhrq7cp4', 1, '10', '2016-05-16', '11:33:14', 0),
(100, 21, '7u858eutqn7kfvvindrhrq7cp4', 1, '11', '2016-05-16', '11:33:24', 0),
(101, 18, '7u858eutqn7kfvvindrhrq7cp4', 1, '10', '2016-05-16', '11:39:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(11) NOT NULL,
  `id_subkategori` int(11) NOT NULL,
  `id_subsub` int(11) NOT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `tgl_masuk` datetime NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `produk_seo` varchar(100) DEFAULT NULL,
  `kode` varchar(50) NOT NULL,
  `harga` int(20) DEFAULT NULL,
  `berat` varchar(11) NOT NULL,
  `garansi` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL,
  `detail` text,
  `discount` int(3) DEFAULT '0',
  `special` varchar(128) DEFAULT NULL,
  `tampil_depan` varchar(1) NOT NULL DEFAULT 'N',
  `deals` varchar(1) NOT NULL DEFAULT 'N',
  `featured` varchar(1) NOT NULL DEFAULT 'N',
  `best` varchar(1) NOT NULL DEFAULT 'N',
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_subkategori`, `id_subsub`, `id_brand`, `tgl_masuk`, `nama_produk`, `produk_seo`, `kode`, `harga`, `berat`, `garansi`, `stok`, `detail`, `discount`, `special`, `tampil_depan`, `deals`, `featured`, `best`, `gambar`) VALUES
(12, 9, 28, 4, '2016-04-26 10:01:56', 'Tongsis Murah', 'tongsis-murah', '1234', 34000, '01', '1 Bulan', 12000, '<p>Tangsis murang masa kin, muda ceria dan positife</p>', 50, 'new', 'Y', 'N', 'N', 'N', 'fortuna_511230a8.jpg'),
(13, 6, 20, 2, '2016-04-26 10:37:41', 'Camera Tester', 'camera-tester', '123', 235000, '0.8', '1 Minggu', 12, '<p>Tester</p>', 10, 'promo', 'Y', 'N', 'Y', 'Y', 'fortuna_597015TongsisTomSisAndroidampiPhone02.jpg'),
(14, 1, 0, 3, '2016-04-26 10:51:04', 'Tongsis Murah 2016', 'tongsis-murah-2016', '12344', 111, '0.7', '3 Bulan', 12, '<p>Test</p>', 50, 'new', 'Y', 'N', 'Y', 'Y', 'fortuna_334594baterai-cellphone.jpg'),
(15, 9, 29, 5, '2016-04-26 11:35:10', 'Samsung 123', 'samsung-123', '12344', 360000, '0.77', '1 Tahun', 23, '<p>Samsung</p>', 30, 'new', 'Y', 'N', 'Y', 'Y', 'fortuna_585144harga-dan-spesifikasi-galaxy-j5-1.png'),
(16, 10, 55, 5, '2016-04-26 15:47:23', 'Samsung', 'samsung', '12', 340000, '0.9', '1 Tahun', 11, '<p>Test</p>', 10, 'new', 'Y', 'N', 'Y', 'Y', 'fortuna_147491a3-2016.jpg'),
(17, 4, 55, 3, '2016-04-26 15:51:58', 'Powr Bank', 'powr-bank', '133', 50000, '0.9', '1 Tahun', 10, '', 1, 'new', 'Y', 'N', 'Y', 'Y', 'fortuna_197998elivebuy_power_bank_thumb800.jpg'),
(18, 4, 57, 4, '2016-04-26 15:52:45', 'Power Bank Test', 'power-bank-test', '099', 23000, '0.9', '1 Bulan', 10, '<p>Test</p>', 20, 'new', 'Y', 'N', 'Y', 'Y', 'fortuna_583526Power-bank-yang-bagus-dan-awet.jpg'),
(19, 4, 56, 7, '2016-04-26 15:53:33', 'Oppo Power Bank', 'oppo-power-bank', '0102', 20000, '0.8', '1 Bulan', 10, '<p>test</p>', 12, 'promo', 'Y', 'N', 'Y', 'Y', 'fortuna_527526power-bank-max-0214-01.jpg'),
(20, 12, 40, 3, '2016-04-28 11:13:11', 'Test', 'test', '2323', 100000, '011', '1 Bulan', 12, '<p>Test</p>', 1, 'promo', 'Y', 'N', 'Y', 'Y', 'fortuna_950408GalaxyA3-1-58172a51b5297753-580x601.jpg'),
(21, 10, 32, 2, '2016-04-28 11:13:46', 'Test Product', 'test-product', '1233', 130000, '0.9', '1 Tahuhn', 11, '<p>wwww</p>', 11, '', 'Y', 'N', 'Y', 'Y', 'fortuna_736938a3-2016.jpg'),
(23, 12, 39, 4, '2016-04-28 11:14:41', 'TEst', 'test', '1231', 120000, '11', '1 Bulan', 11, '<p>test Deskripsi Produk</p>', 11, 'new', 'N', 'Y', 'Y', 'Y', 'fortuna_725097ace-4-580x435.jpg'),
(25, 9, 29, 2, '2016-04-28 11:18:08', 'Test Sistem', 'test-sistem', '1213', 1000, '11', '1 Bulan', 1, '<p>111</p>', 1, 'new', 'N', 'Y', 'Y', 'Y', 'fortuna_84991Samsung-Galaxy-V-1024x682-580x386.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id_slide` int(11) NOT NULL,
  `judul` varchar(128) DEFAULT NULL,
  `tagline` varchar(128) DEFAULT NULL,
  `link` varchar(128) DEFAULT NULL,
  `gambar` varchar(128) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `judul`, `tagline`, `link`, `gambar`) VALUES
(1, 'NEW ARRIVAL', 'DISKON HINGGA 50%', 'http://localhost/edi/2016april/tokobluesky/product.html', 'Fortuna_868103power-bank-banner-copy.png'),
(9, 'HOT ITEM', 'JANGAN SAMPAI KEHABISAN', 'http://localhost/edi/2016april/tokobluesky/profile-1.html', 'Fortuna_57403advan-banner-coba.png'),
(10, 'test', '', '', 'Fortuna_64971hp-cina-banner-copy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sosial`
--

CREATE TABLE IF NOT EXISTS `sosial` (
  `id_sosial` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosial`
--

INSERT INTO `sosial` (`id_sosial`, `judul`, `link`, `gambar`) VALUES
(1, 'Facebook', 'https://www.facebook.com/Sonju Computer', '788302Facebook Round.png'),
(2, 'Twitter', 'https://twitter.com/sonjucomputer', '273506Twitter round.png');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('36.73.83.47', '2015-10-05', 5, '1444041297'),
('::1', '2015-10-06', 20, '1444125177'),
('::1', '2015-10-07', 70, '1444201457'),
('::1', '2015-10-08', 1, '1444292944'),
('::1', '2015-10-13', 1, '1444720890'),
('::1', '2015-10-15', 9, '1444903842'),
('::1', '2015-11-16', 35, '1447642213'),
('::1', '2015-11-24', 1, '1448348652'),
('::1', '2016-01-08', 85, '1452242451'),
('::1', '2016-04-25', 237, '1461580182'),
('::1', '2016-04-26', 634, '1461666985'),
('::1', '2016-04-27', 31, '1461752858'),
('::1', '2016-04-28', 122, '1461823778'),
('36.78.53.203', '2016-04-28', 6, '1461837038'),
('192.99.150.120', '2016-04-29', 2, '1461893304'),
('120.164.42.126', '2016-04-29', 2, '1461887130'),
('66.249.69.11', '2016-04-29', 236, '1461935578'),
('66.249.69.18', '2016-04-29', 23, '1461937412'),
('66.249.69.10', '2016-04-29', 106, '1461930778'),
('66.249.79.226', '2016-04-29', 1, '1461900829'),
('36.78.53.203', '2016-04-29', 1, '1461901479'),
('36.81.77.31', '2016-04-29', 1, '1461901554'),
('66.249.69.19', '2016-04-29', 37, '1461937411'),
('66.249.69.26', '2016-04-29', 12, '1461926844'),
('66.249.69.27', '2016-04-29', 23, '1461930844'),
('66.249.73.143', '2016-04-29', 16, '1461947997'),
('66.249.73.152', '2016-04-29', 4, '1461949168'),
('66.249.73.161', '2016-04-29', 4, '1461949041'),
('66.249.73.130', '2016-04-29', 6, '1461949047'),
('66.249.73.139', '2016-04-29', 4, '1461949041'),
('66.249.73.152', '2016-04-30', 121, '1462021617'),
('66.249.73.143', '2016-04-30', 225, '1462023213'),
('66.249.73.148', '2016-04-30', 79, '1462023090'),
('66.249.73.161', '2016-04-30', 59, '1462020819'),
('66.249.73.139', '2016-04-30', 107, '1462020195'),
('66.249.73.130', '2016-04-30', 435, '1462020195'),
('66.249.69.10', '2016-04-30', 1, '1462011706'),
('69.58.178.56', '2016-04-30', 10, '1462023153'),
('66.249.79.161', '2016-04-30', 23, '1462035133'),
('66.249.79.154', '2016-04-30', 47, '1462033826'),
('66.249.79.168', '2016-04-30', 14, '1462035568'),
('66.249.79.226', '2016-04-30', 23, '1462035133'),
('66.249.79.233', '2016-04-30', 23, '1462035264'),
('66.249.79.240', '2016-04-30', 10, '1462035133'),
('66.249.79.226', '2016-05-01', 7, '1462096806'),
('66.249.79.154', '2016-05-01', 13, '1462101797'),
('66.249.79.168', '2016-05-01', 9, '1462072774'),
('66.249.79.233', '2016-05-01', 8, '1462096800'),
('66.249.79.161', '2016-05-01', 6, '1462076673'),
('66.249.79.240', '2016-05-01', 7, '1462102088'),
('66.249.64.37', '2016-05-01', 3, '1462115554'),
('66.249.64.116', '2016-05-01', 6, '1462118393'),
('66.249.64.111', '2016-05-01', 3, '1462119204'),
('66.249.64.106', '2016-05-01', 4, '1462117584'),
('66.249.64.42', '2016-05-01', 3, '1462117987'),
('66.249.64.134', '2016-05-01', 1, '1462119609'),
('66.249.64.188', '2016-05-01', 1, '1462120420'),
('66.249.64.146', '2016-05-01', 2, '1462121637'),
('66.249.64.193', '2016-05-01', 1, '1462121233'),
('66.249.64.140', '2016-05-02', 3, '1462130222'),
('66.249.64.188', '2016-05-02', 4, '1462133977'),
('66.249.64.146', '2016-05-02', 5, '1462131533'),
('192.99.150.120', '2016-05-02', 2, '1462145752'),
('66.249.64.193', '2016-05-02', 4, '1462133829'),
('59.61.184.176', '2016-05-02', 1, '1462131574'),
('66.249.64.183', '2016-05-02', 1, '1462133501'),
('66.249.79.233', '2016-05-02', 3, '1462205254'),
('66.249.79.161', '2016-05-02', 6, '1462199335'),
('66.249.79.154', '2016-05-02', 10, '1462199352'),
('36.73.90.125', '2016-05-02', 12, '1462171231'),
('120.161.1.46', '2016-05-02', 1, '1462177574'),
('66.249.79.226', '2016-05-02', 5, '1462200278'),
('66.249.79.240', '2016-05-02', 2, '1462202521'),
('66.249.79.168', '2016-05-02', 2, '1462197094'),
('66.249.79.233', '2016-05-03', 22, '1462287217'),
('66.249.79.161', '2016-05-03', 28, '1462285792'),
('66.249.79.240', '2016-05-03', 21, '1462278647'),
('66.249.79.168', '2016-05-03', 11, '1462276861'),
('66.249.79.226', '2016-05-03', 32, '1462294019'),
('66.249.79.154', '2016-05-03', 20, '1462291315'),
('158.69.228.18', '2016-05-03', 1, '1462246914'),
('66.249.64.111', '2016-05-03', 1, '1462248038'),
('66.249.79.226', '2016-05-04', 12, '1462379217'),
('66.249.79.161', '2016-05-04', 15, '1462376343'),
('66.249.79.240', '2016-05-04', 8, '1462375335'),
('66.249.79.168', '2016-05-04', 2, '1462338163'),
('66.249.79.154', '2016-05-04', 7, '1462380588'),
('66.249.79.233', '2016-05-04', 2, '1462326506'),
('36.73.103.151', '2016-05-04', 1, '1462347148'),
('36.81.61.11', '2016-05-04', 3, '1462352320'),
('66.249.79.154', '2016-05-05', 4, '1462448107'),
('66.249.79.226', '2016-05-05', 10, '1462459700'),
('66.249.79.168', '2016-05-05', 6, '1462444296'),
('69.58.178.57', '2016-05-05', 11, '1462386479'),
('66.249.79.161', '2016-05-05', 7, '1462455585'),
('66.249.79.240', '2016-05-05', 4, '1462458191'),
('138.201.16.75', '2016-05-05', 1, '1462408743'),
('66.249.79.233', '2016-05-05', 8, '1462467345'),
('112.215.63.21', '2016-05-05', 1, '1462423101'),
('112.215.63.20', '2016-05-05', 2, '1462423241'),
('112.215.63.18', '2016-05-05', 1, '1462423256'),
('112.215.63.19', '2016-05-05', 1, '1462423281'),
('36.79.145.124', '2016-05-05', 1, '1462423633'),
('206.183.1.74', '2016-05-05', 4, '1462447086'),
('66.249.79.240', '2016-05-06', 6, '1462538105'),
('66.249.79.226', '2016-05-06', 10, '1462553000'),
('66.249.79.168', '2016-05-06', 6, '1462549649'),
('66.249.79.161', '2016-05-06', 7, '1462539302'),
('66.249.79.154', '2016-05-06', 5, '1462526581'),
('66.249.79.233', '2016-05-06', 7, '1462549774'),
('37.187.92.25', '2016-05-06', 1, '1462516868'),
('218.241.108.76', '2016-05-06', 1, '1462533396'),
('89.145.95.40', '2016-05-06', 1, '1462546291'),
('66.249.79.161', '2016-05-07', 21, '1462635506'),
('193.90.12.86', '2016-05-07', 1, '1462556703'),
('66.249.79.233', '2016-05-07', 24, '1462640068'),
('66.249.79.226', '2016-05-07', 62, '1462593953'),
('66.249.79.240', '2016-05-07', 15, '1462640066'),
('66.249.79.168', '2016-05-07', 15, '1462615979'),
('66.249.79.154', '2016-05-07', 74, '1462632258'),
('75.149.221.170', '2016-05-07', 1, '1462578510'),
('109.169.29.30', '2016-05-07', 3, '1462620840'),
('66.249.79.240', '2016-05-08', 18, '1462718760'),
('66.249.79.226', '2016-05-08', 42, '1462725915'),
('66.249.79.154', '2016-05-08', 19, '1462725717'),
('66.249.79.168', '2016-05-08', 14, '1462725481'),
('66.249.79.161', '2016-05-08', 17, '1462725428'),
('66.249.79.233', '2016-05-08', 22, '1462726208'),
('192.237.216.89', '2016-05-08', 1, '1462662719'),
('198.101.238.203', '2016-05-08', 1, '1462678084'),
('218.241.108.76', '2016-05-08', 1, '1462693058'),
('66.249.79.240', '2016-05-09', 39, '1462813082'),
('66.249.79.154', '2016-05-09', 142, '1462811116'),
('66.249.79.233', '2016-05-09', 73, '1462813098'),
('66.249.79.168', '2016-05-09', 28, '1462810199'),
('66.249.79.226', '2016-05-09', 112, '1462813132'),
('66.249.79.161', '2016-05-09', 52, '1462813100'),
('167.114.229.215', '2016-05-09', 1, '1462738856'),
('88.80.7.5', '2016-05-09', 1, '1462742810'),
('197.231.221.211', '2016-05-09', 1, '1462750917'),
('36.82.106.156', '2016-05-09', 1, '1462772311'),
('36.81.73.245', '2016-05-09', 1, '1462787489'),
('66.249.79.240', '2016-05-10', 70, '1462898974'),
('66.249.79.226', '2016-05-10', 115, '1462899454'),
('66.249.79.154', '2016-05-10', 128, '1462897679'),
('66.249.79.233', '2016-05-10', 91, '1462899498'),
('66.249.79.161', '2016-05-10', 80, '1462899460'),
('66.249.79.168', '2016-05-10', 51, '1462898974'),
('36.81.77.150', '2016-05-10', 5, '1462868981'),
('13.92.244.147', '2016-05-10', 103, '1462888925'),
('66.249.79.233', '2016-05-11', 81, '1462984199'),
('66.249.79.168', '2016-05-11', 66, '1462984696'),
('66.249.79.154', '2016-05-11', 166, '1462983724'),
('66.249.79.161', '2016-05-11', 72, '1462983649'),
('66.249.79.240', '2016-05-11', 64, '1462982848'),
('66.249.79.226', '2016-05-11', 150, '1462983751'),
('159.203.71.159', '2016-05-11', 1, '1462913703'),
('66.249.75.138', '2016-05-11', 3, '1462981676'),
('66.249.75.154', '2016-05-11', 7, '1462972875'),
('66.249.75.146', '2016-05-11', 3, '1462983408'),
('66.249.75.137', '2016-05-11', 3, '1462972179'),
('36.73.76.3', '2016-05-11', 148, '1462973740'),
('66.249.79.142', '2016-05-11', 1, '1462949730'),
('66.249.75.145', '2016-05-11', 2, '1462972729'),
('157.55.39.126', '2016-05-11', 1, '1462959080'),
('66.249.75.153', '2016-05-11', 2, '1462985738'),
('54.87.127.90', '2016-05-11', 1, '1462977440'),
('78.166.128.65', '2016-05-11', 1, '1462984150'),
('66.249.79.154', '2016-05-12', 1, '1462986126'),
('66.249.79.168', '2016-05-12', 1, '1462986442'),
('66.249.73.143', '2016-05-12', 155, '1463070031'),
('66.249.73.152', '2016-05-12', 94, '1463069089'),
('66.249.73.139', '2016-05-12', 109, '1463070005'),
('66.249.73.161', '2016-05-12', 73, '1463069950'),
('66.249.73.130', '2016-05-12', 153, '1463070064'),
('66.249.73.148', '2016-05-12', 77, '1463070004'),
('52.13.35.149', '2016-05-12', 1, '1462994207'),
('36.73.76.3', '2016-05-12', 159, '1463045755'),
('36.81.35.9', '2016-05-12', 1, '1463037485'),
('66.249.73.193', '2016-05-12', 2, '1463054613'),
('66.249.73.201', '2016-05-12', 1, '1463053333'),
('120.164.43.254', '2016-05-12', 6, '1463062997'),
('66.249.73.161', '2016-05-13', 75, '1463157448'),
('66.249.73.139', '2016-05-13', 104, '1463155818'),
('66.249.73.152', '2016-05-13', 127, '1463158580'),
('66.249.73.130', '2016-05-13', 241, '1463158773'),
('66.249.73.143', '2016-05-13', 214, '1463158599'),
('13.92.245.92', '2016-05-13', 1, '1463073640'),
('66.249.73.148', '2016-05-13', 71, '1463157458'),
('66.249.66.21', '2016-05-13', 1, '1463089266'),
('36.73.76.3', '2016-05-13', 45, '1463110037'),
('180.253.134.159', '2016-05-13', 1, '1463113668'),
('36.81.35.9', '2016-05-13', 4, '1463132469'),
('36.79.159.9', '2016-05-13', 75, '1463132280'),
('36.81.57.155', '2016-05-13', 6, '1463136578'),
('78.47.155.198', '2016-05-13', 1, '1463139658'),
('66.249.73.143', '2016-05-14', 200, '1463244774'),
('66.249.73.139', '2016-05-14', 86, '1463244835'),
('66.249.73.148', '2016-05-14', 52, '1463244731'),
('66.249.73.161', '2016-05-14', 54, '1463244991'),
('66.249.73.130', '2016-05-14', 194, '1463244912'),
('66.249.73.152', '2016-05-14', 83, '1463244694'),
('40.76.31.23', '2016-05-14', 1, '1463195977'),
('64.246.165.170', '2016-05-14', 1, '1463204340'),
('66.249.79.233', '2016-05-14', 1, '1463220273'),
('66.249.73.161', '2016-05-15', 90, '1463331416'),
('66.249.73.139', '2016-05-15', 106, '1463331403'),
('66.249.73.152', '2016-05-15', 127, '1463331089'),
('66.249.73.143', '2016-05-15', 151, '1463331428'),
('66.249.73.148', '2016-05-15', 101, '1463331389'),
('66.249.73.130', '2016-05-15', 151, '1463331459'),
('197.231.221.211', '2016-05-15', 1, '1463319944'),
('66.249.73.161', '2016-05-16', 42, '1463370599'),
('66.249.73.130', '2016-05-16', 88, '1463370168'),
('66.249.73.139', '2016-05-16', 72, '1463370185'),
('66.249.73.152', '2016-05-16', 59, '1463370287'),
('66.249.73.148', '2016-05-16', 46, '1463371920'),
('66.249.73.143', '2016-05-16', 74, '1463372027'),
('36.79.128.49', '2016-05-16', 1, '1463364002'),
('36.81.57.155', '2016-05-16', 15, '1463371977'),
('::1', '2016-05-16', 66, '1463379083');

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE IF NOT EXISTS `subkategori` (
  `id_subkategori` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `nama` varchar(128) NOT NULL,
  `seo` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subkategori`
--

INSERT INTO `subkategori` (`id_subkategori`, `id_kategori`, `nama`, `seo`) VALUES
(1, 1, 'Baterai', 'baterai'),
(2, 1, 'Charger', 'charger'),
(3, 1, 'Kabel', 'kabel'),
(4, 1, 'Power bank', 'power-bank'),
(5, 1, 'Pelindung layar', 'pelindung-layar'),
(6, 1, 'Memory', 'memory'),
(7, 1, 'MP3 player & Speaker', 'mp3-player--speaker'),
(8, 1, 'Handsfree', 'handsfree'),
(9, 1, 'Camera & acc', 'camera--acc'),
(10, 1, 'Case & Cover', 'case--cover'),
(11, 1, 'Sparepart', 'sparepart'),
(12, 1, 'Alat servis', 'alat-servis'),
(13, 1, 'Lain lain', 'lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `id_subscribe` int(11) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id_subscribe`, `email`) VALUES
(1, 'test@gmail.com'),
(3, 'hello@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `subsub_kategori`
--

CREATE TABLE IF NOT EXISTS `subsub_kategori` (
  `id_subsub` int(11) NOT NULL,
  `id_subkategori` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `seo` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subsub_kategori`
--

INSERT INTO `subsub_kategori` (`id_subsub`, `id_subkategori`, `nama`, `seo`) VALUES
(8, 2, 'Tavel/wall charger', 'tavelwall-charger'),
(9, 2, 'Universal desktop charger', 'universal-desktop-charger'),
(10, 2, 'Saver mobil', 'saver-mobil'),
(11, 2, 'Connector', 'connector'),
(12, 3, 'Charge & data', 'charge--data'),
(13, 3, 'Audio & video', 'audio--video'),
(14, 3, 'Pelindung kabel', 'pelindung-kabel'),
(15, 3, 'OTG, passcode, flash, dll', 'otg-passcode-flash-dll'),
(16, 5, 'Bening', 'bening'),
(17, 5, 'Tempered glass', 'tempered-glass'),
(18, 5, 'Anti spy', 'anti-spy'),
(19, 5, 'anti minyak/glare', 'anti-minyakglare'),
(20, 6, 'Micro sd', 'micro-sd'),
(21, 6, 'Sd card', 'sd-card'),
(22, 6, 'Flash disk', 'flash-disk'),
(23, 6, 'Cart reader', 'cart-reader'),
(24, 7, 'Mp3 player', 'mp3-player'),
(25, 7, 'Speaker', 'speaker'),
(26, 8, 'Handsfree kabel', 'handsfree-kabel'),
(27, 8, 'Handsfree bluetooth', 'handsfree-bluetooth'),
(28, 9, 'tongsis & tomsis', 'tongsis--tomsis'),
(29, 9, 'tripod', 'tripod'),
(30, 9, 'lensa mini', 'lensa-mini'),
(31, 10, 'Hardcase', 'hardcase'),
(32, 10, 'Flipcase/bookcase', 'flipcasebookcase'),
(33, 10, 'Jelly case', 'jelly-case'),
(34, 10, 'Casing', 'casing'),
(35, 10, 'Tulang tengah hp', 'tulang-tengah-hp'),
(36, 11, 'LCD', 'lcd'),
(37, 11, 'Touchscreen', 'touchscreen'),
(38, 11, 'Sparepart lain harap hubungi cs', 'sparepart-lain-harap-hubungi-cs'),
(39, 12, 'Blower', 'blower'),
(40, 12, 'Obeng dan tang', 'obeng-dan-tang'),
(41, 12, 'Lampu', 'lampu'),
(42, 12, 'Solder', 'solder'),
(43, 12, 'Timah, pasta, dll', 'timah-pasta-dll'),
(44, 13, 'Holder / Kursi HP', 'holder--kursi-hp'),
(45, 13, 'Tali HP', 'tali-hp'),
(46, 13, 'Keyboard mouse', 'keyboard-mouse'),
(47, 13, 'Stylus', 'stylus'),
(48, 13, 'SIM cutter, adapter SIM & SIM Activator', 'sim-cutter-adapter-sim--sim-activator'),
(49, 1, 'Samsung', 'samsung'),
(50, 1, 'Nokia', 'nokia'),
(51, 1, 'Lenovo', 'lenovo'),
(52, 1, 'Smartfren', 'smartfren'),
(55, 4, 'Asus Zen Power', 'asus-zen-power'),
(56, 4, 'Sony Power Bank', 'sony-power-bank'),
(57, 4, 'Yoobao Power Bank', 'yoobao-power-bank'),
(58, 4, 'Vivan Power Bank', 'vivan-power-bank');

-- --------------------------------------------------------

--
-- Table structure for table `sub_color`
--

CREATE TABLE IF NOT EXISTS `sub_color` (
  `id_sub_color` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_ukuran`
--

CREATE TABLE IF NOT EXISTS `sub_ukuran` (
  `id_subukuran` int(11) NOT NULL,
  `id_ukuran` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `price_ukuran` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ukuran`
--

CREATE TABLE IF NOT EXISTS `ukuran` (
  `id_ukuran` int(11) NOT NULL,
  `ukuran` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`, `id_session`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@tokobluesky.com', '0274-549856', 'admin', 'N', 'gccthdcr2jb7ijbb7lreioecb4');

-- --------------------------------------------------------

--
-- Table structure for table `ym`
--

CREATE TABLE IF NOT EXISTS `ym` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ym`
--

INSERT INTO `ym` (`id`, `username`, `nama`) VALUES
(1, 'sonjuonline', 'sonjuonline'),
(2, 'sonju.gbu_market', 'sonju.gbu_market'),
(3, 'sonju_gbumarket', 'sonju_gbumarket');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id_advertise`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id_catalog`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id_color`);

--
-- Indexes for table `custom_link`
--
ALTER TABLE `custom_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desk`
--
ALTER TABLE `desk`
  ADD PRIMARY KEY (`id_desk`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `jasa`
--
ALTER TABLE `jasa`
  ADD PRIMARY KEY (`id_jasa`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `megamenu`
--
ALTER TABLE `megamenu`
  ADD PRIMARY KEY (`id_megamenu`);

--
-- Indexes for table `memberarea`
--
ALTER TABLE `memberarea`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
  ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `sosial`
--
ALTER TABLE `sosial`
  ADD PRIMARY KEY (`id_sosial`);

--
-- Indexes for table `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id_subkategori`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id_subscribe`);

--
-- Indexes for table `subsub_kategori`
--
ALTER TABLE `subsub_kategori`
  ADD PRIMARY KEY (`id_subsub`);

--
-- Indexes for table `sub_color`
--
ALTER TABLE `sub_color`
  ADD PRIMARY KEY (`id_sub_color`);

--
-- Indexes for table `sub_ukuran`
--
ALTER TABLE `sub_ukuran`
  ADD PRIMARY KEY (`id_subukuran`);

--
-- Indexes for table `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id_ukuran`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ym`
--
ALTER TABLE `ym`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id_advertise` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id_catalog` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `custom_link`
--
ALTER TABLE `custom_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `desk`
--
ALTER TABLE `desk`
  MODIFY `id_desk` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1009;
--
-- AUTO_INCREMENT for table `jasa`
--
ALTER TABLE `jasa`
  MODIFY `id_jasa` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT for table `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id_kurir` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `megamenu`
--
ALTER TABLE `megamenu`
  MODIFY `id_megamenu` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `memberarea`
--
ALTER TABLE `memberarea`
  MODIFY `id_member` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sosial`
--
ALTER TABLE `sosial`
  MODIFY `id_sosial` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id_subkategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id_subscribe` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subsub_kategori`
--
ALTER TABLE `subsub_kategori`
  MODIFY `id_subsub` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `sub_color`
--
ALTER TABLE `sub_color`
  MODIFY `id_sub_color` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sub_ukuran`
--
ALTER TABLE `sub_ukuran`
  MODIFY `id_subukuran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ym`
--
ALTER TABLE `ym`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
