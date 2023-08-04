-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/all-img/brand-1.png',
  `about_brand_logo1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/all-img/brand-2.png',
  `about_brand_logo2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/all-img/brand-3.png',
  `about_brand_logo3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/all-img/brand-1.png',
  `about_brand_logo4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/all-img/brand-2.png',
  `about_brand_logo5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/all-img/brand-3.png',
  `about_banner_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/banner/about-banner-1.jpg',
  `about_banner_img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/banner/about-banner-1.jpg',
  `about_banner_img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/banner/about-banner-1.jpg',
  `about_banner_img3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/banner/about-banner-1.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_searches`
--

DROP TABLE IF EXISTS `admin_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_searches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_searches`
--

LOCK TABLES `admin_searches` WRITE;
/*!40000 ALTER TABLE `admin_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend/image/default.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','admin@mail.com','2023-02-24 04:43:20','$2y$10$PRdZOp4DEIoVijQLwb5N1uurbILuQ9jBjVb3MC1Yod3NiMYVKnyPy','backend/image/default.png','KpLQlQoy6a','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_groups`
--

DROP TABLE IF EXISTS `application_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` smallint NOT NULL DEFAULT '0',
  `is_deleteable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `application_groups_company_id_foreign` (`company_id`),
  CONSTRAINT `application_groups_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_groups`
--

LOCK TABLES `application_groups` WRITE;
/*!40000 ALTER TABLE `application_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applied_jobs`
--

DROP TABLE IF EXISTS `applied_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applied_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `job_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `candidate_resume_id` bigint unsigned NOT NULL,
  `cover_letter` longtext COLLATE utf8mb4_unicode_ci,
  `application_group_id` bigint unsigned NOT NULL,
  `order` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `applied_jobs_candidate_id_foreign` (`candidate_id`),
  KEY `applied_jobs_job_id_foreign` (`job_id`),
  KEY `applied_jobs_candidate_resume_id_foreign` (`candidate_resume_id`),
  KEY `applied_jobs_application_group_id_foreign` (`application_group_id`),
  CONSTRAINT `applied_jobs_application_group_id_foreign` FOREIGN KEY (`application_group_id`) REFERENCES `application_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `applied_jobs_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `applied_jobs_candidate_resume_id_foreign` FOREIGN KEY (`candidate_resume_id`) REFERENCES `candidate_resumes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `applied_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applied_jobs`
--

LOCK TABLES `applied_jobs` WRITE;
/*!40000 ALTER TABLE `applied_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `applied_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefit_translations`
--

DROP TABLE IF EXISTS `benefit_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefit_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `benefit_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `benefit_translations_benefit_id_foreign` (`benefit_id`),
  CONSTRAINT `benefit_translations_benefit_id_foreign` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefit_translations`
--

LOCK TABLES `benefit_translations` WRITE;
/*!40000 ALTER TABLE `benefit_translations` DISABLE KEYS */;
INSERT INTO `benefit_translations` VALUES (1,1,'400k','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(2,2,'Distribution team','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(3,3,'Async','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(4,4,'Vision insurance','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(5,5,'Unlimited vacation','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(6,6,'Paid time off','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(7,7,'4 day workweek','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(8,8,'Company retreats','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(9,9,'Coworking budget','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(10,10,'Learning budget','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(11,11,'Free gym membership','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(12,12,'Home office budget','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(13,13,'Pay in crypto','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(14,14,'Profit sharing','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(15,15,'No policies at work','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(16,16,'Equity compensation','en','2023-02-24 04:43:21','2023-02-24 04:43:21');
/*!40000 ALTER TABLE `benefit_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
INSERT INTO `benefits` VALUES (1,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(2,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(3,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(4,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(5,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(6,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(7,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(8,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(9,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(10,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(11,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(12,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(13,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(14,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(15,'2023-02-24 04:43:21','2023-02-24 04:43:21'),(16,'2023-02-24 04:43:21','2023-02-24 04:43:21');
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmark_candidate_company`
--

DROP TABLE IF EXISTS `bookmark_candidate_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark_candidate_company` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `company_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmark_candidate_company_candidate_id_foreign` (`candidate_id`),
  KEY `bookmark_candidate_company_company_id_foreign` (`company_id`),
  CONSTRAINT `bookmark_candidate_company_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookmark_candidate_company_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark_candidate_company`
--

LOCK TABLES `bookmark_candidate_company` WRITE;
/*!40000 ALTER TABLE `bookmark_candidate_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmark_candidate_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmark_candidate_job`
--

DROP TABLE IF EXISTS `bookmark_candidate_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark_candidate_job` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `job_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmark_candidate_job_candidate_id_foreign` (`candidate_id`),
  KEY `bookmark_candidate_job_job_id_foreign` (`job_id`),
  CONSTRAINT `bookmark_candidate_job_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookmark_candidate_job_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark_candidate_job`
--

LOCK TABLES `bookmark_candidate_job` WRITE;
/*!40000 ALTER TABLE `bookmark_candidate_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmark_candidate_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmark_company`
--

DROP TABLE IF EXISTS `bookmark_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark_company` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `candidate_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmark_company_company_id_foreign` (`company_id`),
  KEY `bookmark_company_candidate_id_foreign` (`candidate_id`),
  KEY `bookmark_company_category_id_foreign` (`category_id`),
  CONSTRAINT `bookmark_company_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookmark_company_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `company_bookmark_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookmark_company_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark_company`
--

LOCK TABLES `bookmark_company` WRITE;
/*!40000 ALTER TABLE `bookmark_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmark_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmark_company_category`
--

DROP TABLE IF EXISTS `bookmark_company_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark_company_category` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bookmark_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmark_company_category_bookmark_id_foreign` (`bookmark_id`),
  KEY `bookmark_company_category_category_id_foreign` (`category_id`),
  CONSTRAINT `bookmark_company_category_bookmark_id_foreign` FOREIGN KEY (`bookmark_id`) REFERENCES `bookmark_company` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookmark_company_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `company_bookmark_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark_company_category`
--

LOCK TABLES `bookmark_company_category` WRITE;
/*!40000 ALTER TABLE `bookmark_company_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmark_company_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_cv_views`
--

DROP TABLE IF EXISTS `candidate_cv_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_cv_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `candidate_id` bigint unsigned NOT NULL,
  `view_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_cv_views_company_id_foreign` (`company_id`),
  KEY `candidate_cv_views_candidate_id_foreign` (`candidate_id`),
  CONSTRAINT `candidate_cv_views_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`),
  CONSTRAINT `candidate_cv_views_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_cv_views`
--

LOCK TABLES `candidate_cv_views` WRITE;
/*!40000 ALTER TABLE `candidate_cv_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_cv_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_education`
--

DROP TABLE IF EXISTS `candidate_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_education` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_education_candidate_id_foreign` (`candidate_id`),
  CONSTRAINT `candidate_education_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_education`
--

LOCK TABLES `candidate_education` WRITE;
/*!40000 ALTER TABLE `candidate_education` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_experiences`
--

DROP TABLE IF EXISTS `candidate_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `responsibilities` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currently_working` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `candidate_experiences_candidate_id_foreign` (`candidate_id`),
  CONSTRAINT `candidate_experiences_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_experiences`
--

LOCK TABLES `candidate_experiences` WRITE;
/*!40000 ALTER TABLE `candidate_experiences` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_language`
--

DROP TABLE IF EXISTS `candidate_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_language` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `candidate_language_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_language_candidate_id_foreign` (`candidate_id`),
  KEY `candidate_language_candidate_language_id_foreign` (`candidate_language_id`),
  CONSTRAINT `candidate_language_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `candidate_language_candidate_language_id_foreign` FOREIGN KEY (`candidate_language_id`) REFERENCES `candidate_languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_language`
--

LOCK TABLES `candidate_language` WRITE;
/*!40000 ALTER TABLE `candidate_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_languages`
--

DROP TABLE IF EXISTS `candidate_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_languages`
--

LOCK TABLES `candidate_languages` WRITE;
/*!40000 ALTER TABLE `candidate_languages` DISABLE KEYS */;
INSERT INTO `candidate_languages` VALUES (1,'Abkhaz','abkhaz','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'Afar','afar','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'Afrikaans','afrikaans','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'Akan','akan','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'Albanian','albanian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'Amharic','amharic','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'Arabic','arabic','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,'Aragonese','aragonese','2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,'Armenian','armenian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,'Assamese','assamese','2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,'Avaric','avaric','2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,'Avestan','avestan','2023-02-24 04:43:20','2023-02-24 04:43:20'),(13,'Aymara','aymara','2023-02-24 04:43:20','2023-02-24 04:43:20'),(14,'Azerbaijani','azerbaijani','2023-02-24 04:43:20','2023-02-24 04:43:20'),(15,'Bambara','bambara','2023-02-24 04:43:20','2023-02-24 04:43:20'),(16,'Bashkir','bashkir','2023-02-24 04:43:20','2023-02-24 04:43:20'),(17,'Basque','basque','2023-02-24 04:43:20','2023-02-24 04:43:20'),(18,'Belarusian','belarusian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(19,'Bengali','bengali','2023-02-24 04:43:20','2023-02-24 04:43:20'),(20,'Bihari','bihari','2023-02-24 04:43:20','2023-02-24 04:43:20'),(21,'Bislama','bislama','2023-02-24 04:43:20','2023-02-24 04:43:20'),(22,'Bosnian','bosnian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(23,'Breton','breton','2023-02-24 04:43:20','2023-02-24 04:43:20'),(24,'Bulgarian','bulgarian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(25,'Burmese','burmese','2023-02-24 04:43:20','2023-02-24 04:43:20'),(26,'Catalan; Valencian','catalan-valencian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(27,'Chamorro','chamorro','2023-02-24 04:43:20','2023-02-24 04:43:20'),(28,'Chechen','chechen','2023-02-24 04:43:20','2023-02-24 04:43:20'),(29,'Chichewa; Chewa; Nyanja','chichewa-chewa-nyanja','2023-02-24 04:43:20','2023-02-24 04:43:20'),(30,'Chinese','chinese','2023-02-24 04:43:20','2023-02-24 04:43:20'),(31,'Chuvash','chuvash','2023-02-24 04:43:20','2023-02-24 04:43:20'),(32,'Cornish','cornish','2023-02-24 04:43:20','2023-02-24 04:43:20'),(33,'Corsican','corsican','2023-02-24 04:43:20','2023-02-24 04:43:20'),(34,'Cree','cree','2023-02-24 04:43:20','2023-02-24 04:43:20'),(35,'Croatian','croatian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(36,'Czech','czech','2023-02-24 04:43:20','2023-02-24 04:43:20'),(37,'Danish','danish','2023-02-24 04:43:20','2023-02-24 04:43:20'),(38,'Divehi; Dhivehi; Maldivian;','divehi-dhivehi-maldivian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(39,'Dutch','dutch','2023-02-24 04:43:20','2023-02-24 04:43:20'),(40,'Esperanto','esperanto','2023-02-24 04:43:20','2023-02-24 04:43:20'),(41,'Estonian','estonian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(42,'Ewe','ewe','2023-02-24 04:43:20','2023-02-24 04:43:20'),(43,'Faroese','faroese','2023-02-24 04:43:20','2023-02-24 04:43:20'),(44,'Fijian','fijian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(45,'Finnish','finnish','2023-02-24 04:43:20','2023-02-24 04:43:20'),(46,'French','french','2023-02-24 04:43:20','2023-02-24 04:43:20'),(47,'Fula; Fulah; Pulaar; Pular','fula-fulah-pulaar-pular','2023-02-24 04:43:20','2023-02-24 04:43:20'),(48,'Galician','galician','2023-02-24 04:43:20','2023-02-24 04:43:20'),(49,'Georgian','georgian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(50,'German','german','2023-02-24 04:43:20','2023-02-24 04:43:20'),(51,'Greek, Modern','greek-modern','2023-02-24 04:43:20','2023-02-24 04:43:20'),(52,'Guaraní','guarani','2023-02-24 04:43:20','2023-02-24 04:43:20'),(53,'Gujarati','gujarati','2023-02-24 04:43:20','2023-02-24 04:43:20'),(54,'Haitian; Haitian Creole','haitian-haitian-creole','2023-02-24 04:43:20','2023-02-24 04:43:20'),(55,'Hausa','hausa','2023-02-24 04:43:20','2023-02-24 04:43:20'),(56,'Hebrew','hebrew','2023-02-24 04:43:20','2023-02-24 04:43:20'),(57,'Hebrew','hebrew','2023-02-24 04:43:20','2023-02-24 04:43:20'),(58,'Herero','herero','2023-02-24 04:43:20','2023-02-24 04:43:20'),(59,'Hindi','hindi','2023-02-24 04:43:20','2023-02-24 04:43:20'),(60,'Hiri Motu','hiri-motu','2023-02-24 04:43:20','2023-02-24 04:43:20'),(61,'Hungarian','hungarian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(62,'Interlingua','interlingua','2023-02-24 04:43:20','2023-02-24 04:43:20'),(63,'Indonesian','indonesian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(64,'Interlingue','interlingue','2023-02-24 04:43:20','2023-02-24 04:43:20'),(65,'Irish','irish','2023-02-24 04:43:20','2023-02-24 04:43:20'),(66,'Igbo','igbo','2023-02-24 04:43:20','2023-02-24 04:43:20'),(67,'Inupiaq','inupiaq','2023-02-24 04:43:20','2023-02-24 04:43:20'),(68,'Ido','ido','2023-02-24 04:43:20','2023-02-24 04:43:20'),(69,'Icelandic','icelandic','2023-02-24 04:43:20','2023-02-24 04:43:20'),(70,'Italian','italian','2023-02-24 04:43:20','2023-02-24 04:43:20'),(71,'Inuktitut','inuktitut','2023-02-24 04:43:20','2023-02-24 04:43:20'),(72,'Japanese','japanese','2023-02-24 04:43:20','2023-02-24 04:43:20'),(73,'Javanese','javanese','2023-02-24 04:43:20','2023-02-24 04:43:20'),(74,'Kalaallisut, Greenlandic','kalaallisut-greenlandic','2023-02-24 04:43:20','2023-02-24 04:43:20'),(75,'Kannada','kannada','2023-02-24 04:43:20','2023-02-24 04:43:20'),(76,'Kanuri','kanuri','2023-02-24 04:43:20','2023-02-24 04:43:20'),(77,'Kashmiri','kashmiri','2023-02-24 04:43:20','2023-02-24 04:43:20'),(78,'Kazakh','kazakh','2023-02-24 04:43:20','2023-02-24 04:43:20'),(79,'Khmer','khmer','2023-02-24 04:43:20','2023-02-24 04:43:20'),(80,'Kikuyu, Gikuyu','kikuyu-gikuyu','2023-02-24 04:43:21','2023-02-24 04:43:21'),(81,'Kinyarwanda','kinyarwanda','2023-02-24 04:43:21','2023-02-24 04:43:21'),(82,'Kirghiz, Kyrgyz','kirghiz-kyrgyz','2023-02-24 04:43:21','2023-02-24 04:43:21'),(83,'Komi','komi','2023-02-24 04:43:21','2023-02-24 04:43:21'),(84,'Kongo','kongo','2023-02-24 04:43:21','2023-02-24 04:43:21'),(85,'Korean','korean','2023-02-24 04:43:21','2023-02-24 04:43:21'),(86,'Kurdish','kurdish','2023-02-24 04:43:21','2023-02-24 04:43:21'),(87,'Kwanyama, Kuanyama','kwanyama-kuanyama','2023-02-24 04:43:21','2023-02-24 04:43:21'),(88,'Latin','latin','2023-02-24 04:43:21','2023-02-24 04:43:21'),(89,'Luxembourgish, Letzeburgesch','luxembourgish-letzeburgesch','2023-02-24 04:43:21','2023-02-24 04:43:21'),(90,'Luganda','luganda','2023-02-24 04:43:21','2023-02-24 04:43:21'),(91,'Limburgish, Limburgan, Limburger','limburgish-limburgan-limburger','2023-02-24 04:43:21','2023-02-24 04:43:21'),(92,'Lingala','lingala','2023-02-24 04:43:21','2023-02-24 04:43:21'),(93,'Lao','lao','2023-02-24 04:43:21','2023-02-24 04:43:21'),(94,'Lithuanian','lithuanian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(95,'Luba-Katanga','luba-katanga','2023-02-24 04:43:21','2023-02-24 04:43:21'),(96,'Latvian','latvian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(97,'Manx','manx','2023-02-24 04:43:21','2023-02-24 04:43:21'),(98,'Macedonian','macedonian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(99,'Malagasy','malagasy','2023-02-24 04:43:21','2023-02-24 04:43:21'),(100,'Malay','malay','2023-02-24 04:43:21','2023-02-24 04:43:21'),(101,'Malayalam','malayalam','2023-02-24 04:43:21','2023-02-24 04:43:21'),(102,'Maltese','maltese','2023-02-24 04:43:21','2023-02-24 04:43:21'),(103,'Māori','maori','2023-02-24 04:43:21','2023-02-24 04:43:21'),(104,'Marathi (Marāṭhī)','marathi-marathi','2023-02-24 04:43:21','2023-02-24 04:43:21'),(105,'Marshallese','marshallese','2023-02-24 04:43:21','2023-02-24 04:43:21'),(106,'Mongolian','mongolian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(107,'Nauru','nauru','2023-02-24 04:43:21','2023-02-24 04:43:21'),(108,'Navajo, Navaho','navajo-navaho','2023-02-24 04:43:21','2023-02-24 04:43:21'),(109,'Norwegian Bokmål','norwegian-bokmal','2023-02-24 04:43:21','2023-02-24 04:43:21'),(110,'North Ndebele','north-ndebele','2023-02-24 04:43:21','2023-02-24 04:43:21'),(111,'Nepali','nepali','2023-02-24 04:43:21','2023-02-24 04:43:21'),(112,'Ndonga','ndonga','2023-02-24 04:43:21','2023-02-24 04:43:21'),(113,'Norwegian Nynorsk','norwegian-nynorsk','2023-02-24 04:43:21','2023-02-24 04:43:21'),(114,'Norwegian','norwegian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(115,'Nuosu','nuosu','2023-02-24 04:43:21','2023-02-24 04:43:21'),(116,'South Ndebele','south-ndebele','2023-02-24 04:43:21','2023-02-24 04:43:21'),(117,'Occitan','occitan','2023-02-24 04:43:21','2023-02-24 04:43:21'),(118,'Ojibwe, Ojibwa','ojibwe-ojibwa','2023-02-24 04:43:21','2023-02-24 04:43:21'),(119,'Old Church Slavonic, Church Slavic, Church Slavonic, Old Bulgarian, Old Slavonic','old-church-slavonic-church-slavic-church-slavonic-old-bulgarian-old-slavonic','2023-02-24 04:43:21','2023-02-24 04:43:21'),(120,'Oromo','oromo','2023-02-24 04:43:21','2023-02-24 04:43:21'),(121,'Oriya','oriya','2023-02-24 04:43:21','2023-02-24 04:43:21'),(122,'Ossetian, Ossetic','ossetian-ossetic','2023-02-24 04:43:21','2023-02-24 04:43:21'),(123,'Panjabi, Punjabi','panjabi-punjabi','2023-02-24 04:43:21','2023-02-24 04:43:21'),(124,'Pāli','pali','2023-02-24 04:43:21','2023-02-24 04:43:21'),(125,'Persian','persian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(126,'Polish','polish','2023-02-24 04:43:21','2023-02-24 04:43:21'),(127,'Pashto, Pushto','pashto-pushto','2023-02-24 04:43:21','2023-02-24 04:43:21'),(128,'Portuguese','portuguese','2023-02-24 04:43:21','2023-02-24 04:43:21'),(129,'Quechua','quechua','2023-02-24 04:43:21','2023-02-24 04:43:21'),(130,'Romansh','romansh','2023-02-24 04:43:21','2023-02-24 04:43:21'),(131,'Kirundi','kirundi','2023-02-24 04:43:21','2023-02-24 04:43:21'),(132,'Romanian, Moldavian, Moldovan','romanian-moldavian-moldovan','2023-02-24 04:43:21','2023-02-24 04:43:21'),(133,'Russian','russian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(134,'Sanskrit (Saṁskṛta)','sanskrit-saskta','2023-02-24 04:43:21','2023-02-24 04:43:21'),(135,'Sardinian','sardinian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(136,'Sindhi','sindhi','2023-02-24 04:43:21','2023-02-24 04:43:21'),(137,'Northern Sami','northern-sami','2023-02-24 04:43:21','2023-02-24 04:43:21'),(138,'Samoan','samoan','2023-02-24 04:43:21','2023-02-24 04:43:21'),(139,'Sango','sango','2023-02-24 04:43:21','2023-02-24 04:43:21'),(140,'Serbian','serbian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(141,'Scottish Gaelic; Gaelic','scottish-gaelic-gaelic','2023-02-24 04:43:21','2023-02-24 04:43:21'),(142,'Shona','shona','2023-02-24 04:43:21','2023-02-24 04:43:21'),(143,'Sinhala, Sinhalese','sinhala-sinhalese','2023-02-24 04:43:21','2023-02-24 04:43:21'),(144,'Slovak','slovak','2023-02-24 04:43:21','2023-02-24 04:43:21'),(145,'Slovene','slovene','2023-02-24 04:43:21','2023-02-24 04:43:21'),(146,'Somali','somali','2023-02-24 04:43:21','2023-02-24 04:43:21'),(147,'Southern Sotho','southern-sotho','2023-02-24 04:43:21','2023-02-24 04:43:21'),(148,'Spanish; Castilian','spanish-castilian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(149,'Sundanese','sundanese','2023-02-24 04:43:21','2023-02-24 04:43:21'),(150,'Swahili','swahili','2023-02-24 04:43:21','2023-02-24 04:43:21'),(151,'Swati','swati','2023-02-24 04:43:21','2023-02-24 04:43:21'),(152,'Swedish','swedish','2023-02-24 04:43:21','2023-02-24 04:43:21'),(153,'Tamil','tamil','2023-02-24 04:43:21','2023-02-24 04:43:21'),(154,'Telugu','telugu','2023-02-24 04:43:21','2023-02-24 04:43:21'),(155,'Tajik','tajik','2023-02-24 04:43:21','2023-02-24 04:43:21'),(156,'Thai','thai','2023-02-24 04:43:21','2023-02-24 04:43:21'),(157,'Tigrinya','tigrinya','2023-02-24 04:43:21','2023-02-24 04:43:21'),(158,'Tibetan Standard, Tibetan, Central','tibetan-standard-tibetan-central','2023-02-24 04:43:21','2023-02-24 04:43:21'),(159,'Turkmen','turkmen','2023-02-24 04:43:21','2023-02-24 04:43:21'),(160,'Tagalog','tagalog','2023-02-24 04:43:21','2023-02-24 04:43:21'),(161,'Tswana','tswana','2023-02-24 04:43:21','2023-02-24 04:43:21'),(162,'Tonga (Tonga Islands)','tonga-tonga-islands','2023-02-24 04:43:21','2023-02-24 04:43:21'),(163,'Turkish','turkish','2023-02-24 04:43:21','2023-02-24 04:43:21'),(164,'Tsonga','tsonga','2023-02-24 04:43:21','2023-02-24 04:43:21'),(165,'Tatar','tatar','2023-02-24 04:43:21','2023-02-24 04:43:21'),(166,'Twi','twi','2023-02-24 04:43:21','2023-02-24 04:43:21'),(167,'Tahitian','tahitian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(168,'Uighur, Uyghur','uighur-uyghur','2023-02-24 04:43:21','2023-02-24 04:43:21'),(169,'Ukrainian','ukrainian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(170,'Urdu','urdu','2023-02-24 04:43:21','2023-02-24 04:43:21'),(171,'Uzbek','uzbek','2023-02-24 04:43:21','2023-02-24 04:43:21'),(172,'Venda','venda','2023-02-24 04:43:21','2023-02-24 04:43:21'),(173,'Vietnamese','vietnamese','2023-02-24 04:43:21','2023-02-24 04:43:21'),(174,'Volapük','volapuk','2023-02-24 04:43:21','2023-02-24 04:43:21'),(175,'Walloon','walloon','2023-02-24 04:43:21','2023-02-24 04:43:21'),(176,'Welsh','welsh','2023-02-24 04:43:21','2023-02-24 04:43:21'),(177,'Wolof','wolof','2023-02-24 04:43:21','2023-02-24 04:43:21'),(178,'Western Frisian','western-frisian','2023-02-24 04:43:21','2023-02-24 04:43:21'),(179,'Xhosa','xhosa','2023-02-24 04:43:21','2023-02-24 04:43:21'),(180,'Yiddish','yiddish','2023-02-24 04:43:21','2023-02-24 04:43:21'),(181,'Yoruba','yoruba','2023-02-24 04:43:21','2023-02-24 04:43:21'),(182,'Zhuang, Chuang','zhuang-chuang','2023-02-24 04:43:21','2023-02-24 04:43:21');
/*!40000 ALTER TABLE `candidate_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_resumes`
--

DROP TABLE IF EXISTS `candidate_resumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_resumes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_resumes_candidate_id_foreign` (`candidate_id`),
  CONSTRAINT `candidate_resumes_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_resumes`
--

LOCK TABLES `candidate_resumes` WRITE;
/*!40000 ALTER TABLE `candidate_resumes` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_resumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skill`
--

DROP TABLE IF EXISTS `candidate_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skill` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint unsigned NOT NULL,
  `skill_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_skill_candidate_id_foreign` (`candidate_id`),
  KEY `candidate_skill_skill_id_foreign` (`skill_id`),
  CONSTRAINT `candidate_skill_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `candidate_skill_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skill`
--

LOCK TABLES `candidate_skill` WRITE;
/*!40000 ALTER TABLE `candidate_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `profession_id` bigint unsigned DEFAULT NULL,
  `experience_id` bigint unsigned DEFAULT NULL,
  `education_id` bigint unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `cv_visibility` tinyint(1) NOT NULL DEFAULT '1',
  `received_job_alert` tinyint(1) NOT NULL DEFAULT '1',
  `profile_complete` int NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `status` enum('available','not_available','available_in') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `available_in` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidates_user_id_foreign` (`user_id`),
  KEY `candidates_role_id_foreign` (`role_id`),
  KEY `candidates_profession_id_foreign` (`profession_id`),
  KEY `candidates_experience_id_foreign` (`experience_id`),
  KEY `candidates_education_id_foreign` (`education_id`),
  CONSTRAINT `candidates_education_id_foreign` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE,
  CONSTRAINT `candidates_experience_id_foreign` FOREIGN KEY (`experience_id`) REFERENCES `experiences` (`id`) ON DELETE CASCADE,
  CONSTRAINT `candidates_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `candidates_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `job_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `candidates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_state_id_foreign` (`state_id`),
  CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `about_brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_brand_logo1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_brand_logo2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_brand_logo3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_brand_logo4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_brand_logo5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_banner_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_banner_img1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_banner_img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_banner_img3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employers_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `register_page_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_page_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page_banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page403_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page404_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page500_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page503_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comingsoon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_phone_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` text COLLATE utf8mb4_unicode_ci,
  `footer_facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privary_page` longtext COLLATE utf8mb4_unicode_ci,
  `terms_page` longtext COLLATE utf8mb4_unicode_ci,
  `refund_page` longtext COLLATE utf8mb4_unicode_ci,
  `maintenance_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms`
--

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;
INSERT INTO `cms` VALUES (1,'frontend/assets/images/all-img/brand-1.png','frontend/assets/images/all-img/brand-2.png','frontend/assets/images/all-img/brand-1.png','frontend/assets/images/all-img/brand-2.png','frontend/assets/images/all-img/brand-1.png','frontend/assets/images/all-img/brand-2.png','frontend/assets/images/banner/about-banner-1.jpg','frontend/assets/images/banner/about-banner-2.jpg','frontend/assets/images/banner/about-banner-3.jpg','frontend/assets/images/banner/about-banner-4.jpg','frontend/assets/images/banner/about-banner-5.png','frontend/assets/images/all-img/cta-1.png','frontend/assets/images/all-img/cta-2.png','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.2278794778554!2d90.34898411536302!3d23.77489829375602!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c1e1938cc90b%3A0xbcfacb6b89117685!2sZakir%20Soft%20-%20Innovative%20Software%20%26%20Web%20Development%20Solutions!5e0!3m2!1sen!2sbd!4v1629355846404!5m2!1sen!2sbd\" width=\"100%\" height=\"536\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>','frontend/assets/images/all-img/auth-img.png','frontend/assets/images/all-img/auth-img.png',NULL,'frontend/assets/images/banner/error-banner.png','frontend/assets/images/banner/error-banner.png','frontend/assets/images/banner/error-banner.png','frontend/assets/images/banner/error-banner.png','frontend/assets/images/all-img/coming-banner.png','319-555-0115','6391 Elgin St. Celina, Delaware 10299, New York, United States of America','https://www.facebook.com/zakirsoft','https://www.instagram.com/zakirsoft','https://www.twitter.com/zakirsoft','https://www.youtube.com/zakirsoft','<h2>01. Privacy Policy</h2><p>Praesent placerat dictum elementum. Nam pulvinar urna vel lectus maximus, eget faucibus turpis hendrerit. Sed iaculis molestie arcu, et accumsan nisi. Quisque molestie velit vitae ligula luctus bibendum. Duis sit amet eros mollis, viverra ipsum sed, convallis sapien. Donec justo erat, pulvinar vitae dui ut, finibus euismod enim. Donec velit tortor, mollis eu tortor euismod, gravida lacinia arcu.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Curabitur luctus sapien augue, mattis faucibus nisl vehicula nec. Mauris at scelerisque lorem. Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et.</li><li>Aenean vel metus leo. Vivamus nec neque a libero sodales aliquam a et dolor.</li><li>Vestibulum rhoncus sagittis dolor vel finibus.</li><li>Integer feugiat lacus ut efficitur mattis. Sed quis molestie velit.</li></ul><h2>02. Limitations</h2><p>Praesent placerat dictum elementum. Nam pulvinar urna vel lectus maximus, eget faucibus turpis hendrerit. Sed iaculis molestie arcu, et accumsan nisi. Quisque molestie velit vitae ligula luctus bibendum. Duis sit amet eros mollis, viverra ipsum sed, convallis sapien. Donec justo erat, pulvinar vitae dui ut, finibus euismod enim. Donec velit tortor, mollis eu tortor euismod, gravida lacinia arcu.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Curabitur luctus sapien augue.</li><li>mattis faucibus nisl vehicula nec, Mauris at scelerisque lorem.</li><li>Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et. Aenean vel metus leo.</li><li>Vivamus nec neque a libero sodales aliquam a et dolor.</li></ul><h2>03. Security</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ex neque, elementum eu blandit in, ornare eu purus. Fusce eu rhoncus mi, quis ultrices lacus. Phasellus id pellentesque nulla. Cras erat nisi, mattis et efficitur et, iaculis a lacus. Fusce gravida augue quis leo facilisis.</p><h2>04. Privacy Policy</h2><p>Praesent non sem facilisis, hendrerit nisi vitae, volutpat quam. Aliquam metus mauris, semper eu eros vitae, blandit tristique metus. Vestibulum maximus nec justo sed maximus. Vivamus sit amet turpis sem. Integer vitae tortor ac ex scelerisque facilisis ac vitae urna. In hac habitasse platea dictumst. Maecenas imperdiet tortor arcu, nec tincidunt neque malesuada volutpat.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Mauris at scelerisque lorem. Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et.</li><li>Aenean vel metus leo.</li><li>Vestibulum rhoncus sagittis dolor vel finibus.</li><li>Integer feugiat lacus ut efficitur mattis. Sed quis molestie velit.</li></ul><p>Fusce rutrum mauris sit amet justo rutrum, ut sodales lorem ullamcorper. Aliquam vitae iaculis urna. Nulla vitae mi vel nisl viverra ullamcorper vel elementum est. Mauris vitae elit nec enim tincidunt aliquet. Donec ultrices nulla a enim pulvinar, quis pulvinar lacus consectetur. Donec dignissim, risus nec mollis efficitur, turpis erat blandit urna, eget elementum lacus lectus eget lorem.</p><p><br>&nbsp;</p>','<h2>01. Terms &amp; Condition</h2><p>Praesent placerat dictum elementum. Nam pulvinar urna vel lectus maximus, eget faucibus turpis hendrerit. Sed iaculis molestie arcu, et accumsan nisi. Quisque molestie velit vitae ligula luctus bibendum. Duis sit amet eros mollis, viverra ipsum sed, convallis sapien. Donec justo erat, pulvinar vitae dui ut, finibus euismod enim. Donec velit tortor, mollis eu tortor euismod, gravida lacinia arcu.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Curabitur luctus sapien augue, mattis faucibus nisl vehicula nec. Mauris at scelerisque lorem. Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et.</li><li>Aenean vel metus leo. Vivamus nec neque a libero sodales aliquam a et dolor.</li><li>Vestibulum rhoncus sagittis dolor vel finibus.</li><li>Integer feugiat lacus ut efficitur mattis. Sed quis molestie velit.</li></ul><h2>02. Limitations</h2><p>Praesent placerat dictum elementum. Nam pulvinar urna vel lectus maximus, eget faucibus turpis hendrerit. Sed iaculis molestie arcu, et accumsan nisi. Quisque molestie velit vitae ligula luctus bibendum. Duis sit amet eros mollis, viverra ipsum sed, convallis sapien. Donec justo erat, pulvinar vitae dui ut, finibus euismod enim. Donec velit tortor, mollis eu tortor euismod, gravida lacinia arcu.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Curabitur luctus sapien augue.</li><li>mattis faucibus nisl vehicula nec, Mauris at scelerisque lorem.</li><li>Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et. Aenean vel metus leo.</li><li>Vivamus nec neque a libero sodales aliquam a et dolor.</li></ul><h2>03. Security</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ex neque, elementum eu blandit in, ornare eu purus. Fusce eu rhoncus mi, quis ultrices lacus. Phasellus id pellentesque nulla. Cras erat nisi, mattis et efficitur et, iaculis a lacus. Fusce gravida augue quis leo facilisis.</p><h2>04. Privacy Policy</h2><p>Praesent non sem facilisis, hendrerit nisi vitae, volutpat quam. Aliquam metus mauris, semper eu eros vitae, blandit tristique metus. Vestibulum maximus nec justo sed maximus. Vivamus sit amet turpis sem. Integer vitae tortor ac ex scelerisque facilisis ac vitae urna. In hac habitasse platea dictumst. Maecenas imperdiet tortor arcu, nec tincidunt neque malesuada volutpat.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Mauris at scelerisque lorem. Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et.</li><li>Aenean vel metus leo.</li><li>Vestibulum rhoncus sagittis dolor vel finibus.</li><li>Integer feugiat lacus ut efficitur mattis. Sed quis molestie velit.</li></ul><p>Fusce rutrum mauris sit amet justo rutrum, ut sodales lorem ullamcorper. Aliquam vitae iaculis urna. Nulla vitae mi vel nisl viverra ullamcorper vel elementum est. Mauris vitae elit nec enim tincidunt aliquet. Donec ultrices nulla a enim pulvinar, quis pulvinar lacus consectetur. Donec dignissim, risus nec mollis efficitur, turpis erat blandit urna, eget elementum lacus lectus eget lorem.</p><p><br>&nbsp;</p>',NULL,'frontend/assets/images/all-img/coming-banner.png','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_contents`
--

DROP TABLE IF EXISTS `cms_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_contents`
--

LOCK TABLES `cms_contents` WRITE;
/*!40000 ALTER TABLE `cms_contents` DISABLE KEYS */;
INSERT INTO `cms_contents` VALUES (1,'terms_condition_page','en','<h2>01. Terms &amp; Condition</h2><p>Praesent placerat dictum elementum. Nam pulvinar urna vel lectus maximus, eget faucibus turpis hendrerit. Sed iaculis molestie arcu, et accumsan nisi. Quisque molestie velit vitae ligula luctus bibendum. Duis sit amet eros mollis, viverra ipsum sed, convallis sapien. Donec justo erat, pulvinar vitae dui ut, finibus euismod enim. Donec velit tortor, mollis eu tortor euismod, gravida lacinia arcu.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Curabitur luctus sapien augue, mattis faucibus nisl vehicula nec. Mauris at scelerisque lorem. Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et.</li><li>Aenean vel metus leo. Vivamus nec neque a libero sodales aliquam a et dolor.</li><li>Vestibulum rhoncus sagittis dolor vel finibus.</li><li>Integer feugiat lacus ut efficitur mattis. Sed quis molestie velit.</li></ul><h2>02. Limitations</h2><p>Praesent placerat dictum elementum. Nam pulvinar urna vel lectus maximus, eget faucibus turpis hendrerit. Sed iaculis molestie arcu, et accumsan nisi. Quisque molestie velit vitae ligula luctus bibendum. Duis sit amet eros mollis, viverra ipsum sed, convallis sapien. Donec justo erat, pulvinar vitae dui ut, finibus euismod enim. Donec velit tortor, mollis eu tortor euismod, gravida lacinia arcu.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Curabitur luctus sapien augue.</li><li>mattis faucibus nisl vehicula nec, Mauris at scelerisque lorem.</li><li>Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et. Aenean vel metus leo.</li><li>Vivamus nec neque a libero sodales aliquam a et dolor.</li></ul><h2>03. Security</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ex neque, elementum eu blandit in, ornare eu purus. Fusce eu rhoncus mi, quis ultrices lacus. Phasellus id pellentesque nulla. Cras erat nisi, mattis et efficitur et, iaculis a lacus. Fusce gravida augue quis leo facilisis.</p><h2>04. Privacy Policy</h2><p>Praesent non sem facilisis, hendrerit nisi vitae, volutpat quam. Aliquam metus mauris, semper eu eros vitae, blandit tristique metus. Vestibulum maximus nec justo sed maximus. Vivamus sit amet turpis sem. Integer vitae tortor ac ex scelerisque facilisis ac vitae urna. In hac habitasse platea dictumst. Maecenas imperdiet tortor arcu, nec tincidunt neque malesuada volutpat.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Mauris at scelerisque lorem. Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et.</li><li>Aenean vel metus leo.</li><li>Vestibulum rhoncus sagittis dolor vel finibus.</li><li>Integer feugiat lacus ut efficitur mattis. Sed quis molestie velit.</li></ul><p>Fusce rutrum mauris sit amet justo rutrum, ut sodales lorem ullamcorper. Aliquam vitae iaculis urna. Nulla vitae mi vel nisl viverra ullamcorper vel elementum est. Mauris vitae elit nec enim tincidunt aliquet. Donec ultrices nulla a enim pulvinar, quis pulvinar lacus consectetur. Donec dignissim, risus nec mollis efficitur, turpis erat blandit urna, eget elementum lacus lectus eget lorem.</p><p><br>&nbsp;</p>','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'privacy_page','en','<h2>01. Privacy Policy</h2><p>Praesent placerat dictum elementum. Nam pulvinar urna vel lectus maximus, eget faucibus turpis hendrerit. Sed iaculis molestie arcu, et accumsan nisi. Quisque molestie velit vitae ligula luctus bibendum. Duis sit amet eros mollis, viverra ipsum sed, convallis sapien. Donec justo erat, pulvinar vitae dui ut, finibus euismod enim. Donec velit tortor, mollis eu tortor euismod, gravida lacinia arcu.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Curabitur luctus sapien augue, mattis faucibus nisl vehicula nec. Mauris at scelerisque lorem. Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et.</li><li>Aenean vel metus leo. Vivamus nec neque a libero sodales aliquam a et dolor.</li><li>Vestibulum rhoncus sagittis dolor vel finibus.</li><li>Integer feugiat lacus ut efficitur mattis. Sed quis molestie velit.</li></ul><h2>02. Limitations</h2><p>Praesent placerat dictum elementum. Nam pulvinar urna vel lectus maximus, eget faucibus turpis hendrerit. Sed iaculis molestie arcu, et accumsan nisi. Quisque molestie velit vitae ligula luctus bibendum. Duis sit amet eros mollis, viverra ipsum sed, convallis sapien. Donec justo erat, pulvinar vitae dui ut, finibus euismod enim. Donec velit tortor, mollis eu tortor euismod, gravida lacinia arcu.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Curabitur luctus sapien augue.</li><li>mattis faucibus nisl vehicula nec, Mauris at scelerisque lorem.</li><li>Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et. Aenean vel metus leo.</li><li>Vivamus nec neque a libero sodales aliquam a et dolor.</li></ul><h2>03. Security</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ex neque, elementum eu blandit in, ornare eu purus. Fusce eu rhoncus mi, quis ultrices lacus. Phasellus id pellentesque nulla. Cras erat nisi, mattis et efficitur et, iaculis a lacus. Fusce gravida augue quis leo facilisis.</p><h2>04. Privacy Policy</h2><p>Praesent non sem facilisis, hendrerit nisi vitae, volutpat quam. Aliquam metus mauris, semper eu eros vitae, blandit tristique metus. Vestibulum maximus nec justo sed maximus. Vivamus sit amet turpis sem. Integer vitae tortor ac ex scelerisque facilisis ac vitae urna. In hac habitasse platea dictumst. Maecenas imperdiet tortor arcu, nec tincidunt neque malesuada volutpat.</p><ul><li>In ac turpis mi. Donec quis semper neque. Nulla cursus gravida interdum.</li><li>Mauris at scelerisque lorem. Nullam tempus felis ipsum, sagittis malesuada nulla vulputate et.</li><li>Aenean vel metus leo.</li><li>Vestibulum rhoncus sagittis dolor vel finibus.</li><li>Integer feugiat lacus ut efficitur mattis. Sed quis molestie velit.</li></ul><p>Fusce rutrum mauris sit amet justo rutrum, ut sodales lorem ullamcorper. Aliquam vitae iaculis urna. Nulla vitae mi vel nisl viverra ullamcorper vel elementum est. Mauris vitae elit nec enim tincidunt aliquet. Donec ultrices nulla a enim pulvinar, quis pulvinar lacus consectetur. Donec dignissim, risus nec mollis efficitur, turpis erat blandit urna, eget elementum lacus lectus eget lorem.</p><p><br>&nbsp;</p>','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `cms_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `industry_type_id` bigint unsigned NOT NULL,
  `organization_type_id` bigint unsigned NOT NULL,
  `team_size_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishment_date` date DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `profile_completion` tinyint(1) NOT NULL DEFAULT '0',
  `bio` text COLLATE utf8mb4_unicode_ci,
  `vision` text COLLATE utf8mb4_unicode_ci,
  `total_views` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companies_user_id_foreign` (`user_id`),
  KEY `companies_industry_type_id_foreign` (`industry_type_id`),
  KEY `companies_organization_type_id_foreign` (`organization_type_id`),
  KEY `companies_team_size_id_foreign` (`team_size_id`),
  CONSTRAINT `companies_industry_type_id_foreign` FOREIGN KEY (`industry_type_id`) REFERENCES `industry_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `companies_organization_type_id_foreign` FOREIGN KEY (`organization_type_id`) REFERENCES `organization_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `companies_team_size_id_foreign` FOREIGN KEY (`team_size_id`) REFERENCES `team_sizes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_applied_job_rejected`
--

DROP TABLE IF EXISTS `company_applied_job_rejected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_applied_job_rejected` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `applied_job_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_applied_job_rejected_company_id_foreign` (`company_id`),
  KEY `company_applied_job_rejected_applied_job_id_foreign` (`applied_job_id`),
  CONSTRAINT `company_applied_job_rejected_applied_job_id_foreign` FOREIGN KEY (`applied_job_id`) REFERENCES `applied_jobs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `company_applied_job_rejected_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_applied_job_rejected`
--

LOCK TABLES `company_applied_job_rejected` WRITE;
/*!40000 ALTER TABLE `company_applied_job_rejected` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_applied_job_rejected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_applied_job_shortlist`
--

DROP TABLE IF EXISTS `company_applied_job_shortlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_applied_job_shortlist` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `applied_job_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_applied_job_shortlist_company_id_foreign` (`company_id`),
  KEY `company_applied_job_shortlist_applied_job_id_foreign` (`applied_job_id`),
  CONSTRAINT `company_applied_job_shortlist_applied_job_id_foreign` FOREIGN KEY (`applied_job_id`) REFERENCES `applied_jobs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `company_applied_job_shortlist_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_applied_job_shortlist`
--

LOCK TABLES `company_applied_job_shortlist` WRITE;
/*!40000 ALTER TABLE `company_applied_job_shortlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_applied_job_shortlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_bookmark_categories`
--

DROP TABLE IF EXISTS `company_bookmark_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_bookmark_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_bookmark_categories_company_id_foreign` (`company_id`),
  CONSTRAINT `company_bookmark_categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_bookmark_categories`
--

LOCK TABLES `company_bookmark_categories` WRITE;
/*!40000 ALTER TABLE `company_bookmark_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_bookmark_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_infos`
--

DROP TABLE IF EXISTS `contact_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_infos_user_id_foreign` (`user_id`),
  CONSTRAINT `contact_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_infos`
--

LOCK TABLES `contact_infos` WRITE;
/*!40000 ALTER TABLE `contact_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookies`
--

DROP TABLE IF EXISTS `cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `allow_cookies` tinyint(1) NOT NULL DEFAULT '1',
  `cookie_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gdpr_cookie',
  `cookie_expiration` tinyint NOT NULL DEFAULT '30',
  `force_consent` tinyint(1) NOT NULL DEFAULT '0',
  `darkmode` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approve_button_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decline_button_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookies`
--

LOCK TABLES `cookies` WRITE;
/*!40000 ALTER TABLE `cookies` DISABLE KEYS */;
INSERT INTO `cookies` VALUES (1,1,'gdpr_cookie',30,0,0,'en','We use cookies!','Hi, this website uses essential cookies to ensure its proper operation and tracking cookies to understand how you interact with it. The latter will be set only after consent. <button type=\"button\" data-cc=\"c-settings\" class=\"cc-link\">Let me choose</button>','Allow all Cookies','Reject all Cookies','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Aruba','backend/image/flags/flag-of-Aruba.jpg','aruba','flag-icon-aw','AW',12.5,-69.96666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'Afghanistan','backend/image/flags/flag-of-Afghanistan.jpg','afghanistan','flag-icon-af','AF',33,65,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'Angola','backend/image/flags/flag-of-Angola.jpg','angola','flag-icon-ao','AO',-12.5,18.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'Anguilla','backend/image/flags/flag-of-Anguilla.jpg','anguilla','flag-icon-ai','AI',18.25,-63.16666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'Åland Islands','backend/image/flags/flag-of-Åland-Islands.jpg','aland-islands','flag-icon-ax','AX',60.116667,19.9,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'Albania','backend/image/flags/flag-of-Albania.jpg','albania','flag-icon-al','AL',41,20,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'Andorra','backend/image/flags/flag-of-Andorra.jpg','andorra','flag-icon-ad','AD',42.5,1.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,'United Arab Emirates','backend/image/flags/flag-of-United-Arab-Emirates.jpg','united-arab-emirates','flag-icon-ae','AE',24,54,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,'Argentina','backend/image/flags/flag-of-Argentina.jpg','argentina','flag-icon-ar','AR',-34,-64,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,'Armenia','backend/image/flags/flag-of-Armenia.jpg','armenia','flag-icon-am','AM',40,45,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,'American Samoa','backend/image/flags/flag-of-American-Samoa.jpg','american-samoa','flag-icon-as','AS',-14.33333333,-170,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,'Antarctica','backend/image/flags/flag-of-Antarctica.jpg','antarctica','flag-icon-aq','AQ',-90,0,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(13,'French Southern and Antarctic Lands','backend/image/flags/flag-of-French-Southern-and-Antarctic-Lands.jpg','french-southern-and-antarctic-lands','flag-icon-tf','TF',-49.25,69.167,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(14,'Antigua and Barbuda','backend/image/flags/flag-of-Antigua-and-Barbuda.jpg','antigua-and-barbuda','flag-icon-ag','AG',17.05,-61.8,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(15,'Australia','backend/image/flags/flag-of-Australia.jpg','australia','flag-icon-au','AU',-27,133,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(16,'Austria','backend/image/flags/flag-of-Austria.jpg','austria','flag-icon-at','AT',47.33333333,13.33333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(17,'Azerbaijan','backend/image/flags/flag-of-Azerbaijan.jpg','azerbaijan','flag-icon-az','AZ',40.5,47.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(18,'Burundi','backend/image/flags/flag-of-Burundi.jpg','burundi','flag-icon-bi','BI',-3.5,30,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(19,'Belgium','backend/image/flags/flag-of-Belgium.jpg','belgium','flag-icon-be','BE',50.83333333,4,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(20,'Benin','backend/image/flags/flag-of-Benin.jpg','benin','flag-icon-bj','BJ',9.5,2.25,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(21,'Burkina Faso','backend/image/flags/flag-of-Burkina-Faso.jpg','burkina-faso','flag-icon-bf','BF',13,-2,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(22,'Bangladesh','backend/image/flags/flag-of-Bangladesh.jpg','bangladesh','flag-icon-bd','BD',24,90,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(23,'Bulgaria','backend/image/flags/flag-of-Bulgaria.jpg','bulgaria','flag-icon-bg','BG',43,25,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(24,'Bahrain','backend/image/flags/flag-of-Bahrain.jpg','bahrain','flag-icon-bh','BH',26,50.55,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(25,'Bahamas','backend/image/flags/flag-of-Bahamas.jpg','bahamas','flag-icon-bs','BS',24.25,-76,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(26,'Bosnia and Herzegovina','backend/image/flags/flag-of-Bosnia-and-Herzegovina.jpg','bosnia-and-herzegovina','flag-icon-ba','BA',44,18,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(27,'Saint Barthélemy','backend/image/flags/flag-of-Saint-Barthélemy.jpg','saint-barthelemy','flag-icon-bl','BL',18.5,-63.41666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(28,'Belarus','backend/image/flags/flag-of-Belarus.jpg','belarus','flag-icon-by','BY',53,28,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(29,'Belize','backend/image/flags/flag-of-Belize.jpg','belize','flag-icon-bz','BZ',17.25,-88.75,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(30,'Bermuda','backend/image/flags/flag-of-Bermuda.jpg','bermuda','flag-icon-bm','BM',32.33333333,-64.75,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(31,'Bolivia','backend/image/flags/flag-of-Bolivia.jpg','bolivia','flag-icon-bo','BO',-17,-65,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(32,'Brazil','backend/image/flags/flag-of-Brazil.jpg','brazil','flag-icon-br','BR',-10,-55,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(33,'Barbados','backend/image/flags/flag-of-Barbados.jpg','barbados','flag-icon-bb','BB',13.16666666,-59.53333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(34,'Brunei','backend/image/flags/flag-of-Brunei.jpg','brunei','flag-icon-bn','BN',4.5,114.66666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(35,'Bhutan','backend/image/flags/flag-of-Bhutan.jpg','bhutan','flag-icon-bt','BT',27.5,90.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(36,'Bouvet Island','backend/image/flags/flag-of-Bouvet-Island.jpg','bouvet-island','flag-icon-bv','BV',-54.43333333,3.4,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(37,'Botswana','backend/image/flags/flag-of-Botswana.jpg','botswana','flag-icon-bw','BW',-22,24,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(38,'Central African Republic','backend/image/flags/flag-of-Central-African-Republic.jpg','central-african-republic','flag-icon-cf','CF',7,21,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(39,'Canada','backend/image/flags/flag-of-Canada.jpg','canada','flag-icon-ca','CA',60,-95,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(40,'Cocos (Keeling) Islands','backend/image/flags/flag-of-Cocos-(Keeling)-Islands.jpg','cocos-keeling-islands','flag-icon-cc','CC',-12.5,96.83333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(41,'Switzerland','backend/image/flags/flag-of-Switzerland.jpg','switzerland','flag-icon-ch','CH',47,8,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(42,'Chile','backend/image/flags/flag-of-Chile.jpg','chile','flag-icon-cl','CL',-30,-71,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(43,'China','backend/image/flags/flag-of-China.jpg','china','flag-icon-cn','CN',35,105,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(44,'Ivory Coast','backend/image/flags/flag-of-Ivory-Coast.jpg','ivory-coast','flag-icon-ci','CI',8,-5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(45,'Cameroon','backend/image/flags/flag-of-Cameroon.jpg','cameroon','flag-icon-cm','CM',6,12,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(46,'DR Congo','backend/image/flags/flag-of-DR-Congo.jpg','dr-congo','flag-icon-cd','CD',0,25,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(47,'Republic of the Congo','backend/image/flags/flag-of-Republic-of-the-Congo.jpg','republic-of-the-congo','flag-icon-cg','CG',-1,15,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(48,'Cook Islands','backend/image/flags/flag-of-Cook-Islands.jpg','cook-islands','flag-icon-ck','CK',-21.23333333,-159.76666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(49,'Colombia','backend/image/flags/flag-of-Colombia.jpg','colombia','flag-icon-co','CO',4,-72,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(50,'Comoros','backend/image/flags/flag-of-Comoros.jpg','comoros','flag-icon-km','KM',-12.16666666,44.25,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(51,'Cape Verde','backend/image/flags/flag-of-Cape-Verde.jpg','cape-verde','flag-icon-cv','CV',16,-24,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(52,'Costa Rica','backend/image/flags/flag-of-Costa-Rica.jpg','costa-rica','flag-icon-cr','CR',10,-84,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(53,'Cuba','backend/image/flags/flag-of-Cuba.jpg','cuba','flag-icon-cu','CU',21.5,-80,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(54,'Curaçao','backend/image/flags/flag-of-Curaçao.jpg','curacao','flag-icon-cw','CW',12.116667,-68.933333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(55,'Christmas Island','backend/image/flags/flag-of-Christmas-Island.jpg','christmas-island','flag-icon-cx','CX',-10.5,105.66666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(56,'Cayman Islands','backend/image/flags/flag-of-Cayman-Islands.jpg','cayman-islands','flag-icon-ky','KY',19.5,-80.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(57,'Cyprus','backend/image/flags/flag-of-Cyprus.jpg','cyprus','flag-icon-cy','CY',35,33,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(58,'Czech Republic','backend/image/flags/flag-of-Czech-Republic.jpg','czech-republic','flag-icon-cz','CZ',49.75,15.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(59,'Germany','backend/image/flags/flag-of-Germany.jpg','germany','flag-icon-de','DE',51,9,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(60,'Djibouti','backend/image/flags/flag-of-Djibouti.jpg','djibouti','flag-icon-dj','DJ',11.5,43,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(61,'Dominica','backend/image/flags/flag-of-Dominica.jpg','dominica','flag-icon-dm','DM',15.41666666,-61.33333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(62,'Denmark','backend/image/flags/flag-of-Denmark.jpg','denmark','flag-icon-dk','DK',56,10,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(63,'Dominican Republic','backend/image/flags/flag-of-Dominican-Republic.jpg','dominican-republic','flag-icon-do','DO',19,-70.66666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(64,'Algeria','backend/image/flags/flag-of-Algeria.jpg','algeria','flag-icon-dz','DZ',28,3,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(65,'Ecuador','backend/image/flags/flag-of-Ecuador.jpg','ecuador','flag-icon-ec','EC',-2,-77.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(66,'Egypt','backend/image/flags/flag-of-Egypt.jpg','egypt','flag-icon-eg','EG',27,30,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(67,'Eritrea','backend/image/flags/flag-of-Eritrea.jpg','eritrea','flag-icon-er','ER',15,39,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(68,'Western Sahara','backend/image/flags/flag-of-Western-Sahara.jpg','western-sahara','flag-icon-eh','EH',24.5,-13,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(69,'Spain','backend/image/flags/flag-of-Spain.jpg','spain','flag-icon-es','ES',40,-4,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(70,'Estonia','backend/image/flags/flag-of-Estonia.jpg','estonia','flag-icon-ee','EE',59,26,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(71,'Ethiopia','backend/image/flags/flag-of-Ethiopia.jpg','ethiopia','flag-icon-et','ET',8,38,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(72,'Finland','backend/image/flags/flag-of-Finland.jpg','finland','flag-icon-fi','FI',64,26,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(73,'Fiji','backend/image/flags/flag-of-Fiji.jpg','fiji','flag-icon-fj','FJ',-18,175,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(74,'Falkland Islands','backend/image/flags/flag-of-Falkland-Islands.jpg','falkland-islands','flag-icon-fk','FK',-51.75,-59,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(75,'France','backend/image/flags/flag-of-France.jpg','france','flag-icon-fr','FR',46,2,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(76,'Faroe Islands','backend/image/flags/flag-of-Faroe-Islands.jpg','faroe-islands','flag-icon-fo','FO',62,-7,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(77,'Micronesia','backend/image/flags/flag-of-Micronesia.jpg','micronesia','flag-icon-fm','FM',6.91666666,158.25,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(78,'Gabon','backend/image/flags/flag-of-Gabon.jpg','gabon','flag-icon-ga','GA',-1,11.75,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(79,'United Kingdom','backend/image/flags/flag-of-United-Kingdom.jpg','united-kingdom','flag-icon-gb','GB',54,-2,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(80,'Georgia','backend/image/flags/flag-of-Georgia.jpg','georgia','flag-icon-ge','GE',42,43.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(81,'Guernsey','backend/image/flags/flag-of-Guernsey.jpg','guernsey','flag-icon-gg','GG',49.46666666,-2.58333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(82,'Ghana','backend/image/flags/flag-of-Ghana.jpg','ghana','flag-icon-gh','GH',8,-2,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(83,'Gibraltar','backend/image/flags/flag-of-Gibraltar.jpg','gibraltar','flag-icon-gi','GI',36.13333333,-5.35,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(84,'Guinea','backend/image/flags/flag-of-Guinea.jpg','guinea','flag-icon-gn','GN',11,-10,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(85,'Guadeloupe','backend/image/flags/flag-of-Guadeloupe.jpg','guadeloupe','flag-icon-gp','GP',16.25,-61.583333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(86,'Gambia','backend/image/flags/flag-of-Gambia.jpg','gambia','flag-icon-gm','GM',13.46666666,-16.56666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(87,'Guinea-Bissau','backend/image/flags/flag-of-Guinea-Bissau.jpg','guinea-bissau','flag-icon-gw','GW',12,-15,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(88,'Equatorial Guinea','backend/image/flags/flag-of-Equatorial-Guinea.jpg','equatorial-guinea','flag-icon-gq','GQ',2,10,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(89,'Greece','backend/image/flags/flag-of-Greece.jpg','greece','flag-icon-gr','GR',39,22,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(90,'Grenada','backend/image/flags/flag-of-Grenada.jpg','grenada','flag-icon-gd','GD',12.11666666,-61.66666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(91,'Greenland','backend/image/flags/flag-of-Greenland.jpg','greenland','flag-icon-gl','GL',72,-40,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(92,'Guatemala','backend/image/flags/flag-of-Guatemala.jpg','guatemala','flag-icon-gt','GT',15.5,-90.25,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(93,'French Guiana','backend/image/flags/flag-of-French-Guiana.jpg','french-guiana','flag-icon-gf','GF',4,-53,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(94,'Guam','backend/image/flags/flag-of-Guam.jpg','guam','flag-icon-gu','GU',13.46666666,144.78333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(95,'Guyana','backend/image/flags/flag-of-Guyana.jpg','guyana','flag-icon-gy','GY',5,-59,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(96,'Hong Kong','backend/image/flags/flag-of-Hong-Kong.jpg','hong-kong','flag-icon-hk','HK',22.267,114.188,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(97,'Honduras','backend/image/flags/flag-of-Honduras.jpg','honduras','flag-icon-hn','HN',15,-86.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(98,'Croatia','backend/image/flags/flag-of-Croatia.jpg','croatia','flag-icon-hr','HR',45.16666666,15.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(99,'Haiti','backend/image/flags/flag-of-Haiti.jpg','haiti','flag-icon-ht','HT',19,-72.41666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(100,'Hungary','backend/image/flags/flag-of-Hungary.jpg','hungary','flag-icon-hu','HU',47,20,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(101,'Indonesia','backend/image/flags/flag-of-Indonesia.jpg','indonesia','flag-icon-id','ID',-5,120,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(102,'Isle of Man','backend/image/flags/flag-of-Isle-of-Man.jpg','isle-of-man','flag-icon-im','IM',54.25,-4.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(103,'India','backend/image/flags/flag-of-India.jpg','india','flag-icon-in','IN',20,77,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(104,'British Indian Ocean Territory','backend/image/flags/flag-of-British-Indian-Ocean-Territory.jpg','british-indian-ocean-territory','flag-icon-io','IO',-6,71.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(105,'Ireland','backend/image/flags/flag-of-Ireland.jpg','ireland','flag-icon-ie','IE',53,-8,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(106,'Iran','backend/image/flags/flag-of-Iran.jpg','iran','flag-icon-ir','IR',32,53,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(107,'Iraq','backend/image/flags/flag-of-Iraq.jpg','iraq','flag-icon-iq','IQ',33,44,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(108,'Iceland','backend/image/flags/flag-of-Iceland.jpg','iceland','flag-icon-is','IS',65,-18,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(109,'Israel','backend/image/flags/flag-of-Israel.jpg','israel','flag-icon-il','IL',31.47,35.13,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(110,'Italy','backend/image/flags/flag-of-Italy.jpg','italy','flag-icon-it','IT',42.83333333,12.83333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(111,'Jamaica','backend/image/flags/flag-of-Jamaica.jpg','jamaica','flag-icon-jm','JM',18.25,-77.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(112,'Jersey','backend/image/flags/flag-of-Jersey.jpg','jersey','flag-icon-je','JE',49.25,-2.16666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(113,'Jordan','backend/image/flags/flag-of-Jordan.jpg','jordan','flag-icon-jo','JO',31,36,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(114,'Japan','backend/image/flags/flag-of-Japan.jpg','japan','flag-icon-jp','JP',36,138,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(115,'Kazakhstan','backend/image/flags/flag-of-Kazakhstan.jpg','kazakhstan','flag-icon-kz','KZ',48,68,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(116,'Kenya','backend/image/flags/flag-of-Kenya.jpg','kenya','flag-icon-ke','KE',1,38,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(117,'Kyrgyzstan','backend/image/flags/flag-of-Kyrgyzstan.jpg','kyrgyzstan','flag-icon-kg','KG',41,75,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(118,'Cambodia','backend/image/flags/flag-of-Cambodia.jpg','cambodia','flag-icon-kh','KH',13,105,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(119,'Kiribati','backend/image/flags/flag-of-Kiribati.jpg','kiribati','flag-icon-ki','KI',1.41666666,173,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(120,'Saint Kitts and Nevis','backend/image/flags/flag-of-Saint-Kitts-and-Nevis.jpg','saint-kitts-and-nevis','flag-icon-kn','KN',17.33333333,-62.75,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(121,'South Korea','backend/image/flags/flag-of-South-Korea.jpg','south-korea','flag-icon-kr','KR',37,127.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(122,'Kosovo','backend/image/flags/flag-of-Kosovo.jpg','kosovo','flag-icon-xk','XK',42.666667,21.166667,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(123,'Kuwait','backend/image/flags/flag-of-Kuwait.jpg','kuwait','flag-icon-kw','KW',29.5,45.75,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(124,'Laos','backend/image/flags/flag-of-Laos.jpg','laos','flag-icon-la','LA',18,105,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(125,'Lebanon','backend/image/flags/flag-of-Lebanon.jpg','lebanon','flag-icon-lb','LB',33.83333333,35.83333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(126,'Liberia','backend/image/flags/flag-of-Liberia.jpg','liberia','flag-icon-lr','LR',6.5,-9.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(127,'Libya','backend/image/flags/flag-of-Libya.jpg','libya','flag-icon-ly','LY',25,17,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(128,'Saint Lucia','backend/image/flags/flag-of-Saint-Lucia.jpg','saint-lucia','flag-icon-lc','LC',13.88333333,-60.96666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(129,'Liechtenstein','backend/image/flags/flag-of-Liechtenstein.jpg','liechtenstein','flag-icon-li','LI',47.26666666,9.53333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(130,'Sri Lanka','backend/image/flags/flag-of-Sri-Lanka.jpg','sri-lanka','flag-icon-lk','LK',7,81,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(131,'Lesotho','backend/image/flags/flag-of-Lesotho.jpg','lesotho','flag-icon-ls','LS',-29.5,28.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(132,'Lithuania','backend/image/flags/flag-of-Lithuania.jpg','lithuania','flag-icon-lt','LT',56,24,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(133,'Luxembourg','backend/image/flags/flag-of-Luxembourg.jpg','luxembourg','flag-icon-lu','LU',49.75,6.16666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(134,'Latvia','backend/image/flags/flag-of-Latvia.jpg','latvia','flag-icon-lv','LV',57,25,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(135,'Macau','backend/image/flags/flag-of-Macau.jpg','macau','flag-icon-mo','MO',22.16666666,113.55,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(136,'Saint Martin','backend/image/flags/flag-of-Saint-Martin.jpg','saint-martin','flag-icon-mf','MF',18.08333333,-63.95,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(137,'Morocco','backend/image/flags/flag-of-Morocco.jpg','morocco','flag-icon-ma','MA',32,-5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(138,'Monaco','backend/image/flags/flag-of-Monaco.jpg','monaco','flag-icon-mc','MC',43.73333333,7.4,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(139,'Moldova','backend/image/flags/flag-of-Moldova.jpg','moldova','flag-icon-md','MD',47,29,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(140,'Madagascar','backend/image/flags/flag-of-Madagascar.jpg','madagascar','flag-icon-mg','MG',-20,47,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(141,'Maldives','backend/image/flags/flag-of-Maldives.jpg','maldives','flag-icon-mv','MV',3.25,73,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(142,'Mexico','backend/image/flags/flag-of-Mexico.jpg','mexico','flag-icon-mx','MX',23,-102,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(143,'Marshall Islands','backend/image/flags/flag-of-Marshall-Islands.jpg','marshall-islands','flag-icon-mh','MH',9,168,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(144,'Macedonia','backend/image/flags/flag-of-Macedonia.jpg','macedonia','flag-icon-mk','MK',41.83333333,22,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(145,'Mali','backend/image/flags/flag-of-Mali.jpg','mali','flag-icon-ml','ML',17,-4,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(146,'Malta','backend/image/flags/flag-of-Malta.jpg','malta','flag-icon-mt','MT',35.83333333,14.58333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(147,'Myanmar','backend/image/flags/flag-of-Myanmar.jpg','myanmar','flag-icon-mm','MM',22,98,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(148,'Montenegro','backend/image/flags/flag-of-Montenegro.jpg','montenegro','flag-icon-me','ME',42.5,19.3,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(149,'Mongolia','backend/image/flags/flag-of-Mongolia.jpg','mongolia','flag-icon-mn','MN',46,105,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(150,'Northern Mariana Islands','backend/image/flags/flag-of-Northern-Mariana-Islands.jpg','northern-mariana-islands','flag-icon-mp','MP',15.2,145.75,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(151,'Mozambique','backend/image/flags/flag-of-Mozambique.jpg','mozambique','flag-icon-mz','MZ',-18.25,35,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(152,'Mauritania','backend/image/flags/flag-of-Mauritania.jpg','mauritania','flag-icon-mr','MR',20,-12,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(153,'Montserrat','backend/image/flags/flag-of-Montserrat.jpg','montserrat','flag-icon-ms','MS',16.75,-62.2,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(154,'Martinique','backend/image/flags/flag-of-Martinique.jpg','martinique','flag-icon-mq','MQ',14.666667,-61,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(155,'Mauritius','backend/image/flags/flag-of-Mauritius.jpg','mauritius','flag-icon-mu','MU',-20.28333333,57.55,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(156,'Malawi','backend/image/flags/flag-of-Malawi.jpg','malawi','flag-icon-mw','MW',-13.5,34,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(157,'Malaysia','backend/image/flags/flag-of-Malaysia.jpg','malaysia','flag-icon-my','MY',2.5,112.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(158,'Mayotte','backend/image/flags/flag-of-Mayotte.jpg','mayotte','flag-icon-yt','YT',-12.83333333,45.16666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(159,'Namibia','backend/image/flags/flag-of-Namibia.jpg','namibia','flag-icon-na','NA',-22,17,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(160,'New Caledonia','backend/image/flags/flag-of-New-Caledonia.jpg','new-caledonia','flag-icon-nc','NC',-21.5,165.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(161,'Niger','backend/image/flags/flag-of-Niger.jpg','niger','flag-icon-ne','NE',16,8,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(162,'Norfolk Island','backend/image/flags/flag-of-Norfolk-Island.jpg','norfolk-island','flag-icon-nf','NF',-29.03333333,167.95,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(163,'Nigeria','backend/image/flags/flag-of-Nigeria.jpg','nigeria','flag-icon-ng','NG',10,8,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(164,'Nicaragua','backend/image/flags/flag-of-Nicaragua.jpg','nicaragua','flag-icon-ni','NI',13,-85,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(165,'Niue','backend/image/flags/flag-of-Niue.jpg','niue','flag-icon-nu','NU',-19.03333333,-169.86666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(166,'Netherlands','backend/image/flags/flag-of-Netherlands.jpg','netherlands','flag-icon-nl','NL',52.5,5.75,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(167,'Norway','backend/image/flags/flag-of-Norway.jpg','norway','flag-icon-no','NO',62,10,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(168,'Nepal','backend/image/flags/flag-of-Nepal.jpg','nepal','flag-icon-np','NP',28,84,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(169,'Nauru','backend/image/flags/flag-of-Nauru.jpg','nauru','flag-icon-nr','NR',-0.53333333,166.91666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(170,'New Zealand','backend/image/flags/flag-of-New-Zealand.jpg','new-zealand','flag-icon-nz','NZ',-41,174,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(171,'Oman','backend/image/flags/flag-of-Oman.jpg','oman','flag-icon-om','OM',21,57,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(172,'Pakistan','backend/image/flags/flag-of-Pakistan.jpg','pakistan','flag-icon-pk','PK',30,70,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(173,'Panama','backend/image/flags/flag-of-Panama.jpg','panama','flag-icon-pa','PA',9,-80,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(174,'Pitcairn Islands','backend/image/flags/flag-of-Pitcairn-Islands.jpg','pitcairn-islands','flag-icon-pn','PN',-25.06666666,-130.1,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(175,'Peru','backend/image/flags/flag-of-Peru.jpg','peru','flag-icon-pe','PE',-10,-76,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(176,'Philippines','backend/image/flags/flag-of-Philippines.jpg','philippines','flag-icon-ph','PH',13,122,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(177,'Palau','backend/image/flags/flag-of-Palau.jpg','palau','flag-icon-pw','PW',7.5,134.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(178,'Papua New Guinea','backend/image/flags/flag-of-Papua-New-Guinea.jpg','papua-new-guinea','flag-icon-pg','PG',-6,147,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(179,'Poland','backend/image/flags/flag-of-Poland.jpg','poland','flag-icon-pl','PL',52,20,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(180,'Puerto Rico','backend/image/flags/flag-of-Puerto-Rico.jpg','puerto-rico','flag-icon-pr','PR',18.25,-66.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(181,'North Korea','backend/image/flags/flag-of-North-Korea.jpg','north-korea','flag-icon-kp','KP',40,127,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(182,'Portugal','backend/image/flags/flag-of-Portugal.jpg','portugal','flag-icon-pt','PT',39.5,-8,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(183,'Paraguay','backend/image/flags/flag-of-Paraguay.jpg','paraguay','flag-icon-py','PY',-23,-58,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(184,'Palestine','backend/image/flags/flag-of-Palestine.jpg','palestine','flag-icon-ps','PS',31.9,35.2,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(185,'French Polynesia','backend/image/flags/flag-of-French-Polynesia.jpg','french-polynesia','flag-icon-pf','PF',-15,-140,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(186,'Qatar','backend/image/flags/flag-of-Qatar.jpg','qatar','flag-icon-qa','QA',25.5,51.25,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(187,'Réunion','backend/image/flags/flag-of-Réunion.jpg','reunion','flag-icon-re','RE',-21.15,55.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(188,'Romania','backend/image/flags/flag-of-Romania.jpg','romania','flag-icon-ro','RO',46,25,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(189,'Russia','backend/image/flags/flag-of-Russia.jpg','russia','flag-icon-ru','RU',60,100,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(190,'Rwanda','backend/image/flags/flag-of-Rwanda.jpg','rwanda','flag-icon-rw','RW',-2,30,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(191,'Saudi Arabia','backend/image/flags/flag-of-Saudi-Arabia.jpg','saudi-arabia','flag-icon-sa','SA',25,45,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(192,'Sudan','backend/image/flags/flag-of-Sudan.jpg','sudan','flag-icon-sd','SD',15,30,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(193,'Senegal','backend/image/flags/flag-of-Senegal.jpg','senegal','flag-icon-sn','SN',14,-14,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(194,'Singapore','backend/image/flags/flag-of-Singapore.jpg','singapore','flag-icon-sg','SG',1.36666666,103.8,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(195,'South Georgia','backend/image/flags/flag-of-South-Georgia.jpg','south-georgia','flag-icon-gs','GS',-54.5,-37,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(196,'Svalbard and Jan Mayen','backend/image/flags/flag-of-Svalbard-and-Jan-Mayen.jpg','svalbard-and-jan-mayen','flag-icon-sj','SJ',78,20,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(197,'Solomon Islands','backend/image/flags/flag-of-Solomon-Islands.jpg','solomon-islands','flag-icon-sb','SB',-8,159,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(198,'Sierra Leone','backend/image/flags/flag-of-Sierra-Leone.jpg','sierra-leone','flag-icon-sl','SL',8.5,-11.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(199,'El Salvador','backend/image/flags/flag-of-El-Salvador.jpg','el-salvador','flag-icon-sv','SV',13.83333333,-88.91666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(200,'San Marino','backend/image/flags/flag-of-San-Marino.jpg','san-marino','flag-icon-sm','SM',43.76666666,12.41666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(201,'Somalia','backend/image/flags/flag-of-Somalia.jpg','somalia','flag-icon-so','SO',10,49,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(202,'Saint Pierre and Miquelon','backend/image/flags/flag-of-Saint-Pierre-and-Miquelon.jpg','saint-pierre-and-miquelon','flag-icon-pm','PM',46.83333333,-56.33333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(203,'Serbia','backend/image/flags/flag-of-Serbia.jpg','serbia','flag-icon-rs','RS',44,21,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(204,'South Sudan','backend/image/flags/flag-of-South-Sudan.jpg','south-sudan','flag-icon-ss','SS',7,30,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(205,'São Tomé and Príncipe','backend/image/flags/flag-of-São-Tomé-and-Príncipe.jpg','sao-tome-and-principe','flag-icon-st','ST',1,7,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(206,'Suriname','backend/image/flags/flag-of-Suriname.jpg','suriname','flag-icon-sr','SR',4,-56,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(207,'Slovakia','backend/image/flags/flag-of-Slovakia.jpg','slovakia','flag-icon-sk','SK',48.66666666,19.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(208,'Slovenia','backend/image/flags/flag-of-Slovenia.jpg','slovenia','flag-icon-si','SI',46.11666666,14.81666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(209,'Sweden','backend/image/flags/flag-of-Sweden.jpg','sweden','flag-icon-se','SE',62,15,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(210,'Swaziland','backend/image/flags/flag-of-Swaziland.jpg','swaziland','flag-icon-sz','SZ',-26.5,31.5,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(211,'Sint Maarten','backend/image/flags/flag-of-Sint-Maarten.jpg','sint-maarten','flag-icon-sx','SX',18.033333,-63.05,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(212,'Seychelles','backend/image/flags/flag-of-Seychelles.jpg','seychelles','flag-icon-sc','SC',-4.58333333,55.66666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(213,'Syria','backend/image/flags/flag-of-Syria.jpg','syria','flag-icon-sy','SY',35,38,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(214,'Turks and Caicos Islands','backend/image/flags/flag-of-Turks-and-Caicos-Islands.jpg','turks-and-caicos-islands','flag-icon-tc','TC',21.75,-71.58333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(215,'Chad','backend/image/flags/flag-of-Chad.jpg','chad','flag-icon-td','TD',15,19,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(216,'Togo','backend/image/flags/flag-of-Togo.jpg','togo','flag-icon-tg','TG',8,1.16666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(217,'Thailand','backend/image/flags/flag-of-Thailand.jpg','thailand','flag-icon-th','TH',15,100,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(218,'Tajikistan','backend/image/flags/flag-of-Tajikistan.jpg','tajikistan','flag-icon-tj','TJ',39,71,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(219,'Tokelau','backend/image/flags/flag-of-Tokelau.jpg','tokelau','flag-icon-tk','TK',-9,-172,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(220,'Turkmenistan','backend/image/flags/flag-of-Turkmenistan.jpg','turkmenistan','flag-icon-tm','TM',40,60,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(221,'Timor-Leste','backend/image/flags/flag-of-Timor-Leste.jpg','timor-leste','flag-icon-tl','TL',-8.83333333,125.91666666,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(222,'Tonga','backend/image/flags/flag-of-Tonga.jpg','tonga','flag-icon-to','TO',-20,-175,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(223,'Trinidad and Tobago','backend/image/flags/flag-of-Trinidad-and-Tobago.jpg','trinidad-and-tobago','flag-icon-tt','TT',11,-61,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(224,'Tunisia','backend/image/flags/flag-of-Tunisia.jpg','tunisia','flag-icon-tn','TN',34,9,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(225,'Turkey','backend/image/flags/flag-of-Turkey.jpg','turkey','flag-icon-tr','TR',39,35,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(226,'Tuvalu','backend/image/flags/flag-of-Tuvalu.jpg','tuvalu','flag-icon-tv','TV',-8,178,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(227,'Taiwan','backend/image/flags/flag-of-Taiwan.jpg','taiwan','flag-icon-tw','TW',23.5,121,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(228,'Tanzania','backend/image/flags/flag-of-Tanzania.jpg','tanzania','flag-icon-tz','TZ',-6,35,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(229,'Uganda','backend/image/flags/flag-of-Uganda.jpg','uganda','flag-icon-ug','UG',1,32,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(230,'Ukraine','backend/image/flags/flag-of-Ukraine.jpg','ukraine','flag-icon-ua','UA',49,32,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(231,'United States Minor Outlying Islands','backend/image/flags/flag-of-United-States-Minor-Outlying-Islands.jpg','united-states-minor-outlying-islands','flag-icon-um','UM',19.2911437,166.618332,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(232,'Uruguay','backend/image/flags/flag-of-Uruguay.jpg','uruguay','flag-icon-uy','UY',-33,-56,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(233,'United States','backend/image/flags/flag-of-United-States.jpg','united-states','flag-icon-us','US',38,-97,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(234,'Uzbekistan','backend/image/flags/flag-of-Uzbekistan.jpg','uzbekistan','flag-icon-uz','UZ',41,64,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(235,'Vatican City','backend/image/flags/flag-of-Vatican-City.jpg','vatican-city','flag-icon-va','VA',41.9,12.45,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(236,'Saint Vincent and the Grenadines','backend/image/flags/flag-of-Saint-Vincent-and-the-Grenadines.jpg','saint-vincent-and-the-grenadines','flag-icon-vc','VC',13.25,-61.2,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(237,'Venezuela','backend/image/flags/flag-of-Venezuela.jpg','venezuela','flag-icon-ve','VE',8,-66,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(238,'British Virgin Islands','backend/image/flags/flag-of-British-Virgin-Islands.jpg','british-virgin-islands','flag-icon-vg','VG',18.431383,-64.62305,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(239,'United States Virgin Islands','backend/image/flags/flag-of-United-States-Virgin-Islands.jpg','united-states-virgin-islands','flag-icon-vi','VI',18.35,-64.933333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(240,'Vietnam','backend/image/flags/flag-of-Vietnam.jpg','vietnam','flag-icon-vn','VN',16.16666666,107.83333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(241,'Vanuatu','backend/image/flags/flag-of-Vanuatu.jpg','vanuatu','flag-icon-vu','VU',-16,167,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(242,'Wallis and Futuna','backend/image/flags/flag-of-Wallis-and-Futuna.jpg','wallis-and-futuna','flag-icon-wf','WF',-13.3,-176.2,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(243,'Samoa','backend/image/flags/flag-of-Samoa.jpg','samoa','flag-icon-ws','WS',-13.58333333,-172.33333333,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(244,'Yemen','backend/image/flags/flag-of-Yemen.jpg','yemen','flag-icon-ye','YE',15,48,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(245,'South Africa','backend/image/flags/flag-of-South-Africa.jpg','south-africa','flag-icon-za','ZA',-29,24,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(246,'Zambia','backend/image/flags/flag-of-Zambia.jpg','zambia','flag-icon-zm','ZM',-15,30,1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(247,'Zimbabwe','backend/image/flags/flag-of-Zimbabwe.jpg','zimbabwe','flag-icon-zw','ZW',-20,30,1,'2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'United State Dollar','USD','$','left','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earnings`
--

DROP TABLE IF EXISTS `earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `earnings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_provider` enum('flutterwave','mollie','midtrans','paypal','paystack','razorpay','sslcommerz','stripe','instamojo','offline') COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint unsigned NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manual_payment_id` bigint unsigned DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` bigint unsigned DEFAULT NULL,
  `payment_type` enum('subscription_based','per_job_based') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscription_based',
  PRIMARY KEY (`id`),
  KEY `earnings_company_id_foreign` (`company_id`),
  KEY `earnings_manual_payment_id_foreign` (`manual_payment_id`),
  KEY `earnings_plan_id_foreign` (`plan_id`),
  CONSTRAINT `earnings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `earnings_manual_payment_id_foreign` FOREIGN KEY (`manual_payment_id`) REFERENCES `manual_payments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `earnings_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earnings`
--

LOCK TABLES `earnings` WRITE;
/*!40000 ALTER TABLE `earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'High School','high-school','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'Intermediate','intermediate','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'Bachelor Degree','bachelor-degree','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'Master Degree','master-degree','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'Graduated','graduated','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'PhD','phd','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'Any','any','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'New User','new_user','Welcome {user_name}','<p>Hi {user_name},</p><p>Welcome to {company_name}. It\'s great to have you here!</p><p>Have a great time!</p><p>Regards,<br>{company_name} team</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(2,'Edited Job','new_edited_job_available','New Edited Job Available For Approval!','<p>Hello <strong>{admin_name}</strong>,<br>A new edited job available for approval!</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(3,'New Job Available','new_job_available','New Job Available For Approval!','<p>Hello {admin_name},<br>A new job available for approval!</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(4,'New Plan Purchase','new_plan_purchase','{user_name} Has Purchased The {plan_label} Plan!','<p>{user_name} Has Purchased The {plan_label} Plan!</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(5,'New User Registered','new_user_registered','New {user_role} Registered!','<p>Hello {admin_name},<br>A {user_role} Registered Recently!</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(6,'Plan Purchase','plan_purchase','Plan Purchased','<p>Hello {user_name}!<br>You purchase of {plan_type} has been successfully completed!<br>Regards</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(7,'New Pending Candidate','new_pending_candidate','Candidate Created','<p>Hello {user_name},<br><br>Your candidate profile has been created and is waiting for admin approval.<br><br>Please login with your credentials below to check status -<br>Your Email : {user_email}<br>Your Password : {user_password}<br><br>Regards</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(8,'New Candidate','new_candidate','Candidate Created','<p>Hello {user_name},<br><br>Your candidate profile has been created.<br><br>Please login with your credentials below to check status -<br>Your Email : {user_email}<br>Your Password : {user_password}<br><br>Regards</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(9,'New Company Pending','new_company_pending','Company created and waiting for admin approval','<p>Hello {user_name},<br><br>Your company profile has been created and is waiting for admin approval.<br><br>Please check back your account with the login information below -<br>Your Email : {user_email}<br>Your Password : {user_password}<br><br>Regards</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(10,'New Company','new_company','Company Created','<p>Hello {user_name},<br><br>Your company profile has been created. Please login with below information.<br><br>Please check back your account with the login information below -<br>Your Email : {user_email}<br>Your Password : {user_password}<br><br>Regards</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(11,'Update Company Password','update_company_pass','{account_type} Updated','<p>Hello {user_name},<br><br>Your {account_type} profile password updated.<br><br>Your Email : {user_email}<br>Your password : {password}<br><br>Regards</p>','2023-02-24 04:43:18','2023-02-24 04:43:18'),(12,'Verify Subscription Notification','verify_subscription_notification','Verify Your Subscription','<p>Please verify your subscription by clicking below link.<br>Regards</p>','2023-02-24 04:43:18','2023-02-24 04:43:18');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (1,'Fresher','fresher','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'1 Year','1-year','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'2 Years','2-years','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'3+ Years','3-years','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'5+ Years','5-years','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'8+ Years','8-years','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'10+ Years','10-years','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,'15+ Years','15-years','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faq_categories_name_unique` (`name`),
  UNIQUE KEY `faq_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Job','job','fas fa-briefcase',0,'2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `faq_category_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `faqs_faq_category_id_foreign` (`faq_category_id`),
  CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_type_translations`
--

DROP TABLE IF EXISTS `industry_type_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry_type_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `industry_type_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `industry_type_translations_industry_type_id_foreign` (`industry_type_id`),
  CONSTRAINT `industry_type_translations_industry_type_id_foreign` FOREIGN KEY (`industry_type_id`) REFERENCES `industry_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_type_translations`
--

LOCK TABLES `industry_type_translations` WRITE;
/*!40000 ALTER TABLE `industry_type_translations` DISABLE KEYS */;
INSERT INTO `industry_type_translations` VALUES (1,1,'Agro Based Industry','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,2,'Archi/Enggr/Construction','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,3,'Automobile/Industrial Machine','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,4,'Bank/Mon-Bank Fin. Institute','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,5,'Electronics/Consumer Durables','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,6,'Energy/Power/Fuel','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,7,'Garments/Textile','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,8,'Govt./Semi-Govt./Autonomous','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,9,'Pharmaceuticals','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,10,'Hospital/Diagnostic Center','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,11,'Airline/Travel/Tourism','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,12,'Manufacturing (Light Industry)','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(13,13,'Manufacturing (Heavy Industry)','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(14,14,'Hotel/Restaurant','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(15,15,'Information Technology','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(16,16,'Logistics/Transportation','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(17,17,'Entertainment/Recreation','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(18,18,'Media/Advertising/Event Mgt.','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(19,19,'NGO/Development','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(20,20,'Real Estate/Development','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(21,21,'Wholesale/Retail/Export-Import','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(22,22,'Telecommunication','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(23,23,'Food & Beverage Industry','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(24,24,'Security Service','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(25,25,'Fire, Safety & Protection','en','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `industry_type_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_types`
--

DROP TABLE IF EXISTS `industry_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_types`
--

LOCK TABLES `industry_types` WRITE;
/*!40000 ALTER TABLE `industry_types` DISABLE KEYS */;
INSERT INTO `industry_types` VALUES (1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(13,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(14,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(15,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(16,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(17,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(18,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(19,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(20,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(21,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(22,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(23,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(24,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(25,'2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `industry_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_benefit`
--

DROP TABLE IF EXISTS `job_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_benefit` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `benefit_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_benefit_job_id_foreign` (`job_id`),
  KEY `job_benefit_benefit_id_foreign` (`benefit_id`),
  CONSTRAINT `job_benefit_benefit_id_foreign` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`) ON DELETE CASCADE,
  CONSTRAINT `job_benefit_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_benefit`
--

LOCK TABLES `job_benefit` WRITE;
/*!40000 ALTER TABLE `job_benefit` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_benefit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_categories`
--

DROP TABLE IF EXISTS `job_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `icon` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_categories`
--

LOCK TABLES `job_categories` WRITE;
/*!40000 ALTER TABLE `job_categories` DISABLE KEYS */;
INSERT INTO `job_categories` VALUES (1,'backend/image/default.png','fas fa-hammer','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'backend/image/default.png','fas fa-tshirt','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'backend/image/default.png','fas fa-pen','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'backend/image/default.png','fas fa-hospital','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'backend/image/default.png','fas fa-desktop','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'backend/image/default.png','fas fa-user-md','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'backend/image/default.png','fas fa-car','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,'backend/image/default.png','fas fa-gavel','2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,'backend/image/default.png','fas fa-ellipsis-v','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `job_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_category_translations`
--

DROP TABLE IF EXISTS `job_category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_category_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_category_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_category_translations_job_category_id_foreign` (`job_category_id`),
  CONSTRAINT `job_category_translations_job_category_id_foreign` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_category_translations`
--

LOCK TABLES `job_category_translations` WRITE;
/*!40000 ALTER TABLE `job_category_translations` DISABLE KEYS */;
INSERT INTO `job_category_translations` VALUES (1,1,'Engineer/Architects','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,2,'Garments/Textile','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,3,'Design/Creative','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,4,'Hospitality/ Travel/ Tourism','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,5,'IT & Telecommunication','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,6,'Medical/Pharma','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,7,'Driving/Motor Technician','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,8,'Law/Legal','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,9,'Others','en','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `job_category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_role_translations`
--

DROP TABLE IF EXISTS `job_role_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_role_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_role_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_role_translations_job_role_id_foreign` (`job_role_id`),
  CONSTRAINT `job_role_translations_job_role_id_foreign` FOREIGN KEY (`job_role_id`) REFERENCES `job_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_role_translations`
--

LOCK TABLES `job_role_translations` WRITE;
/*!40000 ALTER TABLE `job_role_translations` DISABLE KEYS */;
INSERT INTO `job_role_translations` VALUES (1,1,'Team Leader','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,2,'Manager','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,3,'Assistant Manager','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,4,'Executive','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,5,'Director','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,6,'Administrator','en','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `job_role_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_roles`
--

DROP TABLE IF EXISTS `job_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_roles`
--

LOCK TABLES `job_roles` WRITE;
/*!40000 ALTER TABLE `job_roles` DISABLE KEYS */;
INSERT INTO `job_roles` VALUES (1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `job_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tag`
--

DROP TABLE IF EXISTS `job_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tag` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_tag_job_id_foreign` (`job_id`),
  KEY `job_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `job_tag_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `job_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tag`
--

LOCK TABLES `job_tag` WRITE;
/*!40000 ALTER TABLE `job_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_types`
--

DROP TABLE IF EXISTS `job_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_types`
--

LOCK TABLES `job_types` WRITE;
/*!40000 ALTER TABLE `job_types` DISABLE KEYS */;
INSERT INTO `job_types` VALUES (1,'Full Time','full-time','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'Part Time','part-time','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'Contractual','contractual','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'Intern','intern','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'Freelance','freelance','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `job_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `experience_id` bigint unsigned NOT NULL,
  `education_id` bigint unsigned NOT NULL,
  `job_type_id` bigint unsigned NOT NULL,
  `salary_type_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancies` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_salary` int DEFAULT '0',
  `max_salary` int DEFAULT '0',
  `deadline` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','active','expired') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `apply_on` enum('app','email','custom_url') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'app',
  `apply_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_until` date DEFAULT NULL,
  `highlight` tinyint(1) NOT NULL DEFAULT '0',
  `highlight_until` date DEFAULT NULL,
  `is_remote` tinyint(1) NOT NULL DEFAULT '0',
  `total_views` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `parent_job_id` bigint unsigned DEFAULT NULL,
  `waiting_for_edit_approval` tinyint(1) NOT NULL DEFAULT '0',
  `salary_mode` enum('range','custom') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'range',
  `custom_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_company_id_foreign` (`company_id`),
  KEY `jobs_category_id_foreign` (`category_id`),
  KEY `jobs_role_id_foreign` (`role_id`),
  KEY `jobs_experience_id_foreign` (`experience_id`),
  KEY `jobs_education_id_foreign` (`education_id`),
  KEY `jobs_job_type_id_foreign` (`job_type_id`),
  KEY `jobs_salary_type_id_foreign` (`salary_type_id`),
  CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jobs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jobs_education_id_foreign` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jobs_experience_id_foreign` FOREIGN KEY (`experience_id`) REFERENCES `experiences` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jobs_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jobs_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `job_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jobs_salary_type_id_foreign` FOREIGN KEY (`salary_type_id`) REFERENCES `salary_types` (`id`) ON DELETE CASCADE
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
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_name_unique` (`name`),
  UNIQUE KEY `languages_code_unique` (`code`),
  UNIQUE KEY `languages_icon_unique` (`icon`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','flag-icon-gb','ltr','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manual_payments`
--

DROP TABLE IF EXISTS `manual_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manual_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('bank_payment','cash_payment','check_payment','custom_payment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manual_payments`
--

LOCK TABLES `manual_payments` WRITE;
/*!40000 ALTER TABLE `manual_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `manual_payments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2020_11_12_184107_create_permission_tables',1),(4,'2020_12_23_122556_create_contacts_table',1),(5,'2021_02_18_112239_create_admins_table',1),(6,'2021_07_14_154223_create_users_table',1),(7,'2021_08_23_115402_create_settings_table',1),(8,'2021_08_25_061331_create_languages_table',1),(9,'2021_12_14_142236_create_emails_table',1),(10,'2021_12_17_110211_create_testimonials_table',1),(11,'2021_12_19_152529_create_faq_categories_table',1),(12,'2021_12_21_105713_create_faqs_table',1),(13,'2022_01_25_131111_add_fields_to_settings_table',1),(14,'2022_01_26_091457_add_social_login_fields_to_users_table',1),(15,'2022_01_27_044638_create_experiences_table',1),(16,'2022_01_27_044649_create_education_table',1),(17,'2022_01_27_055733_create_job_types_table',1),(18,'2022_01_27_060057_create_salary_types_table',1),(19,'2022_01_27_081546_create_organization_types_table',1),(20,'2022_01_27_095019_create_team_sizes_table',1),(21,'2022_01_27_101204_create_nationalities_table',1),(22,'2022_01_27_121442_create_countries_table',1),(23,'2022_01_27_121452_create_states_table',1),(24,'2022_01_27_121453_create_cities_table',1),(25,'2022_01_28_030131_create_industry_types_table',1),(26,'2022_01_28_030802_create_professions_table',1),(27,'2022_01_28_033627_create_job_roles_table',1),(28,'2022_01_29_110746_create_companies_table',1),(29,'2022_01_29_120010_create_job_categories_table',1),(30,'2022_01_29_120020_create_candidates_table',1),(31,'2022_01_29_133751_create_jobs_table',1),(32,'2022_01_30_051177_create_post_categories_table',1),(33,'2022_01_30_051199_create_posts_table',1),(34,'2022_02_09_154506_create_company_bookmark_categories_table',1),(35,'2022_02_10_154506_create_bookmark_company_table',1),(36,'2022_02_10_160813_create_bookmark_candidate_job_table',1),(37,'2022_02_10_160821_create_bookmark_candidate_company_table',1),(38,'2022_02_10_161917_create_social_links_table',1),(39,'2022_02_10_162218_create_contact_infos_table',1),(40,'2022_02_19_141812_create_plans_table',1),(41,'2022_02_22_114329_create_post_comments_table',1),(42,'2022_02_22_183128_create_application_groups_table',1),(43,'2022_02_22_183129_create_applied_jobs_table',1),(44,'2022_03_01_213343_create_website_settings_table',1),(45,'2022_03_05_125615_create_currencies_table',1),(46,'2022_03_05_145248_create_abouts_table',1),(47,'2022_03_05_181737_create_our_missions_table',1),(48,'2022_03_08_110106_create_notifications_table',1),(49,'2022_03_10_110704_create_cms_table',1),(50,'2022_03_13_143318_create_payment_settings_table',1),(51,'2022_03_13_162626_create_user_plans_table',1),(52,'2022_03_13_193937_create_orders_table',1),(53,'2022_03_13_204812_create_earnings_table',1),(54,'2022_03_15_100012_create_terms_categories_table',1),(55,'2022_03_24_045305_create_seos_table',1),(56,'2022_03_26_130136_create_queue_jobs_table',1),(57,'2022_03_28_093629_add_socialite_column_to_users_table',1),(58,'2022_03_28_123603_create_theme_settings_table',1),(59,'2022_03_29_100616_create_timezones_table',1),(60,'2022_03_29_121851_create_admin_searches_table',1),(61,'2022_03_30_082959_create_cookies_table',1),(62,'2022_04_25_132657_create_setup_guides_table',1),(63,'2022_04_27_090501_create_bookmark_company_category_table',1),(64,'2022_04_30_041155_create_company_applied_job_rejected_table',1),(65,'2022_04_30_043011_create_company_applied_job_shortlist_table',1),(66,'2022_06_18_031525_add_full_address_to_candidates_table',1),(67,'2022_06_18_031525_add_full_address_to_companies_table',1),(68,'2022_06_18_031525_add_full_address_to_jobs_table',1),(69,'2022_06_27_050337_add_map_to_settings_table',1),(70,'2022_07_19_062856_create_manual_payments_table',1),(71,'2022_07_20_033046_add_manual_payment_id_to_earnings_table',1),(72,'2022_07_23_044852_add_transaction_id_to_earnings_table',1),(73,'2022_08_02_103529_create_candidate_resumes_table',1),(74,'2022_08_03_061932_add_fields_to_applied_jobs_table',1),(75,'2022_08_29_035902_add_employer_activation_field_to_settings_table',1),(76,'2022_08_29_063449_remove_some_columns_from_cms_table',1),(77,'2022_08_29_090125_create_cms_contents_table',1),(78,'2022_08_30_115827_remove_add_settings_table',1),(79,'2022_09_06_052408_create_skills_table',1),(80,'2022_09_06_052409_create_candidate_languages_table',1),(81,'2022_09_06_053034_create_candidate_skill_table',1),(82,'2022_09_06_053045_create_candidate_language_table',1),(83,'2022_10_16_063305_add_language_field_to_faqs_tables',1),(84,'2022_10_16_063328_add_language_field_to_testimonials_tables',1),(85,'2022_10_16_071227_add_available_status_fields_to_candidates_table',1),(86,'2022_10_16_100636_add_payperjob_field_to_settings_table',1),(87,'2022_10_17_024137_add_plan_id_field_to_earnings_table',1),(88,'2022_11_07_091932_add_candidate_account_auto_activation_to_settings_table',1),(89,'2022_11_09_040558_create_seo_page_contents_table',1),(90,'2022_11_11_085423_add_leaflet_map_field_to_settings_table',1),(91,'2022_11_12_060938_create_candidate_experiences_table',1),(92,'2022_11_12_091250_create_candidate_education_table',1),(93,'2022_11_15_095541_add_profile_limitaion_field_to_plans_table',1),(94,'2022_11_15_102325_add_profile_limitaion_field_to_user_plans_table',1),(95,'2022_11_17_083919_add_job_auto_approve_columns_to_settings',1),(96,'2022_11_17_090506_add_job_edited_columns_to_jobs',1),(97,'2022_11_18_032938_create_benefits_table',1),(98,'2022_11_18_032939_create_tags_table',1),(99,'2022_11_18_032940_create_job_benefit_table',1),(100,'2022_11_18_032941_create_job_tag_table',1),(101,'2022_11_23_104905_add_delete_columns_to_seos_table',1),(102,'2022_12_20_094532_change_salary_column_to_jobs_table',1),(103,'2022_12_20_102724_add_currency_switcher_field_to_settings_table',1),(104,'2022_12_23_104503_create_candidate_language_permission_table',1),(105,'2022_12_25_062232_add_highlight_features_job_duration_to_settings_table',1),(106,'2022_12_25_062645_add_highlight_featured_job_duration_field_to_jobs_table',1),(107,'2022_12_25_110928_create_benefit_permission_seeder_table',1),(108,'2022_12_26_082221_create_candidate_cv_views_table',1),(109,'2023_02_03_103051_add_currently_working_field_to_candidate_experiences_table',1),(110,'2023_02_06_112504_create_industry_type_translations_table',1),(111,'2023_02_07_034518_create_benefit_translations_table',1),(112,'2023_02_07_034909_create_profession_translations_table',1),(113,'2023_02_07_035108_create_skill_translations_table',1),(114,'2023_02_07_040101_create_job_role_translations_table',1),(115,'2023_02_07_095642_create_job_category_translations_table',1),(116,'2023_02_10_043825_add_fields_to_jobs_table',1),(117,'2023_02_10_053823_add_refund_page_column_to_cms_table',1),(118,'2023_02_13_093723_create_email_templates_table',1),(119,'2023_02_15_052022_remove_nationality_field_from_companies_table',1),(120,'2023_02_15_052100_remove_nationality_field_from_candidates_table',1),(121,'2023_02_16_085939_add_deadline_expiration_limit_to_settings_table',1),(122,'2023_02_17_022353_create_tags_crud_permission_table',1),(123,'2023_02_20_045609_create_tag_translations_table',1),(124,'2023_02_20_082840_add_show_popular_list_column_into_tags_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\Admin',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationalities`
--

DROP TABLE IF EXISTS `nationalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationalities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationalities`
--

LOCK TABLES `nationalities` WRITE;
/*!40000 ALTER TABLE `nationalities` DISABLE KEYS */;
/*!40000 ALTER TABLE `nationalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_types`
--

DROP TABLE IF EXISTS `organization_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_types`
--

LOCK TABLES `organization_types` WRITE;
/*!40000 ALTER TABLE `organization_types` DISABLE KEYS */;
INSERT INTO `organization_types` VALUES (1,'Government','government','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'Semi Government','semi-government','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'Public','public','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'Private','private','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'NGO','ngo','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'International Agencies','international-agencies','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `organization_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_missions`
--

DROP TABLE IF EXISTS `our_missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `our_missions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mission_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/assets/images/banner/about-banner-5.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_missions`
--

LOCK TABLES `our_missions` WRITE;
/*!40000 ALTER TABLE `our_missions` DISABLE KEYS */;
/*!40000 ALTER TABLE `our_missions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `paypal` tinyint(1) NOT NULL DEFAULT '1',
  `paypal_live_mode` tinyint(1) NOT NULL DEFAULT '0',
  `stripe` tinyint(1) NOT NULL DEFAULT '1',
  `razorpay` tinyint(1) NOT NULL DEFAULT '1',
  `paystack` tinyint(1) NOT NULL DEFAULT '1',
  `ssl_commerz` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
INSERT INTO `payment_settings` VALUES (1,1,0,1,1,1,1,'2023-02-24 04:43:19','2023-02-24 04:43:19');
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin.create','admin','admin','2023-02-24 04:43:16','2023-02-24 04:43:16'),(2,'admin.view','admin','admin','2023-02-24 04:43:16','2023-02-24 04:43:16'),(3,'admin.edit','admin','admin','2023-02-24 04:43:16','2023-02-24 04:43:16'),(4,'admin.delete','admin','admin','2023-02-24 04:43:16','2023-02-24 04:43:16'),(5,'order.view','admin','order','2023-02-24 04:43:16','2023-02-24 04:43:16'),(6,'order.download','admin','order','2023-02-24 04:43:16','2023-02-24 04:43:16'),(7,'company.create','admin','company','2023-02-24 04:43:16','2023-02-24 04:43:16'),(8,'company.view','admin','company','2023-02-24 04:43:16','2023-02-24 04:43:16'),(9,'company.update','admin','company','2023-02-24 04:43:16','2023-02-24 04:43:16'),(10,'company.delete','admin','company','2023-02-24 04:43:16','2023-02-24 04:43:16'),(11,'map.create','admin','map','2023-02-24 04:43:16','2023-02-24 04:43:16'),(12,'map.view','admin','map','2023-02-24 04:43:16','2023-02-24 04:43:16'),(13,'map.update','admin','map','2023-02-24 04:43:16','2023-02-24 04:43:16'),(14,'map.delete','admin','map','2023-02-24 04:43:16','2023-02-24 04:43:16'),(15,'candidate.create','admin','candidate','2023-02-24 04:43:16','2023-02-24 04:43:16'),(16,'candidate.view','admin','candidate','2023-02-24 04:43:16','2023-02-24 04:43:16'),(17,'candidate.update','admin','candidate','2023-02-24 04:43:16','2023-02-24 04:43:16'),(18,'candidate.delete','admin','candidate','2023-02-24 04:43:16','2023-02-24 04:43:16'),(19,'job.create','admin','job','2023-02-24 04:43:16','2023-02-24 04:43:16'),(20,'job.view','admin','job','2023-02-24 04:43:16','2023-02-24 04:43:16'),(21,'job.update','admin','job','2023-02-24 04:43:16','2023-02-24 04:43:16'),(22,'job.delete','admin','job','2023-02-24 04:43:16','2023-02-24 04:43:16'),(23,'job_category.create','admin','job_category','2023-02-24 04:43:16','2023-02-24 04:43:16'),(24,'job_category.view','admin','job_category','2023-02-24 04:43:16','2023-02-24 04:43:16'),(25,'job_category.update','admin','job_category','2023-02-24 04:43:16','2023-02-24 04:43:16'),(26,'job_category.delete','admin','job_category','2023-02-24 04:43:16','2023-02-24 04:43:16'),(27,'job_role.view','admin','job_role','2023-02-24 04:43:16','2023-02-24 04:43:16'),(28,'job_role.create','admin','job_role','2023-02-24 04:43:16','2023-02-24 04:43:16'),(29,'job_role.update','admin','job_role','2023-02-24 04:43:16','2023-02-24 04:43:16'),(30,'job_role.delete','admin','job_role','2023-02-24 04:43:16','2023-02-24 04:43:16'),(31,'plan.create','admin','price_plan','2023-02-24 04:43:16','2023-02-24 04:43:16'),(32,'plan.view','admin','price_plan','2023-02-24 04:43:16','2023-02-24 04:43:16'),(33,'plan.update','admin','price_plan','2023-02-24 04:43:16','2023-02-24 04:43:16'),(34,'plan.delete','admin','price_plan','2023-02-24 04:43:16','2023-02-24 04:43:16'),(35,'industry_types.create','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(36,'industry_types.view','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(37,'industry_types.update','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(38,'industry_types.delete','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(39,'professions.create','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(40,'professions.view','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(41,'professions.update','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(42,'professions.delete','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(43,'skills.create','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(44,'skills.view','admin','attributes','2023-02-24 04:43:16','2023-02-24 04:43:16'),(45,'skills.update','admin','attributes','2023-02-24 04:43:17','2023-02-24 04:43:17'),(46,'skills.delete','admin','attributes','2023-02-24 04:43:17','2023-02-24 04:43:17'),(47,'post.create','admin','blog','2023-02-24 04:43:17','2023-02-24 04:43:17'),(48,'post.view','admin','blog','2023-02-24 04:43:17','2023-02-24 04:43:17'),(49,'post.update','admin','blog','2023-02-24 04:43:17','2023-02-24 04:43:17'),(50,'post.delete','admin','blog','2023-02-24 04:43:17','2023-02-24 04:43:17'),(51,'country.create','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(52,'country.view','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(53,'country.update','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(54,'country.delete','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(55,'state.create','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(56,'state.view','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(57,'state.update','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(58,'state.delete','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(59,'city.create','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(60,'city.view','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(61,'city.update','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(62,'city.delete','admin','location','2023-02-24 04:43:17','2023-02-24 04:43:17'),(63,'newsletter.view','admin','newsletter','2023-02-24 04:43:17','2023-02-24 04:43:17'),(64,'newsletter.sendmail','admin','newsletter','2023-02-24 04:43:17','2023-02-24 04:43:17'),(65,'newsletter.delete','admin','newsletter','2023-02-24 04:43:17','2023-02-24 04:43:17'),(66,'contact.view','admin','contact','2023-02-24 04:43:17','2023-02-24 04:43:17'),(67,'contact.delete','admin','contact','2023-02-24 04:43:17','2023-02-24 04:43:17'),(68,'testimonial.create','admin','testimonial','2023-02-24 04:43:17','2023-02-24 04:43:17'),(69,'testimonial.view','admin','testimonial','2023-02-24 04:43:17','2023-02-24 04:43:17'),(70,'testimonial.update','admin','testimonial','2023-02-24 04:43:17','2023-02-24 04:43:17'),(71,'testimonial.delete','admin','testimonial','2023-02-24 04:43:17','2023-02-24 04:43:17'),(72,'faq.create','admin','faq','2023-02-24 04:43:17','2023-02-24 04:43:17'),(73,'faq.view','admin','faq','2023-02-24 04:43:17','2023-02-24 04:43:17'),(74,'faq.update','admin','faq','2023-02-24 04:43:17','2023-02-24 04:43:17'),(75,'faq.delete','admin','faq','2023-02-24 04:43:17','2023-02-24 04:43:17'),(76,'role.create','admin','role','2023-02-24 04:43:17','2023-02-24 04:43:17'),(77,'role.view','admin','role','2023-02-24 04:43:17','2023-02-24 04:43:17'),(78,'role.edit','admin','role','2023-02-24 04:43:17','2023-02-24 04:43:17'),(79,'role.delete','admin','role','2023-02-24 04:43:17','2023-02-24 04:43:17'),(80,'setting.view','admin','settings','2023-02-24 04:43:17','2023-02-24 04:43:17'),(81,'setting.update','admin','settings','2023-02-24 04:43:17','2023-02-24 04:43:17'),(82,'candidate-language.create','admin','candidate-language','2023-02-24 04:43:17','2023-02-24 04:43:17'),(83,'candidate-language.view','admin','candidate-language','2023-02-24 04:43:17','2023-02-24 04:43:17'),(84,'candidate-language.update','admin','candidate-language','2023-02-24 04:43:17','2023-02-24 04:43:17'),(85,'candidate-language.delete','admin','candidate-language','2023-02-24 04:43:17','2023-02-24 04:43:17'),(86,'benefits.create','admin','attributes','2023-02-24 04:43:17','2023-02-24 04:43:17'),(87,'benefits.view','admin','attributes','2023-02-24 04:43:17','2023-02-24 04:43:17'),(88,'benefits.update','admin','attributes','2023-02-24 04:43:17','2023-02-24 04:43:17'),(89,'benefits.delete','admin','attributes','2023-02-24 04:43:17','2023-02-24 04:43:17'),(90,'tags.create','admin','attributes','2023-02-24 04:43:18','2023-02-24 04:43:18'),(91,'tags.view','admin','attributes','2023-02-24 04:43:18','2023-02-24 04:43:18'),(92,'tags.update','admin','attributes','2023-02-24 04:43:18','2023-02-24 04:43:18'),(93,'tags.delete','admin','attributes','2023-02-24 04:43:19','2023-02-24 04:43:19');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `job_limit` int NOT NULL,
  `featured_job_limit` int NOT NULL,
  `highlight_job_limit` int NOT NULL,
  `candidate_cv_view_limit` int NOT NULL DEFAULT '0',
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `frontend_show` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `candidate_cv_view_limitation` enum('unlimited','limited') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'limited',
  PRIMARY KEY (`id`),
  UNIQUE KEY `plans_label_unique` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Trial','This is the trial plan',0.00,1,1,1,5,0,0,'2023-02-24 04:43:20','2023-02-24 04:43:20','limited');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_comments_author_id_foreign` (`author_id`),
  KEY `post_comments_post_id_foreign` (`post_id`),
  CONSTRAINT `post_comments_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comments`
--

LOCK TABLES `post_comments` WRITE;
/*!40000 ALTER TABLE `post_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('draft','published') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_category_id_foreign` (`category_id`),
  KEY `posts_author_id_foreign` (`author_id`),
  CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession_translations`
--

DROP TABLE IF EXISTS `profession_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profession_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `profession_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profession_translations_profession_id_foreign` (`profession_id`),
  CONSTRAINT `profession_translations_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession_translations`
--

LOCK TABLES `profession_translations` WRITE;
/*!40000 ALTER TABLE `profession_translations` DISABLE KEYS */;
INSERT INTO `profession_translations` VALUES (1,1,'Physician','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,2,'Engineer','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,3,'Chef','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,4,'Lawyer','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,5,'Designer','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,6,'Labourer','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,7,'Dentist','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,8,'Accountant','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,9,'Dental Hygienist','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,10,'Actor','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,11,'Electrician','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,12,'Software Developer','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(13,13,'Pharmacist','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(14,14,'Technician','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(15,15,'Artist','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(16,16,'Teacher','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(17,17,'Journalist','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(18,18,'Cashier','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(19,19,'Secretary','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(20,20,'Scientist','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(21,21,'Soldier','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(22,22,'Gardener','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(23,23,'Farmer','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(24,24,'Librarian','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(25,25,'Driver','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(26,26,'Fishermen','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(27,27,'Police Officer ','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(28,28,'Tailor','en','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `profession_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professions`
--

DROP TABLE IF EXISTS `professions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professions`
--

LOCK TABLES `professions` WRITE;
/*!40000 ALTER TABLE `professions` DISABLE KEYS */;
INSERT INTO `professions` VALUES (1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(13,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(14,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(15,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(16,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(17,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(18,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(19,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(20,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(21,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(22,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(23,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(24,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(25,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(26,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(27,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(28,'2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `professions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue_jobs`
--

DROP TABLE IF EXISTS `queue_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queue_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_jobs`
--

LOCK TABLES `queue_jobs` WRITE;
/*!40000 ALTER TABLE `queue_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'superadmin','admin','2023-02-24 04:43:16','2023-02-24 04:43:16');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_types`
--

DROP TABLE IF EXISTS `salary_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_types`
--

LOCK TABLES `salary_types` WRITE;
/*!40000 ALTER TABLE `salary_types` DISABLE KEYS */;
INSERT INTO `salary_types` VALUES (1,'Monthly','monthly','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'Project Basis','project-basis','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'Hourly','hourly','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'Yearly','yearly','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `salary_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_page_contents`
--

DROP TABLE IF EXISTS `seo_page_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seo_page_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL,
  `language_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seo_page_contents_page_id_foreign` (`page_id`),
  CONSTRAINT `seo_page_contents_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_page_contents`
--

LOCK TABLES `seo_page_contents` WRITE;
/*!40000 ALTER TABLE `seo_page_contents` DISABLE KEYS */;
INSERT INTO `seo_page_contents` VALUES (1,1,'en','Welcome To Jobpilot','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,2,'en','Jobs','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,3,'en','Job Details','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,4,'en','Candidates','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,5,'en','Candidate Details','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,6,'en','Company','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,7,'en','Company Details','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,8,'en','Blog','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,9,'en','Post Details','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,10,'en','Pricing','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,11,'en','Login','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,12,'en','Register','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(13,13,'en','About','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(14,14,'en','Contact','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(15,15,'en','FAQ','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20'),(16,16,'en','Terms Condition','Jobpilot is job portal laravel script designed to create, manage and publish jobs posts. Companies can create their profile and publish jobs posts. Candidate can apply job posts.','frontend/assets/images/jobpilot.png','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `seo_page_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seos`
--

DROP TABLE IF EXISTS `seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seos`
--

LOCK TABLES `seos` WRITE;
/*!40000 ALTER TABLE `seos` DISABLE KEYS */;
INSERT INTO `seos` VALUES (1,'home','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'jobs','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'job-details','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'candidates','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'candidate-details','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'company','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'company-details','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,'blog','2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,'post-details','2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,'pricing','2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,'login','2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,'register','2023-02-24 04:43:20','2023-02-24 04:43:20'),(13,'about','2023-02-24 04:43:20','2023-02-24 04:43:20'),(14,'contact','2023-02-24 04:43:20','2023-02-24 04:43:20'),(15,'faq','2023-02-24 04:43:20','2023-02-24 04:43:20'),(16,'terms-condition','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `light_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_css` text COLLATE utf8mb4_unicode_ci,
  `header_script` text COLLATE utf8mb4_unicode_ci,
  `body_script` text COLLATE utf8mb4_unicode_ci,
  `sidebar_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_txt_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_txt_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accent_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontend_primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontend_secondary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_process_step1_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_process_step1_description` text COLLATE utf8mb4_unicode_ci,
  `working_process_step2_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_process_step2_description` text COLLATE utf8mb4_unicode_ci,
  `working_process_step3_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_process_step3_description` text COLLATE utf8mb4_unicode_ci,
  `working_process_step4_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_process_step4_description` text COLLATE utf8mb4_unicode_ci,
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `google_analytics` tinyint(1) NOT NULL DEFAULT '0',
  `search_engine_indexing` tinyint(1) NOT NULL DEFAULT '1',
  `default_layout` tinyint(1) NOT NULL DEFAULT '1',
  `default_plan` int unsigned NOT NULL DEFAULT '1',
  `job_limit` int unsigned NOT NULL DEFAULT '1',
  `featured_job_limit` int unsigned NOT NULL DEFAULT '1',
  `highlight_job_limit` int unsigned NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UTC',
  `language_changing` tinyint(1) NOT NULL DEFAULT '1',
  `email_verification` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_map` enum('google-map','map-box','leaflet') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'leaflet',
  `google_map_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_box_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_long` double DEFAULT NULL,
  `default_lat` double DEFAULT NULL,
  `app_country_type` enum('single_base','multiple_base') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'multiple_base',
  `app_country` bigint unsigned DEFAULT NULL,
  `employer_auto_activation` tinyint(1) NOT NULL DEFAULT '1',
  `per_job_active` tinyint(1) NOT NULL DEFAULT '1',
  `per_job_price` double(8,2) DEFAULT '100.00',
  `highlight_job_price` double(8,2) DEFAULT '50.00',
  `featured_job_price` double(8,2) DEFAULT '50.00',
  `candidate_account_auto_activation` tinyint(1) NOT NULL DEFAULT '1',
  `job_auto_approved` tinyint(1) NOT NULL DEFAULT '0',
  `edited_job_auto_approved` tinyint(1) NOT NULL DEFAULT '1',
  `currency_switcher` tinyint(1) NOT NULL DEFAULT '1',
  `highlight_job_days` int DEFAULT '0',
  `featured_job_days` int DEFAULT '0',
  `job_deadline_expiration_limit` int NOT NULL DEFAULT '30',
  PRIMARY KEY (`id`),
  KEY `settings_app_country_foreign` (`app_country`),
  CONSTRAINT `settings_app_country_foreign` FOREIGN KEY (`app_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'jobpilot@zakirsoft.com','frontend/assets/images/logo/logo.png','frontend/assets/images/logo/logowhite.png','frontend/assets/images/logo/fav.png',NULL,NULL,NULL,'#092433','#0A243E','#C1D6F0','#C1D6F0','#0A65CC','#487CB8','#0A65CC','#487CB8','Create Account','Aliquam facilisis egestas sapien, nec tempor leo tristique at.','Upload Cv Resume','Curabitur sit amet maximus ligula. Nam a nulla ante. Nam sodales','Find Suitable Job','Curabitur sit amet maximus ligula. Nam a nulla ante. Nam sodales','Apply Job','Curabitur sit amet maximus ligula. Nam a nulla ante. Nam sodales',0,0,1,1,1,1,1,1,'UTC',1,0,'2023-02-24 04:43:19','2023-02-24 04:47:50','leaflet',NULL,NULL,90.411270491741,23.757853442383,'multiple_base',NULL,1,1,100.00,50.00,50.00,1,0,1,1,0,0,30);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_guides`
--

DROP TABLE IF EXISTS `setup_guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setup_guides` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_guides`
--

LOCK TABLES `setup_guides` WRITE;
/*!40000 ALTER TABLE `setup_guides` DISABLE KEYS */;
INSERT INTO `setup_guides` VALUES (1,'app_setting','App Information ','Add your app logo, name, description, owner and other information.','settings.general','Add App Information',1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'smtp_setting','SMTP Configuration','Add your app logo, name, description, owner and other information.','settings.email','Add Mail Configuration',1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'payment_setting','Enable Payment Method','Enable to payment methods to receive payments from your customer.','settings.payment','Add Payment',1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'theme_setting','Customize Theme','Customize your theme to make your app look more attractive.','settings.theme','Customize Your App Now',1,'2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `setup_guides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_translations`
--

DROP TABLE IF EXISTS `skill_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `skill_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `skill_translations_skill_id_foreign` (`skill_id`),
  CONSTRAINT `skill_translations_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_translations`
--

LOCK TABLES `skill_translations` WRITE;
/*!40000 ALTER TABLE `skill_translations` DISABLE KEYS */;
INSERT INTO `skill_translations` VALUES (1,1,'html','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,2,'css','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,3,'js','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,4,'php','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,5,'laravel','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,6,'mysql','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,7,'vuejs','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,8,'reactjs','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,9,'nodejs','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,10,'expressjs','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,11,'python','en','2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,12,'django','en','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `skill_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(9,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(10,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(11,'2023-02-24 04:43:20','2023-02-24 04:43:20'),(12,'2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `social_media` enum('facebook','twitter','instagram','youtube','linkedin','pinterest','reddit','github','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_links_user_id_foreign` (`user_id`),
  CONSTRAINT `social_links_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `states_country_id_foreign` (`country_id`),
  CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_translations`
--

DROP TABLE IF EXISTS `tag_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_translations_tag_id_foreign` (`tag_id`),
  CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_translations`
--

LOCK TABLES `tag_translations` WRITE;
/*!40000 ALTER TABLE `tag_translations` DISABLE KEYS */;
INSERT INTO `tag_translations` VALUES (1,1,'php','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(2,2,'laravel','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(3,3,'mysql','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(4,4,'job','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(5,5,'frontend','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(6,6,'backend','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(7,7,'bootstrap','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(8,8,'team','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(9,9,'testing','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(10,10,'database','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(11,11,'jobs','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(12,12,'remote','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(13,13,'others','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(14,14,'seeker','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(15,15,'candidate','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(16,16,'company','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(17,17,'technology','en','2023-02-24 04:43:21','2023-02-24 04:43:21'),(18,18,'work','en','2023-02-24 04:43:21','2023-02-24 04:43:21');
/*!40000 ALTER TABLE `tag_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show_popular_list` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(2,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(3,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(4,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(5,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(6,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(7,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(8,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(9,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(10,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(11,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(12,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(13,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(14,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(15,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(16,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(17,'2023-02-24 04:43:21','2023-02-24 04:43:21',0),(18,'2023-02-24 04:43:21','2023-02-24 04:43:21',0);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_sizes`
--

DROP TABLE IF EXISTS `team_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_sizes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_sizes`
--

LOCK TABLES `team_sizes` WRITE;
/*!40000 ALTER TABLE `team_sizes` DISABLE KEYS */;
INSERT INTO `team_sizes` VALUES (1,'Only Me','only-me','2023-02-24 04:43:20','2023-02-24 04:43:20'),(2,'10 Members','10-members','2023-02-24 04:43:20','2023-02-24 04:43:20'),(3,'10-20 Members','10-20-members','2023-02-24 04:43:20','2023-02-24 04:43:20'),(4,'20-50 Members','20-50-members','2023-02-24 04:43:20','2023-02-24 04:43:20'),(5,'50-100 Members','50-100-members','2023-02-24 04:43:20','2023-02-24 04:43:20'),(6,'100-200 Members','100-200-members','2023-02-24 04:43:20','2023-02-24 04:43:20'),(7,'200-500 Members','200-500-members','2023-02-24 04:43:20','2023-02-24 04:43:20'),(8,'500+ Members','500-members','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `team_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_categories`
--

DROP TABLE IF EXISTS `terms_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_categories`
--

LOCK TABLES `terms_categories` WRITE;
/*!40000 ALTER TABLE `terms_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stars` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_settings`
--

DROP TABLE IF EXISTS `theme_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_settings`
--

LOCK TABLES `theme_settings` WRITE;
/*!40000 ALTER TABLE `theme_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `theme_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timezones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmara'),(6,'Africa/Bamako'),(7,'Africa/Bangui'),(8,'Africa/Banjul'),(9,'Africa/Bissau'),(10,'Africa/Blantyre'),(11,'Africa/Brazzaville'),(12,'Africa/Bujumbura'),(13,'Africa/Cairo'),(14,'Africa/Casablanca'),(15,'Africa/Ceuta'),(16,'Africa/Conakry'),(17,'Africa/Dakar'),(18,'Africa/Dar_es_Salaam'),(19,'Africa/Djibouti'),(20,'Africa/Douala'),(21,'Africa/El_Aaiun'),(22,'Africa/Freetown'),(23,'Africa/Gaborone'),(24,'Africa/Harare'),(25,'Africa/Johannesburg'),(26,'Africa/Juba'),(27,'Africa/Kampala'),(28,'Africa/Khartoum'),(29,'Africa/Kigali'),(30,'Africa/Kinshasa'),(31,'Africa/Lagos'),(32,'Africa/Libreville'),(33,'Africa/Lome'),(34,'Africa/Luanda'),(35,'Africa/Lubumbashi'),(36,'Africa/Lusaka'),(37,'Africa/Malabo'),(38,'Africa/Maputo'),(39,'Africa/Maseru'),(40,'Africa/Mbabane'),(41,'Africa/Mogadishu'),(42,'Africa/Monrovia'),(43,'Africa/Nairobi'),(44,'Africa/Ndjamena'),(45,'Africa/Niamey'),(46,'Africa/Nouakchott'),(47,'Africa/Ouagadougou'),(48,'Africa/Porto-Novo'),(49,'Africa/Sao_Tome'),(50,'Africa/Tripoli'),(51,'Africa/Tunis'),(52,'Africa/Windhoek'),(53,'America/Adak'),(54,'America/Anchorage'),(55,'America/Anguilla'),(56,'America/Antigua'),(57,'America/Araguaina'),(58,'America/Argentina/Buenos_Aires'),(59,'America/Argentina/Catamarca'),(60,'America/Argentina/Cordoba'),(61,'America/Argentina/Jujuy'),(62,'America/Argentina/La_Rioja'),(63,'America/Argentina/Mendoza'),(64,'America/Argentina/Rio_Gallegos'),(65,'America/Argentina/Salta'),(66,'America/Argentina/San_Juan'),(67,'America/Argentina/San_Luis'),(68,'America/Argentina/Tucuman'),(69,'America/Argentina/Ushuaia'),(70,'America/Aruba'),(71,'America/Asuncion'),(72,'America/Atikokan'),(73,'America/Bahia'),(74,'America/Bahia_Banderas'),(75,'America/Barbados'),(76,'America/Belem'),(77,'America/Belize'),(78,'America/Blanc-Sablon'),(79,'America/Boa_Vista'),(80,'America/Bogota'),(81,'America/Boise'),(82,'America/Cambridge_Bay'),(83,'America/Campo_Grande'),(84,'America/Cancun'),(85,'America/Caracas'),(86,'America/Cayenne'),(87,'America/Cayman'),(88,'America/Chicago'),(89,'America/Chihuahua'),(90,'America/Ciudad_Juarez'),(91,'America/Costa_Rica'),(92,'America/Creston'),(93,'America/Cuiaba'),(94,'America/Curacao'),(95,'America/Danmarkshavn'),(96,'America/Dawson'),(97,'America/Dawson_Creek'),(98,'America/Denver'),(99,'America/Detroit'),(100,'America/Dominica'),(101,'America/Edmonton'),(102,'America/Eirunepe'),(103,'America/El_Salvador'),(104,'America/Fort_Nelson'),(105,'America/Fortaleza'),(106,'America/Glace_Bay'),(107,'America/Goose_Bay'),(108,'America/Grand_Turk'),(109,'America/Grenada'),(110,'America/Guadeloupe'),(111,'America/Guatemala'),(112,'America/Guayaquil'),(113,'America/Guyana'),(114,'America/Halifax'),(115,'America/Havana'),(116,'America/Hermosillo'),(117,'America/Indiana/Indianapolis'),(118,'America/Indiana/Knox'),(119,'America/Indiana/Marengo'),(120,'America/Indiana/Petersburg'),(121,'America/Indiana/Tell_City'),(122,'America/Indiana/Vevay'),(123,'America/Indiana/Vincennes'),(124,'America/Indiana/Winamac'),(125,'America/Inuvik'),(126,'America/Iqaluit'),(127,'America/Jamaica'),(128,'America/Juneau'),(129,'America/Kentucky/Louisville'),(130,'America/Kentucky/Monticello'),(131,'America/Kralendijk'),(132,'America/La_Paz'),(133,'America/Lima'),(134,'America/Los_Angeles'),(135,'America/Lower_Princes'),(136,'America/Maceio'),(137,'America/Managua'),(138,'America/Manaus'),(139,'America/Marigot'),(140,'America/Martinique'),(141,'America/Matamoros'),(142,'America/Mazatlan'),(143,'America/Menominee'),(144,'America/Merida'),(145,'America/Metlakatla'),(146,'America/Mexico_City'),(147,'America/Miquelon'),(148,'America/Moncton'),(149,'America/Monterrey'),(150,'America/Montevideo'),(151,'America/Montserrat'),(152,'America/Nassau'),(153,'America/New_York'),(154,'America/Nome'),(155,'America/Noronha'),(156,'America/North_Dakota/Beulah'),(157,'America/North_Dakota/Center'),(158,'America/North_Dakota/New_Salem'),(159,'America/Nuuk'),(160,'America/Ojinaga'),(161,'America/Panama'),(162,'America/Paramaribo'),(163,'America/Phoenix'),(164,'America/Port-au-Prince'),(165,'America/Port_of_Spain'),(166,'America/Porto_Velho'),(167,'America/Puerto_Rico'),(168,'America/Punta_Arenas'),(169,'America/Rankin_Inlet'),(170,'America/Recife'),(171,'America/Regina'),(172,'America/Resolute'),(173,'America/Rio_Branco'),(174,'America/Santarem'),(175,'America/Santiago'),(176,'America/Santo_Domingo'),(177,'America/Sao_Paulo'),(178,'America/Scoresbysund'),(179,'America/Sitka'),(180,'America/St_Barthelemy'),(181,'America/St_Johns'),(182,'America/St_Kitts'),(183,'America/St_Lucia'),(184,'America/St_Thomas'),(185,'America/St_Vincent'),(186,'America/Swift_Current'),(187,'America/Tegucigalpa'),(188,'America/Thule'),(189,'America/Tijuana'),(190,'America/Toronto'),(191,'America/Tortola'),(192,'America/Vancouver'),(193,'America/Whitehorse'),(194,'America/Winnipeg'),(195,'America/Yakutat'),(196,'America/Yellowknife'),(197,'Antarctica/Casey'),(198,'Antarctica/Davis'),(199,'Antarctica/DumontDUrville'),(200,'Antarctica/Macquarie'),(201,'Antarctica/Mawson'),(202,'Antarctica/McMurdo'),(203,'Antarctica/Palmer'),(204,'Antarctica/Rothera'),(205,'Antarctica/Syowa'),(206,'Antarctica/Troll'),(207,'Antarctica/Vostok'),(208,'Arctic/Longyearbyen'),(209,'Asia/Aden'),(210,'Asia/Almaty'),(211,'Asia/Amman'),(212,'Asia/Anadyr'),(213,'Asia/Aqtau'),(214,'Asia/Aqtobe'),(215,'Asia/Ashgabat'),(216,'Asia/Atyrau'),(217,'Asia/Baghdad'),(218,'Asia/Bahrain'),(219,'Asia/Baku'),(220,'Asia/Bangkok'),(221,'Asia/Barnaul'),(222,'Asia/Beirut'),(223,'Asia/Bishkek'),(224,'Asia/Brunei'),(225,'Asia/Chita'),(226,'Asia/Choibalsan'),(227,'Asia/Colombo'),(228,'Asia/Damascus'),(229,'Asia/Dhaka'),(230,'Asia/Dili'),(231,'Asia/Dubai'),(232,'Asia/Dushanbe'),(233,'Asia/Famagusta'),(234,'Asia/Gaza'),(235,'Asia/Hebron'),(236,'Asia/Ho_Chi_Minh'),(237,'Asia/Hong_Kong'),(238,'Asia/Hovd'),(239,'Asia/Irkutsk'),(240,'Asia/Jakarta'),(241,'Asia/Jayapura'),(242,'Asia/Jerusalem'),(243,'Asia/Kabul'),(244,'Asia/Kamchatka'),(245,'Asia/Karachi'),(246,'Asia/Kathmandu'),(247,'Asia/Khandyga'),(248,'Asia/Kolkata'),(249,'Asia/Krasnoyarsk'),(250,'Asia/Kuala_Lumpur'),(251,'Asia/Kuching'),(252,'Asia/Kuwait'),(253,'Asia/Macau'),(254,'Asia/Magadan'),(255,'Asia/Makassar'),(256,'Asia/Manila'),(257,'Asia/Muscat'),(258,'Asia/Nicosia'),(259,'Asia/Novokuznetsk'),(260,'Asia/Novosibirsk'),(261,'Asia/Omsk'),(262,'Asia/Oral'),(263,'Asia/Phnom_Penh'),(264,'Asia/Pontianak'),(265,'Asia/Pyongyang'),(266,'Asia/Qatar'),(267,'Asia/Qostanay'),(268,'Asia/Qyzylorda'),(269,'Asia/Riyadh'),(270,'Asia/Sakhalin'),(271,'Asia/Samarkand'),(272,'Asia/Seoul'),(273,'Asia/Shanghai'),(274,'Asia/Singapore'),(275,'Asia/Srednekolymsk'),(276,'Asia/Taipei'),(277,'Asia/Tashkent'),(278,'Asia/Tbilisi'),(279,'Asia/Tehran'),(280,'Asia/Thimphu'),(281,'Asia/Tokyo'),(282,'Asia/Tomsk'),(283,'Asia/Ulaanbaatar'),(284,'Asia/Urumqi'),(285,'Asia/Ust-Nera'),(286,'Asia/Vientiane'),(287,'Asia/Vladivostok'),(288,'Asia/Yakutsk'),(289,'Asia/Yangon'),(290,'Asia/Yekaterinburg'),(291,'Asia/Yerevan'),(292,'Atlantic/Azores'),(293,'Atlantic/Bermuda'),(294,'Atlantic/Canary'),(295,'Atlantic/Cape_Verde'),(296,'Atlantic/Faroe'),(297,'Atlantic/Madeira'),(298,'Atlantic/Reykjavik'),(299,'Atlantic/South_Georgia'),(300,'Atlantic/St_Helena'),(301,'Atlantic/Stanley'),(302,'Australia/Adelaide'),(303,'Australia/Brisbane'),(304,'Australia/Broken_Hill'),(305,'Australia/Darwin'),(306,'Australia/Eucla'),(307,'Australia/Hobart'),(308,'Australia/Lindeman'),(309,'Australia/Lord_Howe'),(310,'Australia/Melbourne'),(311,'Australia/Perth'),(312,'Australia/Sydney'),(313,'Europe/Amsterdam'),(314,'Europe/Andorra'),(315,'Europe/Astrakhan'),(316,'Europe/Athens'),(317,'Europe/Belgrade'),(318,'Europe/Berlin'),(319,'Europe/Bratislava'),(320,'Europe/Brussels'),(321,'Europe/Bucharest'),(322,'Europe/Budapest'),(323,'Europe/Busingen'),(324,'Europe/Chisinau'),(325,'Europe/Copenhagen'),(326,'Europe/Dublin'),(327,'Europe/Gibraltar'),(328,'Europe/Guernsey'),(329,'Europe/Helsinki'),(330,'Europe/Isle_of_Man'),(331,'Europe/Istanbul'),(332,'Europe/Jersey'),(333,'Europe/Kaliningrad'),(334,'Europe/Kirov'),(335,'Europe/Kyiv'),(336,'Europe/Lisbon'),(337,'Europe/Ljubljana'),(338,'Europe/London'),(339,'Europe/Luxembourg'),(340,'Europe/Madrid'),(341,'Europe/Malta'),(342,'Europe/Mariehamn'),(343,'Europe/Minsk'),(344,'Europe/Monaco'),(345,'Europe/Moscow'),(346,'Europe/Oslo'),(347,'Europe/Paris'),(348,'Europe/Podgorica'),(349,'Europe/Prague'),(350,'Europe/Riga'),(351,'Europe/Rome'),(352,'Europe/Samara'),(353,'Europe/San_Marino'),(354,'Europe/Sarajevo'),(355,'Europe/Saratov'),(356,'Europe/Simferopol'),(357,'Europe/Skopje'),(358,'Europe/Sofia'),(359,'Europe/Stockholm'),(360,'Europe/Tallinn'),(361,'Europe/Tirane'),(362,'Europe/Ulyanovsk'),(363,'Europe/Vaduz'),(364,'Europe/Vatican'),(365,'Europe/Vienna'),(366,'Europe/Vilnius'),(367,'Europe/Volgograd'),(368,'Europe/Warsaw'),(369,'Europe/Zagreb'),(370,'Europe/Zurich'),(371,'Indian/Antananarivo'),(372,'Indian/Chagos'),(373,'Indian/Christmas'),(374,'Indian/Cocos'),(375,'Indian/Comoro'),(376,'Indian/Kerguelen'),(377,'Indian/Mahe'),(378,'Indian/Maldives'),(379,'Indian/Mauritius'),(380,'Indian/Mayotte'),(381,'Indian/Reunion'),(382,'Pacific/Apia'),(383,'Pacific/Auckland'),(384,'Pacific/Bougainville'),(385,'Pacific/Chatham'),(386,'Pacific/Chuuk'),(387,'Pacific/Easter'),(388,'Pacific/Efate'),(389,'Pacific/Fakaofo'),(390,'Pacific/Fiji'),(391,'Pacific/Funafuti'),(392,'Pacific/Galapagos'),(393,'Pacific/Gambier'),(394,'Pacific/Guadalcanal'),(395,'Pacific/Guam'),(396,'Pacific/Honolulu'),(397,'Pacific/Kanton'),(398,'Pacific/Kiritimati'),(399,'Pacific/Kosrae'),(400,'Pacific/Kwajalein'),(401,'Pacific/Majuro'),(402,'Pacific/Marquesas'),(403,'Pacific/Midway'),(404,'Pacific/Nauru'),(405,'Pacific/Niue'),(406,'Pacific/Norfolk'),(407,'Pacific/Noumea'),(408,'Pacific/Pago_Pago'),(409,'Pacific/Palau'),(410,'Pacific/Pitcairn'),(411,'Pacific/Pohnpei'),(412,'Pacific/Port_Moresby'),(413,'Pacific/Rarotonga'),(414,'Pacific/Saipan'),(415,'Pacific/Tahiti'),(416,'Pacific/Tarawa'),(417,'Pacific/Tongatapu'),(418,'Pacific/Wake'),(419,'Pacific/Wallis'),(420,'UTC');
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plans`
--

DROP TABLE IF EXISTS `user_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `plan_id` bigint unsigned NOT NULL,
  `job_limit` bigint unsigned NOT NULL DEFAULT '1',
  `featured_job_limit` bigint unsigned NOT NULL DEFAULT '0',
  `highlight_job_limit` bigint unsigned NOT NULL DEFAULT '0',
  `candidate_cv_view_limit` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `candidate_cv_view_limitation` enum('unlimited','limited') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'limited',
  PRIMARY KEY (`id`),
  KEY `user_plans_company_id_foreign` (`company_id`),
  KEY `user_plans_plan_id_foreign` (`plan_id`),
  CONSTRAINT `user_plans_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_plans_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plans`
--

LOCK TABLES `user_plans` WRITE;
/*!40000 ALTER TABLE `user_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_plans` ENABLE KEYS */;
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
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend/image/default.png',
  `role` enum('company','candidate') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'candidate',
  `recent_activities_alert` tinyint(1) NOT NULL DEFAULT '1',
  `job_expired_alert` tinyint(1) NOT NULL DEFAULT '1',
  `new_job_alert` tinyint(1) NOT NULL DEFAULT '1',
  `shortlisted_alert` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_demo_field` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_settings`
--

DROP TABLE IF EXISTS `website_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `companies` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_settings`
--

LOCK TABLES `website_settings` WRITE;
/*!40000 ALTER TABLE `website_settings` DISABLE KEYS */;
INSERT INTO `website_settings` VALUES (1,'(319) 555-0115','6391 Elgin St. Celina, Delaware 10299, New York, United States of America','Zakir Soft Map','https://www.facebook.com/zakirsoft','https://www.instagram.com/zakirsoft','https://www.twitter.com/zakirsoft','https://www.youtube.com/zakirsoft','Who we are','We’re highly skilled and professionals team.','Praesent non sem facilisis, hendrerit nisi vitae, volutpat quam. Aliquam metus mauris, semper eu eros vitae, blandit tristique metus. Vestibulum maximus nec justo sed maximus.','175,324','97,354','3,847,154','2023-02-24 04:43:20','2023-02-24 04:43:20');
/*!40000 ALTER TABLE `website_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-24 16:54:35
