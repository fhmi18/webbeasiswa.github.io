-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Sep 2023 pada 14.43
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_NIK` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_Nim` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(15) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_semester` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_essai` text NOT NULL,
  `status_ajuan` varchar(20) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student_data`
--

INSERT INTO `student_data` (`id`, `u_NIK`, `u_f_name`, `u_l_name`, `u_father`, `u_Nim`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_village`, `u_semester`, `u_pincode`, `file`, `u_mother`, `u_essai`, `status_ajuan`, `image`, `uploaded`) VALUES
(107, 'sdfgsdfg', '', '', '', '', '', 'Choose', '', 'sfdgsdfg', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:15:55'),
(108, 'fsdfgsdfg', 'sdfgsdfgsdfg', 'sdf', 'sdfgsgf', '', '', 'Choose', '', 'sdfgsdfg', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:16:58'),
(109, 'f546456', 'dsfgsadfg45', 'sdf45g45', 'sdf45g', '', '', 'Choose', '', '564654654', 'Choose...', '', '', '', '', '', 'sdfg', '', '', '', '2021-07-18 12:19:02'),
(113, 'asdfasdf', 'adfasdfasdfasdf', 'asdfasdfasf', '', '', '', 'Choose', '', 'adsfasdfas', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:23:58'),
(114, 'asdfasdf', 'adfasdfasdfasdf', 'asdfasdfasf', '', '', '', 'Choose', '', 'adsfasdfas', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:25:14'),
(115, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:25:22'),
(116, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:28:01'),
(117, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:28:38'),
(118, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:29:05'),
(119, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:29:24'),
(120, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:29:36'),
(121, 'asdf', 'asdf', '', '', '', '', 'Choose', '', 'asdf', 'Choose...', '', '', '', '', '', '', '', '', '', '2021-07-18 12:30:55'),
(124, 'as', 'as', 'as', '', '', '', 'Choose', '', 'a', 'Choose...', '', '', '', '', '', '', '', '', '', '2023-08-27 12:44:59'),
(125, '1swms', 'fahmu', 'idajd', 'add', 'dsds', '2023-08-23', 'Male', 'qss@d', ' wq, ', 'Jharkhand', 'w', 'dsds', '', 'w', '', 'abb', 'ds', 'w', 'logo-sekolah.png', '2023-08-27 22:03:43'),
(126, '1swms', 'fahmu', 'idajd', 'add', 'dsds', '2023-08-23', 'Male', 'qss@d', ' wq, ', 'Jharkhand', 'w', 'dsds', '', 'w', '', 'abb', 'ds', 'w', 'logo-sekolah.png', '2023-08-27 22:05:43'),
(127, '1swms', 'fahmu', 'idajd', 'add', 'dsds', '2023-08-23', 'Male', 'qss@d', ' wq, ', 'Jharkhand', 'w', 'dsds', '', 'w', '', 'abb', 'ds', 'w', 'logo-sekolah.png', '2023-08-27 22:15:00'),
(128, '91888273', 'as', 'asdkhk', 'dawfwa', 'fea', '2023-09-08', 'Female', 'fwa@s', '0812666263', 'Karnataka', 'eqw', 'eewd', '', 'eqw', '', 'wf', 'jgcjgcgc', 'weq', '', '2023-08-28 14:05:13'),
(133, '123112', 'fahms', 'kidrus', 'wqe', 'fea', '2023-09-01', 'Male', 'gjlhdkkg@aq', '082113783310', 'Andhra Prade', 'q', 'JL BATU ALAM 1', '', '3,14', '', 'ads', 'wkwkwkwk', '“belum_diverifikasi”', '', '2023-08-28 19:23:52'),
(134, '766', 'fs', 'fs', 'fsfs', '', '', 'Choose', 'qaaqa@a', '12333', 'Andhra Prade', 'mit', '', '', '3.14', '', 'fs', 'Indonesia merupakan salah satu negara yang memiliki keuntungan dari segi lokasi. Wilayah yang sangat strategis itupun menjadi nilai lebih. Negara Kesatuan Republik Indonesia (NKRI) termasuk negara kepulauan yang diapit oleh dua benua besar , yaitu benua Asia dan Australia. Selain itu, letaknya juga berada di tengah-tengah antara Samudra Pasifik dan Samudra Hindia. Dengan keuntungan tersebut, Indonesia layak menjadi salah satu kekuatan dunia dan bersaing di kancah internasional. Selain itu, Bangsa Indonesia adalah bangsa yang kaya akan budaya dan sumber daya alamnya. Tidak dapat dipungkiri bahwa Indonesia masih menjaga kelestarian berbagai budaya tradisional seperti tarian daerah, makanan daerah, serta bahasa daerah. Indonesia memiliki 652 bahasa daerah (versi Kemendikbud dan belum termasuk dialek dan subdialek) serta 1.331 suku (BPS, 2010). Ini membuat negara lain kagum karena Indonesia menjadi salah satu negara yang dapat menjaga budayanya. Paru-paru dunia sudah menjadi gelar lama yang masih melekat pada bangsa kita. Bagaimana tidak bahwa Indonesia memiliki 16.056 pulau bernama telah didaftarkan ke PBB (Kemendagri, 2019) yang menjadikan Indonesia adalah negara kepulauan terbesar di dunia. Potensi hutanlah yang mengantarkan Indonesia mendapatkan sematan gelar tersebut. Menurut data Badan Pusat Statistik (BPS) yang terbaru, jumlah penduduk di Indonesia kini telah mencapai sebanyak 278,69 juta jiwa pada pertengahan 2023. Angka tersebut naik 1,05% dari tahun sebelumnya. Angka ini bisa menjadi alat dalam meningkatkan kualitas bangsa.\r\n Dengan semangat bangsa Indonesia yang lebih maju, saya memiliki motivasi untuk menjadi salah satu bagian dari itu. Sejak SD, SMP, hingga SMA, saya selalu aktif dalam organisasi siswa. Ini adalah cara untuk meningkatkan wawasan serta kualitas hidup. Sedari SD, saya sudah menjadi wakil ketua kelas dan beberapa kali menjadi perwakilan sekolah yang dikirim untuk mengikuti beberapa kejuaraan, baik yang bersifat akademis maupun non akademis di tingkat kecamatan maupun kabupaten. Masuk ke SMP, langkah yang sama juga saya tempuh. Selain meningkatkan nilai akademis di dalam sekolah, saya mulai aktif di beberapa organisasi sekolah, seperti English Club, Pramuka, maupun ekstrakurikuler lain. Selain aktif di English Club sekaligus Pramuka, saya juga beberapa kali mengikuti kegiatan atau lomba di tingkat lokal. Hal ini saya lakukan tidak lain karena ingin menjadi pribadi yang unggul dan kelak bisa bermanfaat. Pada tingkat SMA, kemampuan berorganisasi mulai terasah dan saya terbiasa dengan kondisi serta tantangan yang dihadapi di lapangan. Sebagai pengurus Paskibra serta Pramuka, saya menjadi anggota yang mampu menerapkan kemampuan pribadi dalam menjalankan organisasi. Dipandu kerja sama tim, kami bisa menjadikan kedua organisasi tersebut sebagai media siswa dalam menyampaikan gagasan serta mengembangkan potensi diri. Pengalaman pribadi saya kemudian berlanjut menjadi mahasiswa jurusan informatika (IT) di UPN “Veteran” Jakarta.  \r\n Perjuangan saya untuk mendapatkan perguruan tinggi negeri (PTN) dengan jurusan yang saya impikan itu dimulai pada tahun 2022 lalu. Flashback ke masa sma dulu. Pada saat semester 1 saya memulai masa-masa sma saya sama dengan kebanyakan murid-murid yang lain seperti belajar, berorganisasi, dll. Waktu pun berlalu hingga semester 2 datang bersamaan dengan Covid-19 masuk ke Indonesia . Pada saat itulah masa kelam saya sebagai pelajar dimulai . PJJ (pembelajaran jarak jauh) merupakan cara belajar saya dari semester 2 sampai penghujung semester 5 yang dimana saya belajar dari rumah menggunakan aplikasi online untuk belajar dan mengerjakan tugas sehari hari . Kenapa saya sebut masa ini masa kelam ? Karena pada masa ini saya didorong terus untuk membantu kedua orang tua saya yang ada di rumah untuk membantu kegiatan sehari-harinya seperti jaga warung, berbelanja barang-barang yang habis di warung untuk dijual kembali, membersihkan rumah ,dll. Dengan banyaknya kegiatan itu membuat saya lalai dengan kewajiban saya sebagai pelajar hingga pada saat pengumuman rangking pun saya pernah berada di urutan 30 dari 34 siswa di kelas . Masa-masa itu pun berakhir di awal semester 6 yang dimana sudah dimulai kembali belajar secara tatap muka di sekolah. Pada awal awal semester 6 itulah diumumkan siswa-siswi yang eligible oleh sekolah walaupun saya berharap sedikit tetapi saya sadar saya tidak mungkin termasuk dalam siswa eligible dan perkiraan itupun benar sehingga saya mempersiapkan diri untuk mengikuti tes sbmptn 2022. Sebelum ujian yang sebenarnya, saya mengikuti banyak sekali try out secara offline maupun online baik dari lembaga bimbingan belajar hingga aplikasi bimbingan online. Dari hasil try out sbmptn tersebut nilai saya naik turun tiap minggunya yang semakin membuat saya tidak percaya diri untuk mendapatkan ptn yang saya inginkan. Di sbmptn 2022 ini, saya memilih jurusan yang bisa dibilang dambaan semua siswa atau bisa dibilang favorit ,yaitu Teknik Informatika. Saya memilih Teknik Informatika di dua universitas, yaitu upnvj dan unila, yang bisa dibilang tingkat kesulitan dalam peluang diterimanya lebih besar dibandingkan universitas top seperti UI,ITB,UGM. Hari dimana pengumuman sbmptn 2022 pun tiba dan hasilnya saya dinyatakan tidak lulus di kedua pilihan yang saya sangat inginkan itu. Saya sangat berharap pada saat itu dikarenakan sbmptn itu merupakan jalur satu satunya saya untuk kuliah dikarenakan orang tua saya tidak mampu jika saya ikut seleksi mandiri dikarenakan biayanya yang sangat mahal. Pada saat itulah Allah menunjukkan kuasa nya mengapa saya harus gagal pada ujian sbmptn 2022 tersebut.\r\n Setelah gagal dalam sbmptn 2022 saya memutuskan gapyear 1 tahun untuk bekerja mengumpulkan pundi-pundi uang untuk kuliah nanti dan belajar untuk mempersiapkan sbmptn 2023 atau yang sekarang disebut snbt 2023. Tiga bulan setelah saya gapyear keluarga saya mengalami masalah bertubi-tubi yang kebanyakan didalangi oleh uang dan hutang. Pada puncaknya, masalah tersebut mengakibatkan kakak pertama memutuskan tali silaturahminya dengan orang tuanya sendiri yang tidak lain adalah kakak saya sendiri karena masalah uang dan hutang. Pada saat itulah saya merenungkan kembali jika saya lulus sbmptn 2022 mungkin saya hanya bisa kuliah untuk satu semester saja dikarenakan banyak masalah yang baru saya tahu ketika saya gapyear tersebut. Waktu pun berlalu dan memasuki tahun baru 2023 yang dimana saya mulai mempersiapkan belajar materi-materi yang akan keluar di snbt nanti. Dengan keterbatasan biaya, saya hanya bisa mengikuti les online berbayar di suatu platform aplikasi belajar online dikarenakan bimbingan belajar offline sangat mahal, yaitu bisa sampai belasan juta rupiah. Saya pun menghabiskan semua materinya dalam tiga bulan dan menghabiskan satu setengah bulan untuk latihan soal soal di aplikasi belajar tersebut. Pada bulan Februari pendaftaran akun snbt pun dibuka dan aku memilih jurusan yang menurutku sesuai dengan minatku, yaitu informatika di pilihan pertama dan d3 sistem informasi untuk pilihan kedua. Pembagian jadwal ujian pun diumumkan dan saya masuk gelombang pertama ujian. Saat hari dimana tes ujian snbt tiba, Alhamdulillahnya saya dapat mengerjakan semua tes dengan lancar dan soal-soal yang keluar cukup terbilang mudah. Hari dimana pengumuman snbt pun tiba dan hasilnya saya dinyatakan lulus diterima di pilihan pertama, yaitu jurusan informatika universitas pembangunan Nasional veteran Jakarta (UPNVJ). Senang dan bersyukur saya dapat diterima di jurusan yang saya sukai karena di informatika ini kita dituntut untuk bisa menyelesaikan masalah secara teliti, akurat, dan juga efisien. Pelajaran informatika ini menurut saya unik, karena untuk mendapatkan suatu jawaban akhir bisa memiliki proses yang bervariasi baik yang prosesnya lama maupun cepat akan tetapi hasilnya atau outputnya selalu sama. Namun, untuk mewujudkan Indonesia maju 2045 itu cukup sulit.  \r\n Indonesia sebenarnya sangat mampu untuk mencetak bibit-bibit unggul generasi muda karena sudah memiliki potensi sumber daya manusia (SDM) berupa populasi usia produktif yang jumlahnya sangat besar. Potensi tersebut yang perlu dikelola dan dimanfaatkan dengan baik agar kualitas generasinya menjadi generasi yang berkarakter, cerdas, dan kompetitif, serta memiliki daya saing yang tinggi dengan bangsa lain. Langkah yang dapat ditempuh untuk meningkatkan kualiatas generasi penerus ini adalah melalui pendidikan yang bermutu. Dewasa ini, pemerintah secara intensif melakukan perbaikan dalam bidang pendidikan yaitu dengan membuat berbagai kebijakan dan program yang membantu seluruh masyarakat mendapatkan pendidikan yang lebih baik. Sebagai mahasiswa saya menyadari kompleksnya permasalahan bangsa ini. Ketimpangan antara si kaya dan si miskin dalam mengenyam pendidikan di Indonesia masih sangat terlihat jelas dan sudah ada sejak lama. masalah utama inilah yang sebaiknya digencarkan penyelesaiannya oleh berbagai kalangan terutama kaum intelektual. Memahami betapa sulitnya belajar dengan keterbatasan akses, Saya berniat untuk kelak dapat membuat suatu aplikasi atau platform belajar gratis baik untuk jenjang sd sampai sma yang dimana aplikasi ini akan sangat membantu bagi siswa-siswi yang ingin meraih cita-cita akan tetapi terhalang oleh biaya. \r\n Mengapa saya akan menjadi kebanggaan bangsa? Karena saya berupaya memberikan contoh kepada sekitar, betapa nikmatnya menjadi pemuda-pemudi yang berilmu dan berpendidikan tinggi menekan dan mendorong saya untuk menjadi warga negara yang budiman dan taat peraturan. Dengan saya mengenyam pendidikan tinggi, minimal mendorong saudara serta teman-teman disekitar untuk dapat seperti saya dan tidak berhenti sekolah hanya pada tingkat Sekolah Menengah saja.\r\nBadan Perencanaan Pembangunan Nasional (Bappenas) memprediksi bahwa Indonesia akan menjadi negara besar dan maju pada tahun 2045. Untuk mewujudkan hal tersebut diperlukan tindakan yang nyata yang dimulai sejak saat ini juga. Oleh karena itu, sebagai seorang pelajar tentunya saya mempunyai harapan untuk masa yang akan datang agar lebih baik bagi Indonesia, didukung dengan bertambah baiknya kualitas pembelajaran dan pendidikan, serta semakin baiknya SDM yang dimiliki oleh Indonesia diharapkan bangsa ini menjadi bangsa yang besar, maju, dan disegani oleh bangsa lain, serta dapat menjadi salah satu negara dengan sistem pendidikan terbaik di dunia. Belajar dari masa lalu, berinovasi di masa sekarang, dan berjaya di masa mendatang.\r\n', '“belum_diverifikasi”', '', '2023-08-28 19:26:25'),
(135, '766', 'fs', 'fs', 'fsfs', '', '', 'Choose', 'qaaqa@a', '12333', 'Andhra Prade', 'mit', '', '', '3.14', '', 'fs', '', '“belum_diverifikasi”', '', '2023-08-28 19:37:49'),
(138, '766', 'fs', 'fs', 'fsfs', '', '', 'Choose', 'qaaqa@a', '12333', 'Andhra Prade', 'mit', '', '', '3.14', '', 'fs', '', '“belum_diverifikasi”', '', '2023-08-28 19:57:45'),
(139, '12333', '', '', '', '', '', 'Choose', '', '574747', 'Andaman and ', '', '', '', '3080', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:03:15'),
(140, '111', '', '', '', '', '', 'Choose', '', '111', 'Choose...', '', '', '', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:03:56'),
(141, '111', '', '', '', '', '', 'Choose', '', '111', 'Choose...', '', '', '', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:06:01'),
(142, '11', '', '', '', '', '', 'Choose', '', '1', 'Choose...', '', '', '', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:06:28'),
(143, '11', '', '', '', '', '', 'Choose', '', '1', 'Choose...', '', '', '', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:12:46'),
(144, '11', '', '', '', '', '', 'Choose', '', '1', 'Choose...', '', '', '', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:12:51'),
(145, '11', '', '', '', '', '', 'Choose', '', '11211', 'Choose...', '', '', '2', '', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:20:47'),
(147, '122', 'gej', 'de', 'erna', '', '', 'Choose', '', '11', 'Andhra Prade', '', '', '5', '', '', 'irni', '', '“belum_diverifikasi”', '', '2023-08-28 20:28:55'),
(148, '122', 'gej', 'de', 'erna', '', '', 'Choose', '', '11', 'Andhra Prade', '', '', '5', '', '', 'irni', '', '“belum_diverifikasi”', '', '2023-08-28 20:35:28'),
(149, '91772', 'erlanga', 'keren', 'papah', '122211', '2023-08-14', 'Male', 'fahmi@gmajkl', '1233', 'Andhra Prade', 'MIT', 'jalan batu alam', '4', '3.40', '', 'mamah', 'keren', '“belum_diverifikasi”', 'smas.jpg', '2023-08-28 20:36:47'),
(150, '12333', '', '', '', '', '', 'Choose', '', '574747', 'Andaman and ', '', '', '', '3080', '', '', '', '“belum_diverifikasi”', '', '2023-08-28 20:45:46'),
(151, '91772', 'erlanga', 'keren', 'papah', '', '2023-08-14', 'Male', 'fahmi@gmajkl', '1233', 'Andhra Prade', 'MIT', 'jalan batu alam', '4', '3.40', '', 'mamah', 'keren', '“belum_diverifikasi”', 'smas.jpg', '2023-08-28 20:45:55'),
(152, '91772', 'erlanga', 'keren', 'papah', '', '2023-08-14', 'Male', 'fahmi@gmajkl', '1233', 'Andhra Prade', 'MIT', 'jalan batu alam', '4', '3.40', '', 'mamah', 'keren', '“belum_diverifikasi”', 'smas.jpg', '2023-08-28 20:46:03'),
(155, '1223', 'as', 'asdkhk', '', '123423323114', '2023-08-03', 'Male', 'siwak@A', '1223', 'Beasiswa Dal', 'OXFORT', 'JL BATU ALAM 1', '1', '3.14', '', '', 'wwwww', 'Tidak lulus', '', '2023-08-28 20:52:12'),
(156, '1223', 'as', 'asdkhk', '', '123423323114', '2023-08-03', 'Male', 'siwak@A', '1223', 'Beasiswa DN', 'OXFORT', 'JL BATU ALAM 1', '1', '3.14', '', '', 'wwwww', '', '', '2023-08-28 20:55:45'),
(157, '122', '', '', '', '', '', 'Male', '', '21212', 'beasiswa DN', '', '', '2', '22', '', '', '', 'belum_diverifikasi', '', '2023-08-28 20:57:45'),
(159, '12', 'siwak', 'asdkhk', 'diyas', '123423323114', '', 'Male', 'gjlhdkkg@aq', '21', 'Choose...', '', '', '4', '', '', 'abb', '', 'belum_diverifikasi', '', '2023-08-28 21:11:53'),
(160, '12', 'siwak', 'asdkhk', 'diyas', '123423323114', '', 'Male', 'gjlhdkkg@aq', '21', 'Choose...', '', '', '4', '', '', 'abb', '', 'belum_diverifikasi', '', '2023-08-28 21:13:16'),
(161, '1', '', '', '', '', '', 'Choose', '', '1', 'beasiswa DN', '', '', '1', '2', '', '', '', 'belum_diverifikasi', '', '2023-08-28 21:13:45'),
(162, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 10:53:36'),
(163, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 11:34:04'),
(164, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 11:41:02'),
(165, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 11:41:39'),
(166, 'gvj', '', '', '', '', '', 'Choose', '', 'asfaf', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 11:41:48'),
(167, '122', '', '', '', '', '', 'Choose', '', 'sasass', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 11:42:00'),
(168, '122', '', '', '', '', '', 'Choose', '', 'sasass', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 11:43:32'),
(169, '122', '', '', '', '', '', 'Choose', '', 'sasass', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 11:50:10'),
(170, '122312333', 'fahmi', 'idrus', 'papah', '91772819', '2023-07-31', 'Male', 'fahmi@gmajkl', '11233222', 'beasiswa LN', 'swdw', 'batu alam', '3', '1', '', 'mamah', 'amsnkbdkbasd', 'belum_diverifikasi', '', '2023-08-29 12:36:19'),
(171, '122312333', 'fahmi', 'idrus', 'papah', '91772819', '2023-07-31', 'Male', 'fahmi@gmajkl', '11233222', 'beasiswa LN', 'swdw', 'batu alam', '3', '1', '', 'mamah', 'amsnkbdkbasd', 'belum_diverifikasi', '', '2023-08-29 12:40:48'),
(172, '122312333', 'fahmi', 'idrus', 'papah', '91772819', '2023-07-31', 'Male', 'fahmi@gmajkl', '11233222', 'beasiswa LN', 'swdw', 'batu alam', '3', '1', '', 'mamah', 'amsnkbdkbasd', 'belum_diverifikasi', '', '2023-08-29 12:41:13'),
(173, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 18:59:20'),
(174, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 19:00:17'),
(175, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 19:04:24'),
(176, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 19:08:22'),
(177, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 19:41:46'),
(178, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 19:43:43'),
(179, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 19:47:43'),
(180, 'a1', '', '', '', '', '', 'Choose', '', 'sssaas', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 19:50:22'),
(181, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 19:50:28'),
(182, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 19:58:30'),
(183, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 20:00:30'),
(184, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 20:00:38'),
(185, '1212', '', '', '', '', '', 'Choose', '', '1222', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 20:02:32'),
(186, '1111', '', '', '', '', '', 'Choose', '', '111sdsaf', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 20:23:10'),
(187, '1111', '', '', '', '', '', 'Choose', '', '111sdsaf', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 20:24:25'),
(188, '1111', '', '', '', '', '', 'Choose', '', '111sdsaf', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 20:29:35'),
(189, '1111', '', '', '', '', '', 'Choose', '', '111sdsaf', 'Choose...', '', '', '1', '', '', '', '', 'belum_diverifikasi', '', '2023-08-29 20:47:38'),
(190, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', '16443', '', 'dm, d', '', 'belum_diverifikasi', '', '2023-08-29 20:53:13'),
(191, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', '16443', '', 'dm, d', '', 'belum_diverifikasi', '', '2023-08-29 20:53:24'),
(192, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', '16443', '', 'dm, d', '', 'belum_diverifikasi', '', '2023-08-29 20:53:51'),
(193, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', '16443', '', 'dm, d', '', 'belum_diverifikasi', '', '2023-08-29 20:54:23'),
(194, '11', 'as', 'asdkhk', 'fahmi', '123423323114', '2023-08-15', 'Male', '1112@gmail', '088210094890', 'beasiswa DN', 'mit', 'JL BATU ALAM 1', '3', '16443', '', 'dm, d', '', 'belum_diverifikasi', '', '2023-08-29 20:56:24'),
(195, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '16443', '', '21', 'sd', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 20:58:44'),
(196, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '16443', '', '21', 'sd', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:17:06'),
(197, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '16443', '', '21', 'sd', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:18:25'),
(198, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '16443', '', '21', 'sd', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:19:22'),
(199, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '16443', '', '21', 'sd', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:26:21'),
(200, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '16443', '', '21', 'sd', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:27:26'),
(201, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '16443', '', '21', 'sd', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:28:07'),
(202, '12', '21', '21', '21', 'dd', '2023-09-06', 'Male', '21@d', '082210094890', 'beasiswa DN', 'ds', 'JL BATU ALAM 1', '7', '16443', '', '21', 'sd', 'belum_diverifikasi', 'logo beasiswa.jpg', '2023-08-29 22:28:41'),
(203, '12113141516', 'fahmi', 'idrus', 'papah', '128391739', '2023-08-14', 'Male', 'fahmiidrus@gmail.com', '088210094890', 'beasiswa DN', 'upn veteran jakarta', 'jalan batu alam 1', '6', '3.8', '', 'mamah', 'asmhvsmhvasmhvams', 'belum_diverifikasi', '2022-09-13 (1).png', '2023-08-30 19:36:04'),
(204, '121314143433', 'q', 'qq', 'q', '1231456745', '2004-02-23', 'Choose', 'ghghsag@gmail.com', '088210094890', 'beasiswa DN', 'UPN Veteran Jakarta', 'gorgon', '1', '3,14', '', 'q', 'q', 'belum_diverifikasi', 'Web capture_30-8-2023_201158_.jpeg', '2023-08-30 20:13:58'),
(205, '121314143433', 'q', 'qq', 'q', '1231456745', '2004-02-23', 'Choose', 'ghghsag@gmail.com', '088210094890', 'beasiswa DN', 'UPN Veteran Jakarta', 'gorgon', '1', '3,14', '', 'q', 'q', 'belum_diverifikasi', 'Web capture_30-8-2023_201158_.jpeg', '2023-08-30 20:15:23'),
(207, '123322444423', 'fahmi', 'idrus', 'marus', '917736542', '2004-02-23', 'Male', 'fahmi@gmail.com', '088210094890', 'beasiswa DN', 'UPN Veteran Jakarta', 'jalan batu alam', '5', '4.0', '', 'rahmi', 'salkdladhjadhljbdajlbdaj,bad,', 'belum_diverifikasi', 'Web capture_30-8-2023_201158_.jpeg', '2023-09-02 21:16:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(7, 'ss', '$2y$10$WYHfxnexTlCkB7dTpd0OHuAKSB5asgtZQYu8HiNxu.NUBeefNaidy', '2023-08-27 12:37:12'),
(8, 'fahmi', '$2y$10$6Ad6Fcx5jYikwRiKeKwH1ezJuv9ZTUBVLoOP2t3bw83GDivyEkDr2', '2023-08-29 13:11:34'),
(9, 'fahmi1', '$2y$10$e8ms.C/2Hoa9dJWEp3pGZez/7QMzVltovczOcvOxkbg58/L/QIY4a', '2023-08-30 19:56:30'),
(10, 'Fahmi123', '$2y$10$b6Mi6dux467MC1zUtspocuvr/LX.nZHQnrN7z4ywW9GBHUOHhe/oy', '2023-09-02 21:32:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
