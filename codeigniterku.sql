-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2016 at 12:44 
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniterku`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`) VALUES
(1, 'News', 'news', 1),
(2, 'Sport', 'sport', 1),
(3, 'Health', 'health', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'admin2', 'Second Administrator'),
(3, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `published_at` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id`, `judul`, `slug`, `isi`, `thumbnail`, `published_at`, `created`, `modified`) VALUES
(28, 'Siapa Aktor Politik Demo 4 November? Johan Budi: Hanya Presiden yang Tahu a a', 'siapa-aktor-politik-demo-4-november-johan-budi-hanya-presiden-yang-tahu-a-a', '<p><strong>Jakarta</strong> - Presiden Joko Widodo (Jokowi) menyebut ada aktor politik yang menunggangi demo 4 November 2016. Siapakah aktor politik yang dimaksud?<br /><br />"Aktor politik, saya pikir eksklusif yang disebut memanfaatkan situasi habis Magrib. Saya kira Presiden yang tahu siapa aktor politik," kata juru bicara presiden, Johan Budi, usai silaturahmi di KPK, Jalan Rasuna Said, Jakarta Selatan, Jumat (11/11/2016).<br /><br />Johan kembali menegaskan, maksud ucapan Jokowi ada aktor politik yang menunggangi demo, bukanlah pendemonya yang ditunggangi. Namun kejadian rusuh setelah Magrib yang dimanfaatkan oleh para aktor politik.<br /><br />"Maksud Presiden adalah letupan setelah Magrib itu dimanfaatkan oleh aktor-aktor politik," ujarnya.<br /><br />Menurut Johan, demo berlangsung damai dan aman pada siang harinya. Oleh sebab itu, Jokowi juga mengapresiasi para ulama yang telah melakukan pendekatan persuasif kepada para pendemo.<br /><br />Jokowi juga meminta kepada aparat kepolisian agar proses penyelidikan dilakukan secara transparan, cepat dan terbuka. Hal itu penting agar publik tahu bahwa proses hukum berlangsung adil tanpa keberpihakan.<br /><br />"Kalau secara hukum dimungkinkan gelar perkara secara terbuka ya silakan saja. Proses ini harus dilakukan adil, transparan dan tepat," tuturnya. <br /><strong>(kff/dhn)</strong></p>\r\n<div class="news_tag" style="margin-top: 50px;">&nbsp;</div>\r\n<p>&nbsp;</p>\r\n<div class="skybanner">\r\n<div class="skybanner_container">\r\n<div id="gpt_unit_/4905536/detik/news/skycrapper_2_ad_container">&nbsp;</div>\r\n<div id="beacon_d12aeb1a9c" style="position: absolute; left: 0px; top: 0px; visibility: hidden;"><img style="width: 0px; height: 0px;" src="http://newopenx.detik.com/delivery/lg.php?bannerid=25179&amp;campaignid=3383&amp;zoneid=427&amp;loc=1&amp;referer=http%3A%2F%2Fnews.detik.com%2Fberita%2F3343504%2Fsiapa-aktor-politik-demo-4-november-johan-budi-hanya-presiden-yang-tahu&amp;cb=d12aeb1a9c" alt="" width="0" height="0" /></div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 'thumbnail27.jpg', '2016-11-11', '2016-11-11 06:00:00', '2016-11-11 06:00:00'),
(29, 'Siapa Aktor Politik Demo 4 November? Johan Budi: Hanya Presiden yang Tahu a a a', 'siapa-aktor-politik-demo-4-november-johan-budi-hanya-presiden-yang-tahu-a-a-a', '<p><strong>Jakarta</strong> - Presiden Joko Widodo (Jokowi) menyebut ada aktor politik yang menunggangi demo 4 November 2016. Siapakah aktor politik yang dimaksud?<br /><br />"Aktor politik, saya pikir eksklusif yang disebut memanfaatkan situasi habis Magrib. Saya kira Presiden yang tahu siapa aktor politik," kata juru bicara presiden, Johan Budi, usai silaturahmi di KPK, Jalan Rasuna Said, Jakarta Selatan, Jumat (11/11/2016).<br /><br />Johan kembali menegaskan, maksud ucapan Jokowi ada aktor politik yang menunggangi demo, bukanlah pendemonya yang ditunggangi. Namun kejadian rusuh setelah Magrib yang dimanfaatkan oleh para aktor politik.<br /><br />"Maksud Presiden adalah letupan setelah Magrib itu dimanfaatkan oleh aktor-aktor politik," ujarnya.<br /><br />Menurut Johan, demo berlangsung damai dan aman pada siang harinya. Oleh sebab itu, Jokowi juga mengapresiasi para ulama yang telah melakukan pendekatan persuasif kepada para pendemo.<br /><br />Jokowi juga meminta kepada aparat kepolisian agar proses penyelidikan dilakukan secara transparan, cepat dan terbuka. Hal itu penting agar publik tahu bahwa proses hukum berlangsung adil tanpa keberpihakan.<br /><br />"Kalau secara hukum dimungkinkan gelar perkara secara terbuka ya silakan saja. Proses ini harus dilakukan adil, transparan dan tepat," tuturnya. <br /><strong>(kff/dhn)</strong></p>\r\n<div class="news_tag" style="margin-top: 50px;">&nbsp;</div>\r\n<p>&nbsp;</p>\r\n<div class="skybanner">\r\n<div class="skybanner_container">\r\n<div id="gpt_unit_/4905536/detik/news/skycrapper_2_ad_container">&nbsp;</div>\r\n<div id="beacon_d12aeb1a9c" style="position: absolute; left: 0px; top: 0px; visibility: hidden;"><img style="width: 0px; height: 0px;" src="http://newopenx.detik.com/delivery/lg.php?bannerid=25179&amp;campaignid=3383&amp;zoneid=427&amp;loc=1&amp;referer=http%3A%2F%2Fnews.detik.com%2Fberita%2F3343504%2Fsiapa-aktor-politik-demo-4-november-johan-budi-hanya-presiden-yang-tahu&amp;cb=d12aeb1a9c" alt="" width="0" height="0" /></div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 'thumbnail28.jpg', '2016-11-11', '2016-11-11 07:00:00', '2016-11-11 07:00:00'),
(30, 'Siapa Aktor Politik Demo 4 November? Johan Budi: Hanya Presiden yang Tahu a a a a', 'siapa-aktor-politik-demo-4-november-johan-budi-hanya-presiden-yang-tahu-a-a-a-a', '<p><strong>Jakarta</strong> - Presiden Joko Widodo (Jokowi) menyebut ada aktor politik yang menunggangi demo 4 November 2016. Siapakah aktor politik yang dimaksud?<br /><br />"Aktor politik, saya pikir eksklusif yang disebut memanfaatkan situasi habis Magrib. Saya kira Presiden yang tahu siapa aktor politik," kata juru bicara presiden, Johan Budi, usai silaturahmi di KPK, Jalan Rasuna Said, Jakarta Selatan, Jumat (11/11/2016).<br /><br />Johan kembali menegaskan, maksud ucapan Jokowi ada aktor politik yang menunggangi demo, bukanlah pendemonya yang ditunggangi. Namun kejadian rusuh setelah Magrib yang dimanfaatkan oleh para aktor politik.<br /><br />"Maksud Presiden adalah letupan setelah Magrib itu dimanfaatkan oleh aktor-aktor politik," ujarnya.<br /><br />Menurut Johan, demo berlangsung damai dan aman pada siang harinya. Oleh sebab itu, Jokowi juga mengapresiasi para ulama yang telah melakukan pendekatan persuasif kepada para pendemo.<br /><br />Jokowi juga meminta kepada aparat kepolisian agar proses penyelidikan dilakukan secara transparan, cepat dan terbuka. Hal itu penting agar publik tahu bahwa proses hukum berlangsung adil tanpa keberpihakan.<br /><br />"Kalau secara hukum dimungkinkan gelar perkara secara terbuka ya silakan saja. Proses ini harus dilakukan adil, transparan dan tepat," tuturnya. <br /><strong>(kff/dhn)</strong></p>\r\n<div class="news_tag" style="margin-top: 50px;">&nbsp;</div>\r\n<p>&nbsp;</p>\r\n<div class="skybanner">\r\n<div class="skybanner_container">\r\n<div id="gpt_unit_/4905536/detik/news/skycrapper_2_ad_container">&nbsp;</div>\r\n<div id="beacon_d12aeb1a9c" style="position: absolute; left: 0px; top: 0px; visibility: hidden;"><img style="width: 0px; height: 0px;" src="http://newopenx.detik.com/delivery/lg.php?bannerid=25179&amp;campaignid=3383&amp;zoneid=427&amp;loc=1&amp;referer=http%3A%2F%2Fnews.detik.com%2Fberita%2F3343504%2Fsiapa-aktor-politik-demo-4-november-johan-budi-hanya-presiden-yang-tahu&amp;cb=d12aeb1a9c" alt="" width="0" height="0" /></div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 'thumbnail29.jpg', '2016-11-11', '2016-11-11 08:00:00', '2016-11-11 08:00:00'),
(31, 'Siapa Aktor Politik Demo 4 November? Johan Budi: Hanya Presiden yang Tahu a a a a a', 'siapa-aktor-politik-demo-4-november-johan-budi-hanya-presiden-yang-tahu-a-a-a-a-a', '<p><strong>Jakarta</strong> - Presiden Joko Widodo (Jokowi) menyebut ada aktor politik yang menunggangi demo 4 November 2016. Siapakah aktor politik yang dimaksud?<br /><br />"Aktor politik, saya pikir eksklusif yang disebut memanfaatkan situasi habis Magrib. Saya kira Presiden yang tahu siapa aktor politik," kata juru bicara presiden, Johan Budi, usai silaturahmi di KPK, Jalan Rasuna Said, Jakarta Selatan, Jumat (11/11/2016).<br /><br />Johan kembali menegaskan, maksud ucapan Jokowi ada aktor politik yang menunggangi demo, bukanlah pendemonya yang ditunggangi. Namun kejadian rusuh setelah Magrib yang dimanfaatkan oleh para aktor politik.<br /><br />"Maksud Presiden adalah letupan setelah Magrib itu dimanfaatkan oleh aktor-aktor politik," ujarnya.<br /><br />Menurut Johan, demo berlangsung damai dan aman pada siang harinya. Oleh sebab itu, Jokowi juga mengapresiasi para ulama yang telah melakukan pendekatan persuasif kepada para pendemo.<br /><br />Jokowi juga meminta kepada aparat kepolisian agar proses penyelidikan dilakukan secara transparan, cepat dan terbuka. Hal itu penting agar publik tahu bahwa proses hukum berlangsung adil tanpa keberpihakan.<br /><br />"Kalau secara hukum dimungkinkan gelar perkara secara terbuka ya silakan saja. Proses ini harus dilakukan adil, transparan dan tepat," tuturnya. <br /><strong>(kff/dhn)</strong></p>\r\n<div class="news_tag" style="margin-top: 50px;">&nbsp;</div>\r\n<p>&nbsp;</p>\r\n<div class="skybanner">\r\n<div class="skybanner_container">\r\n<div id="gpt_unit_/4905536/detik/news/skycrapper_2_ad_container">&nbsp;</div>\r\n<div id="beacon_d12aeb1a9c" style="position: absolute; left: 0px; top: 0px; visibility: hidden;"><img style="width: 0px; height: 0px;" src="http://newopenx.detik.com/delivery/lg.php?bannerid=25179&amp;campaignid=3383&amp;zoneid=427&amp;loc=1&amp;referer=http%3A%2F%2Fnews.detik.com%2Fberita%2F3343504%2Fsiapa-aktor-politik-demo-4-november-johan-budi-hanya-presiden-yang-tahu&amp;cb=d12aeb1a9c" alt="" width="0" height="0" /></div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 'thumbnail30.jpg', '2016-11-11', '2016-11-11 09:00:00', '2016-11-11 09:00:00'),
(32, 'Golkar Bantah Copot Fadel Muhammad Karena Tolak Dukung Ahok a', 'golkar-bantah-copot-fadel-muhammad-karena-tolak-dukung-ahok-a', '<p><strong>Jakarta</strong> - Politikus Golkar, Fadel Muhammad merasa dicopot oleh Partai Golkar dari posisi Sekretaris Dewan Pembina (Wanbin) Golkar karena menolak mendukung Basuki Tjahaja Purnama (Ahok) di Pilgub DKI 2017. Alasan itu dibantah oleh Golkar. <br /><br />"Tidak ada hubungannya dengan Ahok. Itu semua (peninjauan kembali dukungan) kan hanya statement," kata Ketua Harian Partai Golkar, Nurdin Halid saat dihubungi, Jumat (11/11/2016). <br /><br /><strong>Baca Juga: Fadel Merasa Dicopot Golkar Gara-gara Tak Dukung Ahok</strong><br /><br />Nurdin mengatakan bahwa Fadel dicopot karena mendukung dan berkampanye untuk calon lain. Calon lain yang dimaksud adalah istri Fadel, Hana Hasanah yang maju di Pilgub Gorontalo melawan calon yang diusung Golkar, Rusli Habibie. <br /><br />"Ini mekanisme sudah sesuai prosedur. DPD I Gorontalo beri surat dengan bukti Fadel kampanye, ikut sosialisasi, memasang baliho. Telak sekali, tidak debatable," ucapnya. <br /><br />Baca Juga: Dicopot dari Jabatannya, Fadel Muhammad Balik Serang Golkar<br />Sebelumnya diberitakan, Fadel hingga saat ini masih heran dengan alasannya dicopot. Dia mengakui bahwa tidak mendukung Ahok yang sudah diusung oleh partainya. <br /><br />"Kalau alasannya karena saya tidak mendukung Ahok, itu dari hati kecil saya. Islam enggak boleh dipermainkan oleh dia. Jadi menurut saya enggak jelas, kalau saya diberhentikan karena meminta meninjau dukungan kepada Ahok," ungkap Fadel ketika dihubungi terpisah. <br /><br />Fadel tidak terima dengan pencopotannya. Dia kemudian mempertanyakan pencopotan ini ke Ketum Golkar Setya Novanto lewat pesan singkat. <br /><br />"Saya pertanyakan ke Novanto juga kok begini. Kan bisa dibicarakan dengan baik-baik. Sudah saya SMS (Novanto) tapi belum balas," ujarnya. <br /><br /> <br /><strong>(imk/imk)</strong></p>', 'thumbnail.jpg', '2016-11-11', '2016-11-11 05:20:00', '2016-11-11 05:20:00'),
(33, 'Golkar Bantah Copot Fadel Muhammad Karena Tolak Dukung Ahok a a', 'golkar-bantah-copot-fadel-muhammad-karena-tolak-dukung-ahok-a-a', '<p><strong>Jakarta</strong> - Politikus Golkar, Fadel Muhammad merasa dicopot oleh Partai Golkar dari posisi Sekretaris Dewan Pembina (Wanbin) Golkar karena menolak mendukung Basuki Tjahaja Purnama (Ahok) di Pilgub DKI 2017. Alasan itu dibantah oleh Golkar. <br /><br />"Tidak ada hubungannya dengan Ahok. Itu semua (peninjauan kembali dukungan) kan hanya statement," kata Ketua Harian Partai Golkar, Nurdin Halid saat dihubungi, Jumat (11/11/2016). <br /><br /><strong>Baca Juga: Fadel Merasa Dicopot Golkar Gara-gara Tak Dukung Ahok</strong><br /><br />Nurdin mengatakan bahwa Fadel dicopot karena mendukung dan berkampanye untuk calon lain. Calon lain yang dimaksud adalah istri Fadel, Hana Hasanah yang maju di Pilgub Gorontalo melawan calon yang diusung Golkar, Rusli Habibie. <br /><br />"Ini mekanisme sudah sesuai prosedur. DPD I Gorontalo beri surat dengan bukti Fadel kampanye, ikut sosialisasi, memasang baliho. Telak sekali, tidak debatable," ucapnya. <br /><br />Baca Juga: Dicopot dari Jabatannya, Fadel Muhammad Balik Serang Golkar<br />Sebelumnya diberitakan, Fadel hingga saat ini masih heran dengan alasannya dicopot. Dia mengakui bahwa tidak mendukung Ahok yang sudah diusung oleh partainya. <br /><br />"Kalau alasannya karena saya tidak mendukung Ahok, itu dari hati kecil saya. Islam enggak boleh dipermainkan oleh dia. Jadi menurut saya enggak jelas, kalau saya diberhentikan karena meminta meninjau dukungan kepada Ahok," ungkap Fadel ketika dihubungi terpisah. <br /><br />Fadel tidak terima dengan pencopotannya. Dia kemudian mempertanyakan pencopotan ini ke Ketum Golkar Setya Novanto lewat pesan singkat. <br /><br />"Saya pertanyakan ke Novanto juga kok begini. Kan bisa dibicarakan dengan baik-baik. Sudah saya SMS (Novanto) tapi belum balas," ujarnya. <br /><br /> <br /><strong>(imk/imk)</strong></p>', 'thumbnail1.jpg', '2016-11-11', '2016-11-11 06:20:00', '2016-11-11 06:20:00'),
(34, 'Golkar Bantah Copot Fadel Muhammad Karena Tolak Dukung Ahok a a a', 'golkar-bantah-copot-fadel-muhammad-karena-tolak-dukung-ahok-a-a-a', '<p><strong>Jakarta</strong> - Politikus Golkar, Fadel Muhammad merasa dicopot oleh Partai Golkar dari posisi Sekretaris Dewan Pembina (Wanbin) Golkar karena menolak mendukung Basuki Tjahaja Purnama (Ahok) di Pilgub DKI 2017. Alasan itu dibantah oleh Golkar. <br /><br />"Tidak ada hubungannya dengan Ahok. Itu semua (peninjauan kembali dukungan) kan hanya statement," kata Ketua Harian Partai Golkar, Nurdin Halid saat dihubungi, Jumat (11/11/2016). <br /><br /><strong>Baca Juga: Fadel Merasa Dicopot Golkar Gara-gara Tak Dukung Ahok</strong><br /><br />Nurdin mengatakan bahwa Fadel dicopot karena mendukung dan berkampanye untuk calon lain. Calon lain yang dimaksud adalah istri Fadel, Hana Hasanah yang maju di Pilgub Gorontalo melawan calon yang diusung Golkar, Rusli Habibie. <br /><br />"Ini mekanisme sudah sesuai prosedur. DPD I Gorontalo beri surat dengan bukti Fadel kampanye, ikut sosialisasi, memasang baliho. Telak sekali, tidak debatable," ucapnya. <br /><br />Baca Juga: Dicopot dari Jabatannya, Fadel Muhammad Balik Serang Golkar<br />Sebelumnya diberitakan, Fadel hingga saat ini masih heran dengan alasannya dicopot. Dia mengakui bahwa tidak mendukung Ahok yang sudah diusung oleh partainya. <br /><br />"Kalau alasannya karena saya tidak mendukung Ahok, itu dari hati kecil saya. Islam enggak boleh dipermainkan oleh dia. Jadi menurut saya enggak jelas, kalau saya diberhentikan karena meminta meninjau dukungan kepada Ahok," ungkap Fadel ketika dihubungi terpisah. <br /><br />Fadel tidak terima dengan pencopotannya. Dia kemudian mempertanyakan pencopotan ini ke Ketum Golkar Setya Novanto lewat pesan singkat. <br /><br />"Saya pertanyakan ke Novanto juga kok begini. Kan bisa dibicarakan dengan baik-baik. Sudah saya SMS (Novanto) tapi belum balas," ujarnya. <br /><br /> <br /><strong>(imk/imk)</strong></p>', 'thumbnail2.jpg', '2016-11-11', '2016-11-11 07:20:00', '2016-11-11 07:20:00'),
(35, 'Golkar Bantah Copot Fadel Muhammad Karena Tolak Dukung Ahok a a a a', 'golkar-bantah-copot-fadel-muhammad-karena-tolak-dukung-ahok-a-a-a-a', '<p><strong>Jakarta</strong> - Politikus Golkar, Fadel Muhammad merasa dicopot oleh Partai Golkar dari posisi Sekretaris Dewan Pembina (Wanbin) Golkar karena menolak mendukung Basuki Tjahaja Purnama (Ahok) di Pilgub DKI 2017. Alasan itu dibantah oleh Golkar. <br /><br />"Tidak ada hubungannya dengan Ahok. Itu semua (peninjauan kembali dukungan) kan hanya statement," kata Ketua Harian Partai Golkar, Nurdin Halid saat dihubungi, Jumat (11/11/2016). <br /><br /><strong>Baca Juga: Fadel Merasa Dicopot Golkar Gara-gara Tak Dukung Ahok</strong><br /><br />Nurdin mengatakan bahwa Fadel dicopot karena mendukung dan berkampanye untuk calon lain. Calon lain yang dimaksud adalah istri Fadel, Hana Hasanah yang maju di Pilgub Gorontalo melawan calon yang diusung Golkar, Rusli Habibie. <br /><br />"Ini mekanisme sudah sesuai prosedur. DPD I Gorontalo beri surat dengan bukti Fadel kampanye, ikut sosialisasi, memasang baliho. Telak sekali, tidak debatable," ucapnya. <br /><br />Baca Juga: Dicopot dari Jabatannya, Fadel Muhammad Balik Serang Golkar<br />Sebelumnya diberitakan, Fadel hingga saat ini masih heran dengan alasannya dicopot. Dia mengakui bahwa tidak mendukung Ahok yang sudah diusung oleh partainya. <br /><br />"Kalau alasannya karena saya tidak mendukung Ahok, itu dari hati kecil saya. Islam enggak boleh dipermainkan oleh dia. Jadi menurut saya enggak jelas, kalau saya diberhentikan karena meminta meninjau dukungan kepada Ahok," ungkap Fadel ketika dihubungi terpisah. <br /><br />Fadel tidak terima dengan pencopotannya. Dia kemudian mempertanyakan pencopotan ini ke Ketum Golkar Setya Novanto lewat pesan singkat. <br /><br />"Saya pertanyakan ke Novanto juga kok begini. Kan bisa dibicarakan dengan baik-baik. Sudah saya SMS (Novanto) tapi belum balas," ujarnya. <br /><br /> <br /><strong>(imk/imk)</strong></p>', 'thumbnail3.jpg', '2016-11-11', '2016-11-11 08:20:00', '2016-11-11 08:20:00'),
(36, 'Golkar Bantah Copot Fadel Muhammad Karena Tolak Dukung Ahok a a a a a', 'golkar-bantah-copot-fadel-muhammad-karena-tolak-dukung-ahok-a-a-a-a-a', '<p><strong>Jakarta</strong> - Politikus Golkar, Fadel Muhammad merasa dicopot oleh Partai Golkar dari posisi Sekretaris Dewan Pembina (Wanbin) Golkar karena menolak mendukung Basuki Tjahaja Purnama (Ahok) di Pilgub DKI 2017. Alasan itu dibantah oleh Golkar. <br /><br />"Tidak ada hubungannya dengan Ahok. Itu semua (peninjauan kembali dukungan) kan hanya statement," kata Ketua Harian Partai Golkar, Nurdin Halid saat dihubungi, Jumat (11/11/2016). <br /><br /><strong>Baca Juga: Fadel Merasa Dicopot Golkar Gara-gara Tak Dukung Ahok</strong><br /><br />Nurdin mengatakan bahwa Fadel dicopot karena mendukung dan berkampanye untuk calon lain. Calon lain yang dimaksud adalah istri Fadel, Hana Hasanah yang maju di Pilgub Gorontalo melawan calon yang diusung Golkar, Rusli Habibie. <br /><br />"Ini mekanisme sudah sesuai prosedur. DPD I Gorontalo beri surat dengan bukti Fadel kampanye, ikut sosialisasi, memasang baliho. Telak sekali, tidak debatable," ucapnya. <br /><br />Baca Juga: Dicopot dari Jabatannya, Fadel Muhammad Balik Serang Golkar<br />Sebelumnya diberitakan, Fadel hingga saat ini masih heran dengan alasannya dicopot. Dia mengakui bahwa tidak mendukung Ahok yang sudah diusung oleh partainya. <br /><br />"Kalau alasannya karena saya tidak mendukung Ahok, itu dari hati kecil saya. Islam enggak boleh dipermainkan oleh dia. Jadi menurut saya enggak jelas, kalau saya diberhentikan karena meminta meninjau dukungan kepada Ahok," ungkap Fadel ketika dihubungi terpisah. <br /><br />Fadel tidak terima dengan pencopotannya. Dia kemudian mempertanyakan pencopotan ini ke Ketum Golkar Setya Novanto lewat pesan singkat. <br /><br />"Saya pertanyakan ke Novanto juga kok begini. Kan bisa dibicarakan dengan baik-baik. Sudah saya SMS (Novanto) tapi belum balas," ujarnya. <br /><br /> <br /><strong>(imk/imk)</strong></p>', 'thumbnail4.jpg', '2016-11-11', '2016-11-11 09:20:00', '2016-11-11 09:20:00'),
(37, 'Dovizioso Yakin Ducati Sudah Lebih Dekat dengan Yamaha dan Honda a', 'dovizioso-yakin-ducati-sudah-lebih-dekat-dengan-yamaha-dan-honda-a', '<p><strong>Valencia</strong> - Dua kemenangan yang diraih Ducati pada musim ini membuat Andrea Dovizioso optimistis menatap musim depan. Dovizioso yakin timnya sudah memangkas kesenjangan dengan Yamaha dan Honda.<br /><br />Setelah lama tidak menang, Ducati akhirnya memenangi sebuah seri MotoGP ketika Andrea Iannone finis terdepan di Austria, bulan Agustus lalu. Tim pabrikan asal Italia itu kemudian menambah jumlah kemenangannya lewat Dovizioso di Malaysia, 30 Oktober lalu.<br /><br />"Dua kemenangan untuk kami pada tahun ini sangat penting, tapi terlepas dari itu, kami menutup musim dengan cara yang baik dan sangat penting untuk melakukan tes yang bagus pada hari Selasa dengan motor baru dan memulai dengan level yang bagus, dengan<em> feeling</em> yang bagus," ujar Dovizioso jelang digelarnya seri penutup di Valencia pada akhir pekan ini. <br /><br />Dovizioso kini menempati posisi kelima di klasemen pebalap dengan 162 poin, di bawah Marc Marquez, Valentino Rossi, Jorge Lorenzo, dan Maverick Vinales. Sementara itu, Iannone berada di urutan kesepuluh dengan 96 poin.<br /><br />"Saya pikir tahun ini ada banyak naik turun untuk semua orang, khususnya dengan ban, karena tak mudah untuk mengelola sebuah situasi baru. Saya pikir kami punya banyak hal positif dari tahun ini dan saya pikir kami sudah melangkah maju dari tahun lalu," tutur Dovizioso.<br /><br />"Saya yakin kami lebih dekat dengan Yamaha dan Honda. Kami masih butuh sesuatu, tapi saya yakin dengan proyek kami dan saya sangat gembira bisa lanjut dua tahun lagi dengan Ducati dan kami akan berusaha untuk mendapatkan beberapa hal agar bisa bersaing mengejar gelar juara," katanya seperti dikutip dari<em> Crash.net.</em><br /><br />Mulai musim depan, Dovizioso tak lagi satu tim dengan Iannone. Dia akan berpartner dengan Lorenzo, sementara Iannone hengkang ke Suzuki.<br /><br /> <br /><strong>(mfi/mrp)</strong></p>', 'thumbnail5.jpg', '2016-11-11', '2016-11-11 05:25:00', '2016-11-11 05:25:00'),
(38, 'Dovizioso Yakin Ducati Sudah Lebih Dekat dengan Yamaha dan Honda a a', 'dovizioso-yakin-ducati-sudah-lebih-dekat-dengan-yamaha-dan-honda-a-a', '<p><strong>Valencia</strong> - Dua kemenangan yang diraih Ducati pada musim ini membuat Andrea Dovizioso optimistis menatap musim depan. Dovizioso yakin timnya sudah memangkas kesenjangan dengan Yamaha dan Honda.<br /><br />Setelah lama tidak menang, Ducati akhirnya memenangi sebuah seri MotoGP ketika Andrea Iannone finis terdepan di Austria, bulan Agustus lalu. Tim pabrikan asal Italia itu kemudian menambah jumlah kemenangannya lewat Dovizioso di Malaysia, 30 Oktober lalu.<br /><br />"Dua kemenangan untuk kami pada tahun ini sangat penting, tapi terlepas dari itu, kami menutup musim dengan cara yang baik dan sangat penting untuk melakukan tes yang bagus pada hari Selasa dengan motor baru dan memulai dengan level yang bagus, dengan<em> feeling</em> yang bagus," ujar Dovizioso jelang digelarnya seri penutup di Valencia pada akhir pekan ini. <br /><br />Dovizioso kini menempati posisi kelima di klasemen pebalap dengan 162 poin, di bawah Marc Marquez, Valentino Rossi, Jorge Lorenzo, dan Maverick Vinales. Sementara itu, Iannone berada di urutan kesepuluh dengan 96 poin.<br /><br />"Saya pikir tahun ini ada banyak naik turun untuk semua orang, khususnya dengan ban, karena tak mudah untuk mengelola sebuah situasi baru. Saya pikir kami punya banyak hal positif dari tahun ini dan saya pikir kami sudah melangkah maju dari tahun lalu," tutur Dovizioso.<br /><br />"Saya yakin kami lebih dekat dengan Yamaha dan Honda. Kami masih butuh sesuatu, tapi saya yakin dengan proyek kami dan saya sangat gembira bisa lanjut dua tahun lagi dengan Ducati dan kami akan berusaha untuk mendapatkan beberapa hal agar bisa bersaing mengejar gelar juara," katanya seperti dikutip dari<em> Crash.net.</em><br /><br />Mulai musim depan, Dovizioso tak lagi satu tim dengan Iannone. Dia akan berpartner dengan Lorenzo, sementara Iannone hengkang ke Suzuki.<br /><br /> <br /><strong>(mfi/mrp)</strong></p>', 'thumbnail6.jpg', '2016-11-11', '2016-11-11 06:25:00', '2016-11-11 06:25:00'),
(39, 'Dovizioso Yakin Ducati Sudah Lebih Dekat dengan Yamaha dan Honda a a a', 'dovizioso-yakin-ducati-sudah-lebih-dekat-dengan-yamaha-dan-honda-a-a-a', '<p><strong>Valencia</strong> - Dua kemenangan yang diraih Ducati pada musim ini membuat Andrea Dovizioso optimistis menatap musim depan. Dovizioso yakin timnya sudah memangkas kesenjangan dengan Yamaha dan Honda.<br /><br />Setelah lama tidak menang, Ducati akhirnya memenangi sebuah seri MotoGP ketika Andrea Iannone finis terdepan di Austria, bulan Agustus lalu. Tim pabrikan asal Italia itu kemudian menambah jumlah kemenangannya lewat Dovizioso di Malaysia, 30 Oktober lalu.<br /><br />"Dua kemenangan untuk kami pada tahun ini sangat penting, tapi terlepas dari itu, kami menutup musim dengan cara yang baik dan sangat penting untuk melakukan tes yang bagus pada hari Selasa dengan motor baru dan memulai dengan level yang bagus, dengan<em> feeling</em> yang bagus," ujar Dovizioso jelang digelarnya seri penutup di Valencia pada akhir pekan ini. <br /><br />Dovizioso kini menempati posisi kelima di klasemen pebalap dengan 162 poin, di bawah Marc Marquez, Valentino Rossi, Jorge Lorenzo, dan Maverick Vinales. Sementara itu, Iannone berada di urutan kesepuluh dengan 96 poin.<br /><br />"Saya pikir tahun ini ada banyak naik turun untuk semua orang, khususnya dengan ban, karena tak mudah untuk mengelola sebuah situasi baru. Saya pikir kami punya banyak hal positif dari tahun ini dan saya pikir kami sudah melangkah maju dari tahun lalu," tutur Dovizioso.<br /><br />"Saya yakin kami lebih dekat dengan Yamaha dan Honda. Kami masih butuh sesuatu, tapi saya yakin dengan proyek kami dan saya sangat gembira bisa lanjut dua tahun lagi dengan Ducati dan kami akan berusaha untuk mendapatkan beberapa hal agar bisa bersaing mengejar gelar juara," katanya seperti dikutip dari<em> Crash.net.</em><br /><br />Mulai musim depan, Dovizioso tak lagi satu tim dengan Iannone. Dia akan berpartner dengan Lorenzo, sementara Iannone hengkang ke Suzuki.<br /><br /> <br /><strong>(mfi/mrp)</strong></p>', 'thumbnail7.jpg', '2016-11-11', '2016-11-11 07:25:00', '2016-11-11 07:25:00'),
(40, 'Dovizioso Yakin Ducati Sudah Lebih Dekat dengan Yamaha dan Honda a a a a', 'dovizioso-yakin-ducati-sudah-lebih-dekat-dengan-yamaha-dan-honda-a-a-a-a', '<p><strong>Valencia</strong> - Dua kemenangan yang diraih Ducati pada musim ini membuat Andrea Dovizioso optimistis menatap musim depan. Dovizioso yakin timnya sudah memangkas kesenjangan dengan Yamaha dan Honda.<br /><br />Setelah lama tidak menang, Ducati akhirnya memenangi sebuah seri MotoGP ketika Andrea Iannone finis terdepan di Austria, bulan Agustus lalu. Tim pabrikan asal Italia itu kemudian menambah jumlah kemenangannya lewat Dovizioso di Malaysia, 30 Oktober lalu.<br /><br />"Dua kemenangan untuk kami pada tahun ini sangat penting, tapi terlepas dari itu, kami menutup musim dengan cara yang baik dan sangat penting untuk melakukan tes yang bagus pada hari Selasa dengan motor baru dan memulai dengan level yang bagus, dengan<em> feeling</em> yang bagus," ujar Dovizioso jelang digelarnya seri penutup di Valencia pada akhir pekan ini. <br /><br />Dovizioso kini menempati posisi kelima di klasemen pebalap dengan 162 poin, di bawah Marc Marquez, Valentino Rossi, Jorge Lorenzo, dan Maverick Vinales. Sementara itu, Iannone berada di urutan kesepuluh dengan 96 poin.<br /><br />"Saya pikir tahun ini ada banyak naik turun untuk semua orang, khususnya dengan ban, karena tak mudah untuk mengelola sebuah situasi baru. Saya pikir kami punya banyak hal positif dari tahun ini dan saya pikir kami sudah melangkah maju dari tahun lalu," tutur Dovizioso.<br /><br />"Saya yakin kami lebih dekat dengan Yamaha dan Honda. Kami masih butuh sesuatu, tapi saya yakin dengan proyek kami dan saya sangat gembira bisa lanjut dua tahun lagi dengan Ducati dan kami akan berusaha untuk mendapatkan beberapa hal agar bisa bersaing mengejar gelar juara," katanya seperti dikutip dari<em> Crash.net.</em><br /><br />Mulai musim depan, Dovizioso tak lagi satu tim dengan Iannone. Dia akan berpartner dengan Lorenzo, sementara Iannone hengkang ke Suzuki.<br /><br /> <br /><strong>(mfi/mrp)</strong></p>', 'thumbnail8.jpg', '2016-11-11', '2016-11-11 08:25:00', '2016-11-11 08:25:00'),
(41, 'Dovizioso Yakin Ducati Sudah Lebih Dekat dengan Yamaha dan Honda a a a a a', 'dovizioso-yakin-ducati-sudah-lebih-dekat-dengan-yamaha-dan-honda-a-a-a-a-a', '<p><strong>Valencia</strong> - Dua kemenangan yang diraih Ducati pada musim ini membuat Andrea Dovizioso optimistis menatap musim depan. Dovizioso yakin timnya sudah memangkas kesenjangan dengan Yamaha dan Honda.<br /><br />Setelah lama tidak menang, Ducati akhirnya memenangi sebuah seri MotoGP ketika Andrea Iannone finis terdepan di Austria, bulan Agustus lalu. Tim pabrikan asal Italia itu kemudian menambah jumlah kemenangannya lewat Dovizioso di Malaysia, 30 Oktober lalu.<br /><br />"Dua kemenangan untuk kami pada tahun ini sangat penting, tapi terlepas dari itu, kami menutup musim dengan cara yang baik dan sangat penting untuk melakukan tes yang bagus pada hari Selasa dengan motor baru dan memulai dengan level yang bagus, dengan<em> feeling</em> yang bagus," ujar Dovizioso jelang digelarnya seri penutup di Valencia pada akhir pekan ini. <br /><br />Dovizioso kini menempati posisi kelima di klasemen pebalap dengan 162 poin, di bawah Marc Marquez, Valentino Rossi, Jorge Lorenzo, dan Maverick Vinales. Sementara itu, Iannone berada di urutan kesepuluh dengan 96 poin.<br /><br />"Saya pikir tahun ini ada banyak naik turun untuk semua orang, khususnya dengan ban, karena tak mudah untuk mengelola sebuah situasi baru. Saya pikir kami punya banyak hal positif dari tahun ini dan saya pikir kami sudah melangkah maju dari tahun lalu," tutur Dovizioso.<br /><br />"Saya yakin kami lebih dekat dengan Yamaha dan Honda. Kami masih butuh sesuatu, tapi saya yakin dengan proyek kami dan saya sangat gembira bisa lanjut dua tahun lagi dengan Ducati dan kami akan berusaha untuk mendapatkan beberapa hal agar bisa bersaing mengejar gelar juara," katanya seperti dikutip dari<em> Crash.net.</em><br /><br />Mulai musim depan, Dovizioso tak lagi satu tim dengan Iannone. Dia akan berpartner dengan Lorenzo, sementara Iannone hengkang ke Suzuki.<br /><br /> <br /><strong>(mfi/mrp)</strong></p>', 'thumbnail9.jpg', '2016-11-11', '2016-11-11 09:25:00', '2016-11-11 09:25:00'),
(42, 'Lorenzo Inginkan Kado Perpisahan Terbaik dengan Yamaha 0', 'lorenzo-inginkan-kado-perpisahan-terbaik-dengan-yamaha-0', '<p><strong>Valencia</strong> - MotoGP Valencia akan jadi balapan terakhir Jorge Lorenzo bersama Movistar Yamaha. Lorenzo bertekad menutup perjalanannya dengan Yamaha itu dengan maksimal.<br /><br />Lorenzo bergabung dengan Yamaha sejak pertama kali naik ke kelas premier pada 2008. Selama menunggangi Yamaha, <em>rider</em> asal Spanyol meraih 43 kemenangan, 106 podium, dan tiga gelar juara dunia.<br /><br />Mulai musim depan, Lorenzo akan memperkuat Ducati. Musimnya bersama Ducati akan dimulai pada hari Selasa (15/11/2016) --hanya dua hari usai balapan akhir pekan ini-- saat dia menjalani tes perdananya di Valencia.<br /><br />Meski waktunya berdekatan, Lorenzo tak akan membiarkan hal tersebut mengganggu konsentrasinya dalam balapan di MotoGP Valencia, Minggu (13/11/2016), akhir pekan ini. Dia ingin memberi kado perpisahan manis lebih dulu dengan Yamaha.<br /><br />"Saya adalah orang yang berpikir soal saat ini, yaitu akhir pekan ini, dan mengakhiri karier panjang bersama Yamaha dengan sebaik mungkin di trek yang sangat cocok dengan saya dalam tahun-tahun terakhir," ujar Lorenzo seperti dikutip dari <em>Motorsport</em>.<br /><br />"Jika cuacanya bagus dan bannya bekerja, kami punya peluang yang sangat bagus untuk berjuang mengejar kemenangan, atau paling tidak podium," lanjutnya.<br /><br />"Ini aneh, karena setelah bertahun-tahun dengan orang yang sama, tim yang sama, motor yang sama, tiba-tiba Anda harus mengalihkan pikiran Anda dan menemukan hal-hal baru."<br /><br />"Kami masih punya tiga hari dengan Yamaha, dan ketika kami menyelesaikan balapan hari Minggu pukul 3 sore kami akan berpikir soal motor selanjutnya," kata Lorenzo.<br /><br />Lorenzo pernah tiga kali naik podium teratas di MotoGP Valencia, termasuk musim lalu. Juara di musim 2015 lalu itu sekaligus memberinya titel juara dunia yang ketiga.<br /><br /><br /> <br /><strong>(nds/mrp)</strong></p>', 'thumbnail10.jpg', '2016-11-11', '2016-11-11 05:30:00', '2016-11-11 05:30:00'),
(43, 'Lorenzo Inginkan Kado Perpisahan Terbaik dengan Yamaha 0 1', 'lorenzo-inginkan-kado-perpisahan-terbaik-dengan-yamaha-0-1', '<p><strong>Valencia</strong> - MotoGP Valencia akan jadi balapan terakhir Jorge Lorenzo bersama Movistar Yamaha. Lorenzo bertekad menutup perjalanannya dengan Yamaha itu dengan maksimal.<br /><br />Lorenzo bergabung dengan Yamaha sejak pertama kali naik ke kelas premier pada 2008. Selama menunggangi Yamaha, <em>rider</em> asal Spanyol meraih 43 kemenangan, 106 podium, dan tiga gelar juara dunia.<br /><br />Mulai musim depan, Lorenzo akan memperkuat Ducati. Musimnya bersama Ducati akan dimulai pada hari Selasa (15/11/2016) --hanya dua hari usai balapan akhir pekan ini-- saat dia menjalani tes perdananya di Valencia.<br /><br />Meski waktunya berdekatan, Lorenzo tak akan membiarkan hal tersebut mengganggu konsentrasinya dalam balapan di MotoGP Valencia, Minggu (13/11/2016), akhir pekan ini. Dia ingin memberi kado perpisahan manis lebih dulu dengan Yamaha.<br /><br />"Saya adalah orang yang berpikir soal saat ini, yaitu akhir pekan ini, dan mengakhiri karier panjang bersama Yamaha dengan sebaik mungkin di trek yang sangat cocok dengan saya dalam tahun-tahun terakhir," ujar Lorenzo seperti dikutip dari <em>Motorsport</em>.<br /><br />"Jika cuacanya bagus dan bannya bekerja, kami punya peluang yang sangat bagus untuk berjuang mengejar kemenangan, atau paling tidak podium," lanjutnya.<br /><br />"Ini aneh, karena setelah bertahun-tahun dengan orang yang sama, tim yang sama, motor yang sama, tiba-tiba Anda harus mengalihkan pikiran Anda dan menemukan hal-hal baru."<br /><br />"Kami masih punya tiga hari dengan Yamaha, dan ketika kami menyelesaikan balapan hari Minggu pukul 3 sore kami akan berpikir soal motor selanjutnya," kata Lorenzo.<br /><br />Lorenzo pernah tiga kali naik podium teratas di MotoGP Valencia, termasuk musim lalu. Juara di musim 2015 lalu itu sekaligus memberinya titel juara dunia yang ketiga.<br /><br /><br /> <br /><strong>(nds/mrp)</strong></p>', 'thumbnail11.jpg', '2016-11-11', '2016-11-11 06:30:00', '2016-11-11 06:30:00'),
(44, 'Lorenzo Inginkan Kado Perpisahan Terbaik dengan Yamaha 0 1 2', 'lorenzo-inginkan-kado-perpisahan-terbaik-dengan-yamaha-0-1-2', '<p><strong>Valencia</strong> - MotoGP Valencia akan jadi balapan terakhir Jorge Lorenzo bersama Movistar Yamaha. Lorenzo bertekad menutup perjalanannya dengan Yamaha itu dengan maksimal.<br /><br />Lorenzo bergabung dengan Yamaha sejak pertama kali naik ke kelas premier pada 2008. Selama menunggangi Yamaha, <em>rider</em> asal Spanyol meraih 43 kemenangan, 106 podium, dan tiga gelar juara dunia.<br /><br />Mulai musim depan, Lorenzo akan memperkuat Ducati. Musimnya bersama Ducati akan dimulai pada hari Selasa (15/11/2016) --hanya dua hari usai balapan akhir pekan ini-- saat dia menjalani tes perdananya di Valencia.<br /><br />Meski waktunya berdekatan, Lorenzo tak akan membiarkan hal tersebut mengganggu konsentrasinya dalam balapan di MotoGP Valencia, Minggu (13/11/2016), akhir pekan ini. Dia ingin memberi kado perpisahan manis lebih dulu dengan Yamaha.<br /><br />"Saya adalah orang yang berpikir soal saat ini, yaitu akhir pekan ini, dan mengakhiri karier panjang bersama Yamaha dengan sebaik mungkin di trek yang sangat cocok dengan saya dalam tahun-tahun terakhir," ujar Lorenzo seperti dikutip dari <em>Motorsport</em>.<br /><br />"Jika cuacanya bagus dan bannya bekerja, kami punya peluang yang sangat bagus untuk berjuang mengejar kemenangan, atau paling tidak podium," lanjutnya.<br /><br />"Ini aneh, karena setelah bertahun-tahun dengan orang yang sama, tim yang sama, motor yang sama, tiba-tiba Anda harus mengalihkan pikiran Anda dan menemukan hal-hal baru."<br /><br />"Kami masih punya tiga hari dengan Yamaha, dan ketika kami menyelesaikan balapan hari Minggu pukul 3 sore kami akan berpikir soal motor selanjutnya," kata Lorenzo.<br /><br />Lorenzo pernah tiga kali naik podium teratas di MotoGP Valencia, termasuk musim lalu. Juara di musim 2015 lalu itu sekaligus memberinya titel juara dunia yang ketiga.<br /><br /><br /> <br /><strong>(nds/mrp)</strong></p>', 'thumbnail12.jpg', '2016-11-11', '2016-11-11 07:30:00', '2016-11-11 07:30:00'),
(45, 'Lorenzo Inginkan Kado Perpisahan Terbaik dengan Yamaha 0 1 2 3', 'lorenzo-inginkan-kado-perpisahan-terbaik-dengan-yamaha-0-1-2-3', '<p><strong>Valencia</strong> - MotoGP Valencia akan jadi balapan terakhir Jorge Lorenzo bersama Movistar Yamaha. Lorenzo bertekad menutup perjalanannya dengan Yamaha itu dengan maksimal.<br /><br />Lorenzo bergabung dengan Yamaha sejak pertama kali naik ke kelas premier pada 2008. Selama menunggangi Yamaha, <em>rider</em> asal Spanyol meraih 43 kemenangan, 106 podium, dan tiga gelar juara dunia.<br /><br />Mulai musim depan, Lorenzo akan memperkuat Ducati. Musimnya bersama Ducati akan dimulai pada hari Selasa (15/11/2016) --hanya dua hari usai balapan akhir pekan ini-- saat dia menjalani tes perdananya di Valencia.<br /><br />Meski waktunya berdekatan, Lorenzo tak akan membiarkan hal tersebut mengganggu konsentrasinya dalam balapan di MotoGP Valencia, Minggu (13/11/2016), akhir pekan ini. Dia ingin memberi kado perpisahan manis lebih dulu dengan Yamaha.<br /><br />"Saya adalah orang yang berpikir soal saat ini, yaitu akhir pekan ini, dan mengakhiri karier panjang bersama Yamaha dengan sebaik mungkin di trek yang sangat cocok dengan saya dalam tahun-tahun terakhir," ujar Lorenzo seperti dikutip dari <em>Motorsport</em>.<br /><br />"Jika cuacanya bagus dan bannya bekerja, kami punya peluang yang sangat bagus untuk berjuang mengejar kemenangan, atau paling tidak podium," lanjutnya.<br /><br />"Ini aneh, karena setelah bertahun-tahun dengan orang yang sama, tim yang sama, motor yang sama, tiba-tiba Anda harus mengalihkan pikiran Anda dan menemukan hal-hal baru."<br /><br />"Kami masih punya tiga hari dengan Yamaha, dan ketika kami menyelesaikan balapan hari Minggu pukul 3 sore kami akan berpikir soal motor selanjutnya," kata Lorenzo.<br /><br />Lorenzo pernah tiga kali naik podium teratas di MotoGP Valencia, termasuk musim lalu. Juara di musim 2015 lalu itu sekaligus memberinya titel juara dunia yang ketiga.<br /><br /><br /> <br /><strong>(nds/mrp)</strong></p>', 'thumbnail13.jpg', '2016-11-11', '2016-11-11 08:30:00', '2016-11-11 08:30:00'),
(46, 'Lorenzo Inginkan Kado Perpisahan Terbaik dengan Yamaha 0 1 2 3 4', 'lorenzo-inginkan-kado-perpisahan-terbaik-dengan-yamaha-0-1-2-3-4', '<p><strong>Valencia</strong> - MotoGP Valencia akan jadi balapan terakhir Jorge Lorenzo bersama Movistar Yamaha. Lorenzo bertekad menutup perjalanannya dengan Yamaha itu dengan maksimal.<br /><br />Lorenzo bergabung dengan Yamaha sejak pertama kali naik ke kelas premier pada 2008. Selama menunggangi Yamaha, <em>rider</em> asal Spanyol meraih 43 kemenangan, 106 podium, dan tiga gelar juara dunia.<br /><br />Mulai musim depan, Lorenzo akan memperkuat Ducati. Musimnya bersama Ducati akan dimulai pada hari Selasa (15/11/2016) --hanya dua hari usai balapan akhir pekan ini-- saat dia menjalani tes perdananya di Valencia.<br /><br />Meski waktunya berdekatan, Lorenzo tak akan membiarkan hal tersebut mengganggu konsentrasinya dalam balapan di MotoGP Valencia, Minggu (13/11/2016), akhir pekan ini. Dia ingin memberi kado perpisahan manis lebih dulu dengan Yamaha.<br /><br />"Saya adalah orang yang berpikir soal saat ini, yaitu akhir pekan ini, dan mengakhiri karier panjang bersama Yamaha dengan sebaik mungkin di trek yang sangat cocok dengan saya dalam tahun-tahun terakhir," ujar Lorenzo seperti dikutip dari <em>Motorsport</em>.<br /><br />"Jika cuacanya bagus dan bannya bekerja, kami punya peluang yang sangat bagus untuk berjuang mengejar kemenangan, atau paling tidak podium," lanjutnya.<br /><br />"Ini aneh, karena setelah bertahun-tahun dengan orang yang sama, tim yang sama, motor yang sama, tiba-tiba Anda harus mengalihkan pikiran Anda dan menemukan hal-hal baru."<br /><br />"Kami masih punya tiga hari dengan Yamaha, dan ketika kami menyelesaikan balapan hari Minggu pukul 3 sore kami akan berpikir soal motor selanjutnya," kata Lorenzo.<br /><br />Lorenzo pernah tiga kali naik podium teratas di MotoGP Valencia, termasuk musim lalu. Juara di musim 2015 lalu itu sekaligus memberinya titel juara dunia yang ketiga.<br /><br /><br /> <br /><strong>(nds/mrp)</strong></p>', 'thumbnail14.jpg', '2016-11-11', '2016-11-11 09:30:00', '2016-11-11 09:30:00'),
(47, '5 Pesan Menkes di Hari Kesehatan Nasional Agar Masyarakat Sehat dan Kuat 0', '5-pesan-menkes-di-hari-kesehatan-nasional-agar-masyarakat-sehat-dan-kuat-0', '<p><strong>Jakarta,</strong> Tahukah Kamu 12 November merupakan Hari Kesehatan Nasional? Nah, di 2016 ini merupakan Hari Kesehatan Nasional ke-52. Agar masyarakat sehat dan kuat, Menkes Prof. Dr. dr. Nila Farid Moeloek, Sp.M(K) punya 5 pesan penting. Yuk simak!<br /><br />"Ayo hidup sehat. 1) Lakukan aktivitas fisik minimal 30 menit setiap hari; 2) Konsumsi sayur dan buah setiap hari; 3) Makanlah makanan yang bergizi seimbang; 4) Jagalah kebersihan lingkungan, serta 5) Cek kesehatan secara rutin mengontrol tekanan darah, gula darah, serta kolesterol yang ada di tubuh kita," pesan Menkes dalam pesan tertulis yang diterima detikHealth, Sabtu (12/11/2016).<br /><br />Tema peringatan Hari Kesehatan Nasional ke-52 ini adalah ''Indonesia Cinta Sehat'' dengan sub tema ''Masyarakat Hidup Sehat, Indonesia Kuat''. Kemenkes berpesan tema ini harus dimaknai secara luas, seiring dengan Program Indonesia Sehat dengan pendekatan keluarga melalui gerakan masyarakat hidup sehat (Germas).<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Ini Lho Upaya Gunungkidul Tingkatkan Kualitas Kesehatan Meski Minim Sarana</strong></span></span><br /><br />Menkes Nila juga mengingatkan bahwa kesehatan merupakan harta paling berharga bagi seseorang. Karena itu penting sekali untuk menjaga kesehatan dengan baik. Jangan sampai baru menyadari arti penting kesehatan saat penyakit datang mengancam.<br /><br />Upaya promotif dan preventif diniai jauh lebih baik ketimbang kuratif dan rehabilitatif. Selain melakukan perilaku hidup sehat, masyarakat juga diminta berpartisipasi aktif dalam jaminan kesehatan nasional (JKN). <br /><br />Nah, pembaca detikHealth, sudahkah Anda mulai hari ini dengan menerapkan gaya hidup sehat? Yuk berbagi kisah di kolom komentar.<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Makan Daun Singkong Bikin Hipertensi, Masa Sih?</strong> </span></span><br /><br />(<strong>vit/vit</strong>)</p>', 'thumbnail15.jpg', '2016-11-11', '2016-11-11 05:35:00', '2016-11-11 05:35:00'),
(48, '5 Pesan Menkes di Hari Kesehatan Nasional Agar Masyarakat Sehat dan Kuat 0 1', '5-pesan-menkes-di-hari-kesehatan-nasional-agar-masyarakat-sehat-dan-kuat-0-1', '<p><strong>Jakarta,</strong> Tahukah Kamu 12 November merupakan Hari Kesehatan Nasional? Nah, di 2016 ini merupakan Hari Kesehatan Nasional ke-52. Agar masyarakat sehat dan kuat, Menkes Prof. Dr. dr. Nila Farid Moeloek, Sp.M(K) punya 5 pesan penting. Yuk simak!<br /><br />"Ayo hidup sehat. 1) Lakukan aktivitas fisik minimal 30 menit setiap hari; 2) Konsumsi sayur dan buah setiap hari; 3) Makanlah makanan yang bergizi seimbang; 4) Jagalah kebersihan lingkungan, serta 5) Cek kesehatan secara rutin mengontrol tekanan darah, gula darah, serta kolesterol yang ada di tubuh kita," pesan Menkes dalam pesan tertulis yang diterima detikHealth, Sabtu (12/11/2016).<br /><br />Tema peringatan Hari Kesehatan Nasional ke-52 ini adalah ''Indonesia Cinta Sehat'' dengan sub tema ''Masyarakat Hidup Sehat, Indonesia Kuat''. Kemenkes berpesan tema ini harus dimaknai secara luas, seiring dengan Program Indonesia Sehat dengan pendekatan keluarga melalui gerakan masyarakat hidup sehat (Germas).<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Ini Lho Upaya Gunungkidul Tingkatkan Kualitas Kesehatan Meski Minim Sarana</strong></span></span><br /><br />Menkes Nila juga mengingatkan bahwa kesehatan merupakan harta paling berharga bagi seseorang. Karena itu penting sekali untuk menjaga kesehatan dengan baik. Jangan sampai baru menyadari arti penting kesehatan saat penyakit datang mengancam.<br /><br />Upaya promotif dan preventif diniai jauh lebih baik ketimbang kuratif dan rehabilitatif. Selain melakukan perilaku hidup sehat, masyarakat juga diminta berpartisipasi aktif dalam jaminan kesehatan nasional (JKN). <br /><br />Nah, pembaca detikHealth, sudahkah Anda mulai hari ini dengan menerapkan gaya hidup sehat? Yuk berbagi kisah di kolom komentar.<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Makan Daun Singkong Bikin Hipertensi, Masa Sih?</strong> </span></span><br /><br />(<strong>vit/vit</strong>)</p>', 'thumbnail16.jpg', '2016-11-11', '2016-11-11 06:35:00', '2016-11-11 06:35:00'),
(49, '5 Pesan Menkes di Hari Kesehatan Nasional Agar Masyarakat Sehat dan Kuat 0 1 2', '5-pesan-menkes-di-hari-kesehatan-nasional-agar-masyarakat-sehat-dan-kuat-0-1-2', '<p><strong>Jakarta,</strong> Tahukah Kamu 12 November merupakan Hari Kesehatan Nasional? Nah, di 2016 ini merupakan Hari Kesehatan Nasional ke-52. Agar masyarakat sehat dan kuat, Menkes Prof. Dr. dr. Nila Farid Moeloek, Sp.M(K) punya 5 pesan penting. Yuk simak!<br /><br />"Ayo hidup sehat. 1) Lakukan aktivitas fisik minimal 30 menit setiap hari; 2) Konsumsi sayur dan buah setiap hari; 3) Makanlah makanan yang bergizi seimbang; 4) Jagalah kebersihan lingkungan, serta 5) Cek kesehatan secara rutin mengontrol tekanan darah, gula darah, serta kolesterol yang ada di tubuh kita," pesan Menkes dalam pesan tertulis yang diterima detikHealth, Sabtu (12/11/2016).<br /><br />Tema peringatan Hari Kesehatan Nasional ke-52 ini adalah ''Indonesia Cinta Sehat'' dengan sub tema ''Masyarakat Hidup Sehat, Indonesia Kuat''. Kemenkes berpesan tema ini harus dimaknai secara luas, seiring dengan Program Indonesia Sehat dengan pendekatan keluarga melalui gerakan masyarakat hidup sehat (Germas).<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Ini Lho Upaya Gunungkidul Tingkatkan Kualitas Kesehatan Meski Minim Sarana</strong></span></span><br /><br />Menkes Nila juga mengingatkan bahwa kesehatan merupakan harta paling berharga bagi seseorang. Karena itu penting sekali untuk menjaga kesehatan dengan baik. Jangan sampai baru menyadari arti penting kesehatan saat penyakit datang mengancam.<br /><br />Upaya promotif dan preventif diniai jauh lebih baik ketimbang kuratif dan rehabilitatif. Selain melakukan perilaku hidup sehat, masyarakat juga diminta berpartisipasi aktif dalam jaminan kesehatan nasional (JKN). <br /><br />Nah, pembaca detikHealth, sudahkah Anda mulai hari ini dengan menerapkan gaya hidup sehat? Yuk berbagi kisah di kolom komentar.<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Makan Daun Singkong Bikin Hipertensi, Masa Sih?</strong> </span></span><br /><br />(<strong>vit/vit</strong>)</p>', 'thumbnail17.jpg', '2016-11-11', '2016-11-11 07:35:00', '2016-11-11 07:35:00'),
(50, '5 Pesan Menkes di Hari Kesehatan Nasional Agar Masyarakat Sehat dan Kuat 0 1 2 3', '5-pesan-menkes-di-hari-kesehatan-nasional-agar-masyarakat-sehat-dan-kuat-0-1-2-3', '<p><strong>Jakarta,</strong> Tahukah Kamu 12 November merupakan Hari Kesehatan Nasional? Nah, di 2016 ini merupakan Hari Kesehatan Nasional ke-52. Agar masyarakat sehat dan kuat, Menkes Prof. Dr. dr. Nila Farid Moeloek, Sp.M(K) punya 5 pesan penting. Yuk simak!<br /><br />"Ayo hidup sehat. 1) Lakukan aktivitas fisik minimal 30 menit setiap hari; 2) Konsumsi sayur dan buah setiap hari; 3) Makanlah makanan yang bergizi seimbang; 4) Jagalah kebersihan lingkungan, serta 5) Cek kesehatan secara rutin mengontrol tekanan darah, gula darah, serta kolesterol yang ada di tubuh kita," pesan Menkes dalam pesan tertulis yang diterima detikHealth, Sabtu (12/11/2016).<br /><br />Tema peringatan Hari Kesehatan Nasional ke-52 ini adalah ''Indonesia Cinta Sehat'' dengan sub tema ''Masyarakat Hidup Sehat, Indonesia Kuat''. Kemenkes berpesan tema ini harus dimaknai secara luas, seiring dengan Program Indonesia Sehat dengan pendekatan keluarga melalui gerakan masyarakat hidup sehat (Germas).<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Ini Lho Upaya Gunungkidul Tingkatkan Kualitas Kesehatan Meski Minim Sarana</strong></span></span><br /><br />Menkes Nila juga mengingatkan bahwa kesehatan merupakan harta paling berharga bagi seseorang. Karena itu penting sekali untuk menjaga kesehatan dengan baik. Jangan sampai baru menyadari arti penting kesehatan saat penyakit datang mengancam.<br /><br />Upaya promotif dan preventif diniai jauh lebih baik ketimbang kuratif dan rehabilitatif. Selain melakukan perilaku hidup sehat, masyarakat juga diminta berpartisipasi aktif dalam jaminan kesehatan nasional (JKN). <br /><br />Nah, pembaca detikHealth, sudahkah Anda mulai hari ini dengan menerapkan gaya hidup sehat? Yuk berbagi kisah di kolom komentar.<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Makan Daun Singkong Bikin Hipertensi, Masa Sih?</strong> </span></span><br /><br />(<strong>vit/vit</strong>)</p>', 'thumbnail18.jpg', '2016-11-11', '2016-11-11 08:35:00', '2016-11-11 08:35:00');
INSERT INTO `konten` (`id`, `judul`, `slug`, `isi`, `thumbnail`, `published_at`, `created`, `modified`) VALUES
(51, '5 Pesan Menkes di Hari Kesehatan Nasional Agar Masyarakat Sehat dan Kuat 0 1 2 3 4', '5-pesan-menkes-di-hari-kesehatan-nasional-agar-masyarakat-sehat-dan-kuat-0-1-2-3-4', '<p><strong>Jakarta,</strong> Tahukah Kamu 12 November merupakan Hari Kesehatan Nasional? Nah, di 2016 ini merupakan Hari Kesehatan Nasional ke-52. Agar masyarakat sehat dan kuat, Menkes Prof. Dr. dr. Nila Farid Moeloek, Sp.M(K) punya 5 pesan penting. Yuk simak!<br /><br />"Ayo hidup sehat. 1) Lakukan aktivitas fisik minimal 30 menit setiap hari; 2) Konsumsi sayur dan buah setiap hari; 3) Makanlah makanan yang bergizi seimbang; 4) Jagalah kebersihan lingkungan, serta 5) Cek kesehatan secara rutin mengontrol tekanan darah, gula darah, serta kolesterol yang ada di tubuh kita," pesan Menkes dalam pesan tertulis yang diterima detikHealth, Sabtu (12/11/2016).<br /><br />Tema peringatan Hari Kesehatan Nasional ke-52 ini adalah ''Indonesia Cinta Sehat'' dengan sub tema ''Masyarakat Hidup Sehat, Indonesia Kuat''. Kemenkes berpesan tema ini harus dimaknai secara luas, seiring dengan Program Indonesia Sehat dengan pendekatan keluarga melalui gerakan masyarakat hidup sehat (Germas).<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Ini Lho Upaya Gunungkidul Tingkatkan Kualitas Kesehatan Meski Minim Sarana</strong></span></span><br /><br />Menkes Nila juga mengingatkan bahwa kesehatan merupakan harta paling berharga bagi seseorang. Karena itu penting sekali untuk menjaga kesehatan dengan baik. Jangan sampai baru menyadari arti penting kesehatan saat penyakit datang mengancam.<br /><br />Upaya promotif dan preventif diniai jauh lebih baik ketimbang kuratif dan rehabilitatif. Selain melakukan perilaku hidup sehat, masyarakat juga diminta berpartisipasi aktif dalam jaminan kesehatan nasional (JKN). <br /><br />Nah, pembaca detikHealth, sudahkah Anda mulai hari ini dengan menerapkan gaya hidup sehat? Yuk berbagi kisah di kolom komentar.<br /><br />Baca juga: <span style="color: #ff0000;"><span style="color: #ff0000;"><strong>Makan Daun Singkong Bikin Hipertensi, Masa Sih?</strong> </span></span><br /><br />(<strong>vit/vit</strong>)</p>', 'thumbnail19.jpg', '2016-11-11', '2016-11-11 09:35:00', '2016-11-11 09:35:00'),
(52, 'Di Kota Ini, 50 Puntung Rokok Bisa Ditukar Sebungkus Tisu  0', 'di-kota-ini-50-puntung-rokok-bisa-ditukar-sebungkus-tisu-0', '<p><strong>Shengzhou,</strong> Kalau Pemerintah Kota Jakarta berencana menerima seekor tikus untuk ditukar dengan uang Rp 20 ribu, di kota ini ada kegiatan serupa yang telah berjalan. Bukan tikus yang ditukar, tapi puntung rokok yang ditukar dengan tisu.<br /><br />Adalah Pemerintah Kota Shengzhou, China, yang menggagas kegiatan ini. Dilaporkan oleh media setempat bahwa Dinas Kebersihan Kota Shengzhou menerima 50 puntung rokok bekas untuk ditukar dengan sebungkus tisu. Dalam tiga minggu kegiatan berjalan sudah ada 5 juta puntung yang terkumpul.<br /><br />Meski hadiah yang ditawarkan mungkin tampak seadanya, namun warga tetap antusias berbondong-bondong mencari puntung. Grup TV dan Radio Zhejiang melaporkan bahkan sampai terjadi antrean di luar kantor dinas kebersihan.<br /><br />Baca juga: <em><strong><span style="color: #ff0000;"><span style="color: #ff0000;">Klinik di Kota Kecil Ini Tawarkan Gaji Rp 5,8 M Setahun untuk Dokter Umum</span></span></strong></em><br /><br />Hanya saja menurut seorang petugas dari 5 juta puntung yang sudah terkumpul tak semua tampak seperti puntung bekas. Ada kecurigaan bahwa beberapa orang melakukan kecurangan sengaja mencari puntung rokok dengan cara lain bukan memungut dari jalan.<br /><br />"Banyak puntung rokok yang kami terima masih cukup bersih. Tidak ada tanda noda atau basah dan tampaknya tidak diambil langsung dari jalan. Kami tidak cukup yakin dari mana asal puntung rokok ini, jadi kami tak punya pilihan kecuali untuk menerima semua," ujar petugas tersebut kepada The Paper dan dikutip dari <em>BBC</em>, Rabu (26/10/2016).<br /><br />Program awalnya dibuat karena kota Shengzhou memang memiliki masalah kebersihan terkait puntung rokok. Namun karena ada indikasi kecurangan pemerintah kini dilaporkan telah menghentikannya.<br /><br />Terkait program penukaran tikus di kota Jakarta, semoga tidak bernasib sama dengan program di Shengzhou ini.</p>', 'thumbnail20.jpg', '2016-11-11', '2016-11-11 05:40:00', '2016-11-11 05:40:00'),
(53, 'Di Kota Ini, 50 Puntung Rokok Bisa Ditukar Sebungkus Tisu  0 1', 'di-kota-ini-50-puntung-rokok-bisa-ditukar-sebungkus-tisu-0-1', '<p><strong>Shengzhou,</strong> Kalau Pemerintah Kota Jakarta berencana menerima seekor tikus untuk ditukar dengan uang Rp 20 ribu, di kota ini ada kegiatan serupa yang telah berjalan. Bukan tikus yang ditukar, tapi puntung rokok yang ditukar dengan tisu.<br /><br />Adalah Pemerintah Kota Shengzhou, China, yang menggagas kegiatan ini. Dilaporkan oleh media setempat bahwa Dinas Kebersihan Kota Shengzhou menerima 50 puntung rokok bekas untuk ditukar dengan sebungkus tisu. Dalam tiga minggu kegiatan berjalan sudah ada 5 juta puntung yang terkumpul.<br /><br />Meski hadiah yang ditawarkan mungkin tampak seadanya, namun warga tetap antusias berbondong-bondong mencari puntung. Grup TV dan Radio Zhejiang melaporkan bahkan sampai terjadi antrean di luar kantor dinas kebersihan.<br /><br />Baca juga: <em><strong><span style="color: #ff0000;"><span style="color: #ff0000;">Klinik di Kota Kecil Ini Tawarkan Gaji Rp 5,8 M Setahun untuk Dokter Umum</span></span></strong></em><br /><br />Hanya saja menurut seorang petugas dari 5 juta puntung yang sudah terkumpul tak semua tampak seperti puntung bekas. Ada kecurigaan bahwa beberapa orang melakukan kecurangan sengaja mencari puntung rokok dengan cara lain bukan memungut dari jalan.<br /><br />"Banyak puntung rokok yang kami terima masih cukup bersih. Tidak ada tanda noda atau basah dan tampaknya tidak diambil langsung dari jalan. Kami tidak cukup yakin dari mana asal puntung rokok ini, jadi kami tak punya pilihan kecuali untuk menerima semua," ujar petugas tersebut kepada The Paper dan dikutip dari <em>BBC</em>, Rabu (26/10/2016).<br /><br />Program awalnya dibuat karena kota Shengzhou memang memiliki masalah kebersihan terkait puntung rokok. Namun karena ada indikasi kecurangan pemerintah kini dilaporkan telah menghentikannya.<br /><br />Terkait program penukaran tikus di kota Jakarta, semoga tidak bernasib sama dengan program di Shengzhou ini.</p>', 'thumbnail21.jpg', '2016-11-11', '2016-11-11 06:40:00', '2016-11-11 06:40:00'),
(54, 'Di Kota Ini, 50 Puntung Rokok Bisa Ditukar Sebungkus Tisu  0 1 2', 'di-kota-ini-50-puntung-rokok-bisa-ditukar-sebungkus-tisu-0-1-2', '<p><strong>Shengzhou,</strong> Kalau Pemerintah Kota Jakarta berencana menerima seekor tikus untuk ditukar dengan uang Rp 20 ribu, di kota ini ada kegiatan serupa yang telah berjalan. Bukan tikus yang ditukar, tapi puntung rokok yang ditukar dengan tisu.<br /><br />Adalah Pemerintah Kota Shengzhou, China, yang menggagas kegiatan ini. Dilaporkan oleh media setempat bahwa Dinas Kebersihan Kota Shengzhou menerima 50 puntung rokok bekas untuk ditukar dengan sebungkus tisu. Dalam tiga minggu kegiatan berjalan sudah ada 5 juta puntung yang terkumpul.<br /><br />Meski hadiah yang ditawarkan mungkin tampak seadanya, namun warga tetap antusias berbondong-bondong mencari puntung. Grup TV dan Radio Zhejiang melaporkan bahkan sampai terjadi antrean di luar kantor dinas kebersihan.<br /><br />Baca juga: <em><strong><span style="color: #ff0000;"><span style="color: #ff0000;">Klinik di Kota Kecil Ini Tawarkan Gaji Rp 5,8 M Setahun untuk Dokter Umum</span></span></strong></em><br /><br />Hanya saja menurut seorang petugas dari 5 juta puntung yang sudah terkumpul tak semua tampak seperti puntung bekas. Ada kecurigaan bahwa beberapa orang melakukan kecurangan sengaja mencari puntung rokok dengan cara lain bukan memungut dari jalan.<br /><br />"Banyak puntung rokok yang kami terima masih cukup bersih. Tidak ada tanda noda atau basah dan tampaknya tidak diambil langsung dari jalan. Kami tidak cukup yakin dari mana asal puntung rokok ini, jadi kami tak punya pilihan kecuali untuk menerima semua," ujar petugas tersebut kepada The Paper dan dikutip dari <em>BBC</em>, Rabu (26/10/2016).<br /><br />Program awalnya dibuat karena kota Shengzhou memang memiliki masalah kebersihan terkait puntung rokok. Namun karena ada indikasi kecurangan pemerintah kini dilaporkan telah menghentikannya.<br /><br />Terkait program penukaran tikus di kota Jakarta, semoga tidak bernasib sama dengan program di Shengzhou ini.</p>', 'thumbnail22.jpg', '2016-11-11', '2016-11-11 07:40:00', '2016-11-11 07:40:00'),
(55, 'Di Kota Ini, 50 Puntung Rokok Bisa Ditukar Sebungkus Tisu  0 1 2 3', 'di-kota-ini-50-puntung-rokok-bisa-ditukar-sebungkus-tisu-0-1-2-3', '<p><strong>Shengzhou,</strong> Kalau Pemerintah Kota Jakarta berencana menerima seekor tikus untuk ditukar dengan uang Rp 20 ribu, di kota ini ada kegiatan serupa yang telah berjalan. Bukan tikus yang ditukar, tapi puntung rokok yang ditukar dengan tisu.<br /><br />Adalah Pemerintah Kota Shengzhou, China, yang menggagas kegiatan ini. Dilaporkan oleh media setempat bahwa Dinas Kebersihan Kota Shengzhou menerima 50 puntung rokok bekas untuk ditukar dengan sebungkus tisu. Dalam tiga minggu kegiatan berjalan sudah ada 5 juta puntung yang terkumpul.<br /><br />Meski hadiah yang ditawarkan mungkin tampak seadanya, namun warga tetap antusias berbondong-bondong mencari puntung. Grup TV dan Radio Zhejiang melaporkan bahkan sampai terjadi antrean di luar kantor dinas kebersihan.<br /><br />Baca juga: <em><strong><span style="color: #ff0000;"><span style="color: #ff0000;">Klinik di Kota Kecil Ini Tawarkan Gaji Rp 5,8 M Setahun untuk Dokter Umum</span></span></strong></em><br /><br />Hanya saja menurut seorang petugas dari 5 juta puntung yang sudah terkumpul tak semua tampak seperti puntung bekas. Ada kecurigaan bahwa beberapa orang melakukan kecurangan sengaja mencari puntung rokok dengan cara lain bukan memungut dari jalan.<br /><br />"Banyak puntung rokok yang kami terima masih cukup bersih. Tidak ada tanda noda atau basah dan tampaknya tidak diambil langsung dari jalan. Kami tidak cukup yakin dari mana asal puntung rokok ini, jadi kami tak punya pilihan kecuali untuk menerima semua," ujar petugas tersebut kepada The Paper dan dikutip dari <em>BBC</em>, Rabu (26/10/2016).<br /><br />Program awalnya dibuat karena kota Shengzhou memang memiliki masalah kebersihan terkait puntung rokok. Namun karena ada indikasi kecurangan pemerintah kini dilaporkan telah menghentikannya.<br /><br />Terkait program penukaran tikus di kota Jakarta, semoga tidak bernasib sama dengan program di Shengzhou ini.</p>', 'thumbnail23.jpg', '2016-11-11', '2016-11-11 08:40:00', '2016-11-11 08:40:00'),
(56, 'Di Kota Ini, 50 Puntung Rokok Bisa Ditukar Sebungkus Tisu  0 1 2 3 4', 'di-kota-ini-50-puntung-rokok-bisa-ditukar-sebungkus-tisu-0-1-2-3-4', '<p><strong>Shengzhou,</strong> Kalau Pemerintah Kota Jakarta berencana menerima seekor tikus untuk ditukar dengan uang Rp 20 ribu, di kota ini ada kegiatan serupa yang telah berjalan. Bukan tikus yang ditukar, tapi puntung rokok yang ditukar dengan tisu.<br /><br />Adalah Pemerintah Kota Shengzhou, China, yang menggagas kegiatan ini. Dilaporkan oleh media setempat bahwa Dinas Kebersihan Kota Shengzhou menerima 50 puntung rokok bekas untuk ditukar dengan sebungkus tisu. Dalam tiga minggu kegiatan berjalan sudah ada 5 juta puntung yang terkumpul.<br /><br />Meski hadiah yang ditawarkan mungkin tampak seadanya, namun warga tetap antusias berbondong-bondong mencari puntung. Grup TV dan Radio Zhejiang melaporkan bahkan sampai terjadi antrean di luar kantor dinas kebersihan.<br /><br />Baca juga: <em><strong><span style="color: #ff0000;"><span style="color: #ff0000;">Klinik di Kota Kecil Ini Tawarkan Gaji Rp 5,8 M Setahun untuk Dokter Umum</span></span></strong></em><br /><br />Hanya saja menurut seorang petugas dari 5 juta puntung yang sudah terkumpul tak semua tampak seperti puntung bekas. Ada kecurigaan bahwa beberapa orang melakukan kecurangan sengaja mencari puntung rokok dengan cara lain bukan memungut dari jalan.<br /><br />"Banyak puntung rokok yang kami terima masih cukup bersih. Tidak ada tanda noda atau basah dan tampaknya tidak diambil langsung dari jalan. Kami tidak cukup yakin dari mana asal puntung rokok ini, jadi kami tak punya pilihan kecuali untuk menerima semua," ujar petugas tersebut kepada The Paper dan dikutip dari <em>BBC</em>, Rabu (26/10/2016).<br /><br />Program awalnya dibuat karena kota Shengzhou memang memiliki masalah kebersihan terkait puntung rokok. Namun karena ada indikasi kecurangan pemerintah kini dilaporkan telah menghentikannya.<br /><br />Terkait program penukaran tikus di kota Jakarta, semoga tidak bernasib sama dengan program di Shengzhou ini.</p>', 'thumbnail24.jpg', '2016-11-11', '2016-11-11 09:40:00', '2016-11-11 09:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `konten_categories`
--

CREATE TABLE `konten_categories` (
  `id` int(11) NOT NULL,
  `konten_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konten_categories`
--

INSERT INTO `konten_categories` (`id`, `konten_id`, `category_id`) VALUES
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(37, 37, 2),
(38, 38, 2),
(39, 39, 2),
(40, 40, 2),
(41, 41, 2),
(42, 42, 2),
(43, 43, 2),
(44, 44, 2),
(45, 45, 2),
(46, 46, 2),
(47, 47, 3),
(48, 48, 3),
(49, 49, 3),
(50, 50, 3),
(51, 51, 3),
(52, 52, 3),
(53, 53, 3),
(54, 54, 3),
(55, 55, 3),
(56, 56, 3);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text,
  `type` varchar(100) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `published_at` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `type`, `featured_image`, `status`, `published_at`, `user_id`, `created`, `modified`) VALUES
(1, 'Justice Department Sets Sights on Wall Street Executives', 'justice-department-sets-sights-on-wall-street-executives', '<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p> <p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. <br></p><p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p> <p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. <br></p><img src="/product/ci-blog/assets/uploads/9.jpg" height="331" width="789"><br><br><br>', 'post', 'assets/uploads/blur.jpg', 0, '2015-12-30', 1, '2015-12-25 01:29:57', '2015-12-26 20:40:38'),
(2, 'Uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla ', 'uis-aute-irure-dolor-in-reprehenderit-in-voluptate-velit-esse-cillum-dolore-eu-fugiat-nulla', '<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p> <p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. <br></p><br><img src="/product/ci-blog/assets/uploads/8.jpg" height="388" width="749"><br><br><p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p> <p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. <br></p><p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p> <p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p><br>', 'post', 'assets/uploads/blur.jpg', 1, '2015-12-17', 1, '2015-12-25 02:11:57', '2015-12-26 02:22:06'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br><br><img src="/product/ci-blog/assets/uploads/3.jpg" height="512" width="805"><br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br><br>', 'post', 'assets/uploads/3.jpg', 1, '2015-12-26', 9, '2015-12-26 02:42:38', '2015-12-26 16:37:03'),
(6, 'About Us', 'about-us', '<img src="/product/ci-blog/assets/uploads/3.jpg"><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam. Quisque semper justo at risus. Donec venenatis, turpis vel hendrerit interdum, dui ligula ultricies purus, sed posuere libero dui id orci. Nam congue, pede vitae dapibus aliquet, elit magna vulputate arcu, vel tempus metus leo non est. Etiam sit amet lectus quis est congue mollis. Phasellus congue lacus eget neque. Phasellus ornare, ante vitae consectetuer consequat, purus sapien ultricies dolor, et mollis pede metus eget nisi. Praesent sodales velit quis augue.<br><br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam. Quisque semper justo at risus. Donec venenatis, turpis vel hendrerit interdum, dui ligula ultricies purus, sed posuere libero dui id orci. Nam congue, pede vitae dapibus aliquet, elit magna vulputate arcu, vel tempus metus leo non est. Etiam sit amet lectus quis est congue mollis. Phasellus congue lacus eget neque. Phasellus ornare, ante vitae consectetuer consequat, purus sapien ultricies dolor, et mollis pede metus eget nisi. Praesent sodales velit quis augue. <br><br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam. Quisque semper justo at risus. Donec venenatis, turpis vel hendrerit interdum, dui ligula ultricies purus, sed posuere libero dui id orci. Nam congue, pede vitae dapibus aliquet, elit magna vulputate arcu, vel tempus metus leo non est. Etiam sit amet lectus quis est congue mollis. Phasellus congue lacus eget neque. Phasellus ornare, ante vitae consectetuer consequat, purus sapien ultricies dolor, et mollis pede metus eget nisi. Praesent sodales velit quis augue. <br><br>', 'page', '', 1, '2015-12-26', 1, '2015-12-26 19:08:39', '2015-12-27 01:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `post_id`, `tag_id`) VALUES
(5, 3, 1),
(6, 3, 6),
(7, 3, 7),
(8, 1, 7),
(9, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `status`) VALUES
(1, 'CodeIgniter', 'codeigniter', 1),
(2, 'Responsive', 'responsive', 1),
(3, 'basic cms', 'basic-cms', 1),
(4, 'tag baru', 'tag-baru', 1),
(5, 'Simple CMS', 'simple-cms', 1),
(6, 'Security Tips', 'security-tips', 1),
(7, 'Hack & DDOS', 'hack-ddos', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1480125243, 1, 'Admin', 'istrator', 'ADMIN', '0', 'admin.png'),
(11, '127.0.0.1', 'mintizam', '$2y$08$UPYO2SKwB33L.Pae8yGO1.MBqxlqgBJr/I5fHJxLLUTcZy28haal2', NULL, 'mintizam@gmail.com', NULL, NULL, NULL, NULL, 1479806928, 1479959671, 1, 'Muhammad', 'Intizam', NULL, NULL, 'default.png'),
(12, '127.0.0.1', 'hilmi123', '$2y$08$5CmUfNRdBal.fKFrARNUheCIFrgqzQ3WbWjKUuHDeug3Yq2w1JkJi', NULL, 'hilmi123@gmail.com', NULL, NULL, NULL, NULL, 1479861140, 1480082004, 1, 'Kharis', 'Ganteng', NULL, '', 'avatar1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(14, 11, 2),
(15, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_konten`
--

CREATE TABLE `user_konten` (
  `id` int(11) NOT NULL,
  `konten_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_konten`
--

INSERT INTO `user_konten` (`id`, `konten_id`, `user_id`) VALUES
(28, 28, 11),
(29, 29, 11),
(30, 30, 11),
(31, 31, 11),
(32, 32, 12),
(33, 33, 12),
(34, 34, 12),
(35, 35, 12),
(36, 36, 12),
(37, 37, 1),
(38, 38, 1),
(39, 39, 1),
(40, 40, 1),
(41, 41, 1),
(42, 42, 1),
(43, 43, 1),
(44, 44, 1),
(45, 45, 1),
(46, 46, 1),
(47, 47, 1),
(48, 48, 1),
(49, 49, 1),
(50, 50, 1),
(51, 51, 1),
(52, 52, 1),
(53, 53, 1),
(54, 54, 1),
(55, 55, 1),
(56, 56, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `judul` (`judul`);

--
-- Indexes for table `konten_categories`
--
ALTER TABLE `konten_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_categories_categories1` (`category_id`),
  ADD KEY `fk_posts_categories_posts1` (`konten_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_tags_tags1` (`tag_id`),
  ADD KEY `fk_posts_tags_posts1` (`post_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `user_konten`
--
ALTER TABLE `user_konten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `konten_id` (`konten_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `konten_categories`
--
ALTER TABLE `konten_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_konten`
--
ALTER TABLE `user_konten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `konten_categories`
--
ALTER TABLE `konten_categories`
  ADD CONSTRAINT `fk_posts_categories_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_posts_categories_posts1` FOREIGN KEY (`konten_id`) REFERENCES `konten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD CONSTRAINT `fk_posts_tags_posts1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_konten`
--
ALTER TABLE `user_konten`
  ADD CONSTRAINT `fk_user_konten_konten` FOREIGN KEY (`konten_id`) REFERENCES `konten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_konten_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
