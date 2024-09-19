-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2024 at 02:39 PM
-- Server version: 5.7.44
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ersalcom_erp_ersal`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ads`
--

CREATE TABLE `Ads` (
  `id` int(11) NOT NULL,
  `who_upload` int(11) NOT NULL,
  `file_name` varchar(10000) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ads`
--

INSERT INTO `Ads` (`id`, `who_upload`, `file_name`, `created_at`, `updated_at`) VALUES
(9, 1, '1723359828.pdf', '2024-08-11', '2024-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `start_contract` text NOT NULL,
  `time_frame` int(11) NOT NULL,
  `price_residual` text,
  `price_paid` varchar(191) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_sheets`
--

CREATE TABLE `client_sheets` (
  `id` int(191) NOT NULL,
  `from_date` text NOT NULL,
  `to_date` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cvs`
--

CREATE TABLE `cvs` (
  `id` bigint(20) NOT NULL,
  `upload_date` date DEFAULT NULL,
  `job_title` text NOT NULL,
  `interview_date` date NOT NULL,
  `status` text CHARACTER SET utf8 NOT NULL,
  `cv_file` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvs`
--

INSERT INTO `cvs` (`id`, `upload_date`, `job_title`, `interview_date`, `status`, `cv_file`, `created_at`, `updated_at`) VALUES
(1, '2024-08-11', 'senior', '2024-08-11', 'undefined', '1724832814.pdf', '2024-08-28 05:13:34', '2024-08-28 09:56:24'),
(2, '2024-08-11', 'senior', '2024-08-11', 'undefined', '1724832907.pdf', '2024-08-28 05:15:07', '2024-08-28 09:56:24'),
(3, NULL, 'senior', '2024-08-11', 'undefined', '1724840282.pdf', '2024-08-28 07:18:02', '2024-08-28 09:56:23'),
(4, NULL, 'Ea totam sint debiti', '1997-01-06', 'قبول', '1724840922.pdf', '2024-08-28 07:28:42', '2024-08-28 10:36:54'),
(5, NULL, 'Sint est culpa ten', '2009-08-07', 'قبول', '1724840969.pdf', '2024-08-28 07:29:29', '2024-08-28 10:26:24'),
(6, NULL, 'Optio mollitia proi', '2000-08-25', 'رفض - المرتب غير متوافق', '1724848933.pdf', '2024-08-28 09:42:13', '2024-08-28 10:24:54'),
(7, NULL, 'Dolor dolor delectus', '1989-09-25', 'قبول', '1724848958.pdf', '2024-08-28 09:42:38', '2024-08-28 10:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `who_upload` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `start_job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_job_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirements_paper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custody_paper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `who_upload`, `status`, `name`, `phone_number`, `email`, `location`, `start_date`, `end_date`, `basic_salary`, `start_job_title`, `end_job_title`, `requirements_paper`, `custody_paper`, `created_at`, `updated_at`) VALUES
(9, 10, 0, 'anas eltabiy mostafa', 1024973279, 'anasaltabay@gmail.com', '5 ش الكتتانى _ش الخلا المنصوره اول الدقهليه', '2024-08-25', 'undefined', 0, 'voice-over and presenter', 'undefined', '1724758935.rar', '1724758935_custody.rar', '2024-08-27 08:42:15', '2024-08-28 07:38:59'),
(17, 10, 0, 'moamen walied abdo', 1120209890, 'moamenwalid157@gmail.com', '1 ش مجدى يوسف مصر الجديده', '2024-07-21', 'undefined', 0, 'web devolper', 'undefined', '1724833798.rar', NULL, '2024-08-28 05:29:58', '2024-08-28 07:41:32'),
(18, 10, 0, 'riham hesham shabaan', 1113550053, 'rihamhisham2512@gmail.com', '332 دار مصر الاندلس التجمع الخامس', '2024-07-16', 'undefined', 0, 'business development', 'undefined', '1724834450.rar', '1724834450_custody.rar', '2024-08-28 05:40:50', '2024-08-28 07:42:27'),
(19, 10, 0, 'mina adel', 1008356006, 'mina.adel.wolvrine@gmail.com', '45 ش مكرم عبيد مدينه نصر', '2024-06-30', 'undefined', 0, 'motion graphic', 'undefined', '1724842039.rar', NULL, '2024-08-28 07:47:19', '2024-08-28 07:47:19'),
(20, 10, 0, 'ahmed abdelhamed qassed', 1156245049, 'ahmed_qassed@outlook.com', 'الأحرار الوراق العرب الجيزه', '2024-06-30', 'undefined', 0, 'mobile application', 'undefined', '1724842512.rar', '1724842512_custody.rar', '2024-08-28 07:55:12', '2024-08-28 07:55:12'),
(21, 10, 0, 'amr tarek ezzat', 1094111707, 'undefined', '23 ش محمد يوسف عمرانيه الجيزه', '2024-05-09', 'undefined', 0, 'full stuck web developer', 'undefined', '1724844189.rar', NULL, '2024-08-28 08:23:09', '2024-08-28 08:23:09'),
(22, 10, 0, 'diaa mohamed saeid', 1017703684, 'mdiaa4327@gmail.com', '7 شارع عبدالموجود احمد القصيرين الزاويه الحمرا', '2024-05-02', 'undefined', 0, 'media payer', 'undefined', '1724844675.rar', '1724844675_custody.rar', '2024-08-28 08:31:15', '2024-08-28 08:31:15'),
(23, 10, 0, 'rehab fargalah qenawy', 1119225654, 'rehabfarag51@gmail.com', '55 ش 1 ارض الدكتور عزبه الجبلاوى شبرا الخيمه', '2024-05-05', 'undefined', 0, 'moderator', 'undefined', '1724846075.rar', '1724846075_custody.rar', '2024-08-28 08:54:35', '2024-08-28 08:54:35'),
(24, 10, 0, 'ahmed ashraf zeinelabden', 1550477131, 'ahmed.ashraf.zain97@gmail.com', '7 ش حسن الشعراوى ش البترول المرج', '2024-04-28', 'undefined', 0, 'graphic designer', 'undefined', '1724846356.rar', NULL, '2024-08-28 08:59:16', '2024-08-28 08:59:16'),
(25, 10, 0, 'ahmed ismael hendawy', 1001587507, 'ahmed.hendawy1993@gmail.com', '19 ش الترعه ركن حلوان للداجن', '2024-03-03', 'undefined', 0, 'content creator', 'undefined', '1724847604.rar', '1724847604_custody.rar', '2024-08-28 09:20:04', '2024-08-28 09:20:04'),
(26, 10, 0, 'eman abubakr', 1006200242, 'emanmostafalm@gmail.com', '59 zone 1 gardienia city', '2024-03-03', 'undefined', 0, 'human resources', 'undefined', '1724848629.rar', NULL, '2024-08-28 09:37:09', '2024-08-28 09:37:09'),
(27, 10, 0, 'nemaat abdelkhalek ali', 1014302155, 'undefined', '3 ش صالح عبدالرحمن حلميه الزيتون', '2024-04-28', 'undefined', 0, 'عامله نضافه وبوفيه', 'undefined', '1724849037.rar', NULL, '2024-08-28 09:43:57', '2024-08-28 09:43:57'),
(28, 10, 0, 'shahd hossam', 1008820676, 'undefined', 'عمارات الشروق مدينه نصر', '2024-04-28', 'undefined', 0, 'marketing director', 'undefined', '1724849195.rar', NULL, '2024-08-28 09:46:35', '2024-08-28 09:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `facilitys`
--

CREATE TABLE `facilitys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `who_upload` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `figerprints`
--

CREATE TABLE `figerprints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `who_upload` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `file_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income_custodys`
--

CREATE TABLE `income_custodys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `who_upload` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_custodys`
--

INSERT INTO `income_custodys` (`id`, `who_upload`, `amount`, `day`, `month`, `year`, `file_name`, `created_at`, `updated_at`) VALUES
(89, 49, 10, 8, 8, 2024, '1723133654.jpg', '2024-08-08 13:14:14', '2024-08-08 13:14:14'),
(90, 49, 15, 8, 8, 2024, '1723133995.jpg', '2024-08-08 13:19:55', '2024-08-08 13:19:55'),
(91, 49, 8, 13, 8, 2024, '1723445858.jpg', '2024-08-12 03:57:38', '2024-08-12 03:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `job_offers`
--

CREATE TABLE `job_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `who_upload` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_date` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_status` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `to` int(5) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(69, '1', 3, 'Request for Update on Team\'s Recent Progress', 'I would appreciate it if you could provide me with an update on the team\'s recent progress and accomplishments. Please send me the latest developments at your earliest convenience.', '2024-08-22 04:36:55', '2024-08-22 04:36:55'),
(70, '1', 2, 'Request for Updates', 'I would appreciate it if you could provide me with an update on the team\'s recent progress and accomplishments. Please send me the latest developments at your earliest convenience.', '2024-08-22 04:37:50', '2024-08-22 04:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2024_07_17_102120_create_messages_table', 2),
(19, '2024_07_17_102156_create_figerprints_table', 3),
(20, '2024_07_17_102238_create_income_custodys_table', 3),
(21, '2024_07_17_102307_create_supplys_table', 3),
(22, '2024_07_17_102401_create_facilitys_table', 3),
(23, '2024_07_17_102425_create_statics_table', 3),
(24, '2024_07_17_102459_create_employees_table', 3),
(25, '2024_07_17_102531_create_job_offers_table', 3),
(26, '2024_07_17_102559_create_payrolls_table', 3),
(27, '2024_07_17_114742_create_payrolls_after_calculate_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `who_upload` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `day` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `date` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_end` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `absent_hours_start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delay_mins_start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_time_mins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_time_hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `absent_hours_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay_mins_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `who_upload`, `emp_id`, `day`, `month`, `year`, `date`, `start_time`, `start_end`, `duration`, `absent_hours_start`, `delay_mins_start`, `emp_name`, `extra_time_mins`, `extra_time_hours`, `absent_hours_end`, `delay_mins_end`, `description`, `created_at`, `updated_at`) VALUES
(7486, 10, 1, NULL, 8, 2024, '8/1/2024', '08:28', '17:15', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7487, 10, 1, NULL, 8, 2024, '8/4/2024', '08:27', '17:08', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7488, 10, 1, NULL, 8, 2024, '8/5/2024', '08:26', '16:58', NULL, '0', '0', 'nemaat', '0', '0', '0', '2', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7489, 10, 1, NULL, 8, 2024, '8/6/2024', '08:54', '17:06', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7490, 10, 1, NULL, 8, 2024, '8/8/2024', '08:43', '17:19', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7491, 10, 1, NULL, 8, 2024, '8/11/2024', '08:43', '17:11', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7492, 10, 1, NULL, 8, 2024, '8/12/2024', '09:02', '17:12', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7493, 10, 1, NULL, 8, 2024, '8/13/2024', '08:39', '17:00', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7494, 10, 1, NULL, 8, 2024, '8/14/2024', '08:44', '17:08', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7495, 10, 1, NULL, 8, 2024, '8/18/2024', '08:13', '17:10', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7496, 10, 1, NULL, 8, 2024, '8/19/2024', '08:54', '17:01', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7497, 10, 1, NULL, 8, 2024, '8/20/2024', '09:09', '17:08', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7498, 10, 1, NULL, 8, 2024, '8/21/2024', '08:56', '16:49', NULL, '0', '0', 'nemaat', '0', '0', '0', '11', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7499, 10, 1, NULL, 8, 2024, '8/22/2024', '08:59', '17:05', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7500, 10, 1, NULL, 8, 2024, '8/26/2024', '08:43', '17:05', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7501, 10, 1, NULL, 8, 2024, '8/27/2024', '08:57', '17:23', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7502, 10, 1, NULL, 8, 2024, '8/28/2024', '09:15', '16:47', NULL, '0', '0', 'nemaat', '0', '0', '0', '13', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7503, 10, 1, NULL, 8, 2024, '8/29/2024', '08:57', '17:17', NULL, '0', '0', 'nemaat', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7504, 10, 3, NULL, 8, 2024, '8/1/2024', '09:39', '17:05', NULL, '0', '9', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7505, 10, 3, NULL, 8, 2024, '8/4/2024', '10:01', '17:36', NULL, '0', '31', 'Shahd Hossam', '6', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7506, 10, 3, NULL, 8, 2024, '8/5/2024', '09:22', '17:19', NULL, '0', '0', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7507, 10, 3, NULL, 8, 2024, '8/6/2024', '09:29', '17:20', NULL, '0', '0', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7508, 10, 3, NULL, 8, 2024, '8/8/2024', '09:26', '17:16', NULL, '0', '0', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7509, 10, 3, NULL, 8, 2024, '8/11/2024', '09:31', '17:09', NULL, '0', '1', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7510, 10, 3, NULL, 8, 2024, '8/12/2024', '09:17', '17:54', NULL, '0', '0', 'Shahd Hossam', '24', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7511, 10, 3, NULL, 8, 2024, '8/13/2024', '09:27', '17:38', NULL, '0', '0', 'Shahd Hossam', '8', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7512, 10, 3, NULL, 8, 2024, '8/14/2024', '09:28', '17:05', NULL, '0', '0', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7513, 10, 3, NULL, 8, 2024, '8/15/2024', '09:27', '17:13', NULL, '0', '0', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7514, 10, 3, NULL, 8, 2024, '8/18/2024', '09:33', '17:31', NULL, '0', '3', 'Shahd Hossam', '1', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7515, 10, 3, NULL, 8, 2024, '8/19/2024', '09:29', '14:06', NULL, '0', '0', 'Shahd Hossam', '0', '0', '2', '54', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7516, 10, 3, NULL, 8, 2024, '8/20/2024', '09:34', '17:03', NULL, '0', '4', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7517, 10, 3, NULL, 8, 2024, '8/21/2024', '09:44', '17:12', NULL, '0', '14', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7518, 10, 3, NULL, 8, 2024, '8/22/2024', '09:23', '17:24', NULL, '0', '0', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7519, 10, 3, NULL, 8, 2024, '8/25/2024', '09:47', '17:20', NULL, '0', '17', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7520, 10, 3, NULL, 8, 2024, '8/26/2024', '09:29', '17:13', NULL, '0', '0', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7521, 10, 3, NULL, 8, 2024, '8/27/2024', '09:39', '17:27', NULL, '0', '9', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7522, 10, 3, NULL, 8, 2024, '8/28/2024', '09:32', '17:21', NULL, '0', '2', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7523, 10, 3, NULL, 8, 2024, '8/29/2024', '09:32', '17:18', NULL, '0', '2', 'Shahd Hossam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7524, 10, 4, NULL, 8, 2024, '8/1/2024', '09:31', '18:13', NULL, '0', '1', 'Ahmed Ashraf', '43', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7525, 10, 4, NULL, 8, 2024, '8/4/2024', '09:26', '17:30', NULL, '0', '0', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7526, 10, 4, NULL, 8, 2024, '8/5/2024', '09:27', '17:03', NULL, '0', '0', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7527, 10, 4, NULL, 8, 2024, '8/6/2024', '09:33', '17:17', NULL, '0', '3', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7528, 10, 4, NULL, 8, 2024, '8/7/2024', '09:20', '17:11', NULL, '0', '0', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7529, 10, 4, NULL, 8, 2024, '8/8/2024', '09:21', '17:16', NULL, '0', '0', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7530, 10, 4, NULL, 8, 2024, '8/11/2024', '09:28', '17:16', NULL, '0', '0', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7531, 10, 4, NULL, 8, 2024, '8/12/2024', '09:22', '17:44', NULL, '0', '0', 'Ahmed Ashraf', '14', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7532, 10, 4, NULL, 8, 2024, '8/13/2024', '09:18', '17:41', NULL, '0', '0', 'Ahmed Ashraf', '11', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7533, 10, 4, NULL, 8, 2024, '8/14/2024', '09:22', '17:39', NULL, '0', '0', 'Ahmed Ashraf', '9', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7534, 10, 4, NULL, 8, 2024, '8/15/2024', '09:26', '17:25', NULL, '0', '0', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7535, 10, 4, NULL, 8, 2024, '8/18/2024', '09:26', '17:36', NULL, '0', '0', 'Ahmed Ashraf', '6', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7536, 10, 4, NULL, 8, 2024, '8/19/2024', '09:28', '17:44', NULL, '0', '0', 'Ahmed Ashraf', '14', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7537, 10, 4, NULL, 8, 2024, '8/20/2024', '09:24', '17:12', NULL, '0', '0', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7538, 10, 4, NULL, 8, 2024, '8/21/2024', '09:25', '17:11', NULL, '0', '0', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7539, 10, 4, NULL, 8, 2024, '8/22/2024', '09:26', '17:48', NULL, '0', '0', 'Ahmed Ashraf', '18', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7540, 10, 4, NULL, 8, 2024, '8/25/2024', '09:33', '17:23', NULL, '0', '3', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7541, 10, 4, NULL, 8, 2024, '8/26/2024', '09:26', '17:27', NULL, '0', '0', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7542, 10, 4, NULL, 8, 2024, '8/27/2024', '09:30', '17:33', NULL, '0', '0', 'Ahmed Ashraf', '3', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7543, 10, 4, NULL, 8, 2024, '8/28/2024', '09:35', '17:18', NULL, '0', '5', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7544, 10, 4, NULL, 8, 2024, '8/29/2024', '09:31', '17:17', NULL, '0', '1', 'Ahmed Ashraf', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7545, 10, 5, NULL, 8, 2024, '8/1/2024', '11:11', '16:51', NULL, '1', '41', 'Eman Mostafa', '0', '0', '0', '9', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7546, 10, 5, NULL, 8, 2024, '8/4/2024', '10:40', '17:01', NULL, '1', '10', 'Eman Mostafa', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7547, 10, 5, NULL, 8, 2024, '8/5/2024', '09:08', '16:50', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '10', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7548, 10, 5, NULL, 8, 2024, '8/6/2024', '09:07', '17:08', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7549, 10, 5, NULL, 8, 2024, '8/8/2024', '09:33', '16:56', NULL, '0', '3', 'Eman Mostafa', '0', '0', '0', '4', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7550, 10, 5, NULL, 8, 2024, '8/11/2024', '09:00', '16:50', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '10', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7551, 10, 5, NULL, 8, 2024, '8/12/2024', '09:09', '16:49', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '11', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7552, 10, 5, NULL, 8, 2024, '8/13/2024', '11:00', '16:52', NULL, '1', '30', 'Eman Mostafa', '0', '0', '0', '8', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7553, 10, 5, NULL, 8, 2024, '8/14/2024', '09:06', '16:50', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '10', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7554, 10, 5, NULL, 8, 2024, '8/15/2024', '09:07', '16:50', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '10', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7555, 10, 5, NULL, 8, 2024, '8/18/2024', '09:09', '16:50', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '10', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7556, 10, 5, NULL, 8, 2024, '8/19/2024', '09:06', '17:10', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7557, 10, 5, NULL, 8, 2024, '8/20/2024', '09:13', '16:52', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '8', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7558, 10, 5, NULL, 8, 2024, '8/21/2024', '09:06', '16:48', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '12', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7559, 10, 5, NULL, 8, 2024, '8/22/2024', '09:11', '16:54', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '6', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7560, 10, 5, NULL, 8, 2024, '8/25/2024', '09:11', '16:48', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '12', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7561, 10, 5, NULL, 8, 2024, '8/26/2024', '09:15', '16:50', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '10', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7562, 10, 5, NULL, 8, 2024, '8/27/2024', '09:04', '16:48', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '12', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7563, 10, 5, NULL, 8, 2024, '8/28/2024', '10:13', '16:48', NULL, '0', '43', 'Eman Mostafa', '0', '0', '0', '12', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7564, 10, 5, NULL, 8, 2024, '8/29/2024', '09:05', '17:00', NULL, '0', '0', 'Eman Mostafa', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7566, 10, 8, NULL, 8, 2024, '8/1/2024', '09:20', '17:42', NULL, '0', '0', 'ahmed qassed', '12', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7567, 10, 8, NULL, 8, 2024, '8/4/2024', '09:21', '17:10', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7568, 10, 8, NULL, 8, 2024, '8/5/2024', '09:07', '17:03', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7569, 10, 8, NULL, 8, 2024, '8/6/2024', '09:19', '17:08', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7570, 10, 8, NULL, 8, 2024, '8/7/2024', '09:29', '17:07', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7571, 10, 8, NULL, 8, 2024, '8/8/2024', '09:06', '17:12', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7572, 10, 8, NULL, 8, 2024, '8/11/2024', '09:15', '17:07', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7573, 10, 8, NULL, 8, 2024, '8/12/2024', '09:12', '17:10', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7574, 10, 8, NULL, 8, 2024, '8/13/2024', '09:18', '17:29', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7575, 10, 8, NULL, 8, 2024, '8/14/2024', '09:19', '17:11', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7576, 10, 8, NULL, 8, 2024, '8/15/2024', '09:18', '17:24', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7577, 10, 8, NULL, 8, 2024, '8/18/2024', '09:17', '17:09', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7578, 10, 8, NULL, 8, 2024, '8/19/2024', '09:17', '17:08', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7579, 10, 8, NULL, 8, 2024, '8/20/2024', '09:13', '17:10', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7580, 10, 8, NULL, 8, 2024, '8/21/2024', '09:22', '17:12', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7581, 10, 8, NULL, 8, 2024, '8/25/2024', '09:24', '17:20', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7582, 10, 8, NULL, 8, 2024, '8/26/2024', '09:26', '17:20', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7583, 10, 8, NULL, 8, 2024, '8/27/2024', '09:17', '17:24', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7584, 10, 8, NULL, 8, 2024, '8/28/2024', '09:21', '17:19', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7585, 10, 8, NULL, 8, 2024, '8/29/2024', '09:27', '17:18', NULL, '0', '0', 'ahmed qassed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7586, 10, 9, NULL, 8, 2024, '8/4/2024', '09:11', '17:25', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7587, 10, 9, NULL, 8, 2024, '8/5/2024', '09:16', '17:03', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7588, 10, 9, NULL, 8, 2024, '8/6/2024', '09:19', '17:08', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7589, 10, 9, NULL, 8, 2024, '8/7/2024', '09:19', '17:17', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7590, 10, 9, NULL, 8, 2024, '8/8/2024', '09:28', '17:23', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7591, 10, 9, NULL, 8, 2024, '8/11/2024', '09:24', '17:16', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7592, 10, 9, NULL, 8, 2024, '8/12/2024', '09:16', '17:44', NULL, '0', '0', 'diaa mohamed', '14', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7593, 10, 9, NULL, 8, 2024, '8/13/2024', '09:14', '17:40', NULL, '0', '0', 'diaa mohamed', '10', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7594, 10, 9, NULL, 8, 2024, '8/14/2024', '09:26', '17:24', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7595, 10, 9, NULL, 8, 2024, '8/15/2024', '09:19', '17:29', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7596, 10, 9, NULL, 8, 2024, '8/18/2024', '09:16', '17:29', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7597, 10, 9, NULL, 8, 2024, '8/19/2024', '09:27', '17:49', NULL, '0', '0', 'diaa mohamed', '19', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7598, 10, 9, NULL, 8, 2024, '8/20/2024', '09:20', '17:13', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7599, 10, 9, NULL, 8, 2024, '8/21/2024', '09:14', '17:17', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7600, 10, 9, NULL, 8, 2024, '8/22/2024', '10:48', '17:48', NULL, '1', '18', 'diaa mohamed', '18', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7601, 10, 9, NULL, 8, 2024, '8/25/2024', '09:12', '17:23', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7602, 10, 9, NULL, 8, 2024, '8/26/2024', '09:23', '17:21', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7603, 10, 9, NULL, 8, 2024, '8/27/2024', '09:28', '17:30', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7604, 10, 9, NULL, 8, 2024, '8/28/2024', '09:19', '17:21', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7605, 10, 9, NULL, 8, 2024, '8/29/2024', '09:24', '17:18', NULL, '0', '0', 'diaa mohamed', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7606, 10, 10, NULL, 8, 2024, '8/1/2024', '09:11', '17:46', NULL, '0', '0', 'Ahmed Hendawe', '16', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7607, 10, 10, NULL, 8, 2024, '8/4/2024', '09:28', '17:22', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7608, 10, 10, NULL, 8, 2024, '8/5/2024', '09:16', '17:55', NULL, '0', '0', 'Ahmed Hendawe', '25', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7609, 10, 10, NULL, 8, 2024, '8/6/2024', '09:12', '17:04', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7610, 10, 10, NULL, 8, 2024, '8/7/2024', '09:05', '17:10', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7611, 10, 10, NULL, 8, 2024, '8/8/2024', '08:58', '17:22', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7612, 10, 10, NULL, 8, 2024, '8/11/2024', '09:20', '17:17', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7613, 10, 10, NULL, 8, 2024, '8/12/2024', '09:18', '17:11', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7614, 10, 10, NULL, 8, 2024, '8/13/2024', '09:28', '17:35', NULL, '0', '0', 'Ahmed Hendawe', '5', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7615, 10, 10, NULL, 8, 2024, '8/14/2024', '08:58', '17:42', NULL, '0', '0', 'Ahmed Hendawe', '12', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7616, 10, 10, NULL, 8, 2024, '8/15/2024', '08:52', '17:28', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7617, 10, 10, NULL, 8, 2024, '8/19/2024', '09:12', '17:36', NULL, '0', '0', 'Ahmed Hendawe', '6', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7618, 10, 10, NULL, 8, 2024, '8/20/2024', '09:05', '17:10', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7619, 10, 10, NULL, 8, 2024, '8/21/2024', '09:16', '17:22', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7620, 10, 10, NULL, 8, 2024, '8/22/2024', '09:19', '17:55', NULL, '0', '0', 'Ahmed Hendawe', '25', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7621, 10, 10, NULL, 8, 2024, '8/25/2024', '09:13', '17:19', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7622, 10, 10, NULL, 8, 2024, '8/26/2024', '09:07', '15:00', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '2', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7623, 10, 10, NULL, 8, 2024, '8/27/2024', '09:10', '17:33', NULL, '0', '0', 'Ahmed Hendawe', '3', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7624, 10, 10, NULL, 8, 2024, '8/28/2024', '09:15', '17:19', NULL, '0', '0', 'Ahmed Hendawe', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7625, 10, 10, NULL, 8, 2024, '8/29/2024', '09:14', '17:36', NULL, '0', '0', 'Ahmed Hendawe', '6', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7626, 10, 11, NULL, 8, 2024, '8/1/2024', '09:03', '18:13', NULL, '0', '0', 'mina adel', '43', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7627, 10, 11, NULL, 8, 2024, '8/4/2024', '09:16', '17:25', NULL, '0', '0', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7628, 10, 11, NULL, 8, 2024, '8/5/2024', '09:43', '17:03', NULL, '0', '13', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7629, 10, 11, NULL, 8, 2024, '8/6/2024', '09:11', '17:17', NULL, '0', '0', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7630, 10, 11, NULL, 8, 2024, '8/7/2024', '09:15', '17:11', NULL, '0', '0', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7631, 10, 11, NULL, 8, 2024, '8/8/2024', '09:18', '17:16', NULL, '0', '0', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7632, 10, 11, NULL, 8, 2024, '8/11/2024', '09:25', '17:16', NULL, '0', '0', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7633, 10, 11, NULL, 8, 2024, '8/12/2024', '09:27', '17:44', NULL, '0', '0', 'mina adel', '14', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7634, 10, 11, NULL, 8, 2024, '8/13/2024', '08:47', '17:38', NULL, '0', '0', 'mina adel', '8', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7635, 10, 11, NULL, 8, 2024, '8/14/2024', '09:13', '17:42', NULL, '0', '0', 'mina adel', '12', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7636, 10, 11, NULL, 8, 2024, '8/15/2024', '09:13', '17:25', NULL, '0', '0', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7637, 10, 11, NULL, 8, 2024, '8/18/2024', '09:14', '17:31', NULL, '0', '0', 'mina adel', '1', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7638, 10, 11, NULL, 8, 2024, '8/19/2024', '09:07', '17:43', NULL, '0', '0', 'mina adel', '13', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7639, 10, 11, NULL, 8, 2024, '8/20/2024', '09:32', '17:09', NULL, '0', '2', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7640, 10, 11, NULL, 8, 2024, '8/21/2024', '09:19', '17:11', NULL, '0', '0', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7641, 10, 11, NULL, 8, 2024, '8/22/2024', '09:28', '17:48', NULL, '0', '0', 'mina adel', '18', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7642, 10, 11, NULL, 8, 2024, '8/25/2024', '09:14', '17:23', NULL, '0', '0', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7643, 10, 11, NULL, 8, 2024, '8/26/2024', '09:31', '17:20', NULL, '0', '1', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7644, 10, 11, NULL, 8, 2024, '8/27/2024', '09:24', '17:29', NULL, '0', '0', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7645, 10, 11, NULL, 8, 2024, '8/28/2024', '09:31', '17:19', NULL, '0', '1', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7646, 10, 11, NULL, 8, 2024, '8/29/2024', '09:37', '17:18', NULL, '0', '7', 'mina adel', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7647, 10, 13, NULL, 8, 2024, '8/1/2024', '09:40', '17:05', NULL, '0', '10', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7648, 10, 13, NULL, 8, 2024, '8/4/2024', '09:13', '17:36', NULL, '0', '0', 'rehaam', '6', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7649, 10, 13, NULL, 8, 2024, '8/5/2024', '09:22', '17:24', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7650, 10, 13, NULL, 8, 2024, '8/6/2024', '09:29', '17:21', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7651, 10, 13, NULL, 8, 2024, '8/7/2024', '10:00', '17:02', NULL, '0', '30', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7652, 10, 13, NULL, 8, 2024, '8/8/2024', '09:26', '17:02', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7653, 10, 13, NULL, 8, 2024, '8/11/2024', '09:31', '17:10', NULL, '0', '1', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7654, 10, 13, NULL, 8, 2024, '8/12/2024', '09:17', '17:17', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7655, 10, 13, NULL, 8, 2024, '8/13/2024', '09:27', '17:09', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7656, 10, 13, NULL, 8, 2024, '8/14/2024', '09:28', '17:05', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7657, 10, 13, NULL, 8, 2024, '8/15/2024', '09:27', '17:07', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7658, 10, 13, NULL, 8, 2024, '8/18/2024', '09:29', '17:37', NULL, '0', '0', 'rehaam', '7', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7659, 10, 13, NULL, 8, 2024, '8/19/2024', '09:23', '17:38', NULL, '0', '0', 'rehaam', '8', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7660, 10, 13, NULL, 8, 2024, '8/20/2024', '09:34', '17:03', NULL, '0', '4', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7661, 10, 13, NULL, 8, 2024, '8/25/2024', '09:11', '17:20', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7662, 10, 13, NULL, 8, 2024, '8/26/2024', '09:29', '17:12', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7663, 10, 13, NULL, 8, 2024, '8/27/2024', '09:05', '17:11', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7664, 10, 13, NULL, 8, 2024, '8/28/2024', '09:17', '17:23', NULL, '0', '0', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7665, 10, 13, NULL, 8, 2024, '8/29/2024', '09:32', '17:16', NULL, '0', '2', 'rehaam', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7666, 10, 14, NULL, 8, 2024, '8/1/2024', '09:05', '17:29', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7667, 10, 14, NULL, 8, 2024, '8/4/2024', '10:44', '17:22', NULL, '1', '14', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7668, 10, 14, NULL, 8, 2024, '8/5/2024', '09:03', '17:00', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7669, 10, 14, NULL, 8, 2024, '8/6/2024', '09:02', '17:08', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7670, 10, 14, NULL, 8, 2024, '8/7/2024', '09:03', '17:16', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7671, 10, 14, NULL, 8, 2024, '8/8/2024', '09:06', '17:24', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7672, 10, 14, NULL, 8, 2024, '8/11/2024', '09:14', '17:17', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7673, 10, 14, NULL, 8, 2024, '8/12/2024', '09:07', '17:45', NULL, '0', '0', 'mo\'men abdo', '15', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7674, 10, 14, NULL, 8, 2024, '8/13/2024', '09:10', '17:08', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7675, 10, 14, NULL, 8, 2024, '8/14/2024', '09:11', '17:26', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7676, 10, 14, NULL, 8, 2024, '8/15/2024', '09:13', '17:26', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7677, 10, 14, NULL, 8, 2024, '8/18/2024', '09:14', '17:12', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7678, 10, 14, NULL, 8, 2024, '8/19/2024', '09:07', '17:59', NULL, '0', '0', 'mo\'men abdo', '29', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7679, 10, 14, NULL, 8, 2024, '8/20/2024', '09:06', '17:15', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7680, 10, 14, NULL, 8, 2024, '8/21/2024', '09:06', '17:14', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7681, 10, 14, NULL, 8, 2024, '8/22/2024', '09:13', '17:53', NULL, '0', '0', 'mo\'men abdo', '23', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7682, 10, 14, NULL, 8, 2024, '8/25/2024', '09:17', '17:25', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7683, 10, 14, NULL, 8, 2024, '8/26/2024', '09:13', '17:26', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7684, 10, 14, NULL, 8, 2024, '8/27/2024', '09:10', '17:33', NULL, '0', '0', 'mo\'men abdo', '3', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7685, 10, 14, NULL, 8, 2024, '8/28/2024', '09:17', '17:24', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7686, 10, 14, NULL, 8, 2024, '8/29/2024', '09:21', '17:21', NULL, '0', '0', 'mo\'men abdo', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7687, 10, 15, NULL, 8, 2024, '8/1/2024', '09:12', '17:19', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7688, 10, 15, NULL, 8, 2024, '8/4/2024', '09:26', '17:35', NULL, '0', '0', 'Rehab', '5', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7689, 10, 15, NULL, 8, 2024, '8/5/2024', '09:28', '17:19', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7690, 10, 15, NULL, 8, 2024, '8/6/2024', '09:24', '17:17', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7691, 10, 15, NULL, 8, 2024, '8/8/2024', '09:23', '18:12', NULL, '0', '0', 'Rehab', '42', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7692, 10, 15, NULL, 8, 2024, '8/11/2024', '09:30', '17:13', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7693, 10, 15, NULL, 8, 2024, '8/12/2024', '09:26', '17:35', NULL, '0', '0', 'Rehab', '5', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7694, 10, 15, NULL, 8, 2024, '8/13/2024', '09:22', '17:46', NULL, '0', '0', 'Rehab', '16', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7695, 10, 15, NULL, 8, 2024, '8/14/2024', '09:16', '17:17', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7696, 10, 15, NULL, 8, 2024, '8/15/2024', '09:22', '17:01', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7697, 10, 15, NULL, 8, 2024, '8/18/2024', '09:31', '17:18', NULL, '0', '1', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7698, 10, 15, NULL, 8, 2024, '8/19/2024', '09:22', '16:00', NULL, '0', '0', 'Rehab', '0', '0', '1', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7699, 10, 15, NULL, 8, 2024, '8/20/2024', '09:28', '17:08', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7700, 10, 15, NULL, 8, 2024, '8/21/2024', '09:27', '17:17', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7701, 10, 15, NULL, 8, 2024, '8/22/2024', '09:28', '17:35', NULL, '0', '0', 'Rehab', '5', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7702, 10, 15, NULL, 8, 2024, '8/25/2024', '09:38', '17:19', NULL, '0', '8', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7703, 10, 15, NULL, 8, 2024, '8/26/2024', '09:29', '17:20', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7704, 10, 15, NULL, 8, 2024, '8/27/2024', '09:37', '17:30', NULL, '0', '7', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7705, 10, 15, NULL, 8, 2024, '8/28/2024', '09:34', '17:21', NULL, '0', '4', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7706, 10, 15, NULL, 8, 2024, '8/29/2024', '09:24', '17:17', NULL, '0', '0', 'Rehab', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7707, 10, 17, NULL, 8, 2024, '8/1/2024', '08:49', '17:59', NULL, '0', '0', 'Amr Tarek', '29', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7708, 10, 17, NULL, 8, 2024, '8/4/2024', '08:55', '17:23', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7709, 10, 17, NULL, 8, 2024, '8/5/2024', '09:02', '17:03', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7710, 10, 17, NULL, 8, 2024, '8/6/2024', '08:49', '17:07', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7711, 10, 17, NULL, 8, 2024, '8/7/2024', '08:54', '17:17', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7712, 10, 17, NULL, 8, 2024, '8/8/2024', '08:59', '17:25', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7713, 10, 17, NULL, 8, 2024, '8/11/2024', '08:52', '17:19', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7714, 10, 17, NULL, 8, 2024, '8/12/2024', '09:02', '17:51', NULL, '0', '0', 'Amr Tarek', '21', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7715, 10, 17, NULL, 8, 2024, '8/13/2024', '08:59', '17:45', NULL, '0', '0', 'Amr Tarek', '15', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7716, 10, 17, NULL, 8, 2024, '8/14/2024', '08:58', '17:42', NULL, '0', '0', 'Amr Tarek', '12', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7717, 10, 17, NULL, 8, 2024, '8/15/2024', '08:47', '17:40', NULL, '0', '0', 'Amr Tarek', '10', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7718, 10, 17, NULL, 8, 2024, '8/18/2024', '08:58', '17:39', NULL, '0', '0', 'Amr Tarek', '9', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7719, 10, 17, NULL, 8, 2024, '8/19/2024', '09:06', '17:59', NULL, '0', '0', 'Amr Tarek', '29', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7720, 10, 17, NULL, 8, 2024, '8/20/2024', '09:00', '17:13', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7721, 10, 17, NULL, 8, 2024, '8/21/2024', '09:01', '17:17', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7722, 10, 17, NULL, 8, 2024, '8/22/2024', '09:08', '17:52', NULL, '0', '0', 'Amr Tarek', '22', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7723, 10, 17, NULL, 8, 2024, '8/25/2024', '09:09', '17:10', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7724, 10, 17, NULL, 8, 2024, '8/26/2024', '09:00', '17:24', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7725, 10, 17, NULL, 8, 2024, '8/27/2024', '09:04', '17:33', NULL, '0', '0', 'Amr Tarek', '3', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7726, 10, 17, NULL, 8, 2024, '8/28/2024', '08:50', '17:23', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7727, 10, 17, NULL, 8, 2024, '8/29/2024', '09:03', '17:08', NULL, '0', '0', 'Amr Tarek', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7728, 10, 19, NULL, 8, 2024, '8/26/2024', '09:22', '17:04', NULL, '0', '0', '19', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7729, 10, 19, NULL, 8, 2024, '8/27/2024', '09:52', '17:04', NULL, '0', '22', '19', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7730, 10, 19, NULL, 8, 2024, '8/28/2024', '08:58', '17:09', NULL, '0', '0', '19', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(7731, 10, 19, NULL, 8, 2024, '8/29/2024', '09:11', '17:18', NULL, '0', '0', '19', '0', '0', '0', '0', NULL, '2024-08-29 08:34:23', '2024-08-29 08:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `payrolls_after_calculate`
--

CREATE TABLE `payrolls_after_calculate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_absent_hours` int(11) NOT NULL,
  `total_attend_dayes` int(11) NOT NULL,
  `total_absent_mins` int(11) NOT NULL,
  `total_absent_dayes` int(11) NOT NULL,
  `overtime_mins` int(191) NOT NULL,
  `overtime_hours` int(191) NOT NULL,
  `salary` int(191) DEFAULT NULL,
  `execuse` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_before_overtime` int(191) NOT NULL,
  `total_salary_after_overtime` int(191) NOT NULL,
  `salary_after_execuse` int(191) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_counter` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls_after_calculate`
--

INSERT INTO `payrolls_after_calculate` (`id`, `month`, `year`, `employee_id`, `employee_name`, `total_absent_hours`, `total_attend_dayes`, `total_absent_mins`, `total_absent_dayes`, `overtime_mins`, `overtime_hours`, `salary`, `execuse`, `salary_before_overtime`, `total_salary_after_overtime`, `salary_after_execuse`, `file_name`, `update_counter`, `created_at`, `updated_at`) VALUES
(68, '8', '2024', 1, 'nemaat', 0, 18, 26, 3, 0, 0, 2000, NULL, 1997, 1997, 0, NULL, 0, '2024-08-29 08:34:47', '2024-08-29 08:34:47'),
(69, '8', '2024', 3, 'Shahd Hossam', 2, 21, 146, 0, 39, 0, 2000, NULL, 1964, 1969, 0, NULL, 0, '2024-08-29 08:36:58', '2024-08-29 08:36:58'),
(71, '8', '2024', 4, 'Ahmed Ashraf', 0, 21, 13, 0, 118, 0, 2000, NULL, 1998, 2014, 0, NULL, 0, '2024-08-29 08:39:16', '2024-08-29 08:39:16'),
(72, '8', '2024', 8, 'ahmed qassed', 0, 20, 0, 1, 12, 0, 2000, NULL, 2000, 2002, 0, NULL, 0, '2024-08-29 08:40:18', '2024-08-29 08:40:18'),
(73, '8', '2024', 9, 'diaa mohamed', 1, 21, 18, 0, 61, 0, 2000, NULL, 1990, 1998, 0, NULL, 0, '2024-08-29 08:40:56', '2024-08-29 08:40:56'),
(74, '8', '2024', 10, 'Ahmed Hendawe', 2, 20, 0, 1, 98, 0, 2000, NULL, 1984, 1997, 0, NULL, 0, '2024-08-29 08:43:41', '2024-08-29 08:43:41'),
(75, '8', '2024', 11, 'mina adel', 0, 21, 24, 0, 109, 0, 2000, NULL, 1997, 2012, 0, NULL, 0, '2024-08-29 08:44:21', '2024-08-29 08:44:21'),
(76, '8', '2024', 13, 'rehaam', 0, 20, 47, 1, 21, 0, 2000, NULL, 1994, 1997, 0, NULL, 0, '2024-08-29 08:45:08', '2024-08-29 08:45:08'),
(77, '8', '2024', 14, 'mo\'men abdo', 1, 21, 14, 0, 70, 0, 2000, NULL, 1990, 1999, 0, NULL, 0, '2024-08-29 08:45:57', '2024-08-29 08:45:57'),
(78, '8', '2024', 15, 'Rehab', 1, 21, 20, 0, 73, 0, 2000, NULL, 1989, 1999, 0, NULL, 0, '2024-08-29 08:46:41', '2024-08-29 08:46:41'),
(79, '8', '2024', 17, 'Amr Tarek', 0, 21, 0, 0, 150, 0, 2000, NULL, 2000, 2020, 0, NULL, 0, '2024-08-29 08:48:15', '2024-08-29 08:48:15'),
(80, '8', '2024', 19, '19', 0, 4, 22, 17, 0, 0, 2000, NULL, 1997, 1997, 0, NULL, 0, '2024-08-29 08:49:41', '2024-08-29 08:49:41'),
(81, '8', '2024', 5, 'Eman Mostafa', 3, 21, 281, 0, 0, 0, 2000, NULL, 1938, 1938, 0, NULL, 0, '2024-08-29 09:00:52', '2024-08-29 09:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `who_upload` int(11) NOT NULL,
  `serial_number` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplys`
--

CREATE TABLE `supplys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `who_upload` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(191) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(191) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'amro', 'amr.ratebyan@gmail.com', NULL, '$2y$10$vG7PuFcAKEh4Q8bFAjmeCOOFPU80twVJpQN9H5uMiN1UAb/XkUGXy', 1, NULL, '2024-07-14 06:23:44', '2024-07-14 06:23:44'),
(9, 'Sanan', 'sanan@ersal.com.sa', NULL, '$2y$10$ljVDZFaMBzDXLI6T6j4JIu30NO.yyn6eJWV5K/dfu/i2w0Cm/kTiq', 1, NULL, '2024-07-14 10:35:19', '2024-07-14 10:35:19'),
(10, 'HRErsal', 'info.hr@ersal.com.sa', NULL, '$2y$10$Uh/1hPtlTTiUXHG7Yz3/bOM7yCvuvRJ.gnDa9b1GaonfZhlAkpB1a', 2, NULL, '2024-07-14 12:17:10', '2024-07-14 12:17:10'),
(11, 'Finance', 'accountant@ersal.com.sa', NULL, '$2y$10$TmevkEu.gv0WXk6tvBPJ4.kUk7l9bhxsvTuAZwaX4dxScUMFdv45.', 3, NULL, '2024-07-14 12:19:37', '2024-07-14 12:19:37'),
(40, 'amr', 'amr@gmail.com', NULL, '$2y$10$nfqLO6p/bJlTI8fstdbB2.SOjZdhSQppx0WdgccNKYltCiCF3p7e.', 2, NULL, '2024-07-21 07:08:06', '2024-07-21 07:08:06'),
(44, 'amr', 'amro@gmail.com', NULL, '$2y$10$.lI80QLYgBibKcNr/FMw7eKdh1HddI77fHQe94Yz3esJOJKznt7Ga', 1, NULL, '2024-07-21 07:15:12', '2024-07-21 07:15:12'),
(49, 'ahmed', 'ahmed@gmail.com', NULL, '$2y$10$ik.p.SUsF9lEIiALWNY/JeiOPzYrt0ufZNKP2GXfpSglQyqNZECQK', 1, NULL, '2024-07-21 08:10:35', '2024-07-21 08:10:35'),
(50, 'ahmedx', 'ahmedx@gmail.com', NULL, '$2y$10$5PLuraG0BFBw2FQCkH2ieOnsSEzrrXFLMPsk6HIvBT4MzIqJwE1xm', 3, NULL, '2024-07-21 08:49:47', '2024-07-21 08:49:47'),
(52, 'ahmed', 'xahmed@gmail.com', NULL, '$2y$10$aE9cGW1RU4NX57T/IiyxJOJ6cPMO/DN5YM4MndAHNCB751k27TbBy', 2, NULL, '2024-07-29 09:17:09', '2024-07-29 09:17:09'),
(53, 'Shahd', 'shahd@ersal.com.sa', NULL, '$2y$10$u41OQX7tgQ5x5jClK9OtYOGHoIT5ql80EPg.RBd3ERP1lDkIntjf6', 1, NULL, '2024-08-12 08:56:28', '2024-08-12 08:56:28'),
(54, 'NASSER', 'nasser@ersal.com.sa', NULL, '$2y$10$.htBc5cJTla/X5iPqTP9HeP7iJwOx6yo0yNk.o/XGcJuYNxSzhsqG', 1, NULL, '2024-08-12 08:57:36', '2024-08-12 08:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `weekends`
--

CREATE TABLE `weekends` (
  `id` int(11) NOT NULL,
  `month` int(191) NOT NULL,
  `year` int(191) NOT NULL,
  `daysoff` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weekends`
--

INSERT INTO `weekends` (`id`, `month`, `year`, `daysoff`, `created_at`, `updated_at`) VALUES
(455, 8, 2024, '08/31/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(454, 8, 2024, '08/24/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(453, 8, 2024, '08/17/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(452, 8, 2024, '08/10/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(451, 8, 2024, '08/03/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(450, 8, 2024, '08/30/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(449, 8, 2024, '08/23/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(448, 8, 2024, '08/16/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(447, 8, 2024, '08/09/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23'),
(446, 8, 2024, '08/02/2024', '2024-08-29 08:34:23', '2024-08-29 08:34:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ads`
--
ALTER TABLE `Ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_sheets`
--
ALTER TABLE `client_sheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cvs`
--
ALTER TABLE `cvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilitys`
--
ALTER TABLE `facilitys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `figerprints`
--
ALTER TABLE `figerprints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_custodys`
--
ALTER TABLE `income_custodys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_offers`
--
ALTER TABLE `job_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls_after_calculate`
--
ALTER TABLE `payrolls_after_calculate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplys`
--
ALTER TABLE `supplys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weekends`
--
ALTER TABLE `weekends`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Ads`
--
ALTER TABLE `Ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `client_sheets`
--
ALTER TABLE `client_sheets`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cvs`
--
ALTER TABLE `cvs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `facilitys`
--
ALTER TABLE `facilitys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `figerprints`
--
ALTER TABLE `figerprints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `income_custodys`
--
ALTER TABLE `income_custodys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `job_offers`
--
ALTER TABLE `job_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7732;

--
-- AUTO_INCREMENT for table `payrolls_after_calculate`
--
ALTER TABLE `payrolls_after_calculate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplys`
--
ALTER TABLE `supplys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `weekends`
--
ALTER TABLE `weekends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
