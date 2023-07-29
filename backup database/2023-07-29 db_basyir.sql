/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427
 Source Host           : localhost:3306
 Source Schema         : db_basyir

 Target Server Type    : MySQL
 Target Server Version : 100427
 File Encoding         : 65001

 Date: 29/07/2023 15:48:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_amalan_yaumi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_amalan_yaumi`;
CREATE TABLE `tbl_amalan_yaumi`  (
  `id_amalan_yaumi` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul_amalan_yaumi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten_amalan_yaumi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_amalan_yaumi` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_amalan_yaumi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_amalan_yaumi
-- ----------------------------
INSERT INTO `tbl_amalan_yaumi` VALUES (1, 'Default Amalan Yaumi', '-', 1, '2023-07-29 11:44:55', '2023-07-29 11:44:55');
INSERT INTO `tbl_amalan_yaumi` VALUES (6, 'Infaq', 'Kata Infaq berasal dari kata anfaqo-yunfiqu, artinya membelanjakan atau membiayai, arti infaq menjadi khusus ketika dikaitkan dengan upaya realisasi perintah-perintah Allah. Menurut kamus bahasa Indonesia pengertian Infaq adalah mengeluarkan harta yang mencakup zakat dan non zakat. Sedangkan menurut terminologi syariat, pengertian infaq berarti mengeluarkan sebagian dari harta atau pendapatan/penghasilan untuk suatu kepentingan yang diperintahkan ajaran Islam. Infaq tidak harus diberikan kepada mustahik tertentu, melainkan kepada siapapun misalnya orang tua, kerabat, anak yatim, orang miskin, atau orang-orang yang sedang dalam perjalanan.', 1, '2023-05-21 15:31:34', '2023-07-28 21:05:03');
INSERT INTO `tbl_amalan_yaumi` VALUES (7, 'Al Matsurat', 'Al-Matsurat merupakan kumpulan zikir dan doa yang dikumpulkan oleh Imam Hasan Al-Banna yang diambil dari hadis-hadis Nabi Muhammad SAW. dan ayat-ayat Al-quran. Terdapat berbagai macam manfaat dan keutamaan dalam membaca Al-Matsurat di waktu pagi dan senja.', 1, '2023-05-21 15:31:34', '2023-05-21 15:31:34');
INSERT INTO `tbl_amalan_yaumi` VALUES (8, 'Qiyamullail', 'Qiyamul lail adalah amalan salat sunah yang dikerjakan malam hari misalnya salat tahajud, salat tarawih, salat witir, salat taubat, dan lain sebagainya. Berikut tata cara salat qiyamul lail di bulan Ramadan. Waktu mengerjakan salat qiyamul lail terbilang panjang. Salat qiyamul lail boleh dilakukan setelah salat Isya hingga waktu Subuh. Salat qiyamul lail seperti tarawih dan witir bisa dikerjakan tanpa harus tidur terlebih dahulu.', 1, '2023-05-21 15:31:34', '2023-05-21 15:31:34');
INSERT INTO `tbl_amalan_yaumi` VALUES (9, 'Muhasabah', 'Muhasabah adalah meneliti perbuatan kita pada masa lalu dan masa kini, apakah ia merupakan perbuatan baik atau perbuatan buruk. Dengan muhasabah diri, perbuatan baik pada masa lalu bisa ditingkatkan pada masa depan, baik kualitasnya maupun kuantitasnya. Dengan muhasabah, perbuatan buruk pada masa lalu tidak perlu diulangi pada masa yang akan datang.', 1, '2023-05-21 15:31:34', '2023-05-21 15:31:34');
INSERT INTO `tbl_amalan_yaumi` VALUES (10, 'Puasa Sunnah', 'Puasa sunnah merupakan puasa yang hukumnya sunnah atau tidak wajib. Seseorang yang menjalankan puasa sunnah akan mendapatkan pahala. Berikut beberapa macam puasa sunnah yang sering dijalankan Rasulullah SAW: Puasa Senin Kamis Puasa Arafah Puasa Daud Puasa Syaban', 1, '2023-05-21 15:31:34', '2023-05-21 15:31:34');
INSERT INTO `tbl_amalan_yaumi` VALUES (15, 'Tilawatil Kutub', '<p>Membaca kitab Jurumiyyah karya Syaikh Imam Abu Al-Jurumii</p>\r\n', 1, '2023-07-28 20:16:29', '2023-07-28 20:17:16');

