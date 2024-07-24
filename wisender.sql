/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.7.33 : Database - wisender
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wisender` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `wisender`;

/*Table structure for table `auto_responders` */

DROP TABLE IF EXISTS `auto_responders`;

CREATE TABLE `auto_responders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `session_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_keyword` enum('contains','equal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'equal',
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `reply_when` enum('all','group','personal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `auto_responders` */

/*Table structure for table `bulks` */

DROP TABLE IF EXISTS `bulks`;

CREATE TABLE `bulks` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `session_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` bigint(20) NOT NULL,
  `receiver_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_billing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nodep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baghas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('sent','invalid','failed','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `bulks` */

insert  into `bulks`(`id`,`user_id`,`session_id`,`campaign_id`,`receiver_name`,`receiver`,`receiver_billing`,`dob`,`nodep`,`baghas`,`message_type`,`message`,`status`,`created_at`,`updated_at`) values 
('03597673-df0e-4f0e-9939-2dbc2d9aebc4',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',10,'maqlo','6285229799282','40000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 12:56:00','2024-07-23 12:56:11'),
('30b39ee5-bcf5-4bde-bc80-6c6e68203193',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',9,'gaming','6282241198844','50000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 12:46:13','2024-07-23 12:46:25'),
('489cb13f-caa4-48a9-9895-a5cf51af57cd',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',13,'gaming','6282241198844','50000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam {nodep} keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 13:01:24','2024-07-23 13:01:35'),
('4cd118fa-e8e1-4e6f-97f1-41e134f841b0',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',11,'gaming','6282241198844','50000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 12:57:29','2024-07-23 12:57:40'),
('59a293bf-3b37-4525-be33-f4e6016f545a',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',13,'maqlo','6285229799282','40000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam {nodep} keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 13:01:24','2024-07-23 13:01:45'),
('66efdf29-b373-42f0-a281-ce5ddaf68bc1',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',10,'gaming','6282241198844','50000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 12:56:00','2024-07-23 12:56:21'),
('72e56daa-f034-49aa-a6c0-7e67c1c1a455',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',9,'maqlo','6285229799282','40000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 12:46:13','2024-07-23 12:46:27'),
('8841053d-0b8b-46c8-afe1-a48015de7ffe',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',14,'maqlo','6285229799282','40000','','111111','20000','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu {nodep}  selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 13:04:10','2024-07-23 13:04:21'),
('92162ef5-64cd-4856-a38f-34e17d8db892',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',12,'maqlo','6285229799282','40000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 12:59:11','2024-07-23 12:59:30'),
('d704aab3-bfda-42e5-bb93-d6c36c530f75',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',12,'gaming','6282241198844','50000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 12:59:11','2024-07-23 12:59:41'),
('d8ea07d0-4829-4da9-8d39-e4751bb3f36c',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',11,'maqlo','6285229799282','40000',NULL,NULL,NULL,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 12:57:29','2024-07-23 12:57:42'),
('dabf419e-3bd6-4ac7-94ed-abc71cfba0cc',1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',14,'gaming','6282241198844','50000','','444444','2254','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu {nodep}  selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-23 13:04:10','2024-07-23 13:04:31');

/*Table structure for table `campaigns` */

DROP TABLE IF EXISTS `campaigns`;

CREATE TABLE `campaigns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `session_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonebook_id` bigint(20) NOT NULL,
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('paused','completed','waiting','processing') COLLATE utf8mb4_unicode_ci NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `campaigns` */

insert  into `campaigns`(`id`,`user_id`,`session_id`,`name`,`phonebook_id`,`message_type`,`message`,`status`,`delay`,`scheduled_at`,`created_at`,`updated_at`) values 
(9,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','test',2,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',2,'2024-07-23 12:45:53','2024-07-23 12:46:13','2024-07-23 12:51:56'),
(10,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','TEST',2,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',10,'2024-07-23 12:55:35','2024-07-23 12:56:00','2024-07-23 12:57:17'),
(11,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','buka',2,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',2,'2024-07-23 12:57:03','2024-07-23 12:57:29','2024-07-23 13:00:49'),
(12,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','best',2,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',10,'2024-07-23 12:58:40','2024-07-23 12:59:11','2024-07-23 13:00:22'),
(13,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','baghas',2,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam {nodep} keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',10,'2024-07-23 13:00:53','2024-07-23 13:01:24','2024-07-23 13:03:36'),
(14,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','sss',2,'text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu {nodep}  selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin {baghas} mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',10,'2024-07-23 13:03:32','2024-07-23 13:04:10','2024-07-23 15:15:16');

/*Table structure for table `contact_labels` */

DROP TABLE IF EXISTS `contact_labels`;

CREATE TABLE `contact_labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `session_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contact_labels` */

insert  into `contact_labels`(`id`,`user_id`,`session_id`,`title`,`created_at`,`updated_at`) values 
(2,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','test','2024-07-23 10:50:51','2024-07-23 10:50:51');

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `session_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baghas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nodep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contacts` */

insert  into `contacts`(`id`,`user_id`,`session_id`,`label_id`,`name`,`number`,`billing`,`dob`,`baghas`,`nodep`,`created_at`,`updated_at`) values 
(11,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',2,'maqlo','6285229799282','40000','','20000','111111','2024-07-23 10:52:13','2024-07-23 10:52:13'),
(12,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91',2,'gaming','6282241198844','50000','','2254','444444','2024-07-23 10:52:13','2024-07-23 10:52:13');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `histories` */

DROP TABLE IF EXISTS `histories`;

CREATE TABLE `histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `session_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` enum('api','single','responder') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'api',
  `status` enum('sent','invalid','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'failed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `histories` */

insert  into `histories`(`id`,`user_id`,`session_id`,`receiver`,`message_type`,`message`,`from`,`status`,`created_at`,`updated_at`) values 
(1,1,'914f7b30-83b8-417d-9b4f-5d90187fcdb7','6282241198844','text','{\"message\":\"{number}\"}','single','failed','2024-07-18 15:24:23','2024-07-18 15:24:23'),
(2,1,'914f7b30-83b8-417d-9b4f-5d90187fcdb7','6285229799282','text','{\"message\":\"{billing} {name}\"}','single','sent','2024-07-18 15:46:13','2024-07-18 15:46:13'),
(3,1,'914f7b30-83b8-417d-9b4f-5d90187fcdb7','6285529799282','text','{\"message\":\"{billing} {name}\"}','single','failed','2024-07-18 15:48:26','2024-07-18 15:48:26'),
(4,1,'914f7b30-83b8-417d-9b4f-5d90187fcdb7','6285229799282','text','{\"message\":\"{billing} {name}\"}','single','sent','2024-07-18 15:48:33','2024-07-18 15:48:33'),
(5,1,'914f7b30-83b8-417d-9b4f-5d90187fcdb7','6285229799282','text','{\"message\":\"ddd\"}','single','sent','2024-07-18 16:12:00','2024-07-18 16:12:00'),
(6,1,'65c8070e-c8df-4051-bfda-6a3b40b315bc','628895090996','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 10:47:28','2024-07-23 10:47:28'),
(7,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','62855229799282','text','{\"message\":\"sssssssssss\"}','single','failed','2024-07-23 10:57:13','2024-07-23 10:57:13'),
(8,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 11:01:16','2024-07-23 11:01:16'),
(9,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 11:17:30','2024-07-23 11:17:30'),
(10,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"dddddddddd\"}','single','failed','2024-07-23 11:18:21','2024-07-23 11:18:21'),
(11,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"dddddddddd\"}','single','failed','2024-07-23 11:18:57','2024-07-23 11:18:57'),
(12,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"ddd\"}','single','sent','2024-07-23 11:24:49','2024-07-23 11:24:49'),
(13,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 11:26:09','2024-07-23 11:26:09'),
(14,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','sent','2024-07-23 11:27:05','2024-07-23 11:27:05'),
(15,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"sddd\"}','single','failed','2024-07-23 11:30:37','2024-07-23 11:30:37'),
(16,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"sddd\"}','single','failed','2024-07-23 11:33:38','2024-07-23 11:33:38'),
(17,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 11:34:30','2024-07-23 11:34:30'),
(18,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 11:45:18','2024-07-23 11:45:18'),
(19,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 11:45:46','2024-07-23 11:45:46'),
(20,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 11:53:55','2024-07-23 11:53:55'),
(21,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','sent','2024-07-23 12:38:02','2024-07-23 12:38:02'),
(22,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} {nodep} {baghas} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 12:43:39','2024-07-23 12:43:39'),
(23,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','failed','2024-07-23 12:45:19','2024-07-23 12:45:19'),
(24,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal 20 Juli 2024.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','single','sent','2024-07-23 12:45:45','2024-07-23 12:45:45'),
(25,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"halo\"}','single','sent','2024-07-24 11:44:35','2024-07-24 11:44:35');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2023_03_03_161743_create_sessions_table',1),
(6,'2023_03_10_123538_create_auto_responders_table',1),
(7,'2023_03_13_160432_create_contacts_table',1),
(8,'2023_03_13_160438_create_contact_labels_table',1),
(9,'2023_03_17_083540_create_campaigns_table',1),
(10,'2023_03_17_163604_create_bulks_table',1),
(11,'2023_11_30_185057_create_histories_table',1);

/*Table structure for table `password_reset_tokens` */

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_reset_tokens` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` enum('CONNECTED','STOPPED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'STOPPED',
  `webhook` text COLLATE utf8mb4_unicode_ci,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sessions_api_key_unique` (`api_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`session_name`,`whatsapp_number`,`user_id`,`status`,`webhook`,`api_key`,`created_at`,`updated_at`) values 
('a1400427-63c4-436f-9cdd-10ac3f8f6b91','icase','628895090996',1,'CONNECTED','http://localhost:6080/api/send-message','9671979d65d47f66842b16c9101d4f3481d6a3e0','2024-07-23 10:48:53','2024-07-24 17:10:38');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`username`,`role`,`password`,`limit_device`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Admin Magang','admin','admin','$2y$10$NDlSlErx9j6N3PA47CKA2ufxcR12NNvwwaYnwJa5iV.P4wk6LoBva',NULL,NULL,'2024-07-18 15:07:19','2024-07-18 15:07:19');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
