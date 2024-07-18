-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for wisender
CREATE DATABASE IF NOT EXISTS `wisender` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `wisender`;

-- Dumping structure for table wisender.auto_responders
CREATE TABLE IF NOT EXISTS `auto_responders` (
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

-- Dumping data for table wisender.auto_responders: ~0 rows (approximately)
DELETE FROM `auto_responders`;
/*!40000 ALTER TABLE `auto_responders` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_responders` ENABLE KEYS */;

-- Dumping structure for table wisender.bulks
CREATE TABLE IF NOT EXISTS `bulks` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `session_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` bigint(20) NOT NULL,
  `receiver_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_billing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('sent','invalid','failed','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wisender.bulks: ~7 rows (approximately)
DELETE FROM `bulks`;
/*!40000 ALTER TABLE `bulks` DISABLE KEYS */;
INSERT INTO `bulks` (`id`, `user_id`, `session_id`, `campaign_id`, `receiver_name`, `receiver`, `receiver_billing`, `message_type`, `message`, `status`, `created_at`, `updated_at`) VALUES
	('2470b8e4-059c-4919-943f-1a8d167b9a5b', 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 17, 'gaming', '6282241198844', '50000', 'text', '{"message":"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal [Tanggal Jatuh Tempo].\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\n    Transfer ke rekening Bank Syariah [Nama Bank] dengan nomor rekening: [Nomor Rekening]\\r\\n    Melalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\n    Datang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor [Nomor Layanan Pelanggan].\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\\r\\n\\r\\nHormat kami,\\r\\nPT BPRS HIKMAH BAHARI"}', 'sent', '2024-07-18 16:46:24', '2024-07-18 16:46:35'),
	('34076659-80b2-4a03-ae0b-8a10b9ef2568', 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 17, 'maqlo', '6285229799282', '40000', 'text', '{"message":"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal [Tanggal Jatuh Tempo].\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\n    Transfer ke rekening Bank Syariah [Nama Bank] dengan nomor rekening: [Nomor Rekening]\\r\\n    Melalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\n    Datang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor [Nomor Layanan Pelanggan].\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\\r\\n\\r\\nHormat kami,\\r\\nPT BPRS HIKMAH BAHARI"}', 'sent', '2024-07-18 16:46:24', '2024-07-18 16:46:37'),
	('82d56b49-77d5-42f2-a74e-8c5b691a3de2', 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 15, 'gaming', '6282241198844', '50000', 'text', '{"message":"{billing} {name}"}', 'sent', '2024-07-18 16:32:36', '2024-07-18 16:32:51'),
	('b1ccc10a-7d1d-4aa2-ba01-3cb1ab13f170', 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 16, 'maqlo', '6285229799282', '40000', 'text', '{"message":"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal [Tanggal Jatuh Tempo].\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\n    Transfer ke rekening Bank Syariah [Nama Bank] dengan nomor rekening: [Nomor Rekening]\\r\\n    Melalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\n    Datang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor [Nomor Layanan Pelanggan].\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\\r\\n\\r\\nHormat kami,\\r\\nPT BPRS HIKMAH BAHARI"}', 'sent', '2024-07-18 16:44:00', '2024-07-18 16:44:16'),
	('c662d931-9e25-4893-a8d3-8a50f8f66fdc', 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 15, 'maqlo', '6285229799282', '40000', 'text', '{"message":"{billing} {name}"}', 'sent', '2024-07-18 16:32:36', '2024-07-18 16:32:54'),
	('d01166d1-23a8-4e9a-a334-4d10f04e61af', 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 16, 'gaming', '6282241198844', '50000', 'text', '{"message":"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal [Tanggal Jatuh Tempo].\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\n    Transfer ke rekening Bank Syariah [Nama Bank] dengan nomor rekening: [Nomor Rekening]\\r\\n    Melalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\n    Datang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor [Nomor Layanan Pelanggan].\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\\r\\n\\r\\nHormat kami,\\r\\nPT BPRS HIKMAH BAHARI"}', 'sent', '2024-07-18 16:44:00', '2024-07-18 16:44:18'),
	('f1c0f44c-f432-4d44-871b-8b47830554a0', 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 17, 'ASRINI PRATIDINA', '6285868222319', '2442451', 'text', '{"message":"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal [Tanggal Jatuh Tempo].\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\n    Transfer ke rekening Bank Syariah [Nama Bank] dengan nomor rekening: [Nomor Rekening]\\r\\n    Melalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\n    Datang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor [Nomor Layanan Pelanggan].\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\\r\\n\\r\\nHormat kami,\\r\\nPT BPRS HIKMAH BAHARI"}', 'sent', '2024-07-18 16:46:24', '2024-07-18 16:46:40');
/*!40000 ALTER TABLE `bulks` ENABLE KEYS */;

-- Dumping structure for table wisender.campaigns
CREATE TABLE IF NOT EXISTS `campaigns` (
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wisender.campaigns: ~2 rows (approximately)
DELETE FROM `campaigns`;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` (`id`, `user_id`, `session_id`, `name`, `phonebook_id`, `message_type`, `message`, `status`, `delay`, `scheduled_at`, `created_at`, `updated_at`) VALUES
	(15, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 'fixed', 1, 'text', '{"message":"{billing} {name}"}', 'paused', 3, '2024-07-18 16:31:37', '2024-07-18 16:32:36', '2024-07-18 16:44:03'),
	(16, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 'tes1', 1, 'text', '{"message":"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal [Tanggal Jatuh Tempo].\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\n    Transfer ke rekening Bank Syariah [Nama Bank] dengan nomor rekening: [Nomor Rekening]\\r\\n    Melalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\n    Datang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor [Nomor Layanan Pelanggan].\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\\r\\n\\r\\nHormat kami,\\r\\nPT BPRS HIKMAH BAHARI"}', 'paused', 2, '2024-07-18 16:41:46', '2024-07-18 16:44:00', '2024-07-18 16:46:09'),
	(17, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 'sss', 1, 'text', '{"message":"Assalamu\'alaikum Wr. Wb.\\r\\nYth. Bapak\\/Ibu {name},\\r\\n\\r\\nSemoga Bapak\\/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari [Nama Bank Syariah] ingin mengingatkan bahwa tagihan pembiayaan Bapak\\/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal [Tanggal Jatuh Tempo].\\r\\n\\r\\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\\r\\n\\r\\n    Transfer ke rekening Bank Syariah [Nama Bank] dengan nomor rekening: [Nomor Rekening]\\r\\n    Melalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\\r\\n    Datang langsung ke kantor cabang terdekat\\r\\n\\r\\nJika Bapak\\/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor [Nomor Layanan Pelanggan].\\r\\n\\r\\nTerima kasih atas perhatian dan kerjasama Bapak\\/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\\r\\n\\r\\nWassalamu\'alaikum Wr. Wb.\\r\\n\\r\\nHormat kami,\\r\\nPT BPRS HIKMAH BAHARI"}', 'completed', 2, '2024-07-18 16:46:05', '2024-07-18 16:46:24', '2024-07-18 17:08:32');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;

-- Dumping structure for table wisender.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `session_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wisender.contacts: ~3 rows (approximately)
DELETE FROM `contacts`;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `user_id`, `session_id`, `label_id`, `name`, `number`, `billing`, `created_at`, `updated_at`) VALUES
	(5, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 1, 'maqlo', '6285229799282', '40000', '2024-07-18 16:46:02', '2024-07-18 16:46:02'),
	(6, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 1, 'gaming', '6282241198844', '50000', '2024-07-18 16:46:02', '2024-07-18 16:46:02'),
	(7, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 1, 'ASRINI PRATIDINA', '6285868222319', '2442451', '2024-07-18 16:46:02', '2024-07-18 16:46:02');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Dumping structure for table wisender.contact_labels
CREATE TABLE IF NOT EXISTS `contact_labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `session_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wisender.contact_labels: ~0 rows (approximately)
DELETE FROM `contact_labels`;
/*!40000 ALTER TABLE `contact_labels` DISABLE KEYS */;
INSERT INTO `contact_labels` (`id`, `user_id`, `session_id`, `title`, `created_at`, `updated_at`) VALUES
	(1, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', 'op', '2024-07-18 15:09:24', '2024-07-18 15:09:24');
/*!40000 ALTER TABLE `contact_labels` ENABLE KEYS */;

-- Dumping structure for table wisender.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
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

-- Dumping data for table wisender.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table wisender.histories
CREATE TABLE IF NOT EXISTS `histories` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wisender.histories: ~4 rows (approximately)
DELETE FROM `histories`;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
INSERT INTO `histories` (`id`, `user_id`, `session_id`, `receiver`, `message_type`, `message`, `from`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', '6282241198844', 'text', '{"message":"{number}"}', 'single', 'failed', '2024-07-18 15:24:23', '2024-07-18 15:24:23'),
	(2, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', '6285229799282', 'text', '{"message":"{billing} {name}"}', 'single', 'sent', '2024-07-18 15:46:13', '2024-07-18 15:46:13'),
	(3, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', '6285529799282', 'text', '{"message":"{billing} {name}"}', 'single', 'failed', '2024-07-18 15:48:26', '2024-07-18 15:48:26'),
	(4, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', '6285229799282', 'text', '{"message":"{billing} {name}"}', 'single', 'sent', '2024-07-18 15:48:33', '2024-07-18 15:48:33'),
	(5, 1, '914f7b30-83b8-417d-9b4f-5d90187fcdb7', '6285229799282', 'text', '{"message":"ddd"}', 'single', 'sent', '2024-07-18 16:12:00', '2024-07-18 16:12:00');
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;

-- Dumping structure for table wisender.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wisender.migrations: ~11 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_03_03_161743_create_sessions_table', 1),
	(6, '2023_03_10_123538_create_auto_responders_table', 1),
	(7, '2023_03_13_160432_create_contacts_table', 1),
	(8, '2023_03_13_160438_create_contact_labels_table', 1),
	(9, '2023_03_17_083540_create_campaigns_table', 1),
	(10, '2023_03_17_163604_create_bulks_table', 1),
	(11, '2023_11_30_185057_create_histories_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table wisender.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wisender.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Dumping structure for table wisender.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
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

-- Dumping data for table wisender.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table wisender.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
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

-- Dumping data for table wisender.sessions: ~0 rows (approximately)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `session_name`, `whatsapp_number`, `user_id`, `status`, `webhook`, `api_key`, `created_at`, `updated_at`) VALUES
	('914f7b30-83b8-417d-9b4f-5d90187fcdb7', 'hh', '628895090996', 1, 'CONNECTED', NULL, '3a4f6c6a72f3d4f6efee998d659d5f7f97931526', '2024-07-18 15:08:01', '2024-07-18 17:10:04');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table wisender.users
CREATE TABLE IF NOT EXISTS `users` (
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

-- Dumping data for table wisender.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `role`, `password`, `limit_device`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin Magang', 'admin', 'admin', '$2y$10$NDlSlErx9j6N3PA47CKA2ufxcR12NNvwwaYnwJa5iV.P4wk6LoBva', NULL, NULL, '2024-07-18 15:07:19', '2024-07-18 15:07:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