-- ----------------------------
-- Table structure for tbl_berita
-- ----------------------------
DROP TABLE IF EXISTS `tbl_berita`;
CREATE TABLE `tbl_berita`  (
  `id_berita` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_kategori_berita` int(20) UNSIGNED NOT NULL,
  `id_user` int(20) UNSIGNED NOT NULL,
  `judul_berita` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_berita` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan_berita` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten_berita` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_berita` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_berita` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status_berita` int(1) NOT NULL DEFAULT 1 COMMENT '1 : Draft\r\n2 : Show\r\n3 : Archive\r\n4 : Reject',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_berita`) USING BTREE,
  INDEX `id_kategori_berita`(`id_kategori_berita`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tbl_berita_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_berita_ibfk_3` FOREIGN KEY (`id_kategori_berita`) REFERENCES `tbl_kategori_berita` (`id_kategori_berita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_berita
-- ----------------------------
INSERT INTO `tbl_berita` VALUES (34, 1, 5, '[POLBAN ISLAMIC FAIR 1444 H]', '1', '[POLBAN ISLAMIC FAIR 1444 H]', '[POLBAN ISLAMIC FAIR 1444 H]', 'assets/image/berita/Screenshot 2023-05-08 080252.png', 'https://www.youtube.com/watch?v=QuxydVd8nLU', 3, '2023-05-21 11:12:50', '2023-07-28 21:15:11');
INSERT INTO `tbl_berita` VALUES (35, 1, 5, '???? POLBAN ISLAMIC FAIR (PIF) 2022 ????', '2', '???? POLBAN ISLAMIC FAIR (PIF) 2022 ????', '???? POLBAN ISLAMIC FAIR (PIF) 2022 ????', 'assets/image/berita/Screenshot 2023-05-08 081500.png', '', 2, '2023-05-21 11:12:50', '2023-07-28 21:17:10');
INSERT INTO `tbl_berita` VALUES (36, 2, 5, '[ KAINS #1 ]', '3', '[ KAINS #1 ]', '[ KAINS #1 ]', 'assets/image/berita/Screenshot 2023-05-08 081644.png', '#', 2, '2023-05-21 11:12:50', '2023-05-22 07:40:49');
INSERT INTO `tbl_berita` VALUES (37, 2, 5, '[ KAJIAN INSPIRATIF IS BACK ]', '4', '[ KAJIAN INSPIRATIF IS BACK ]', '[ KAJIAN INSPIRATIF IS BACK ]', 'assets/image/berita/Screenshot 2023-05-08 082318.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (38, 1, 5, '[AL KAHFI-AN BARENG ASSALAM]', '5', '[AL KAHFI-AN BARENG ASSALAM]', '[AL KAHFI-AN BARENG ASSALAM]', 'assets/image/berita/Screenshot 2023-05-08 082431.png', '#', 2, '2023-05-21 11:12:50', '2023-05-26 03:17:01');
INSERT INTO `tbl_berita` VALUES (39, 1, 5, '[Jadwal Khutbah Jum\'at Masjid Luqmanul Hakim]', '6', '[Jadwal Khutbah Jum\'at Masjid Luqmanul Hakim]', '[Jadwal Khutbah Jum\'at Masjid Luqmanul Hakim]', 'assets/image/berita/Screenshot 2023-05-08 082524.png', '#', 2, '2023-05-21 11:12:50', '2023-05-26 03:17:11');
INSERT INTO `tbl_berita` VALUES (40, 2, 5, '[KAJIAN ENTERPRENEURSHIP 1.0]', '7', '[KAJIAN ENTERPRENEURSHIP 1.0]', '[KAJIAN ENTERPRENEURSHIP 1.0]', 'assets/image/berita/Screenshot 2023-05-08 082648.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (41, 2, 5, '[POLBAN ISLAMIC FAIR 1443H]', '8', '[POLBAN ISLAMIC FAIR 1443H]', '[POLBAN ISLAMIC FAIR 1443H]', 'assets/image/berita/Screenshot 2023-05-08 082726.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (42, 1, 5, '[SEMUSIM: SEMINAR KEMUSLIMAHAN 2021]', '9', '[SEMUSIM: SEMINAR KEMUSLIMAHAN 2021]', '[SEMUSIM: SEMINAR KEMUSLIMAHAN 2021]', 'assets/image/berita/Screenshot 2023-05-08 082822.png', '#', 3, '2023-05-21 11:12:50', '2023-05-27 10:23:02');
INSERT INTO `tbl_berita` VALUES (43, 1, 5, '[Tarawih & Free Takjil]', '10', '[Tarawih & Free Takjil]', '[Tarawih & Free Takjil]', 'assets/image/berita/Screenshot 2023-05-08 082930.png', '#', 4, '2023-05-21 11:12:50', '2023-05-27 10:22:33');
INSERT INTO `tbl_berita` VALUES (44, 2, 5, '✨ [KAJIAN ISLAMI DAN DO\'A BERSAMA SEBELUM UAS] ✨', '11', '✨ [KAJIAN ISLAMI DAN DO\'A BERSAMA SEBELUM UAS] ✨', '✨ [KAJIAN ISLAMI DAN DO\'A BERSAMA SEBELUM UAS] ✨', 'assets/image/berita/Screenshot 2023-05-08 083157.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (45, 2, 5, '✨ *KAJIAN KILAU RAMADHAN* ✨', '12', '✨ *KAJIAN KILAU RAMADHAN* ✨', '✨ *KAJIAN KILAU RAMADHAN* ✨', 'assets/image/berita/Screenshot 2023-05-08 083321.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (47, 1, 5, '✨KAJIAN KILAU RAMADHAN✨', '14', '✨KAJIAN KILAU RAMADHAN✨', '✨KAJIAN KILAU RAMADHAN✨', 'assets/image/berita/Screenshot 2023-05-08 083600.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (48, 2, 5, '????[SYILAH 3.0]????', '15', '????[SYILAH 3.0]????', '????[SYILAH 3.0]????', 'assets/image/berita/Screenshot 2023-05-08 083703.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (49, 2, 5, '???? SERUAN SHOLAT GERHANA BULAN TOTAL????', '16', '???? SERUAN SHOLAT GERHANA BULAN TOTAL????', '???? SERUAN SHOLAT GERHANA BULAN TOTAL????', 'assets/image/berita/Screenshot 2023-05-08 083752.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (50, 1, 5, '*[GRADASI 1.0 x Pembukaan Mentoring]*', '17', '*[GRADASI 1.0 x Pembukaan Mentoring]*', '*[GRADASI 1.0 x Pembukaan Mentoring]*', 'assets/image/berita/Screenshot 2023-05-08 083824.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (51, 1, 5, 'Kajian Inspiratif', '18', 'Kajian Inspiratif', 'Kajian Inspiratif', 'assets/image/berita/Screenshot 2023-05-08 083901.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (52, 2, 5, '???? LOMBA KILAU RAMADHAN 2022 ????', '19', '???? LOMBA KILAU RAMADHAN 2022 ????', '???? LOMBA KILAU RAMADHAN 2022 ????', 'assets/image/berita/Screenshot 2023-05-08 084004.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (53, 2, 5, 'Kilau Ramadhan', '20', 'Kilau Ramadhan', 'Kilau Ramadhan', 'assets/image/berita/Screenshot 2023-05-08 084020.png', '#', 1, '2023-05-21 11:12:50', '2023-05-21 11:12:50');
INSERT INTO `tbl_berita` VALUES (55, 2, 5, 'asd', 'as', 'sdf', 'df', 'we', 'wf', 1, '2023-05-21 19:28:28', '2023-05-21 19:28:28');
INSERT INTO `tbl_berita` VALUES (59, 2, 5, 'test manta', 'test_manta', 'etet', '<p>etetee</p>\r\n', 'assets/image/berita/Background_7.jpg', 'd', 1, '2023-05-21 19:32:39', '2023-05-21 20:21:21');
INSERT INTO `tbl_berita` VALUES (60, 1, 5, 'test kamu dan dai', 'test_kamu_dan_dai', 'asdasd asdas', '<p>asdasd dfsf</p>\r\n', 'assets/image/berita/Background_8.jpg', '', 1, '2023-05-21 20:19:07', '2023-05-21 20:19:07');
INSERT INTO `tbl_berita` VALUES (61, 2, 6, 'asdasd', 'asdasd', 'dasdasd', '<p>asdasdasd</p>\r\n', 'assets/image/berita/ico.png', 'asdasd', 1, '2023-07-27 16:31:22', '2023-07-27 16:31:22');
INSERT INTO `tbl_berita` VALUES (62, 1, 5, 'Syaikh Saman Al-Farisi Akan Menyambang Indonesia!', 'Syaikh_Saman_Al-Farisi_Akan_Menyambang_Indonesia!', 'Salah satu ulama Cibeureum akan menyambang ke tanah air.', '<p>Salah satu ulama Cibeureum akan menyambang ke tanah air pada hari sabtu besok yang bertepatan dengan tanggal 29-07-2023.</p>\r\n', 'assets/image/berita/Wallpapers 3.png', '-', 1, '2023-07-28 20:45:30', '2023-07-28 20:47:59');
INSERT INTO `tbl_berita` VALUES (63, 1, 6, 'sd', 'sd', 'sd', '<p>sd</p>\r\n', 'assets/image/berita/20230701_200227-removebg-previewn.png', '', 1, '2023-07-29 11:55:08', '2023-07-29 11:55:08');

-- ----------------------------
-- Table structure for tbl_detail_rencana_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_detail_rencana_kegiatan`;
CREATE TABLE `tbl_detail_rencana_kegiatan`  (
  `id_detail_rencana_kegiatan` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_rencana_kegiatan` int(20) UNSIGNED NOT NULL,
  `rencana_jadwal` datetime(0) NOT NULL,
  `realisasi_jadwal` datetime(0) DEFAULT NULL,
  `status_detail_rencana_kegiatan` int(1) NOT NULL DEFAULT 1 COMMENT '1 : belum dilakukan\r\n2 : sudah dilakukan',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_detail_rencana_kegiatan`) USING BTREE,
  INDEX `id_rencana_kegiatan`(`id_rencana_kegiatan`) USING BTREE,
  CONSTRAINT `tbl_detail_rencana_kegiatan_ibfk_1` FOREIGN KEY (`id_rencana_kegiatan`) REFERENCES `tbl_rencana_kegiatan` (`id_rencana_kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_detail_rencana_kegiatan
-- ----------------------------
INSERT INTO `tbl_detail_rencana_kegiatan` VALUES (23, 35, '2023-07-29 15:04:00', NULL, 1, '2023-07-29 15:10:58', '2023-07-29 15:10:58');
INSERT INTO `tbl_detail_rencana_kegiatan` VALUES (24, 36, '2023-07-29 15:11:00', '2023-07-29 08:35:25', 2, '2023-07-29 15:11:33', '2023-07-29 15:35:25');
INSERT INTO `tbl_detail_rencana_kegiatan` VALUES (25, 37, '2023-07-29 15:11:00', NULL, 1, '2023-07-29 15:11:47', '2023-07-29 15:11:47');
INSERT INTO `tbl_detail_rencana_kegiatan` VALUES (26, 38, '2023-07-29 20:11:00', '2023-07-29 08:35:13', 2, '2023-07-29 15:12:04', '2023-07-29 15:35:13');
INSERT INTO `tbl_detail_rencana_kegiatan` VALUES (27, 39, '2023-07-29 20:12:00', NULL, 1, '2023-07-29 15:12:20', '2023-07-29 15:12:20');

-- ----------------------------
-- Table structure for tbl_doa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_doa`;
CREATE TABLE `tbl_doa`  (
  `id_doa` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul_doa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan_doa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan_latin_doa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_doa` int(1) NOT NULL DEFAULT 1 COMMENT '0 : Hide\r\n1 : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_doa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_doa
-- ----------------------------
INSERT INTO `tbl_doa` VALUES (6, 'Ampunan dalam segala hal', 'اَللّهُمَّ اغْفِرْ لِيْ َيْءٍ قَدِيْرٌ.', 'Allahumma ghfir li ', 1, '2023-05-21 16:48:56', '2023-07-28 23:07:14');
INSERT INTO `tbl_doa` VALUES (7, 'Mohon Diperbaiki Segala Urusan', 'اَللَّـهُـَّم أَصْلِحْ لِي دِينِي الّذِي هُوَ', 'Allahumma aslih li dinī alladhī huwa ', 1, '2023-05-21 16:48:56', '2023-05-21 16:48:56');
INSERT INTO `tbl_doa` VALUES (8, 'Perlindungan dari Fitnah Kaya dan Fitnah Miskin', 'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الكَسَلِ وَالهَرَمِ،', 'Allahumma innī a\'ūdhu bika minal kasali wal harami', 1, '2023-05-21 16:48:56', '2023-05-21 16:48:56');
INSERT INTO `tbl_doa` VALUES (9, ' Perlindungan Dicabutnya Nikmat Lahir Batin', 'اللَّهُمَّ إِنِّى أَعُوذُ بِكَ مِنْ', 'Allahumma innī a\'ūdhu bika min ', 1, '2023-05-21 16:48:56', '2023-05-21 16:48:56');
INSERT INTO `tbl_doa` VALUES (10, 'Agar Dijauhkan dari Sifat Pengecut & Tidak Pikun', 'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ', 'Allahumma innī a\'ūdhu bika minal ', 1, '2023-05-21 16:48:56', '2023-05-21 16:48:56');
INSERT INTO `tbl_doa` VALUES (11, 'Berlindung dari Keburukan Amal', 'اللهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ مَا عَمِلْتُ،', 'Allahumma innī a\'ūdhu bika min sharri mā \'amiltu,', 1, '2023-05-21 16:48:56', '2023-05-21 16:48:56');
INSERT INTO `tbl_doa` VALUES (12, 'Agar Jiwanya Bertaqwa & Berlindung dari Ilmu yang tidak Manfaat', 'اللهُمَّ آتِ نَفْسِي تَقْوَاهَا، وَزَكِّهَا أَنْتَ خَيْرُ مَنْ زَكَّاهَا', 'Allahumma āti nafsī taqwāhā, wazakkihā anta khayru man zakkāhā', 1, '2023-05-21 16:48:56', '2023-05-21 16:48:56');
INSERT INTO `tbl_doa` VALUES (13, 'Dimudahkan Berbuat Baik & Mencintai Orang Miskin', 'اللَّهُمَّ إِنِّى أَسْأَلُكَ فِعْلَ الْخَيْرَاتِ ', 'Allahumma innī as\'aluka fi\'ala al-khayrāt, ', 1, '2023-05-21 16:48:56', '2023-05-21 16:48:56');
INSERT INTO `tbl_doa` VALUES (14, ' Mohon Kebaikan dalam Segala Hal yang Pernah Diminta Nabi', 'اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنَ الْخَيْرِ كُلِّهِ', 'Allahumma innī as\'aluka min al-khayri kullihi ', 1, '2023-05-21 16:48:56', '2023-05-21 16:48:56');

-- ----------------------------
-- Table structure for tbl_doa_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_doa_detail`;
CREATE TABLE `tbl_doa_detail`  (
  `id_doa_detail` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_doa` int(20) UNSIGNED NOT NULL,
  `konten_doa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten_latin_doa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_doa_detail` int(1) NOT NULL DEFAULT 1 COMMENT '0 : Hide\r\n1  : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_doa_detail`) USING BTREE,
  INDEX `doa_detail_id_doa_foreign`(`id_doa`) USING BTREE,
  CONSTRAINT `tbl_doa_detail_ibfk_1` FOREIGN KEY (`id_doa`) REFERENCES `tbl_doa` (`id_doa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_doa_detail
-- ----------------------------
INSERT INTO `tbl_doa_detail` VALUES (48, 6, 'اَللّهُمَّ اغْفِرْ لِيْ خَطِيْئَتِيْ، وَجَهْلِيْ، وَإِسْرَافِيْ فِي أَمْرِيْ، وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّيْ. اللّهُمَّ اغْفِرْ لِيْ جَدِّيْ وَهَزْلِيْ، وَخَطَئِيْ وَعَمْدِيْ، وَكُلُّ ذلِكَ عِنْدِيْ، اللّهُمَّ اغْفِرْ لِيْ مَا قَدَّمْتُ، وَمَا أَخَّرْتُ، وَمَا أَسْرَرْتُ، وَمَا أَعْلَنْتُ، وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّيْ، أَنْتَ الْمُقَدِّمُ، وَأَنْتَ الْمُؤَخِّرُ، وَأَنْتَ عَلَى كُلِّ شَيْءٍ قَدِيْرٌ.\r\n', 'Allahumma ghfir li khathī\'atī, wa jahlī, wa isrāfī fī amrī, wa mā anta a\'lamu bihi minnī. Allahumma ghfir li jaddī wa hazlī, wa khathā\'ī wa \'amdī, wa kullu dhālika \'indī. Allahumma ghfir li mā qaddamtu, wa mā akhkhartu, wa mā asrartu, wa mā a\'lantu, wa mā anta a\'lamu bihi minnī, anta almuqaddimu, wa anta almu\'akhkhiru, wa anta \'alā kulli shay\'in qadīr\r\n', 1, '2023-05-21 16:52:27', '2023-07-29 00:26:49');
INSERT INTO `tbl_doa_detail` VALUES (49, 7, 'اَللَّـهُـَّم أَصْلِحْ لِي دِينِي الّذِي هُوَ عِصْمَةُ أَمْرِي، وَأَصْلِحْ لِي دُنْيَايَ الّتِي فِيهَا مَعَاشِي، وَأَصْلِحْ لِي آخِرَتِي الّتِي فِيهَا مَعَادِي، وَاجْعَلِ الْحَيَاةَ زِيَادَةً لِي فِي كُلِّ خَيْرٍ، وَاجْعَلِ الْمَوْتَ رَاحَةً لِي مِنْ كُلِّ شَرٍّ\r\n', 'Allahumma aslih li dinī alladhī huwa \'ismatu amrī, wa aslih li dunyāyallatī fīhā ma\'āshī, wa aslih li ākhiratī allatī fīhā ma\'ādī, waj\'al al-hayāta ziyādatan li fī kulli khayr, waj\'al al-mawta rāhatan li min kulli shar.\r\n', 1, '2023-05-21 16:52:54', '2023-05-21 16:52:54');
INSERT INTO `tbl_doa_detail` VALUES (50, 8, '\"اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الكَسَلِ وَالهَرَمِ، وَالمَأْثَمِ وَالمَغْرَمِ، وَمِنْ فِتْنَةِ القَبْرِ، وَعَذَابِ القَبْرِ، وَمِنْ فِتْنَةِ النَّارِ وَعَذَابِ النَّارِ، وَمِنْ شَرِّ فِتْنَةِ الغِنَى، وَأَعُوذُ بِكَ مِنْ فِتْنَةِ الفَقْرِ، وَأَعُوذُ بِكَ مِنْ فِتْنَةِ الَمسِيحِ الدَّجَّال\r\n\"\r\n', 'Allahumma innī a\'ūdhu bika mina al-kasali wal harami, wal ma\'sami wal maghrami, wa min fitnati al-qabri, wa \'adhabi al-qabri, wa min fitnati al-nari wa \'adhabi al-nari, wa min sharri fitnati al-ghinā, wa a\'ūdhu bika min fitnati al-faqr, wa a\'ūdhu bika min fitnati al-masīhi al-dajjāl', 1, '2023-05-21 16:53:19', '2023-05-21 16:57:09');
INSERT INTO `tbl_doa_detail` VALUES (51, 9, 'اللَّهُمَّ إِنِّى أَعُوذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ وَتَحَوُّلِ عَافِيَتِكَ وَفُجَاءَةِ نِقْمَتِكَ وَجَمِيعِ سَخَطِكَ\r\n', 'Allahumma innī a\'ūdhu bika min zawāli ni\'matika wa tahawwuli \'āfiyatika wa fujā\'ati niqmatika wa jamī\'i sakhatika\r\n', 1, '2023-05-21 16:54:00', '2023-05-21 16:54:00');
INSERT INTO `tbl_doa_detail` VALUES (52, 10, 'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْجُبْنِ، وَأَعُوذُ بِكَ أَنْ أُرَدَّ إِلَى أَرْذَلِ الْعُمُرِ، وَأَعُوذُ بِكَ مِنْ فِتْنَةِ الدُّنْيَا، وَأَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ\r\n', 'Allahumma innī a\'ūdhu bika minal jubni, wa a\'ūdhu bika an uradda ila ardhalil \'umur, wa a\'ūdhu bika min fitnatid dunyā, wa a\'ūdhu bika min \'adhabil qabr\r\n', 1, '2023-05-21 16:54:19', '2023-05-21 16:54:19');
INSERT INTO `tbl_doa_detail` VALUES (53, 11, 'اللهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ مَا عَمِلْتُ، وَشَرِّ مَا لَمْ أَعْمَل\r\n', 'Allahumma innī a\'ūdhu bika min sharri mā \'amiltu, wa sharri mā lam a\'amal.\r\n', 1, '2023-05-21 16:54:35', '2023-05-21 16:54:35');
INSERT INTO `tbl_doa_detail` VALUES (54, 12, 'اللهُمَّ آتِ نَفْسِي تَقْوَاهَا، وَزَكِّهَا أَنْتَ خَيْرُ مَنْ زَكَّاهَا، أَنْتَ وَلِيُّهَا وَمَوْلَاهَا، اللهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عِلْمٍ لَا يَنْفَعُ، وَمِنْ قَلْبٍ لَا يَخْشَعُ، وَمِنْ نَفْسٍ لَا تَشْبَعُ، وَمِنْ دَعْوَةٍ لَا يُسْتَجَابُ لَهَا\r\n', 'Allahumma āti nafsī taqwāhā, wazakkihā anta khayru man zakkāhā, anta waliyyuhā wa mawlāhā. Allahumma innī a\'ūdhu bika min \'ilmin lā yanfa\'u, wa min qalbin lā yakhsha\'u, wa min nafsin lā tasba\'u, wa min da\'watil lā yustajābu lahā\r\n', 1, '2023-05-21 16:54:55', '2023-05-21 16:54:55');
INSERT INTO `tbl_doa_detail` VALUES (55, 13, 'اللَّهُمَّ إِنِّى أَسْأَلُكَ فِعْلَ الْخَيْرَاتِ وَتَرْكَ الْمُنْكَرَاتِ وَحُبَّ الْمَسَاكِينِ وَأَنْ تَغْفِرَ لِى وَتَرْحَمَنِى وَإِذَا أَرَدْتَ فِتْنَةَ قَوْمٍ فَتَوَفَّنِى غَيْرَ مَفْتُونٍ\r\n', 'Allahumma innī as\'aluka fi\'ala al-khayrāt, wa tarka al-munkarāt, wa hubba al-masākīn, wa an taghfira lī wa tarhamanī, wa idhā aradta fitnata qawmin fatawaffanī ghayra maf\'tūn.\r\n', 1, '2023-05-21 16:56:28', '2023-05-21 16:56:28');
INSERT INTO `tbl_doa_detail` VALUES (56, 14, 'اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنَ الْخَيْرِ كُلِّهِ عَاجِلِهِ وَآجِلِهِ، مَا عَلِمْتُ مِنْهُ وَمَا لَمْ أَعْلَمْ، وَأَعُوذُ بِكَ مِنَ الشَّرِّ كُلِّهِ عَاجِلِهِ وَآجِلِهِ، مَا عَلِمْتُ مِنْهُ وَمَا لَمْ أَعْلَمْ، اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ خَيْرِ مَا سَأَلَكَ عَبْدُكَ وَنَبِيُّكَ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا عَاذَ بِهِ عَبْدُكَ وَنَبِيُّكَ، اللَّهُمَّ إِنِّي أَسْأَلُكَ الْجَنَّةَ وَمَا قَرَّبَ إِلَيْهَا مِنْ قَوْلٍ أَوْ عَمَلٍ، وَأَعُوذُ بِكَ مِنَ النَّارِ وَمَا قَرَّبَ إِلَيْهَا مِنْ قَوْلٍ أَوْ عَمَلٍ، وَأَسْأَلُكَ أَنْ تَجْعَلَ كُلَّ قَضَاءٍ قَضَيْتَهُ لِي خَيْرًا\r\n', 'Allahumma innī as\'aluka min al-khayri kullihi \'ājilihi wa ājilihi, mā \'alimtu minhu wa mā lam a\'lam. Wa a\'ūdhu bika mina al-sharri kullihi \'ājilihi wa ājilihi, mā \'alimtu minhu wa mā lam a\'lam. Allahumma innī as\'aluka min khayri mā sa\'alaka \'abduka wa nabiyyuka, wa a\'ūdhu bika min sharri mā \'ādha bihi \'abduka wa nabiyyuka. Allahumma innī as\'aluka al-jannata wa mā qarriba ilayhā min qawlin aw \'amalin, wa a\'ūdhu bika mina al-nāri wa mā qarriba ilayhā min qawlin aw \'amalin, wa as\'aluka an taj\'al kulla qadā\'in qadaytahu lī khayran.\r\n', 1, '2023-05-21 16:56:51', '2023-05-21 16:56:51');
INSERT INTO `tbl_doa_detail` VALUES (58, 6, 'asd', 'asd', 1, '2023-07-28 23:16:36', '2023-07-29 00:25:18');

-- ----------------------------
-- Table structure for tbl_kategori_berita
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori_berita`;
CREATE TABLE `tbl_kategori_berita`  (
  `id_kategori_berita` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kategori_berita` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_kategori_berita` int(1) NOT NULL DEFAULT 1 COMMENT '0 : Hide\r\n1 : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_kategori_berita`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori_berita
-- ----------------------------
INSERT INTO `tbl_kategori_berita` VALUES (1, 'Berita Harian', 1, '2023-05-21 10:47:53', '2023-05-21 19:05:30');
INSERT INTO `tbl_kategori_berita` VALUES (2, 'Peringatan Hari besar', 1, '2023-05-21 10:48:11', '2023-05-21 19:05:31');
INSERT INTO `tbl_kategori_berita` VALUES (5, 'Jumat Berkah1', 0, '2023-07-28 21:09:59', '2023-07-29 00:50:53');

-- ----------------------------
-- Table structure for tbl_kategori_wawasan_islami
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori_wawasan_islami`;
CREATE TABLE `tbl_kategori_wawasan_islami`  (
  `id_kategori_wawasan_islami` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kategori_wawasan_islami` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_kategori_wawasan_islami` int(1) NOT NULL DEFAULT 1 COMMENT '0 : Hide\r\n1 : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_kategori_wawasan_islami`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori_wawasan_islami
-- ----------------------------
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (11, 'Aqidah (Keimanan)', 1, '2023-05-21 10:51:35', '2023-07-29 01:18:36');
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (12, 'Fiqh (Hukum Islam)', 1, '2023-05-21 10:51:35', '2023-05-21 10:51:35');
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (13, 'Tasawuf (Mistik Islam)', 1, '2023-05-21 10:51:35', '2023-05-21 10:51:35');
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (14, 'Sejarah dan Biografi', 1, '2023-05-21 10:51:35', '2023-05-21 10:51:35');
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (15, 'Tafsir (Penafsiran Al-Qur\'an)', 1, '2023-05-21 10:51:35', '2023-05-21 10:51:35');
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (16, 'Hadis (Tradisi Nabi)', 1, '2023-05-21 10:51:35', '2023-05-21 10:51:35');
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (17, 'Etika dan Moral', 1, '2023-05-21 10:51:35', '2023-05-21 10:51:35');
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (18, 'Ilmu Pengetahuan dan Kehidupan', 1, '2023-05-21 10:51:35', '2023-05-21 10:51:35');
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (19, 'Dakwah dan Komunikasi', 1, '2023-05-21 10:51:35', '2023-05-21 10:51:35');
INSERT INTO `tbl_kategori_wawasan_islami` VALUES (20, 'Sosial dan Kemanusiaan', 1, '2023-05-21 10:51:35', '2023-05-21 10:51:35');

-- ----------------------------
-- Table structure for tbl_kutipan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kutipan`;
CREATE TABLE `tbl_kutipan`  (
  `id_kutipan` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul_kutipan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_kutipan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_kutipan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_kutipan` int(1) NOT NULL DEFAULT 1 COMMENT '0 : Hide\r\n1 : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_kutipan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kutipan
-- ----------------------------
INSERT INTO `tbl_kutipan` VALUES (21, 'Islami', 'Allah tidak akan pernah membebani seseorang melainkan sesuai dengan kesanggupannya,', 'Q.S. Al-Baqarah (2:286)', 1, '2023-05-21 11:06:44', '2023-05-21 16:58:37');
INSERT INTO `tbl_kutipan` VALUES (22, 'Islami', '“Dan janganlah kamu merasa lemah, dan jangan pula (kamu merasa) bersedih hati. Sebab, kamu paling tinggi derajatnya jika kamu (termasuk) orang yang beriman', 'Q.S. Al-Imran (3:139)', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (23, 'Islami', 'Dan Dia Allah akan memberi manusia rezeki dari arah yang tak disangka-sangka. Dan barangsiapa yang bertawakal kepada Allah, niscaya Allah ‘kan cukupkan (keperluan)nya. Sungguh, Allah melaksanakan urusan-Nya (menepati janji-Nya),', 'Q.S At-Talaq (65:3).', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (24, 'Islami', 'Wahai orang-orang yang beriman! Mohonlah pertolongan kepada Allah dengan sabar dan shalat. Sungguh, Allah (akan selalu) bersama orang-orang yang sabar,', 'Q.S Al-Baqarah (2:153).', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (25, 'Islami', 'Juallah kehidupanmu saat ini untuk kehidupanmu selanjutnya, akhirat, niscaya kamu akan mendapatkan keduanya. Tetapi, jika kamu menjual kehidupan selanjutnya untuk kehidupan saat ini, maka kamu akan kehilangan keduanya,', 'Hasan Al-Basri', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (26, 'Islami', '“Dunia ini ibarat bayangan. Jika kamu berusaha menangkapnya, dia akan lari. Tetapi, jika kamu membelakanginya, maka dia tak punya pilihan selain untuk mengikutimu,', '\"Ibnu Qayyim.', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (29, 'Islami', 'Keikhlasan adalah rahasia antara Allah dengan hamba-Nya. Bahkan, malaikat pencatat pun tidak dapat mengetahui hal itu barang sedikit guna dituliskannya dalam catatan amal. Setan juga tidak mengetahui sehingga dia tidak bisa merusaknya, nafsu pun tidak menyadari sehingga ia tidak bisa mempengaruhinya', 'Junayd Al-Baghdadi', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (30, 'Islami', 'Terkadang Allah akan membiarkanmu merasakan pahitnya kehidupan dunia, sehingga kamu dapat menghargai dan mencicipi manisnya iman,', 'Omar Suleiman.', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (31, 'Islami', 'Nasibmu telah ditulis oleh tinta cinta-Nya. Kemudian disegel dengan rahmat-Nya. Jadi tak perlu takut, percayakanlah dirimu kepada-Nya dan berharaplah pada segala ketetapan-Nya', 'Gems of Jannah', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (32, 'Islami', 'Allah selalu menjawab doamu dengan tiga cara. Pertama, langsung mengabulkannya. Kedua, menundanya. Ketiga, menggantinya dengan yang lebih baik untukmu', 'Anonim', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (33, 'Islami', 'Jika apa yang kamu harapkan tidak terjadi, maka kamu harus mencoba untuk menyukai apa-apa yang sedang terjadi', 'Anonim', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (34, 'Islami', 'Takutlah pada Allah karena hukumannya. Cintai Dia, karena Allah sangat penuh dengan belas kasihan,', 'Anonim', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (35, 'Islami', 'Allah menjadikanmu seorang Muslim karena ingin melihatmu berada di surga-Nya. Dan yang perlu kamu lakukan adalah menunjukkan jika kamu pantas untuk itu', 'Anonim', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (36, 'Islami', 'Setiap kamu akan tidur, cobalah untuk mulai merenung. Apakah langkahmu hari ini sudah membuatmu semakin dekat dengan Allah? Atau malah sebaliknya, membuatmu semakin jauh dari Allah?”', 'Anonim', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (37, 'Islami', 'Ketika rasa sakit hatimu membuatmu jatuh, ingatlah Allah melihat semuanya dan sedang merencanakan hal baik lainnya', 'Anonim', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (38, 'Islami', 'Petunjuk tidak bisa dicapai kecuali oleh pengetahuan. Dan, arah tujuan yang benar tidak akan bisa dituju kecuali dengan kesabaran', 'Anonim', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (39, 'Islami', 'Teruslah berusaha dengan harapan apa yang kamu impikan. Dan janganlah lupa untuk mendampingi usaha tersebut dengan kesabaran serta keikhlasan', 'Anonim', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (40, 'Islami', 'Setelah kamu memohon bimbingan menuju jalan yang lurus kepada Allah, maka jangan hanya berdiri di tempat. Mulailah melangkah', 'Anonim', 1, '2023-05-21 11:06:44', '2023-05-21 11:06:44');
INSERT INTO `tbl_kutipan` VALUES (41, 'Motivasi Pagi', 'Jangan Lupa Bersedekah', 'Hamba Allah', 1, '2023-05-22 14:59:41', '2023-05-22 14:59:41');
INSERT INTO `tbl_kutipan` VALUES (42, 'Islami', 'Allah tidak akan pernah membebani seseorang melainkan sesuai dengan kesanggupannya hamba', 'Hamba Allah', 1, '2023-05-26 03:21:28', '2023-05-26 03:21:28');
INSERT INTO `tbl_kutipan` VALUES (43, 'Manunggaling', 'Manunggaling kawulo gusti', 'Rivan', 1, '2023-07-28 21:50:37', '2023-07-28 21:50:37');

-- ----------------------------
-- Table structure for tbl_notifikasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notifikasi`;
CREATE TABLE `tbl_notifikasi`  (
  `id_notifikasi` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul_notifikasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pesan_notifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gambar_notifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `link_tujuan_notifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_notifikasi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_notifikasi
-- ----------------------------
INSERT INTO `tbl_notifikasi` VALUES (2, 'sdf', 'sdf', 'assets/image/notifikasi/Group 1_4.png', 'sdf', '2023-05-22 09:16:37', '2023-05-25 14:47:08');
INSERT INTO `tbl_notifikasi` VALUES (3, 'Test Judul', 'Test pesan', 'assets/image/notifikasi/Group 1_4.png', '/asdasd/asdasd', '2023-05-25 14:44:05', '2023-05-25 14:47:06');
INSERT INTO `tbl_notifikasi` VALUES (4, 'dfgdfg', 'dgdfgdf', 'assets/image/notifikasi/Group 1_4.png', 'gdfgdfgdfg', '2023-05-25 14:45:21', '2023-05-25 14:45:21');
INSERT INTO `tbl_notifikasi` VALUES (5, 'sdfdsf', 'sdfdsfds', NULL, 'fdsfdsfsdf', '2023-05-25 14:56:12', '2023-05-25 14:56:12');
INSERT INTO `tbl_notifikasi` VALUES (6, 'sdfgds', 'dfgfdg', NULL, 'dfgdfgdfg', '2023-05-25 14:56:17', '2023-05-25 14:56:17');
INSERT INTO `tbl_notifikasi` VALUES (8, 'Mood Pagi', 'Sangat Mood', NULL, '/asdasd/asdasd', '2023-05-25 19:07:55', '2023-05-25 19:07:55');
INSERT INTO `tbl_notifikasi` VALUES (9, 'tset uy', 'etst asdasdasdasd', NULL, 'asdasdasdass', '2023-05-25 22:30:57', '2023-05-25 22:30:57');
INSERT INTO `tbl_notifikasi` VALUES (10, 'sdfdsfdsf', 'dsfdsfds', NULL, 'fdsfdsfdsf', '2023-05-25 22:45:56', '2023-05-25 22:45:56');
INSERT INTO `tbl_notifikasi` VALUES (11, 'Mood Sore', 'Jangan lupa bersedekah sekarang', NULL, '/sedekah', '2023-05-25 22:53:39', '2023-05-25 22:53:39');
INSERT INTO `tbl_notifikasi` VALUES (12, 'Mood Sore hari', 'Jangan lupa bersedekah sekarang ya', NULL, '/sedekah', '2023-05-25 22:54:21', '2023-05-25 22:54:21');
INSERT INTO `tbl_notifikasi` VALUES (13, 'mood pagi besok', 'uhuy', 'assets/image/notifikasi/Group 1_5.png', 'fdsfdsfsdfds', '2023-05-25 22:56:43', '2023-05-25 22:56:43');
INSERT INTO `tbl_notifikasi` VALUES (14, 'test buat besok', 'sdfdsf', NULL, 'sfdsf', '2023-05-25 22:58:18', '2023-05-25 22:58:18');
INSERT INTO `tbl_notifikasi` VALUES (15, 'fghfghfg', 'fghfghfg', NULL, 'fghfghfghfgh', '2023-05-25 22:58:41', '2023-05-25 22:58:41');
INSERT INTO `tbl_notifikasi` VALUES (16, 'Yuk Baca Doa', 'اَللّهُمَّ اغْفِرْ لِيْ َيْءٍ قَدِيْرٌ', NULL, '/doa', '2023-05-26 03:23:37', '2023-05-26 03:23:37');
INSERT INTO `tbl_notifikasi` VALUES (17, 'Yuk Lakukan Rencana Ibadahmu', 'Qiyamullail', NULL, 'http://localhost:8080/rencana_kegiatan', '2023-05-26 22:58:40', '2023-05-26 22:58:40');
INSERT INTO `tbl_notifikasi` VALUES (18, 'Yuk Lakukan Rencana Ibadahmu', 'Infaq', NULL, 'http://localhost:8080/rencana_kegiatan', '2023-05-26 23:17:46', '2023-05-26 23:17:46');
INSERT INTO `tbl_notifikasi` VALUES (19, 'Yuk Lakukan Rencana Ibadahmu', 'Al Matsurat', NULL, 'http://localhost:8080/rencana_kegiatan', '2023-05-26 23:18:30', '2023-05-26 23:18:30');
INSERT INTO `tbl_notifikasi` VALUES (20, 'Yuk Lakukan Rencana Ibadahmu', 'Tilawah', NULL, 'http://localhost:8080/rencana_kegiatan', '2023-05-27 00:11:42', '2023-05-27 00:11:42');
INSERT INTO `tbl_notifikasi` VALUES (21, 'Yuk Lakukan Rencana Ibadahmu', 'Puasa Sunnah', NULL, 'http://localhost:8080/rencana_kegiatan', '2023-05-27 00:46:02', '2023-05-27 00:46:02');
INSERT INTO `tbl_notifikasi` VALUES (22, 'Yuk Lakukan Rencana Ibadahmu', 'Muhasabah', NULL, 'http://localhost:8080/rencana_kegiatan', '2023-05-27 00:59:53', '2023-05-27 00:59:53');
INSERT INTO `tbl_notifikasi` VALUES (23, 'Yuk Lakukan Rencana Ibadahmu', 'Muhasabah', NULL, 'http://localhost:8080/rencana_kegiatan', '2023-05-27 01:00:43', '2023-05-27 01:00:43');
INSERT INTO `tbl_notifikasi` VALUES (24, 'Yuk Lakukan Rencana Ibadahmu', 'Tilawah', NULL, 'http://localhost:8080/rencana_kegiatan', '2023-05-27 01:01:05', '2023-05-27 01:01:05');
INSERT INTO `tbl_notifikasi` VALUES (25, 'Mood Pagi', 'Jangan Lupa senyum, karena senyum adalah ibadah', NULL, 'https://basyir.bradabagus.com/', '2023-05-27 10:27:31', '2023-05-27 10:27:31');
INSERT INTO `tbl_notifikasi` VALUES (26, 'Jumat Ceria', 'Yu sedekah hari jumat', NULL, '#', '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_notifikasi` VALUES (27, 'Malam', 'Jangan lupa shalat malam', NULL, '/doa', '2023-07-28 22:06:56', '2023-07-28 22:06:56');
INSERT INTO `tbl_notifikasi` VALUES (28, 'Reminder for Admin', 'Admin benerin tampilan dashboard ya!', NULL, '/home', '2023-07-28 22:18:30', '2023-07-28 22:18:30');
INSERT INTO `tbl_notifikasi` VALUES (29, 'Malam Hamba Tuhan', 'Jangan lupa shalat malam', NULL, '/home', '2023-07-28 22:20:05', '2023-07-28 22:20:05');
INSERT INTO `tbl_notifikasi` VALUES (30, 'Yuk Lakukan Rencana Ibadahmu', 'Infaq', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 03:08:41', '2023-07-29 03:08:41');
INSERT INTO `tbl_notifikasi` VALUES (31, 'Yuk Lakukan Rencana Ibadahmu', 'Puasa Sunnah', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 12:42:01', '2023-07-29 12:42:01');
INSERT INTO `tbl_notifikasi` VALUES (32, 'Yuk Lakukan Rencana Ibadahmu', 'Puasa Sunnah', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 12:48:23', '2023-07-29 12:48:23');
INSERT INTO `tbl_notifikasi` VALUES (33, 'Yuk Lakukan Rencana Ibadahmu', 'Infaq', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 12:48:39', '2023-07-29 12:48:39');
INSERT INTO `tbl_notifikasi` VALUES (34, 'Yuk Lakukan Rencana Ibadahmu', 'Infaq', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 12:51:29', '2023-07-29 12:51:29');
INSERT INTO `tbl_notifikasi` VALUES (35, 'Yuk Lakukan Rencana Ibadahmu', 'Default Amalan Yaumi', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 13:04:35', '2023-07-29 13:04:35');
INSERT INTO `tbl_notifikasi` VALUES (36, 'Yuk Lakukan Rencana Ibadahmu', 'Infaq', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 13:10:08', '2023-07-29 13:10:08');
INSERT INTO `tbl_notifikasi` VALUES (37, 'Yuk Lakukan Rencana Ibadahmu', 'Default Amalan Yaumi', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 13:10:34', '2023-07-29 13:10:34');
INSERT INTO `tbl_notifikasi` VALUES (38, 'Yuk Lakukan Rencana Ibadahmu', 'Muhasabah', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 13:10:56', '2023-07-29 13:10:56');
INSERT INTO `tbl_notifikasi` VALUES (39, 'Yuk Lakukan Rencana Ibadahmu', 'Al Matsurat', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 13:53:40', '2023-07-29 13:53:40');
INSERT INTO `tbl_notifikasi` VALUES (40, 'Yuk Lakukan Rencana Ibadahmu', 'Infaq', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 13:53:54', '2023-07-29 13:53:54');
INSERT INTO `tbl_notifikasi` VALUES (41, 'Yuk Lakukan Rencana Ibadahmu', 'Al Matsurat', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 13:54:52', '2023-07-29 13:54:52');
INSERT INTO `tbl_notifikasi` VALUES (42, 'Yuk Lakukan Rencana Ibadahmu', 'Default Amalan Yaumi', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 15:10:58', '2023-07-29 15:10:58');
INSERT INTO `tbl_notifikasi` VALUES (43, 'Yuk Lakukan Rencana Ibadahmu', 'Default Amalan Yaumi', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 15:11:33', '2023-07-29 15:11:33');
INSERT INTO `tbl_notifikasi` VALUES (44, 'Yuk Lakukan Rencana Ibadahmu', 'Default Amalan Yaumi', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 15:11:47', '2023-07-29 15:11:47');
INSERT INTO `tbl_notifikasi` VALUES (45, 'Yuk Lakukan Rencana Ibadahmu', 'Infaq', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 15:12:04', '2023-07-29 15:12:04');
INSERT INTO `tbl_notifikasi` VALUES (46, 'Yuk Lakukan Rencana Ibadahmu', 'Infaq', NULL, 'http://192.168.225.107:8082/rencana_kegiatan', '2023-07-29 15:12:20', '2023-07-29 15:12:20');

-- ----------------------------
-- Table structure for tbl_rekap_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rekap_kegiatan`;
CREATE TABLE `tbl_rekap_kegiatan`  (
  `id_rekap_kegiatan` int(20) NOT NULL AUTO_INCREMENT,
  `id_amalan_yaumi` int(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  `total_dilakukan` int(20) NOT NULL,
  `total_belum_dilakukan` int(20) NOT NULL,
  PRIMARY KEY (`id_rekap_kegiatan`) USING BTREE,
  INDEX `id_amalan_yaumi`(`id_amalan_yaumi`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_rekap_kegiatan
-- ----------------------------
INSERT INTO `tbl_rekap_kegiatan` VALUES (1, 1, 8, 1, 2);
INSERT INTO `tbl_rekap_kegiatan` VALUES (2, 6, 8, 1, 1);

-- ----------------------------
-- Table structure for tbl_rencana_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rencana_kegiatan`;
CREATE TABLE `tbl_rencana_kegiatan`  (
  `id_rencana_kegiatan` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_amalan_yaumi` int(20) UNSIGNED NOT NULL,
  `id_user` int(20) UNSIGNED NOT NULL,
  `status_rencana_kegiatan` int(1) NOT NULL DEFAULT 1 COMMENT '0 : Hide\r\n1 : Show',
  `keterangan_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_rencana_kegiatan`) USING BTREE,
  INDEX `rencana_kegiatan_id_user_foreign`(`id_user`) USING BTREE,
  INDEX `rencana_kegiatan_id_amalan_yaumi_foreign`(`id_amalan_yaumi`) USING BTREE,
  CONSTRAINT `tbl_rencana_kegiatan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_rencana_kegiatan_ibfk_2` FOREIGN KEY (`id_amalan_yaumi`) REFERENCES `tbl_amalan_yaumi` (`id_amalan_yaumi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_rencana_kegiatan
-- ----------------------------
INSERT INTO `tbl_rencana_kegiatan` VALUES (35, 1, 8, 1, 'sdfgdfgdfg', '2023-07-29 15:10:58', '2023-07-29 15:10:58');
INSERT INTO `tbl_rencana_kegiatan` VALUES (36, 1, 8, 1, 'test', '2023-07-29 15:11:33', '2023-07-29 15:11:33');
INSERT INTO `tbl_rencana_kegiatan` VALUES (37, 1, 8, 1, 'testetst', '2023-07-29 15:11:47', '2023-07-29 15:11:47');
INSERT INTO `tbl_rencana_kegiatan` VALUES (38, 6, 8, 1, NULL, '2023-07-29 15:12:04', '2023-07-29 15:12:04');
INSERT INTO `tbl_rencana_kegiatan` VALUES (39, 6, 8, 1, NULL, '2023-07-29 15:12:20', '2023-07-29 15:12:20');

-- ----------------------------
-- Table structure for tbl_review
-- ----------------------------
DROP TABLE IF EXISTS `tbl_review`;
CREATE TABLE `tbl_review`  (
  `id_review` int(20) NOT NULL AUTO_INCREMENT,
  `reviewer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pekerjaan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bintang` int(1) NOT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_review` int(1) NOT NULL DEFAULT 1 COMMENT '0 : hide 1:Show',
  `gambar_reviewer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_review`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_review
-- ----------------------------
INSERT INTO `tbl_review` VALUES (1, 'Jenny Deo', 'CEO', 3, 'Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu eirmod tempor invidunt labore.Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu.', 1, 'assets/images/author-1.png', '2023-05-26 13:03:03', '2023-07-29 10:42:28');
INSERT INTO `tbl_review` VALUES (2, 'David Smith', 'CTO, Alphabet', 5, 'Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu eirmod tempor invidunt labore.Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu.', 1, 'assets/images/author-3.png', '2023-05-26 13:24:21', '2023-05-26 13:24:21');
INSERT INTO `tbl_review` VALUES (3, 'Fajar Siddiq', 'CTO, MakerFlix', 5, 'Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu eirmod tempor invidunt labore.Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu.', 1, 'assets/images/author-2.png', '2023-05-26 13:24:56', '2023-05-26 13:24:56');
INSERT INTO `tbl_review` VALUES (4, 'Panji Deo', 'CEO', 3, 'Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu eirmod tempor invidunt labore.Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu.', 1, 'assets/images/author-1.png', '2023-05-26 13:25:49', '2023-05-26 13:25:59');
INSERT INTO `tbl_review` VALUES (5, 'Bager Smith', 'CTO, Alphabet', 5, 'Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu eirmod tempor invidunt labore.Lorem ipsum dolor sit amet,consetetur sadipscing elitr, seddiam nonu.', 1, 'assets/images/author-3.png', '2023-05-26 13:25:49', '2023-05-26 13:26:02');
INSERT INTO `tbl_review` VALUES (7, 'Rivan Rivaldo', 'Mahasiwa', 4, 'test', 0, 'assets/image/review/download (2).jpg', '2023-05-26 13:48:07', '2023-05-26 13:52:47');

-- ----------------------------
-- Table structure for tbl_saran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_saran`;
CREATE TABLE `tbl_saran`  (
  `id_saran` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pesan_saran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_saran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_saran
-- ----------------------------
INSERT INTO `tbl_saran` VALUES (6, 'website nya menarik', '2023-05-21 11:06:00', '2023-05-21 11:06:00');
INSERT INTO `tbl_saran` VALUES (7, 'test', '2023-05-21 11:06:00', '2023-05-21 11:06:00');
INSERT INTO `tbl_saran` VALUES (8, 'test', '2023-05-21 11:06:00', '2023-05-21 11:06:00');
INSERT INTO `tbl_saran` VALUES (9, 'testv lagi', '2023-05-21 11:06:00', '2023-05-21 11:06:00');
INSERT INTO `tbl_saran` VALUES (10, 'testv lagi', '2023-05-21 11:06:00', '2023-05-21 11:06:00');

-- ----------------------------
-- Table structure for tbl_target_notifikasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_target_notifikasi`;
CREATE TABLE `tbl_target_notifikasi`  (
  `id_target_notifikasi` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_notifikasi` int(20) UNSIGNED NOT NULL,
  `id_user` int(20) UNSIGNED NOT NULL,
  `jadwal_notifikasi` datetime(0) DEFAULT NULL,
  `jenis_notifikasi` int(1) NOT NULL DEFAULT 1 COMMENT '1 : Belum Dibaca\r\n2 : Sudah Dibaca',
  `status_notifikasi` int(1) NOT NULL DEFAULT 1 COMMENT '0 : Hide\r\n1 : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_target_notifikasi`) USING BTREE,
  INDEX `id_notifikasi`(`id_notifikasi`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tbl_target_notifikasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_target_notifikasi_ibfk_2` FOREIGN KEY (`id_notifikasi`) REFERENCES `tbl_notifikasi` (`id_notifikasi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_target_notifikasi
-- ----------------------------
INSERT INTO `tbl_target_notifikasi` VALUES (1, 9, 5, '0000-00-00 00:00:00', 2, 1, '2023-07-27 15:56:18', '2023-07-27 15:56:18');
INSERT INTO `tbl_target_notifikasi` VALUES (2, 9, 7, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:30:57', '2023-05-25 22:30:57');
INSERT INTO `tbl_target_notifikasi` VALUES (3, 9, 8, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:30:57', '2023-05-25 22:30:57');
INSERT INTO `tbl_target_notifikasi` VALUES (4, 9, 10, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:30:57', '2023-05-25 22:30:57');
INSERT INTO `tbl_target_notifikasi` VALUES (5, 9, 11, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:30:57', '2023-05-25 22:30:57');
INSERT INTO `tbl_target_notifikasi` VALUES (6, 9, 12, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:30:57', '2023-05-25 22:30:57');
INSERT INTO `tbl_target_notifikasi` VALUES (7, 10, 5, '2023-05-25 22:35:00', 2, 1, '2023-05-26 03:07:19', '2023-05-26 03:07:19');
INSERT INTO `tbl_target_notifikasi` VALUES (8, 10, 6, '2023-05-25 22:35:00', 1, 1, '2023-05-25 23:34:01', '2023-05-25 23:34:01');
INSERT INTO `tbl_target_notifikasi` VALUES (9, 10, 7, '2023-05-25 22:35:00', 1, 1, '2023-05-25 22:45:56', '2023-05-25 22:45:56');
INSERT INTO `tbl_target_notifikasi` VALUES (10, 10, 8, '2023-05-25 22:35:00', 1, 1, '2023-05-25 22:45:56', '2023-05-25 22:45:56');
INSERT INTO `tbl_target_notifikasi` VALUES (11, 10, 10, '2023-05-25 22:35:00', 1, 1, '2023-05-25 22:45:56', '2023-05-25 22:45:56');
INSERT INTO `tbl_target_notifikasi` VALUES (12, 10, 11, '2023-05-25 22:35:00', 1, 1, '2023-05-25 22:45:56', '2023-05-25 22:45:56');
INSERT INTO `tbl_target_notifikasi` VALUES (14, 11, 5, '0000-00-00 00:00:00', 2, 1, '2023-05-26 03:07:18', '2023-05-26 03:07:18');
INSERT INTO `tbl_target_notifikasi` VALUES (15, 11, 6, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:53:39', '2023-05-25 22:53:39');
INSERT INTO `tbl_target_notifikasi` VALUES (16, 11, 7, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:53:39', '2023-05-25 22:53:39');
INSERT INTO `tbl_target_notifikasi` VALUES (17, 11, 8, '0000-00-00 00:00:00', 2, 1, '2023-05-26 17:14:29', '2023-05-26 17:14:29');
INSERT INTO `tbl_target_notifikasi` VALUES (18, 11, 10, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:53:39', '2023-05-25 22:53:39');
INSERT INTO `tbl_target_notifikasi` VALUES (19, 11, 11, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:53:39', '2023-05-25 22:53:39');
INSERT INTO `tbl_target_notifikasi` VALUES (20, 11, 12, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:53:39', '2023-05-25 22:53:39');
INSERT INTO `tbl_target_notifikasi` VALUES (21, 12, 5, '0000-00-00 00:00:00', 2, 1, '2023-05-26 03:06:26', '2023-05-26 03:06:26');
INSERT INTO `tbl_target_notifikasi` VALUES (22, 12, 6, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:54:21', '2023-05-25 22:54:21');
INSERT INTO `tbl_target_notifikasi` VALUES (23, 12, 7, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:54:21', '2023-05-25 22:54:21');
INSERT INTO `tbl_target_notifikasi` VALUES (24, 12, 8, '0000-00-00 00:00:00', 2, 1, '2023-05-26 17:14:28', '2023-05-26 17:14:28');
INSERT INTO `tbl_target_notifikasi` VALUES (25, 12, 10, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:54:21', '2023-05-25 22:54:21');
INSERT INTO `tbl_target_notifikasi` VALUES (26, 12, 11, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:54:21', '2023-05-25 22:54:21');
INSERT INTO `tbl_target_notifikasi` VALUES (27, 12, 12, '0000-00-00 00:00:00', 1, 1, '2023-05-25 22:54:21', '2023-05-25 22:54:21');
INSERT INTO `tbl_target_notifikasi` VALUES (28, 13, 6, '2023-05-27 02:00:00', 1, 1, '2023-05-25 22:56:43', '2023-05-25 22:56:43');
INSERT INTO `tbl_target_notifikasi` VALUES (29, 13, 7, '2023-05-27 02:00:00', 1, 1, '2023-05-25 22:56:43', '2023-05-25 22:56:43');
INSERT INTO `tbl_target_notifikasi` VALUES (30, 13, 8, '2023-05-27 02:00:00', 1, 1, '2023-05-25 22:56:43', '2023-05-25 22:56:43');
INSERT INTO `tbl_target_notifikasi` VALUES (31, 13, 10, '2023-05-27 02:00:00', 1, 1, '2023-05-25 22:56:43', '2023-05-25 22:56:43');
INSERT INTO `tbl_target_notifikasi` VALUES (32, 13, 11, '2023-05-27 02:00:00', 1, 1, '2023-05-25 22:56:44', '2023-05-25 22:56:44');
INSERT INTO `tbl_target_notifikasi` VALUES (33, 13, 12, '2023-05-27 02:00:00', 1, 1, '2023-05-25 22:56:44', '2023-05-25 22:56:44');
INSERT INTO `tbl_target_notifikasi` VALUES (34, 14, 6, '2023-05-27 02:03:00', 1, 1, '2023-05-25 22:58:18', '2023-05-25 22:58:18');
INSERT INTO `tbl_target_notifikasi` VALUES (35, 14, 7, '2023-05-27 02:03:00', 1, 1, '2023-05-25 22:58:18', '2023-05-25 22:58:18');
INSERT INTO `tbl_target_notifikasi` VALUES (36, 15, 6, NULL, 1, 1, '2023-05-25 22:58:41', '2023-05-25 22:58:41');
INSERT INTO `tbl_target_notifikasi` VALUES (37, 15, 7, NULL, 1, 1, '2023-05-25 22:58:41', '2023-05-25 22:58:41');
INSERT INTO `tbl_target_notifikasi` VALUES (38, 10, 12, NULL, 1, 1, '2023-05-26 00:29:52', '2023-05-26 00:29:52');
INSERT INTO `tbl_target_notifikasi` VALUES (39, 10, 11, '2023-05-26 04:30:00', 1, 1, '2023-05-26 00:30:08', '2023-05-26 00:30:08');
INSERT INTO `tbl_target_notifikasi` VALUES (40, 10, 8, NULL, 1, 1, '2023-05-26 00:30:47', '2023-05-26 00:30:47');
INSERT INTO `tbl_target_notifikasi` VALUES (41, 10, 10, NULL, 1, 1, '2023-05-26 00:30:47', '2023-05-26 00:30:47');
INSERT INTO `tbl_target_notifikasi` VALUES (42, 10, 11, NULL, 1, 1, '2023-05-26 00:30:47', '2023-05-26 00:30:47');
INSERT INTO `tbl_target_notifikasi` VALUES (43, 10, 12, NULL, 1, 1, '2023-05-26 00:30:47', '2023-05-26 00:30:47');
INSERT INTO `tbl_target_notifikasi` VALUES (44, 10, 5, NULL, 2, 1, '2023-05-26 03:07:20', '2023-05-26 03:07:20');
INSERT INTO `tbl_target_notifikasi` VALUES (45, 10, 8, '2023-05-26 00:31:00', 1, 1, '2023-05-26 00:31:02', '2023-05-26 00:31:02');
INSERT INTO `tbl_target_notifikasi` VALUES (46, 10, 10, '2023-05-26 00:31:00', 1, 1, '2023-05-26 00:31:02', '2023-05-26 00:31:02');
INSERT INTO `tbl_target_notifikasi` VALUES (47, 10, 11, '2023-05-26 00:31:00', 1, 1, '2023-05-26 00:31:02', '2023-05-26 00:31:02');
INSERT INTO `tbl_target_notifikasi` VALUES (48, 10, 12, '2023-05-26 00:31:00', 1, 1, '2023-05-26 00:31:02', '2023-05-26 00:31:02');
INSERT INTO `tbl_target_notifikasi` VALUES (49, 10, 6, '2023-05-26 00:31:00', 1, 1, '2023-05-26 00:31:02', '2023-05-26 00:31:02');
INSERT INTO `tbl_target_notifikasi` VALUES (50, 16, 8, NULL, 2, 1, '2023-05-26 17:11:17', '2023-05-26 17:11:17');
INSERT INTO `tbl_target_notifikasi` VALUES (51, 16, 10, NULL, 1, 1, '2023-05-26 03:23:37', '2023-05-26 03:23:37');
INSERT INTO `tbl_target_notifikasi` VALUES (52, 16, 11, NULL, 1, 1, '2023-05-26 03:23:37', '2023-05-26 03:23:37');
INSERT INTO `tbl_target_notifikasi` VALUES (53, 16, 12, NULL, 1, 1, '2023-05-26 03:23:37', '2023-05-26 03:23:37');
INSERT INTO `tbl_target_notifikasi` VALUES (54, 17, 13, '2023-05-30 07:00:00', 1, 1, '2023-05-26 22:58:40', '2023-05-26 22:58:40');
INSERT INTO `tbl_target_notifikasi` VALUES (55, 18, 13, '2023-06-02 23:17:00', 1, 1, '2023-05-26 23:17:46', '2023-05-26 23:17:46');
INSERT INTO `tbl_target_notifikasi` VALUES (56, 19, 13, '2023-06-10 23:18:00', 1, 1, '2023-05-26 23:18:30', '2023-05-26 23:18:30');
INSERT INTO `tbl_target_notifikasi` VALUES (57, 20, 13, '2023-05-29 00:11:00', 1, 1, '2023-05-27 00:11:42', '2023-05-27 00:11:42');
INSERT INTO `tbl_target_notifikasi` VALUES (58, 21, 13, '2023-05-28 00:45:00', 1, 1, '2023-05-27 00:46:02', '2023-05-27 00:46:02');
INSERT INTO `tbl_target_notifikasi` VALUES (59, 22, 13, '2023-05-29 00:59:00', 1, 1, '2023-05-27 00:59:53', '2023-05-27 00:59:53');
INSERT INTO `tbl_target_notifikasi` VALUES (60, 23, 13, '2023-05-30 01:00:00', 1, 1, '2023-05-27 01:00:43', '2023-05-27 01:00:43');
INSERT INTO `tbl_target_notifikasi` VALUES (61, 24, 13, '2023-05-30 01:01:00', 1, 1, '2023-05-27 01:01:05', '2023-05-27 01:01:05');
INSERT INTO `tbl_target_notifikasi` VALUES (62, 25, 5, NULL, 2, 1, '2023-05-27 10:33:19', '2023-05-27 10:33:19');
INSERT INTO `tbl_target_notifikasi` VALUES (63, 25, 6, NULL, 1, 1, '2023-05-27 10:27:31', '2023-05-27 10:27:31');
INSERT INTO `tbl_target_notifikasi` VALUES (64, 25, 7, NULL, 1, 1, '2023-05-27 10:27:31', '2023-05-27 10:27:31');
INSERT INTO `tbl_target_notifikasi` VALUES (65, 25, 14, NULL, 1, 1, '2023-05-27 10:27:31', '2023-05-27 10:27:31');
INSERT INTO `tbl_target_notifikasi` VALUES (66, 25, 8, NULL, 1, 1, '2023-05-27 10:27:31', '2023-05-27 10:27:31');
INSERT INTO `tbl_target_notifikasi` VALUES (67, 25, 10, NULL, 1, 1, '2023-05-27 10:27:31', '2023-05-27 10:27:31');
INSERT INTO `tbl_target_notifikasi` VALUES (68, 25, 11, NULL, 1, 1, '2023-05-27 10:27:31', '2023-05-27 10:27:31');
INSERT INTO `tbl_target_notifikasi` VALUES (69, 25, 12, NULL, 1, 1, '2023-05-27 10:27:31', '2023-05-27 10:27:31');
INSERT INTO `tbl_target_notifikasi` VALUES (70, 25, 13, NULL, 1, 1, '2023-05-27 10:27:31', '2023-05-27 10:27:31');
INSERT INTO `tbl_target_notifikasi` VALUES (71, 25, 8, '2023-05-31 13:30:00', 1, 1, '2023-05-27 10:29:47', '2023-05-27 10:29:47');
INSERT INTO `tbl_target_notifikasi` VALUES (72, 25, 10, '2023-05-31 13:30:00', 1, 1, '2023-05-27 10:29:47', '2023-05-27 10:29:47');
INSERT INTO `tbl_target_notifikasi` VALUES (73, 25, 11, '2023-05-31 13:30:00', 1, 1, '2023-05-27 10:29:47', '2023-05-27 10:29:47');
INSERT INTO `tbl_target_notifikasi` VALUES (74, 25, 12, '2023-05-31 13:30:00', 1, 1, '2023-05-27 10:29:47', '2023-05-27 10:29:47');
INSERT INTO `tbl_target_notifikasi` VALUES (75, 25, 13, '2023-05-31 13:30:00', 1, 1, '2023-05-27 10:29:47', '2023-05-27 10:29:47');
INSERT INTO `tbl_target_notifikasi` VALUES (76, 25, 7, '2023-05-31 13:30:00', 1, 1, '2023-05-27 10:29:47', '2023-05-27 10:29:47');
INSERT INTO `tbl_target_notifikasi` VALUES (77, 2, 5, NULL, 2, 1, '2023-07-27 15:56:31', '2023-07-27 15:56:31');
INSERT INTO `tbl_target_notifikasi` VALUES (78, 2, 7, NULL, 1, 1, '2023-07-27 15:06:36', '2023-07-27 15:06:36');
INSERT INTO `tbl_target_notifikasi` VALUES (79, 26, 5, NULL, 1, 1, '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_target_notifikasi` VALUES (80, 26, 6, NULL, 1, 1, '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_target_notifikasi` VALUES (81, 26, 7, NULL, 1, 1, '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_target_notifikasi` VALUES (82, 26, 14, NULL, 1, 1, '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_target_notifikasi` VALUES (83, 26, 8, NULL, 1, 1, '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_target_notifikasi` VALUES (84, 26, 10, NULL, 1, 1, '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_target_notifikasi` VALUES (85, 26, 11, NULL, 1, 1, '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_target_notifikasi` VALUES (86, 26, 12, NULL, 1, 1, '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_target_notifikasi` VALUES (87, 26, 13, NULL, 1, 1, '2023-07-28 13:41:36', '2023-07-28 13:41:36');
INSERT INTO `tbl_target_notifikasi` VALUES (88, 27, 8, NULL, 1, 1, '2023-07-28 22:06:56', '2023-07-28 22:06:56');
INSERT INTO `tbl_target_notifikasi` VALUES (89, 27, 10, NULL, 1, 1, '2023-07-28 22:06:56', '2023-07-28 22:06:56');
INSERT INTO `tbl_target_notifikasi` VALUES (90, 27, 11, NULL, 1, 1, '2023-07-28 22:06:56', '2023-07-28 22:06:56');
INSERT INTO `tbl_target_notifikasi` VALUES (91, 27, 12, NULL, 1, 0, '2023-07-28 22:15:20', '2023-07-28 22:15:20');
INSERT INTO `tbl_target_notifikasi` VALUES (92, 27, 13, NULL, 1, 1, '2023-07-28 22:06:57', '2023-07-28 22:06:57');
INSERT INTO `tbl_target_notifikasi` VALUES (93, 28, 5, NULL, 2, 1, '2023-07-28 22:18:47', '2023-07-28 22:18:47');
INSERT INTO `tbl_target_notifikasi` VALUES (94, 29, 8, NULL, 1, 1, '2023-07-28 22:20:05', '2023-07-28 22:20:05');
INSERT INTO `tbl_target_notifikasi` VALUES (95, 29, 10, NULL, 1, 1, '2023-07-28 22:20:05', '2023-07-28 22:20:05');
INSERT INTO `tbl_target_notifikasi` VALUES (96, 29, 11, NULL, 1, 1, '2023-07-28 22:20:05', '2023-07-28 22:20:05');
INSERT INTO `tbl_target_notifikasi` VALUES (97, 29, 12, NULL, 1, 1, '2023-07-28 22:20:05', '2023-07-28 22:20:05');
INSERT INTO `tbl_target_notifikasi` VALUES (98, 29, 13, NULL, 1, 1, '2023-07-28 22:20:05', '2023-07-28 22:20:05');
INSERT INTO `tbl_target_notifikasi` VALUES (99, 2, 8, NULL, 1, 1, '2023-07-28 23:43:33', '2023-07-28 23:43:33');
INSERT INTO `tbl_target_notifikasi` VALUES (101, 2, 11, NULL, 1, 1, '2023-07-28 23:43:33', '2023-07-28 23:43:33');
INSERT INTO `tbl_target_notifikasi` VALUES (103, 2, 13, NULL, 1, 1, '2023-07-29 02:27:53', '2023-07-29 02:27:53');
INSERT INTO `tbl_target_notifikasi` VALUES (105, 30, 12, '2023-08-04 12:00:00', 1, 1, '2023-07-29 03:08:41', '2023-07-29 03:08:41');
INSERT INTO `tbl_target_notifikasi` VALUES (106, 31, 12, '2023-07-29 12:41:00', 1, 1, '2023-07-29 12:42:01', '2023-07-29 12:42:01');
INSERT INTO `tbl_target_notifikasi` VALUES (107, 32, 8, '2023-07-29 12:49:00', 1, 1, '2023-07-29 12:48:23', '2023-07-29 12:48:23');
INSERT INTO `tbl_target_notifikasi` VALUES (108, 33, 8, '2023-07-29 12:50:00', 1, 1, '2023-07-29 12:48:39', '2023-07-29 12:48:39');
INSERT INTO `tbl_target_notifikasi` VALUES (109, 34, 8, '2023-07-29 12:53:00', 1, 1, '2023-07-29 12:51:29', '2023-07-29 12:51:29');
INSERT INTO `tbl_target_notifikasi` VALUES (110, 35, 8, '2023-07-29 13:06:00', 1, 1, '2023-07-29 13:04:35', '2023-07-29 13:04:35');
INSERT INTO `tbl_target_notifikasi` VALUES (111, 36, 8, '2023-07-29 13:12:00', 1, 1, '2023-07-29 13:10:08', '2023-07-29 13:10:08');
INSERT INTO `tbl_target_notifikasi` VALUES (112, 37, 8, '2023-07-29 13:12:00', 1, 1, '2023-07-29 13:10:34', '2023-07-29 13:10:34');
INSERT INTO `tbl_target_notifikasi` VALUES (113, 38, 8, '2023-07-29 13:12:00', 1, 1, '2023-07-29 13:10:56', '2023-07-29 13:10:56');
INSERT INTO `tbl_target_notifikasi` VALUES (114, 39, 8, '2023-07-29 13:55:00', 1, 1, '2023-07-29 13:53:40', '2023-07-29 13:53:40');
INSERT INTO `tbl_target_notifikasi` VALUES (115, 40, 8, '2023-07-29 14:59:00', 1, 1, '2023-07-29 13:53:54', '2023-07-29 13:53:54');
INSERT INTO `tbl_target_notifikasi` VALUES (116, 41, 8, '2023-07-29 14:00:00', 1, 1, '2023-07-29 13:54:52', '2023-07-29 13:54:52');
INSERT INTO `tbl_target_notifikasi` VALUES (117, 42, 8, '2023-07-29 15:04:00', 1, 1, '2023-07-29 15:10:58', '2023-07-29 15:10:58');
INSERT INTO `tbl_target_notifikasi` VALUES (118, 43, 8, '2023-07-29 15:11:00', 1, 1, '2023-07-29 15:11:33', '2023-07-29 15:11:33');
INSERT INTO `tbl_target_notifikasi` VALUES (119, 44, 8, '2023-07-29 15:11:00', 1, 1, '2023-07-29 15:11:47', '2023-07-29 15:11:47');
INSERT INTO `tbl_target_notifikasi` VALUES (120, 45, 8, '2023-07-29 20:11:00', 1, 1, '2023-07-29 15:12:04', '2023-07-29 15:12:04');
INSERT INTO `tbl_target_notifikasi` VALUES (121, 46, 8, '2023-07-29 20:12:00', 1, 1, '2023-07-29 15:12:20', '2023-07-29 15:12:20');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` int(1) NOT NULL COMMENT '1 : Administrator\r\n2 : Kontributor\r\n3 : Kreator\r\n4 : User',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_activated` datetime(0) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0 : Not Activated\r\n1 : Active\r\n2 : Banned',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (5, 1, 'Administrator', 'administrator@basyir.com', NULL, '$2y$10$cRiCbenozktoB6CTUbEwvedILEdJhwTXxhuTheFnIbhplAALYH7/G', 1, '2023-05-21 12:09:00', '2023-05-21 22:51:20');
INSERT INTO `tbl_user` VALUES (6, 2, 'Kontributor', 'kontributor@basyir.com', NULL, '$2y$10$qJuz8CGwLwXtPAQ9r/zIW.DjFInUjlK8hDWJSV6EkYonDnxLdKFPa', 1, '2023-05-21 12:09:00', '2023-05-27 10:35:32');
INSERT INTO `tbl_user` VALUES (7, 3, 'Kreator', 'kreator@basyir.com', NULL, '$2y$10$qJuz8CGwLwXtPAQ9r/zIW.DjFInUjlK8hDWJSV6EkYonDnxLdKFPa', 1, '2023-05-21 12:09:00', '2023-05-21 14:34:13');
INSERT INTO `tbl_user` VALUES (8, 4, 'User', 'user@basyir.com', NULL, '$2y$10$qJuz8CGwLwXtPAQ9r/zIW.DjFInUjlK8hDWJSV6EkYonDnxLdKFPa', 1, '2023-05-21 12:09:00', '2023-05-22 11:24:48');
INSERT INTO `tbl_user` VALUES (10, 4, 'salman', 'salmanitb@gmail.com', NULL, '$2y$10$8G2u2zg4cMwoiI27kqERt.WiW66LmefGIoHpKC0sFDhIXCvjhdK1.', 0, '2023-05-22 12:26:41', '2023-05-22 12:26:41');
INSERT INTO `tbl_user` VALUES (11, 4, 'asdas', 'asd@gmail.com', NULL, '$2y$10$bwof/t8/5fGfhNgEzCX0Quu3ZOa6glAmsOzOdyTENmpGBz/2nJhRu', 0, '2023-05-22 12:27:24', '2023-05-22 12:27:24');
INSERT INTO `tbl_user` VALUES (12, 4, 'Rizqi', 'rizqi@gmail.com', '2023-05-22 14:58:27', '$2y$10$ezYE6FciHQyE3vtLPVV80ez0RYFXed.jxXMl23JhDy2hBH4r1z8cG', 1, '2023-05-22 14:57:38', '2023-05-26 22:15:47');
INSERT INTO `tbl_user` VALUES (13, 4, 'test', 'test@basyir.com', '2023-05-26 22:27:20', '$2y$10$crZEcyrbMMKZJ28Jwjrrd.udP9KLENGXW0bSSgopjjIriteWj7rUC', 1, '2023-05-26 22:21:47', '2023-05-26 22:27:20');
INSERT INTO `tbl_user` VALUES (14, 3, 'sfdsfs', 'sdfs@dsfsf.bvom', NULL, '$2y$10$dDbqOU2hluf1S3HyJb9Pm.3Q9CL3bH/9PaVbx.cv7/DndfS2KLp1m', 0, '2023-05-26 22:23:01', '2023-05-26 22:27:15');
INSERT INTO `tbl_user` VALUES (15, 4, 'Muhammad RIvan Rivaldi', 'muhammad.rivan.tif21@polban.ac.id', NULL, '$2y$10$jbPJ.wXymx/Z5mggcnUVh.b0FNfyDxNK4ZwlqnEu4rvZN1DzFXZjq', 0, '2023-07-29 01:06:25', '2023-07-29 01:06:25');
INSERT INTO `tbl_user` VALUES (16, 4, 'Rivan', 'rivanmuhammad220203@gmail.com', NULL, '$2y$10$/2/SNICPvlXXw02JnrFwqeQtKvZGk8501Gcm8mRlsEGPa2cPXOLy6', 0, '2023-07-29 01:14:27', '2023-07-29 01:14:27');

-- ----------------------------
-- Table structure for tbl_wawasan_islami
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wawasan_islami`;
CREATE TABLE `tbl_wawasan_islami`  (
  `id_wawasan_islami` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_kategori_wawasan_islami` int(20) UNSIGNED NOT NULL,
  `id_user` int(20) UNSIGNED NOT NULL,
  `judul_wawasan_islami` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_wawasan_islami` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan_wawasan_islami` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten_wawasan_islami` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_wawasan_islami` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_wawasan_islami` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status_wawasan_islami` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_wawasan_islami`) USING BTREE,
  INDEX `id_kategori_wawasan_islami`(`id_kategori_wawasan_islami`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tbl_wawasan_islami_ibfk_1` FOREIGN KEY (`id_kategori_wawasan_islami`) REFERENCES `tbl_kategori_wawasan_islami` (`id_kategori_wawasan_islami`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_wawasan_islami_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_wawasan_islami
-- ----------------------------
INSERT INTO `tbl_wawasan_islami` VALUES (16, 13, 5, 'Indahnya Gambaran Surga yang Dijanjikan Allah SWT dalam Alquran', 'Indahnya_Gambaran_Surga_yang_Dijanjikan_Allah_SWT_dalam_Alquran', 'Gambaran surga sejatinya sudah diberikan oleh Allah SWT melalui firmannya di dalam Alquran. Tempat tersebut dikatakan sebagai tempat yang nyaman dan tanpa penderitaan. Tak heran, banyak orang mendambakan untuk menjadi salah satu penghuninya kelak.', '<p>Indahnya Gambaran Surga yang Dijanjikan Allah SWT dalam Alquran</p>\r\n', 'assets/image/wawasan_islami/Screenshot 2023-05-08 092011.png', 'https://www.youtube.com/watch?v=QuxydVd8nLU', 1, '2023-05-21 11:11:08', '2023-07-29 11:15:23');
INSERT INTO `tbl_wawasan_islami` VALUES (17, 11, 5, 'Kisah Nabi Zakaria AS, Kegigihannya Dalam Berdoa yang Patut Ditiru', '2', 'Nabi dan Rasul adalah utusan Allah SWT untuk menyebarkan kebaikan di muka bumi dan untuk meluruskan syari\'at Rasul sebelumnya. Mempelajari dan mengamalkan kisah Nabi dan Rasul diharapkan akan menambah keimanan kita sebagai umat Islam.', 'Kisah Nabi Zakaria AS, Kegigihannya Dalam Berdoa yang Patut Ditiru', 'assets/image/wawasan_islami/Screenshot 2023-05-08 092048.png', '', 3, '2023-05-21 11:11:08', '2023-05-26 03:18:49');
INSERT INTO `tbl_wawasan_islami` VALUES (18, 11, 5, 'Kisah Nabi Ilyas AS, Semangatnya Sebarkan Dakwah yang Patut Dicontoh', '3', 'Seperti yang kita ketahui jumlah Nabi dan Rasul jumlahnya sangatlah banyak. Namun, yang wajib kita imani ada 25 saja, Bela. Nabi dan Rasul diutus Allah SWT untuk membenarkan ajaran pendahulunya dan menyebarkan kebaikan di muka bumi. ', 'Kisah Nabi Ilyas AS, Semangatnya Sebarkan Dakwah yang Patut Dicontoh', 'assets/image/wawasan_islami/Screenshot 2023-05-08 092750.png', '', 2, '2023-05-21 11:11:08', '2023-05-26 03:19:10');
INSERT INTO `tbl_wawasan_islami` VALUES (19, 15, 5, 'Hadis Tentang Sabar dan Keutamaannya, Umat Islam Wajib Tahu!', '4', 'Meskipun tidak mudah dan selalu saja ada ujiannya, sabar merupakan salah satu sifat mulia yang dicintai Allah SWT. Tahukah kamu, kalau Allah SWT menjanjikan pahala dan berkah yang banyak kepada hamba-Nya yang sabar dalam menjalani kehidupan. Terutama ketika mendapat musibah atau sedang dalam masa-masa yang sulit.', 'Hadis Tentang Sabar dan Keutamaannya, Umat Islam Wajib Tahu!', 'assets/image/wawasan_islami/Screenshot 2023-05-08 092840.png', '', 2, '2023-05-21 11:11:08', '2023-05-22 07:22:37');
INSERT INTO `tbl_wawasan_islami` VALUES (20, 11, 5, 'Bacaan Ayat 1000 Dinar Lengkap dengan Arab & Latin, untuk Rezeki', '5', 'Sedari kecil, Islam telah mengajarkan kita untuk selalu melantunkan doa serta ayat suci kepada Allah SWT. Amalan ini memiliki banyak manfaat dalam kehidupan sehari-hari, termasuk membuka pintu rezeki. ', 'Bacaan Ayat 1000 Dinar Lengkap dengan Arab & Latin, untuk Rezeki', 'assets/image/wawasan_islami/Screenshot 2023-05-08 092937.png', '', 1, '2023-05-21 11:11:08', '2023-05-21 11:11:08');
INSERT INTO `tbl_wawasan_islami` VALUES (21, 11, 5, 'Bagaimana Cara Bersyukur Kepada Allah?', '6', 'Bagi umat muslim, ada banyak cara bersyukur kepada Allah atas segala nikmat yang selama ini telah diberikan. Sikap ini sangat penting untuk dimiliki, agar tidak mudah mengeluh dengan segala keadaan yang dihadapi. Bersyukur juga menjadi salah satu wujud terima kasih kepada Allah.', 'Bagaimana Cara Bersyukur Kepada Allah?', 'assets/image/wawasan_islami/Screenshot 2023-05-08 093052.png', '', 1, '2023-05-21 11:11:08', '2023-05-21 11:11:08');
INSERT INTO `tbl_wawasan_islami` VALUES (23, 12, 5, 'test wawasan islami', 'test_wawasan_islami', 'asdasdas', '<p>asdasdas asdas</p>\r\n', 'assets/image/wawasan_islami/Background_1.jpg', 'asd', 1, '2023-05-21 20:51:18', '2023-05-21 20:51:31');
INSERT INTO `tbl_wawasan_islami` VALUES (24, 11, 5, 'Islam1', 'Islam1', 'Islami', '<p>Islami</p>\r\n', 'assets/image/wawasan_islami/Wallpaper 4.jpg', '', 3, '2023-07-29 01:53:30', '2023-07-29 01:55:51');

SET FOREIGN_KEY_CHECKS = 1;
