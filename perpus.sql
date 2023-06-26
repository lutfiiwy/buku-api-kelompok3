-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 09:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` char(4) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `tahun`, `stok`) VALUES
(1, 'Pulang', 'Tere Liye', 'Gramedia Pustaka Utama', '2015', 5),
(2, 'Perahu Kertas', 'Dewi Lestari', 'Truedee Books', '2009', 5),
(3, 'Ayat-Ayat Cinta', 'Habiburrahman El Shirazy', 'Republika Penerbit', '2004', 5),
(4, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2005', 5),
(5, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', '2009', 5),
(6, '5 cm', 'Donny Dhirgantoro', 'Grasindo', '2005', 5),
(7, 'Hujan', 'Tere Liye', 'Gramedia Pustaka Utama', '2016', 5),
(8, 'Mariposa', 'Luluk HF', 'Coconut Books', '2018', 5),
(9, 'Dilan: Dia Adalah Dilanku Tahun 1990', 'Pidi Baiq', 'Pastel Books', '2014', 5),
(10, 'Dear Nathan', 'Erisca Febriani', 'Best Media', '2016', 5);

-- --------------------------------------------------------

--
-- Table structure for table `desc_buku`
--

CREATE TABLE `desc_buku` (
  `id_desc` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desc_buku`
--

