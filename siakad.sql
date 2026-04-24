-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: siakad
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('laravel-cache-admin@siakad|127.0.0.1','i:1;',1777044502),('laravel-cache-admin@siakad|127.0.0.1:timer','i:1777044502;',1777044502);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jurusan` (
  `id_jurusan` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akreditasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES (1,'Hukum','A','2026-04-24 08:55:08','2026-04-24 08:55:08'),(2,'Kedokteran','B','2026-04-24 08:55:08','2026-04-24 08:55:08'),(3,'Teknik Sipil','C','2026-04-24 08:55:08','2026-04-24 08:55:08'),(4,'Manajemen','B','2026-04-24 08:55:08','2026-04-24 08:55:08'),(5,'Teknik Mesin','B','2026-04-24 08:55:08','2026-04-24 08:55:08'),(6,'Arsitektur','B','2026-04-24 08:55:08','2026-04-24 08:55:08'),(7,'Psikologi','A','2026-04-24 08:55:08','2026-04-24 08:55:08'),(8,'Sistem Informasi','C','2026-04-24 08:55:08','2026-04-24 08:55:08'),(9,'Akuntansi','C','2026-04-24 08:55:08','2026-04-24 08:55:08'),(10,'Teknik Informatika','A','2026-04-24 08:55:08','2026-04-24 08:55:08');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mahasiswa` (
  `id_mahasiswa` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jurusan` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_mahasiswa`),
  UNIQUE KEY `mahasiswa_nim_unique` (`nim`),
  KEY `mahasiswa_id_jurusan_foreign` (`id_jurusan`),
  CONSTRAINT `mahasiswa_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (1,'20248142','Gandi Lanang Wacana S.E.I',2,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(2,'20240089','Banawi Mahendra S.Pt',5,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(3,'20249947','Genta Safitri',7,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(4,'20240503','Cemplunk Thamrin',5,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(5,'20248666','Malik Marpaung S.Pd',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(6,'20245774','Okto Nababan',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(7,'20244889','Maryanto Makara Prabowo S.Pt',10,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(8,'20242385','Betania Puspasari M.M.',8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(9,'20248133','Rina Laksita',8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(10,'20249484','Gilda Wahyuni S.I.Kom',1,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(11,'20244563','Suci Zalindra Hariyah',1,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(12,'20249875','Ajeng Farida',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(13,'20244805','Sabri Ivan Prasasta',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(14,'20244897','Kamaria Cornelia Rahimah',8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(15,'20245789','Cinta Latika Anggraini',4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(16,'20241317','Ganda Wacana',2,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(17,'20248797','Anita Uyainah S.T.',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(18,'20246210','Paiman Uwais S.Sos',1,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(19,'20243978','Ibrani Ardianto',5,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(20,'20246291','Tantri Susanti S.H.',7,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(21,'20244395','Ade Gilang Saefullah S.Farm',7,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(22,'20245990','Pangestu Harto Lazuardi S.IP',8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(23,'20242606','Lurhur Waluyo',1,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(24,'20246904','Kiandra Rahimah M.Farm',7,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(25,'20241107','Ajimat Firgantoro',9,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(26,'20248831','Muhammad Cawisadi Prasetya M.TI.',7,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(27,'20246621','Sabrina Aisyah Permata',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(28,'20247154','Ganda Sidiq Napitupulu',4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(29,'20243125','Cakrabirawa Widodo M.Pd',10,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(30,'20248481','Maida Zulaika',4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(31,'20240360','Eka Dabukke',4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(32,'20245988','Tania Mulyani',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(33,'20248580','Gaiman Marpaung',2,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(34,'20243168','Mursinin Sirait',9,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(35,'20242674','Nabila Pudjiastuti',7,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(36,'20242443','Devi Uyainah',9,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(37,'20248633','Putri Lestari S.Pd',9,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(38,'20244900','Zaenab Kuswandari',2,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(39,'20248314','Fathonah Salsabila Pudjiastuti M.Farm',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(40,'20242587','Manah Siregar',1,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(41,'20245218','Putri Zaenab Halimah',8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(42,'20243703','Ina Namaga M.Kom.',4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(43,'20245920','Lintang Padmasari',4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(44,'20248443','Harjaya Mujur Wahyudin M.Kom.',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(45,'20243520','Tantri Padmasari',10,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(46,'20249889','Shania Andriani',3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(47,'20249547','Najam Natsir S.Gz',9,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(48,'20242286','Wardi Darimin Prasetyo',7,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(49,'20242256','Kani Astuti',4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(50,'20248143','Jaka Pangeran Damanik',7,'2026-04-24 08:55:08','2026-04-24 08:55:08');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matakuliah` (
  `id_matakuliah` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_matakuliah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int NOT NULL,
  `id_jurusan` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_matakuliah`),
  KEY `matakuliah_id_jurusan_foreign` (`id_jurusan`),
  CONSTRAINT `matakuliah_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
INSERT INTO `matakuliah` VALUES (1,'Bahasa Indonesia Dasar',2,7,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(2,'Bahasa Indonesia II',2,3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(3,'Basis Data II',3,6,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(4,'Pancasila Dasar',2,5,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(5,'Algoritma dan Pemrograman I',4,7,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(6,'Bahasa Indonesia Lanjut',4,8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(7,'Arsitektur Komputer Dasar',2,10,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(8,'Manajemen Proyek Dasar',4,8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(9,'Bahasa Indonesia Dasar',4,9,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(10,'Analisis Sistem II',4,6,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(11,'Jaringan Komputer Dasar',4,1,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(12,'Struktur Data II',4,8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(13,'Struktur Data II',4,1,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(14,'Pemrograman Web Lanjut',4,10,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(15,'Manajemen Proyek II',4,3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(16,'Jaringan Komputer II',3,4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(17,'Kecerdasan Buatan II',4,8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(18,'Etika Profesi Lanjut',2,3,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(19,'Arsitektur Komputer II',4,10,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(20,'Matematika Diskrit Dasar',4,10,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(21,'Algoritma dan Pemrograman Lanjut',3,4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(22,'Manajemen Proyek Lanjut',3,9,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(23,'Bahasa Indonesia Dasar',2,8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(24,'Arsitektur Komputer Dasar',4,1,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(25,'Arsitektur Komputer I',4,8,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(26,'Struktur Data Dasar',2,4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(27,'Struktur Data Lanjut',3,4,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(28,'Analisis Sistem I',3,6,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(29,'Sistem Operasi II',2,2,'2026-04-24 08:55:08','2026-04-24 08:55:08'),(30,'Kecerdasan Buatan II',3,7,'2026-04-24 08:55:08','2026-04-24 08:55:08');
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2026_04_24_145827_create_jurusans_table',1),(5,'2026_04_24_145828_create_mahasiswas_table',1),(6,'2026_04_24_145829_create_matakuliahs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('7BevVbq9ZWF6cYQyTX9sYMlJpRNpJKDVdIogu1fm',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNjViUERUWUFITFluQXhBS2tqZ3lPNmN0RDVadHg2S1lpSTFmZmMxViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9',1777046503);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin Siakad','admin@siakad.com',NULL,'$2y$12$i5oL8NV3aV7EKkGJDIM0fOkppH2eIZQPhRQUv6yDa/fKf2XiYfRv6',NULL,'2026-04-24 08:55:08','2026-04-24 08:55:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-24 23:08:57
