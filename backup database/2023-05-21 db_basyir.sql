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

 Date: 21/05/2023 01:13:04
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
  `gambar_amalan_yaumi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_amalan_yaumi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status_amalan_yaumi` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_amalan_yaumi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
  `status_berita` int(20) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_berita`) USING BTREE,
  INDEX `id_kategori_berita`(`id_kategori_berita`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tbl_berita_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_berita_ibfk_3` FOREIGN KEY (`id_kategori_berita`) REFERENCES `tbl_kategori_berita` (`id_kategori_berita`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_doa_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_doa_detail`;
CREATE TABLE `tbl_doa_detail`  (
  `id_doa_detail` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_doa` int(20) UNSIGNED NOT NULL,
  `konten_doa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten_latin_doa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_doa` int(1) NOT NULL DEFAULT 1 COMMENT '0 : Hide\r\n1  : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_doa_detail`) USING BTREE,
  INDEX `doa_detail_id_doa_foreign`(`id_doa`) USING BTREE,
  CONSTRAINT `tbl_doa_detail_ibfk_1` FOREIGN KEY (`id_doa`) REFERENCES `tbl_doa` (`id_doa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_kategori_berita
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori_berita`;
CREATE TABLE `tbl_kategori_berita`  (
  `id_kategori_berita` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kategori_berita` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_kategori_berita` int(1) NOT NULL COMMENT '0 : Hide\r\n1 : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_kategori_berita`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_kategori_wawasan_islami
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori_wawasan_islami`;
CREATE TABLE `tbl_kategori_wawasan_islami`  (
  `id_kategori_wawasan_islami` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kategori_wawasan_islami` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_kategori_wawasan_islami` int(1) NOT NULL COMMENT '0 : Hide\r\n1 : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_kategori_wawasan_islami`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_rencana_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rencana_kegiatan`;
CREATE TABLE `tbl_rencana_kegiatan`  (
  `id_rencana_kegiatan` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_amalan_yaumi` int(20) UNSIGNED NOT NULL,
  `id_user` int(20) UNSIGNED NOT NULL,
  `status_rencana_kegiatan` int(1) NOT NULL COMMENT '0 : Archive\r\n1 : Show',
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_rencana_kegiatan`) USING BTREE,
  INDEX `rencana_kegiatan_id_user_foreign`(`id_user`) USING BTREE,
  INDEX `rencana_kegiatan_id_amalan_yaumi_foreign`(`id_amalan_yaumi`) USING BTREE,
  CONSTRAINT `tbl_rencana_kegiatan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_rencana_kegiatan_ibfk_2` FOREIGN KEY (`id_amalan_yaumi`) REFERENCES `tbl_amalan_yaumi` (`id_amalan_yaumi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` int(1) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