INSERT INTO `desc_buku` (`id_desc`, `id`, `desc`) VALUES
(1, 1, 'Pulang adalah sebuah novel karya Tere Liye yang diterbitkan pada tahun 2015. Novel ini mengisahkan perjalanan hidup seorang pria bernama Hamba yang tinggal di tanah rantau, bekerja sebagai buruh migran di Timur Tengah. \r\nNovel ini menggambarkan perjuangan Hamba dalam menjalani hidupnya di luar negeri, rindu yang mendalam terhadap keluarga dan tanah air, serta keinginannya untuk pulang dan menyatukan kembali keluarganya. Melalui kisah ini, Tere Liye mengeksplorasi tema keluarga, cinta, dan rasa patriotisme, serta memberikan gambaran mengenai perjuangan para pekerja migran yang tinggal di tanah asing.'),
(2, 2, 'Perahu Kertas adalah sebuah novel karya Dewi Lestari yang diterbitkan pada tahun 2009. Cerita ini mengisahkan tentang perjalanan hidup dan cinta dua karakter utamanya, Kugy dan Keenan.\r\nPerahu Kertas tidak hanya mengisahkan tentang cinta antara dua insan, tetapi juga tentang perjuangan untuk mewujudkan impian, mengejar passion, dan menemukan jati diri. Novel ini menarik perhatian pembaca dengan gaya penulisan yang segar, cerita yang menghibur, dan pesan-pesan inspiratif yang terkandung di dalamnya.'),
(3, 3, 'Ayat-Ayat Cinta adalah sebuah novel karya Habiburrahman El Shirazy yang diterbitkan pada tahun 2004. Cerita ini mengisahkan tentang perjalanan cinta seorang pemuda bernama Fahri bin Abdullah Shiddiq, seorang mahasiswa Indonesia yang sedang menempuh pendidikan di Universitas Al-Azhar di Kairo, Mesir.\r\nNovel ini mengajak pembaca untuk merenungkan makna cinta sejati, menghadapi cobaan dan konflik dalam menjalani hubungan, serta menemukan harmoni antara cinta dan agama. Dengan bahasa yang indah dan menyentuh, novel ini tidak hanya menghadirkan kisah cinta yang mengharukan, tetapi juga mengajak pembaca untuk merenungkan makna cinta yang lebih dalam, menghargai perbedaan, dan menemukan jati diri melalui kehidupan yang penuh dengan cobaan dan ujian.'),
(4, 4, 'Laskar Pelangi adalah sebuah novel karya Andrea Hirata yang diterbitkan pada tahun 2005. Cerita ini berlatar belakang di sebuah desa kecil bernama Belitong, Indonesia, dan mengisahkan tentang perjuangan sekelompok anak-anak miskin untuk mendapatkan pendidikan yang layak.\r\nMelalui novel ini, Andrea Hirata menggambarkan kekuatan tekad dan semangat juang anak-anak dalam menghadapi keterbatasan sosial dan ekonomi. Novel ini juga mengangkat tema persahabatan, pengorbanan, dan harapan yang tumbuh di tengah keadaan yang sulit.'),
(5, 5, 'Negeri 5 Menara adalah sebuah novel karya Ahmad Fuadi yang diterbitkan pada tahun 2009. Cerita ini mengisahkan perjalanan hidup seorang pemuda bernama Alif, yang berasal dari desa terpencil di Minangkabau, Sumatera Barat, dan perjalanannya dalam mengejar impian untuk mendapatkan pendidikan di sebuah pesantren ternama di Jawa.\r\nNegeri 5 Menara mengisahkan tentang perjuangan Alif dalam mengejar pendidikan dan menghadapi perubahan dalam dirinya. Novel ini juga mengangkat nilai-nilai persahabatan, keberanian, dan semangat untuk melampaui batasan diri. Melalui cerita ini, Ahmad Fuadi menggambarkan pentingnya pendidikan, ketekunan, dan mimpi dalam mengubah takdir dan menggapai kesuksesan.'),
(6, 6, '5 cm adalah sebuah novel karya Donny Dhirgantoro yang diterbitkan pada tahun 2005. Cerita ini mengisahkan tentang perjalanan hidup dan persahabatan lima sahabat yang memiliki impian untuk melakukan petualangan mendaki Gunung Semeru, gunung tertinggi di pulau Jawa, Indonesia.\r\n5 cm menggambarkan perjalanan emosional dan spiritual lima sahabat yang berusaha mewujudkan impian mereka. Novel ini juga mengangkat tema persahabatan, impian, keberanian, dan perjuangan dalam menghadapi tantangan hidup.'),
(7, 7, 'Hujan adalah sebuah novel karya Tere Liye yang diterbitkan pada tahun 2014. Cerita ini mengisahkan tentang pertemuan tak terduga antara dua karakter utama, yaitu Rasya dan Aruna, yang terjadi saat hujan turun dengan deras.\r\nNovel ini mengangkat tema tentang harapan, persahabatan, dan bagaimana cinta dapat mengubah dan memberikan arti pada hidup seseorang. Hujan memberikan pesan tentang kekuatan cinta, pengorbanan, dan makna kehidupan yang bisa ditemukan di tengah kesulitan dan rintangan. '),
(8, 8, 'Mariposa adalah sebuah novel karya Luluk HF yang diterbitkan tahun 2018. Novel ini bercerita tentang perjuangan Acha untuk mendapatkan cinta seorang Iqbal. Acha tak pernah gentar meruntuhkan dingin dan kokohnya tembok pertahanan hati Iqbal yang belum pernah disinggahi perempuan mana pun.\r\nSikap dingin dan penolakan Iqbal berkali-kali tak membuat Acha menyerah. Bagi Acha selama Iqbal masih berwujud manusia, selama Iqbal tidak berubah menjadi sapi terbang, Acha akan terus berjuang.'),
(9, 9, 'Dilan: Dia Adalah Dilanku Tahun 1990 adalah novel karya Pidi Baiq yang diterbitkan pada tahun 2014. Cerita ini mengisahkan tentang kisah cinta remaja yang manis dan penuh kenangan di tahun 1990.\r\nNovel ini menceritakan tentang pertemuan dan kisah cinta antara seorang siswi SMA bernama Milea dan seorang siswa yang terkenal dengan panggilan Dilan. Dilan adalah sosok laki-laki yang penuh keberanian, romantis, dan cerdas. Milea yang awalnya tidak tertarik pada Dilan, akhirnya terpikat oleh sikapnya yang unik dan kehadiran yang selalu menghiasi hari-harinya. Novel ini menggambarkan perasaan pertama, kegembiraan, kecemasan, dan keraguan yang dialami oleh dua remaja yang sedang jatuh cinta. Kisah mereka membawa pembaca pada nostalgia akan masa-masa remaja yang indah dan penuh kenangan.'),
(10, 10, 'Dear Nathan adalah sebuah novel karya Erisca Febriani yang diterbitkan pada tahun 2016. Cerita ini mengisahkan tentang kisah cinta remaja yang menggemaskan dan penuh emosi.\r\nNovel ini bercerita tentang seorang remaja perempuan bernama Salma yang jatuh cinta pada seorang laki-laki bernama Nathan. Dalam perjalanan hubungan mereka, Salma dan Nathan menghadapi berbagai rintangan dan tantangan yang menguji cinta mereka. Mereka berdua harus melawan tekanan sosial, konflik internal, dan perbedaan yang ada di antara mereka. Namun, cinta mereka tetap kuat dan mampu mengatasi segala hambatan.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desc_buku`
--
ALTER TABLE `desc_buku`
  ADD PRIMARY KEY (`id_desc`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `desc_buku`
--
ALTER TABLE `desc_buku`
  MODIFY `id_desc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `desc_buku`
--
ALTER TABLE `desc_buku`
  ADD CONSTRAINT `desc_buku_ibfk_1` FOREIGN KEY (`id`) REFERENCES `buku` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
