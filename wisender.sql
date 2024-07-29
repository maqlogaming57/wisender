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
  `tgljt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nodep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baghas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('sent','invalid','failed','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `bulks` */

insert  into `bulks`(`id`,`user_id`,`session_id`,`campaign_id`,`receiver_name`,`receiver`,`receiver_billing`,`tgljt`,`nodep`,`baghas`,`dob`,`age`,`message_type`,`message`,`status`,`created_at`,`updated_at`) values 
('116d2860-6cbf-42c0-80b9-0cc1f47b06d9',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',23,'Tri','6285229799282','40000','29 Juli 2024','11112','20000','19970724','19','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n{tempo}\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 17:12:21','2024-07-29 17:12:31'),
('22b1bb9c-d02d-4395-81ac-0fc795576798',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',17,'Tri','6285229799282','40000','','11112','20000','19970724','19','textbirthday','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth.  Bapak\\/Ibu {name},\\r\\n\\r\\nSelamat milad ke {age}. Kami dari PT BPRS Hikmah Bahari mendoakan semoga tahun ini penuh dengan kebahagiaan dan kesuksesan. Terima kasih telah menjadi bagian dari keluarga kami.\"}','sent','2024-07-29 10:37:11','2024-07-29 10:37:23'),
('25cc5577-3573-4b06-8f8e-49ff59511c3c',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',17,'Devi Nur','6287819353702','','','','','19450817','79','textbirthday','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth.  Bapak\\/Ibu {name},\\r\\n\\r\\nSelamat milad ke {age}. Kami dari PT BPRS Hikmah Bahari mendoakan semoga tahun ini penuh dengan kebahagiaan dan kesuksesan. Terima kasih telah menjadi bagian dari keluarga kami.\"}','sent','2024-07-29 10:37:11','2024-07-29 10:37:25'),
('3bb95add-69de-413e-8d35-00f104c74f50',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',21,'Tri','6285229799282','40000','29 Juli 2024','11112','20000','19970724','19','text','{\"message\":\"{tgljt}\"}','sent','2024-07-29 16:48:03','2024-07-29 16:48:14'),
('3dc72a28-633a-4e40-97ac-2c87b5b3a27a',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',22,'Devi Nur','6287819353702','40000000','31 Juli 2024','','','19450817','79','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 17:01:44','2024-07-29 17:01:55'),
('3e846d9d-b21b-499f-bbb7-f4b947b10b22',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',19,'Tri','6285229799282','40000','29 Juli 2024','11112','20000','19970724','19','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 16:39:11','2024-07-29 16:39:25'),
('52c1953b-d9d4-4c16-85de-0359a0c94ffa',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',22,'Tri','6285229799282','40000','29 Juli 2024','11112','20000','19970724','19','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 17:01:44','2024-07-29 17:01:59'),
('59c1a90e-2419-4a97-8fef-6f8e4b3bbe96',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',25,'Buana','6282241198844','50000','30 Juli 2024','22212','55000','19970724','19','text','{\"message\":\"{tgljt}\"}','sent','2024-07-29 17:21:10','2024-07-29 17:21:21'),
('7189b4eb-4962-415b-abb4-81da29afe283',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',24,'Tri','6285229799282','40000','29 Juli 2024','11112','20000','19970724','19','text','{\"message\":\"{tempo} {tgljt}\"}','sent','2024-07-29 17:17:10','2024-07-29 17:20:30'),
('95551270-5fda-47ec-b839-ad9c783e47bc',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',23,'Buana','6282241198844','50000','30 Juli 2024','22212','55000','19970724','19','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n{tempo}\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 17:12:21','2024-07-29 17:12:33'),
('97a85051-42f9-4da6-89cb-7602b7a04e67',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',20,'Devi Nur','6287819353702','40000000','31 Juli 2024','','','19450817','79','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 16:42:27','2024-07-29 16:42:39'),
('a2fd08c2-aecc-44fc-aca5-22747a5cbb41',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',20,'Buana','6282241198844','50000','30 Juli 2024','22212','55000','19970724','19','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 16:42:27','2024-07-29 16:42:41'),
('b30aaa93-893f-48fa-9ebb-a8f41625711c',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',19,'Buana','6282241198844','50000','30 Juli 2024','22212','55000','19970724','19','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 16:39:11','2024-07-29 16:39:28'),
('b759bee3-a7d7-47a5-b328-3e27d6c79563',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',20,'Tri','6285229799282','40000','29 Juli 2024','11112','20000','19970724','19','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 16:42:27','2024-07-29 16:42:43'),
('b97eb97c-1294-4df0-a80d-d0123e9ef1ed',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',17,'Buana','6282241198844','50000','','22212','55000','19970724','19','textbirthday','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth.  Bapak\\/Ibu {name},\\r\\n\\r\\nSelamat milad ke {age}. Kami dari PT BPRS Hikmah Bahari mendoakan semoga tahun ini penuh dengan kebahagiaan dan kesuksesan. Terima kasih telah menjadi bagian dari keluarga kami.\"}','sent','2024-07-29 10:37:11','2024-07-29 10:37:30'),
('d58d9330-9de7-4c27-afd7-785ac9935290',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',19,'Devi Nur','6287819353702','40000000','31 Juli 2024','','','19450817','79','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 16:39:11','2024-07-29 16:39:35'),
('d5e45386-a69c-44a1-b939-57b9cfe393eb',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',21,'Devi Nur','6287819353702','40000000','31 Juli 2024','','','19450817','79','text','{\"message\":\"{tgljt}\"}','sent','2024-07-29 16:48:03','2024-07-29 16:48:19'),
('d9e89670-08ad-4e9d-92f5-b68021fee94d',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',21,'Buana','6282241198844','50000','30 Juli 2024','22212','55000','19970724','19','text','{\"message\":\"{tgljt}\"}','sent','2024-07-29 16:48:03','2024-07-29 16:48:22'),
('dd2f6e0a-027a-4985-a0ea-f11a4b32f9a2',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',22,'Buana','6282241198844','50000','30 Juli 2024','22212','55000','19970724','19','textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','sent','2024-07-29 17:01:44','2024-07-29 17:02:03'),
('e41e5db9-829d-4af8-a2b3-402d4c80c23c',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',24,'Buana','6282241198844','50000','30 Juli 2024','22212','55000','19970724','19','text','{\"message\":\"{tempo} {tgljt}\"}','sent','2024-07-29 17:17:10','2024-07-29 17:20:32'),
('fe39c491-c515-476d-aa06-27ebc262f961',1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',25,'Tri','6285229799282','40000','29 Juli 2024','11112','20000','19970724','19','text','{\"message\":\"{tgljt}\"}','sent','2024-07-29 17:21:10','2024-07-29 17:21:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `campaigns` */

insert  into `campaigns`(`id`,`user_id`,`session_id`,`name`,`phonebook_id`,`message_type`,`message`,`status`,`delay`,`scheduled_at`,`created_at`,`updated_at`) values 
(17,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','milad',3,'textbirthday','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth.  Bapak\\/Ibu {name},\\r\\n\\r\\nSelamat milad ke {age}. Kami dari PT BPRS Hikmah Bahari mendoakan semoga tahun ini penuh dengan kebahagiaan dan kesuksesan. Terima kasih telah menjadi bagian dari keluarga kami.\"}','completed',3,'2024-07-29 10:36:46','2024-07-29 10:37:11','2024-07-29 10:37:29'),
(19,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','Test',3,'textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',3,'2024-07-29 16:38:29','2024-07-29 16:39:11','2024-07-29 16:39:34'),
(20,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','buset',3,'textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',2,'2024-07-29 16:41:53','2024-07-29 16:42:27','2024-07-29 16:42:43'),
(21,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','test',3,'text','{\"message\":\"{tgljt}\"}','completed',3,'2024-07-29 16:46:31','2024-07-29 16:48:03','2024-07-29 16:48:22'),
(22,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','tttt',3,'textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',3,'2024-07-29 17:01:17','2024-07-29 17:01:44','2024-07-29 17:02:02'),
(23,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','tagihan',3,'textbill','{\"message\":\"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n{tempo}\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\\r\\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\nDatang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\"}','completed',2,'2024-07-29 17:11:28','2024-07-29 17:12:21','2024-07-29 17:12:33'),
(24,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','ddd',3,'text','{\"message\":\"{tempo} {tgljt}\"}','completed',2,'2024-07-29 17:11:28','2024-07-29 17:17:10','2024-07-29 17:20:32'),
(25,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','fnffn',3,'text','{\"message\":\"{tgljt}\"}','completed',2,'2024-07-29 17:20:31','2024-07-29 17:21:10','2024-07-29 17:21:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contact_labels` */

