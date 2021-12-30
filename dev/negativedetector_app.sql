-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2020 pada 07.37
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoaxdetector_app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add data train', 7, 'add_datatrain'),
(26, 'Can change data train', 7, 'change_datatrain'),
(27, 'Can delete data train', 7, 'delete_datatrain'),
(28, 'Can view data train', 7, 'view_datatrain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datatrain_datatrain`
--

CREATE TABLE `datatrain_datatrain` (
  `id` int(11) NOT NULL,
  `isi_data_train` longtext NOT NULL,
  `label` tinyint(1) NOT NULL,
  `referensi_data_train` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datatrain_datatrain`
--

INSERT INTO `datatrain_datatrain` (`id`, `isi_data_train`, `label`, `referensi_data_train`) VALUES
(15, 'JOKOWIDODO MELAKUKAN KEBIJAKKAN PERTAMA KALINYA MENYURUH RAKYAT DAN PEMERINTAH MEMINTA MAAF KEPADA PKI\r\n\r\nDAN SETERUS MENTRI DALAM NEGRINYA TJAHJO KUMOLO MELAKUKAN TAYANGNGAN PRESNYA BAHWA ISTANA MEMPERBOLEHKAN DAN MERESMIKAN BAHWA PKI DI PERBOLEHKAN DI INDONESIA INI\r\n\r\nINI ADALAH KEBIJAKKAN PKI JOKOWIDODO…\r\nBEAD SEJAK 2012 TELAH MENGAWASI REZIM INI\r\nAHOK ADALAH TUJUAN 9 NAGA UNTUK MENGUASAI INDONESIA INI BERSAMA CHINA…\r\nSENJATA TENTARA CHINA TELAH DI KIRIM DAN SELUNDUPKAN DI MONOKWARI SERTA DI DERMAGA DERMARGA RAHASIA DI BAWAH GEDUNG PULAU REKRAMASI ITU SENDIRI\r\n\r\nDULU PERNAH GATOT NURMANTO MENCIUM KEBERADAAN SENJATA CHINA YG DISELUNDUPKAN ITU AKHIRNYA PANGLIMA TNI ITU DI COPOT DARI JABATANNYA SEBELUM HABIS MASA TUGASNYA\r\n\r\nPERMAINAN POLITIK DARI REZIM KASAR.\r\n\r\nDAN AKU TELAH MENCIUM POLITIK ANJING PKI JOKOWIDODO INI SUDAH LAMA…\r\nAHOK KUNCI UNTUK MENGUASAI INDONESIA INI OLEH 9 NAGA. DIA AKAN DI JADIKAN PRESIDEN SEUMUR HIDUP DAN MEREFISI UUD 1945 SEMUANYA NANTI. KEDAULATAN NEGARA AKAN DI BAGI DUA. PRIBUMI DI BAWAH NAUNGNGAN CHINA KOMUNIS.\r\n\r\nMAKANYA TKA CHINA YG SEBAGIANNYA DI IMPOR JOKOWIDODO ATAS PERMINTAAN 9 NAGA ITU UNTUK MENDUKUNG PILPRES 2024 NANTI…\r\nYANG DI CALONKAN OLEH TAIPAN ITU ADALAH AHOK NANTINYA.\r\n\r\nTKA CHINA ITULAH YG AKAN MENAMBAH DAN MENGUATKAN SUARA UNTUK AHOK DI PILPRES 2024 NANTI. MEREKA AKAN MELAKUKAM CARA CURANG BERRSISTIMATIK SEPERTI PILPRES 2019 KEMAREN.\r\n\r\nSEORANG NARAPINA JUGA KORUPTOR BISA DUDUK DALAM JABATAN TINGGI DI NEGARA INI YAITU DIREKTUR PERTAMINA\r\n\r\nSEDANG ANJING CHINA SEPERTI AHOK ITU CACAT HUKUM BISA JADI PEJABAT NEGARA.\r\nINI CONTOH KECIL DARI PEMERINTAH PKI JOKOWIDODO INI\r\n\r\nRAKYAT HARUS LENGSERKAN JOKOWIDODO DAN TURUNKAN KETUA DPR DARI KURSI DEWAN PERWAKILAN RAKYAT.\r\nMEREKA ITU ANJING ANJING BANGSAT NEGARA YG MENJUAL NEGARA DEMI UANG SERTA KEKUASAAN CHINA BABI', 0, 'https://turnbackhoax.id/2020/07/14/salah-istana-meresmikan-bahwa-pki-diperbolehkan-di-indonesia-2/'),
(16, 'Semboyan Pesindo Bekerdja, bekerdja, bekerdja adalah semboyan PKI', 0, 'https://turnbackhoax.id/2020/07/15/salah-semboyan-pesindo-bekerdja-bekerdja-bekerdja-adalah-semboyan-pki/'),
(17, 'Label KADRUN yang disematkan kepada ummat Islam itu ternyata berasal dari PKI. Di zaman tahun 60’an apabila PKI menargetkan salah satu dari para Ulama yg ditargetkan akan dibunuh, mereka menjulukinya dengan istilah KADRUN atau Kadal Gurun. Di zaman kita sekarang, istilah KADRUN mulai diperdengarkan kembali untuk mengejek ummat Islam, entah mereka itu memang berideologi komunis atau hanya sebatas kebencian terhadap gerakan ummat Islam.', 0, 'https://turnbackhoax.id/2020/07/02/salah-istilah-kadrun-berasal-dari-pki/'),
(18, 'Tak usah heran, terkejut, atau heboh kalau Wahyu Setiawan adalah anak dari SLAMET, sebab memang kakeknya adalah SEMAUN. Semaun itu jelas KOMUNIS. Semaun belajar bareng Soekarno (NASIONALIS) dan Kartosowirjo (DARUL ISLAM). Soekarno berkuasa negara, lalu Semaun berontak, datang agresi militer Belanda ke 2, setelah ditahan Soekarno-Hatta berkuasa kembali atas negara boneka ini, lalu membungkam Kartosoewirjo berikut dengan buah pemikirannya, PKI hadir kembali ditangan DN Aidit, kemudian Soekarno mesra dengan PKI terbukti hadirnya Nasakom dan berontak untuk kedua kalinya.\r\n\r\nJadi nyambung khan, sekarang ini banyak anak-anak PKI ada dimana-mana, termasuk ada di Istana Negara, KPU, MK, DPR, POLRI, KEJAGUNG, dan berkembang biak dibanyak Partai, utamanya PDI PERJUANGAN. Beginilah akhirnya kita, sebenarnya kita telah berada di masa pemberontakan PKI ketiga. Kapan itu terjadinya, saat dimulai Reformasi yang sangat prematur usai Soeharto lengser.', 0, 'https://turnbackhoax.id/2020/06/05/salah-mantan-komisioner-kpu-wahyu-setiawan-adalah-keturunan-pki/'),
(19, 'Kapolri Jenderal Tito Karnavian mengatakan bahwa PKI tidak membahayakan negara', 0, 'https://turnbackhoax.id/2019/05/09/salah-kapolri-nyatakan-pki-tidak-membahayakan-negara/'),
(20, 'Jokowi menegaskan tiada ruang sekecil apa pun bagi komunisme di Indonesia. Negara telah tegas melarang kehadiran PKI.\r\n\r\nKonstitusi Indonesia sudah jelas, ada TAP (Ketetapan) MPR bahwa komunisme dilarang di negara kita Indonesia.\r\n\r\nJokowi tidak melindungi PKI.', 1, 'https://nasional.tempo.co/read/881225/jokowi-tunjukkan-di-mana-ada-pki-detik-ini-juga-saya-gebuk'),
(21, 'Pengangkatan RUU HIP ini sangat tendensius karena terkait dengan upaya menciptakan kekacauan serta menghidupkan kembali PKI', 0, 'https://republika.co.id/'),
(22, 'Ketua Umum Persaudaraan Alumni 212 Slamet Maarif meminta Partai Gerindra memecat Arif Poyuono (AP) usai melontarkan pernyataan kontroversial soal isu PKI mainan', 1, 'https://www.cnnindonesia.com/'),
(25, '“Kelepon Islami” itu persis cara propaganda pki memojokkan Islam & Ulama dari zaman baheula', 0, 'https://idtoday.co/'),
(26, 'Tak usah heran, terkejut, atau heboh kalau Wahyu Setiawan adalah anak dari SLAMET, sebab memang kakeknya adalah SEMAUN. Semaun itu jelas KOMUNIS. Semaun belajar bareng Soekarno (NASIONALIS) dan Kartosowirjo (DARUL ISLAM). Soekarno berkuasa negara, lalu Semaun berontak, datang agresi militer Belanda ke 2, setelah ditahan Soekarno-Hatta berkuasa kembali atas negara boneka ini, lalu membungkam Kartosoewirjo berikut dengan buah pemikirannya, PKI hadir kembali ditangan DN Aidit, kemudian Soekarno mesra dengan PKI terbukti hadirnya Nasakom dan berontak untuk kedua kalinya.', 0, 'https://bangka.tribunnews.com/2017/09/23/mengenal-lebih-dalam-sosok-semaun-dan-pengaruhnya-di-indonesia-kala-itu?page=all&fbclid=IwAR1LZDNKW9xOmBYKtzqFasXyqfUtQKFCKJ3Q-QnthYrxeVtwilxPvdvvmWs'),
(28, 'Istana Meresmikan Bahwa PKI Diperbolehkan di Indonesia', 0, 'turnbackhoax.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'DataTrain', 'datatrain'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'DataTrain', '0001_initial', '2020-07-27 05:05:00.274012'),
(2, 'DataTrain', '0002_auto_20200727_1204', '2020-07-27 05:05:00.297998'),
(3, 'contenttypes', '0001_initial', '2020-07-27 05:05:00.354962'),
(4, 'auth', '0001_initial', '2020-07-27 05:05:00.594812'),
(5, 'admin', '0001_initial', '2020-07-27 05:05:01.298380'),
(6, 'admin', '0002_logentry_remove_auto_add', '2020-07-27 05:05:01.438293'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-27 05:05:01.453283'),
(8, 'contenttypes', '0002_remove_content_type_name', '2020-07-27 05:05:01.624178'),
(9, 'auth', '0002_alter_permission_name_max_length', '2020-07-27 05:05:01.708126'),
(10, 'auth', '0003_alter_user_email_max_length', '2020-07-27 05:05:01.786078'),
(11, 'auth', '0004_alter_user_username_opts', '2020-07-27 05:05:01.803067'),
(12, 'auth', '0005_alter_user_last_login_null', '2020-07-27 05:05:01.875023'),
(13, 'auth', '0006_require_contenttypes_0002', '2020-07-27 05:05:01.881030'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2020-07-27 05:05:01.893012'),
(15, 'auth', '0008_alter_user_username_max_length', '2020-07-27 05:05:01.969964'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2020-07-27 05:05:02.053911'),
(17, 'auth', '0010_alter_group_name_max_length', '2020-07-27 05:05:02.145855'),
(18, 'auth', '0011_update_proxy_permissions', '2020-07-27 05:05:02.160845'),
(19, 'sessions', '0001_initial', '2020-07-27 05:05:02.207816');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `datatrain_datatrain`
--
ALTER TABLE `datatrain_datatrain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `datatrain_datatrain`
--
ALTER TABLE `datatrain_datatrain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