insert  into `contact_labels`(`id`,`user_id`,`session_id`,`title`,`created_at`,`updated_at`) values 
(3,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','Milad','2024-07-29 10:36:28','2024-07-29 10:36:28');

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
  `tgljt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baghas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nodep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contacts` */

insert  into `contacts`(`id`,`user_id`,`session_id`,`label_id`,`name`,`number`,`billing`,`tgljt`,`baghas`,`nodep`,`dob`,`age`,`created_at`,`updated_at`) values 
(21,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',3,'Tri','6285229799282','40000','29 Juli 2024','20000','11112','19970724','19','2024-07-29 17:10:55','2024-07-29 17:10:55'),
(22,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb',3,'Buana','6282241198844','50000','30 Juli 2024','55000','22212','19970724','19','2024-07-29 17:10:55','2024-07-29 17:10:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(25,1,'a1400427-63c4-436f-9cdd-10ac3f8f6b91','6285229799282','text','{\"message\":\"halo\"}','single','sent','2024-07-24 11:44:35','2024-07-24 11:44:35'),
(26,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','628895090996','text','{\"message\":\"halo\"}','single','sent','2024-07-29 10:51:19','2024-07-29 10:51:19'),
(27,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','628895090996','text','{\"message\":\"jjhjh\"}','single','failed','2024-07-29 17:19:23','2024-07-29 17:19:23'),
(28,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','628895090996','text','{\"message\":\"jjhjh\"}','single','failed','2024-07-29 17:20:14','2024-07-29 17:20:14'),
(29,1,'bf99d212-dc3c-4fda-b864-205e4538a8bb','628895090996','text','{\"message\":\"jjhjh\"}','single','sent','2024-07-29 17:20:28','2024-07-29 17:20:28');

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
('933e8244-8f9c-44dc-8d50-3c09b79f62bb','joni',NULL,2,'STOPPED',NULL,'988932f9dc11a3959ec77c294d595144007467de','2024-07-29 17:34:40','2024-07-29 17:34:40'),
('bf99d212-dc3c-4fda-b864-205e4538a8bb','tri','6285229799282',1,'CONNECTED',NULL,'631f3b2f02e9b39f56468bda33e0a5451c2a9b66','2024-07-29 10:34:26','2024-07-29 17:27:29');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`username`,`role`,`password`,`limit_device`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Admin Magang','admin','admin','$2y$10$NDlSlErx9j6N3PA47CKA2ufxcR12NNvwwaYnwJa5iV.P4wk6LoBva',NULL,NULL,'2024-07-18 15:07:19','2024-07-18 15:07:19'),
(2,'M Juliansyah','yuli','user','$2y$10$o1HkaIqk4cpHg1eJVEA4Ju9QRjeO7xcE.BZtRB.oG3JqGQJ4aZSfm','5',NULL,'2024-07-29 17:26:45','2024-07-29 17:26:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
