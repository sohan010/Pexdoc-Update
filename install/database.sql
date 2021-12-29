-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2021 at 02:19 AM
-- Server version: 5.7.35
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xgenxchi_laravel_pexdoc_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `permission`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '', '2021-08-02 19:00:00', NULL),
(2, 'Admin', '', NULL, NULL),
(3, 'Editor', '', '2021-08-02 21:06:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article_feedback`
--

CREATE TABLE `article_feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `knowledgebase_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `good_response` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bad_response` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_feedback`
--

INSERT INTO `article_feedback` (`id`, `user_id`, `knowledgebase_id`, `name`, `email`, `query`, `good_response`, `bad_response`, `created_at`, `updated_at`) VALUES
(16, 3, 2, 'User 2', 'testdoc2021@gmail.com', 'Testing logged user', 'good', NULL, '2021-08-08 00:24:41', '2021-08-08 00:24:41'),
(17, NULL, 1, 'Unlogged User', 'dd@dd', 'testing unlogged user', 'good', NULL, '2021-08-08 00:26:28', '2021-08-08 00:26:28'),
(18, NULL, 1, 'ww', 'ww@ss', 'ss', NULL, 'bad', '2021-08-08 00:27:08', '2021-08-08 00:27:08'),
(19, NULL, 1, 'dd', 'dda@d', 'ffd', 'good', NULL, '2021-08-08 00:28:58', '2021-08-08 00:28:58'),
(20, NULL, 2, 'Sharifur Rahmam', 'dvrobin4@gmail.com', 'zxCXZCXZC', 'good', NULL, '2021-08-12 02:46:25', '2021-08-12 02:46:25'),
(21, NULL, 2, 'ss', 'ss', 'ss', 'good', NULL, '2021-08-12 03:58:55', '2021-08-12 03:58:55'),
(22, NULL, 3, 'sdsaf', 'sddds', 'sdds', 'good', NULL, '2021-08-12 07:41:20', '2021-08-12 07:41:20'),
(24, NULL, 4, 'testers24', 'tester@gmail.com', 'mirando  mas  producto', 'good', NULL, '2021-09-24 13:53:41', '2021-09-24 13:53:41'),
(25, NULL, 56, '12345678', 'admin@admin.com', '1234567812345678123456781234567812345678', 'good', NULL, '2021-09-24 23:45:20', '2021-09-24 23:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `og_meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text COLLATE utf8mb4_unicode_ci,
  `og_meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `user_id`, `title`, `blog_content`, `tags`, `image`, `meta_tags`, `meta_description`, `excerpt`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `slug`, `author`, `meta_title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(3, 1, 10, 'What are the main features that interest in our product', '<p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education.</span></p>', 'test', '71', 'ss', 'Discovered had get considered projection who favourable', 'If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably.', 'test', 'Discovered had get considered projection who favourable', NULL, 'what-are-the-main-features-that-interest-in-our-product', 'Sohan', 'test', 'publish', 'en_GB', '2021-08-05 03:24:43', '2021-09-11 00:13:30'),
(4, 2, 10, 'Before nature his parish boy of the lake', '<p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable la unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education.</span></p>', 'test', '70', 'test', 'Discovered had get considered projection who favourable', 'If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably.', 'test', 'Discovered had get considered projection who favourable', NULL, 'before-nature-his-parish-boy', 'Sohan', 'test', 'publish', 'en_GB', '2021-08-05 03:31:20', '2021-09-11 02:57:40'),
(5, 1, 10, 'Are the main features that interest in our product', '<p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education.</span></p>', 'test', '69', 'ok', 'Discovered had get considered projection who favourable', 'If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably.', 'test', 'Discovered had get considered projection who favourable', NULL, 'are-the-main-features-that-interest-in-our-product', 'Sohan', 'test', 'publish', 'en_GB', '2021-08-05 03:32:46', '2021-09-11 00:13:05'),
(6, 5, 10, 'Easy mind life fact with see has bore ten', '<p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education.</span></p>', 'test', '68', 'ok', 'Discovered had get considered projection who favourable', 'If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably.', 'test', 'Discovered had get considered projection who favourable', NULL, 'easy-mind-life-fact-with-see-has-bore-ten', 'Sohan', 'test', 'publish', 'en_GB', '2021-08-05 03:33:57', '2021-09-11 00:12:50'),
(7, 3, 10, 'Discovery incommode earnestly no he commanded', '<p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education.</span></p>', 'test', '67', 'ok', 'Discovered had get considered projection who favourable', 'If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably.', 'test', 'Discovered had get considered projection who favourable', NULL, 'discovery-incommode-earnestly-no-he-commanded', 'Sohan', 'test', 'publish', 'en_GB', '2021-08-05 03:35:20', '2021-09-11 00:12:28'),
(8, 2, 10, 'Gravity letters it amongst herself dearest', '<p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education.</span></p>', 'test', '66', 'test', 'Discovered had get considered projection who favourable', 'If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably.', 'test', 'Discovered had get considered projection who favourable', '3', 'gravity-letters-it-amongst-herself-dearest', 'Sohan', 'test', 'publish', 'en_GB', '2021-08-05 03:38:36', '2021-09-11 00:12:17'),
(9, 7, 10, 'أبرشية أي ثرثرة يمكن أن توجا', '<p><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين موافقتهم الخاصة. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب الذي لا يرغب في وصفه اكتئاب لا يصغي إليه. أمام الطبيعة ، ولد رعيته ، الكلمات الكاملة لأرملة تتراجع عن عمر قليل كل سبع سنوات. إذا أخطأت جزء من حقيقة أنه بارك فقط شو. تم اكتشافه في الاعتبار الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل. تعليم المغادرة غير راغب في أن يكون داش وودز أو. استخدام القانون المقبول غير راغب في فضول سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. حتى الارملة تساوي نصيبها الأقل. طريق غرفة رحلة أخرى حتى الآن رجل أنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف incommode بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></font><br></p>', 'اختبار', '77', 'اختبار', 'اختبار', 'إذا أخطأت جزء من حقيقة أنه بارك فقط شو. اكتشفت النظر في الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.', 'اختبار', 'اختبار', NULL, 'abrshy-ay-thrthr-ymkn-an-toga', 'سوهان', 'اختبار', 'publish', 'ar', '2021-08-05 03:40:10', '2021-09-11 00:15:16'),
(11, 9, 10, 'رسائل الجاذبية بين نفسها أعز', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين موافقتهم الخاصة. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب الذي لا يرغب في وصفه اكتئاب لا يصغي إليه. أمام الطبيعة ، ولد رعيته ، الكلمات الكاملة لأرملة تتراجع عن عمر قليل كل سبع سنوات. إذا أخطأت جزء من حقيقة أنه بارك فقط شو. تم اكتشافه في الاعتبار الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.</span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">تعليم المغادرة غير راغب في أن يكون داش وودز أو. استخدام القانون المقبول غير راغب في فضول سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. حتى الارملة تساوي نصيبها الأقل. طريق غرفة رحلة أخرى حتى الآن رجل أنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></font></p>', 'اختبار', '76', 'اختبار', 'اختبار', 'إذا أخطأت جزء من حقيقة أنه بارك فقط شو. اكتشفت النظر في الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.', 'اختبار', 'اختبار', NULL, 'rsayl-algathby-byn-nfsha-aaaz', 'سوهان', 'اختبار', 'publish', 'ar', '2021-08-05 03:54:43', '2021-09-11 00:14:37'),
(12, 8, 10, 'غرفة رحلة أخرى حتى', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين موافقتهم الخاصة. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب الذي لا يرغب في وصفه اكتئاب لا يصغي إليه. أمام الطبيعة ، ولد رعيته ، الكلمات الكاملة لأرملة تتراجع عن عمر قليل كل سبع سنوات. إذا أخطأت جزء من حقيقة أنه بارك فقط شو. تم اكتشافه في الاعتبار الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.</span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">تعليم المغادرة غير راغب في أن يكون داش وودز أو. استخدام القانون المقبول غير راغب في فضول سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. حتى الارملة تساوي نصيبها الأقل. طريق غرفة رحلة أخرى حتى الآن رجل أنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></font></p>', 'اختبار', '75', 'اختبار', 'اختبار', 'إذا أخطأت جزء من حقيقة أنه بارك فقط شو. اكتشفت النظر في الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.', 'اختبار', 'اختبار', NULL, 'ghrf-rhl-akhr-ht', 'سوهان', 'اختبار', 'publish', 'ar', '2021-08-05 03:57:25', '2021-09-11 00:14:25'),
(13, 10, 10, 'غرفة رحلة أخرى حتىالسيدات', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين موافقتهم الخاصة. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب الذي لا يرغب في وصفه اكتئاب لا يصغي إليه. أمام الطبيعة ، ولد رعيته ، الكلمات الكاملة لأرملة تتراجع عن عمر قليل كل سبع سنوات. إذا أخطأت جزء من حقيقة أنه بارك فقط شو. تم اكتشافه في الاعتبار الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.</span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">تعليم المغادرة غير راغب في أن يكون داش وودز أو. استخدام القانون المقبول غير راغب في فضول سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. حتى الارملة تساوي نصيبها الأقل. طريق غرفة رحلة أخرى حتى الآن رجل أنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></font></p>', 'اختبار', '74', 'اختبار', 'اختبار', 'إذا أخطأت جزء من حقيقة أنه بارك فقط شو. اكتشفت النظر في الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.', 'اختبار', 'اختبار', NULL, 'ghrf-rhl-akhr-htalsydat', 'سوهان', 'اختبار', 'publish', 'ar', '2021-08-05 03:58:48', '2021-09-11 00:14:17'),
(14, 11, 10, 'أبرشية أي ثرثرة يمكن أن ت', '<p style=\"text-align: justify; \"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين موافقتهم الخاصة. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب الذي لا يرغب في وصفه اكتئاب لا يصغي إليه. أمام الطبيعة ، ولد رعيته ، الكلمات الكاملة لأرملة تتراجع عن عمر قليل كل سبع سنوات. إذا أخطأت جزء من حقيقة أنه بارك فقط شو. تم اكتشافه في الاعتبار الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.</span></font></p><p style=\"text-align: justify; \"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\"> تعليم المغادرة غير راغب في أن يكون داش وودز أو. استخدام القانون المقبول غير راغب في فضول سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. حتى الارملة تساوي نصيبها الأقل. طريق غرفة رحلة أخرى حتى الآن رجل أنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></font><br></p>', 'اختبار', '73', 'اختبار', 'اختبار', 'إذا أخطأت جزء من حقيقة أنه بارك فقط شو. اكتشفت النظر في الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.', 'اختبار', 'اختبار', NULL, 'abrshy-ay-thrthr-ymkn-an-t', 'سوهان', 'اختبار', 'publish', 'ar', '2021-08-05 04:01:10', '2021-09-11 00:14:08'),
(15, 12, 10, 'أبرشية أي استخداممكن أن', '<p style=\"text-align: justify; \"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين موافقتهم الخاصة. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. ر الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. حتى الارملة تساوي نصيبها الأقل. طريق غرفة رحلة أخرى حتى الآن رجل أنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></font></p><p><div style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين موافقتهم الخاصة. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب الذي لا يرغب في وصفه اكتئاب لا يصغي إليه. أمام الطبيعة ، ولد رعيته ، الكلمات الكاملة لأرملة تتركون داش وودز أو. استخدام القانون المقبول غير راغب في فضول سيدي الناقص على الفور. من السهل حقيقة إلى السابق. حتى الارملة تساوي نصيبها الأقل. طريق غرفة رحلة أخرى حتى الآن رجل أنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></div><div style=\"text-align: justify;\"><br></div></p>', 'اختبار', '72', 'اختبار', 'اختبار', 'إذا أخطأت جزء من حقيقة أنه بارك فقط شو. اكتشفت النظر في الإسقاط الذي موات. لا بد من معرفة ذلك بشكل محتمل.', 'اختبار', 'اختبار', NULL, 'abrshy-ay-astkhdammkn-an', 'سوهان', 'اختبار', 'publish', 'ar', '2021-08-05 04:03:17', '2021-09-11 00:13:56'),
(16, 13, 10, '¿Cuáles son las principales características que interesan a nuestro producto?', '<p style=\"text-align: justify;\">Palabras de locura viuda una baja edad cada siete años. Si se pierde parte por hecho, el parque solo muestra. Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez&nbsp;&nbsp;al instante. El hecho de la vida de la fácil con ver ha a.</p><p style=\"text-align: justify;\">Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a una parte mínima.Otro camino de cámara de viaje aún mujeres hombre. Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil. Llamar a la ofensa seis sentimiento de alegría deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la ma</p><p style=\"text-align: justify;\">Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si&nbsp; ponga todavía algo sobre la mansión escuchada.</p>', 'prueba', '78', 'prueba', 'prueba', 'En él, excepto para templar los gustos mutuos de la madre. Interesado cultivado su continuo ahora todavía lo está. Nuestra aceptación interesada afrenta nuestra parcialidad desagradable por qué sumar.', 'prueba', 'prueba', NULL, 'cuales-son-las-principales-caracteristicas-que-interesan-a-nuestro-producto', 'Sohan', 'prueba', 'publish', 'es_ES', '2021-08-05 04:14:48', '2021-09-11 00:16:45'),
(17, 14, 10, 'características que interesan a nuestro producto?', '<p>Palabras de locura viuda una baja edad cada siete años. Si se pierde parte por hecho, el parque solo muestra. Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a una parte mínima.Otro camino de cámara de viaje aún mujeres hombre. Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil. Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada.</p>', 'prueba', '80', 'prueba', 'prueba', 'En él, excepto para templar los gustos mutuos de la madre. Interesado cultivado su continuo ahora todavía lo está. Nuestra aceptación interesada afrenta nuestra parcialidad desagradable por qué sumar.', 'prueba', 'prueba', NULL, 'caracteristicas-que-interesan-a-nuestro-producto', 'Sohan', 'prueba', 'publish', 'es_ES', '2021-08-05 04:15:19', '2021-09-11 00:16:33'),
(18, 15, 10, '¿Cuáles son las principa hasta?', '<p style=\"text-align: justify;\">Palabras de locura viuda una baja edad cada siete años. Si se pierde parte por hecho, el parque solo muestra. Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez&nbsp;&nbsp;al instante. El hecho de la vida de la fácil con ver ha a.</p><p style=\"text-align: justify;\">Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a una parte mínima.Otro camino de cámara de viaje aún mujeres hombre. Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil. Llamar a la ofensa seis sentimiento de alegría deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la ma</p><p style=\"text-align: justify;\">Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si&nbsp; ponga todavía algo sobre la mansión escuchada.</p>', 'prueba', '81', 'prueba', 'prueba', 'En él, excepto para templar los gustos mutuos de la madre. Interesado cultivado su continuo ahora todavía lo está. Nuestra aceptación interesada afrenta nuestra parcialidad desagradable por qué sumar.', 'prueba', 'prueba', NULL, 'cuales-son-las-principa-hasta', 'Sohan', 'prueba', 'publish', 'es_ES', '2021-08-05 04:16:53', '2021-09-11 00:16:24'),
(19, 13, 10, 'Palabras de locura viuda una baja', '<p style=\"text-align: justify;\">Palabras de locura viuda una baja edad cada siete años. Si se pierde parte por hecho, el parque solo muestra. Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez&nbsp;&nbsp;al instante. El hecho de la vida de la fácil con ver ha a.</p><p style=\"text-align: justify;\">Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a una parte mínima.Otro camino de cámara de viaje aún mujeres hombre. Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil. Llamar a la ofensa seis sentimiento de alegría deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la ma</p><p style=\"text-align: justify;\">Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si&nbsp; ponga todavía algo sobre la mansión escuchada.</p>', 'prueba', '82', 'prueba', 'prueba', 'En él, excepto para templar los gustos mutuos de la madre. Interesado cultivado su continuo ahora todavía lo está. Nuestra aceptación interesada afrenta nuestra parcialidad desagradable por qué sumar.', 'prueba', 'prueba', NULL, 'palabras-de-locura-viuda-una-baja', 'Sohan', 'prueba', 'publish', 'es_ES', '2021-08-05 04:18:21', '2021-09-11 00:16:15'),
(20, 18, 10, 'interesan a nuestro producto?', '<p style=\"text-align: justify;\">Palabras de locura viuda una baja edad cada siete años. Si se pierde parte por hecho, el parque solo muestra. Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez&nbsp;&nbsp;al instante. El hecho de la vida de la fácil con ver ha a.</p><p style=\"text-align: justify;\">Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a una parte mínima.Otro camino de cámara de viaje aún mujeres hombre. Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil. Llamar a la ofensa seis sentimiento de alegría deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la ma</p><p style=\"text-align: justify;\">Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si&nbsp; ponga todavía algo sobre la mansión escuchada.</p>', 'prueba', '83', 'prueba', 'prueba', 'En él, excepto para templar los gustos mutuos de la madre. Interesado cultivado su continuo ahora todavía lo está. Nuestra aceptación interesada afrenta nuestra parcialidad desagradable por qué sumar.', 'prueba', 'prueba', NULL, 'interesan-a-nuestro-producto', 'Sohan', 'prueba', 'publish', 'es_ES', '2021-08-05 04:20:40', '2021-09-11 00:16:04'),
(21, 18, NULL, 'interesan a nuestro producto?', '<p>Palabras de locura viuda una baja edad cada siete años. Si se pierde parte por hecho, el parque solo muestra. Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a una parte mínima.Otro camino de cámara de viaje aún mujeres hombre. Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil. Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada.</p>', 'prueba', '52', 'prueba', 'prueba', 'En él, excepto para templar los gustos mutuos de la madre. Interesado cultivado su continuo ahora todavía lo está. Nuestra aceptación interesada afrenta nuestra parcialidad desagradable por qué sumar.', 'prueba', 'prueba', NULL, 'interesan-a-nuestro-producto2', 'Sohan', 'prueba', 'draft', NULL, '2021-08-05 04:28:08', '2021-08-05 04:28:08'),
(22, 18, NULL, 'interesan a nuestro producto?', '<p>Palabras de locura viuda una baja edad cada siete años. Si se pierde parte por hecho, el parque solo muestra. Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a una parte mínima.Otro camino de cámara de viaje aún mujeres hombre. Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil. Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada.</p>', 'prueba', '52', 'prueba', 'prueba', 'En él, excepto para templar los gustos mutuos de la madre. Interesado cultivado su continuo ahora todavía lo está. Nuestra aceptación interesada afrenta nuestra parcialidad desagradable por qué sumar.', 'prueba', 'prueba', NULL, 'interesan-a-nuestro-producto2', 'Sohan', 'prueba', 'draft', NULL, '2021-08-05 04:28:41', '2021-08-05 04:28:41'),
(23, 13, 10, 'interesan a nuestro instante?', '<p style=\"text-align: justify; \">Palabras de locura viuda una baja edad cada siete años. Si se pierde parte por hecho, el parque solo muestra. Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez&nbsp;&nbsp;al instante. El hecho de la vida de la fácil con ver ha a.</p><p style=\"text-align: justify; \">Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a una parte mínima.Otro camino de cámara de viaje aún mujeres hombre. Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil. Llamar a la ofensa seis sentimiento de alegría deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la ma</p><p style=\"text-align: justify; \"> Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si&nbsp; ponga todavía algo sobre la mansión escuchada.</p>', 'prueba', '78', 'prueba', 'prueba', 'En él, excepto para templar los gustos mutuos de la madre. Interesado cultivado su continuo ahora todavía lo está. Nuestra aceptación interesada afrenta nuestra parcialidad desagradable por qué sumar.', 'prueba', 'prueba', NULL, 'interesan-a-nuestro-producto-instante', 'Sohan', 'prueba', 'publish', 'es_ES', '2021-08-05 04:29:47', '2021-09-11 00:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Computer', 'en_GB', 'publish', '2021-08-05 00:04:27', '2021-08-05 00:04:27'),
(2, 'Domains', 'en_GB', 'publish', '2021-08-05 00:12:39', '2021-08-05 00:12:39'),
(3, 'Hosting', 'en_GB', 'publish', '2021-08-05 00:13:00', '2021-08-05 00:13:00'),
(4, 'Affiliates', 'en_GB', 'publish', '2021-08-05 00:13:26', '2021-08-05 00:13:26'),
(5, 'Email Service', 'en_GB', 'publish', '2021-08-05 00:13:41', '2021-08-05 00:13:41'),
(6, 'Domain Transfer', 'en_GB', 'publish', '2021-08-05 00:13:56', '2021-08-05 00:13:56'),
(7, 'نقل المجال', 'ar', 'publish', '2021-08-05 00:14:34', '2021-08-05 00:14:34'),
(8, 'خدمة البريد الإلكتروني', 'ar', 'publish', '2021-08-05 00:14:59', '2021-08-05 00:14:59'),
(9, 'الشركات التابعة', 'ar', 'publish', '2021-08-05 00:15:33', '2021-08-05 00:15:33'),
(10, 'الاستضافة', 'ar', 'publish', '2021-08-05 00:16:13', '2021-08-05 00:16:13'),
(11, 'المجالات', 'ar', 'publish', '2021-08-05 00:21:32', '2021-08-05 00:21:32'),
(12, 'حاسوب', 'ar', 'publish', '2021-08-05 00:22:48', '2021-08-05 00:22:48'),
(13, 'Transferencia de dominio', 'es_ES', 'publish', '2021-08-05 00:23:20', '2021-08-05 00:23:20'),
(14, 'Servicio de correo electrónico', 'es_ES', 'publish', '2021-08-05 00:23:46', '2021-08-05 00:23:46'),
(15, 'Afiliados', 'es_ES', 'publish', '2021-08-05 00:24:16', '2021-08-05 00:24:16'),
(16, 'Hospedaje', 'es_ES', 'publish', '2021-08-05 00:24:50', '2021-08-05 00:24:50'),
(17, 'Dominios', 'es_ES', 'publish', '2021-08-05 00:25:18', '2021-08-05 00:25:18'),
(18, 'Computadora', 'es_ES', 'publish', '2021-08-05 00:25:41', '2021-08-05 00:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `canned_responses`
--

CREATE TABLE `canned_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `canned_responses`
--

INSERT INTO `canned_responses` (`id`, `title`, `body`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Auto Replay', 'Thanks for contact support. <br><br>\r\nYour Support Ticket ID: <br>\r\n\r\nwe will contact you soon <br>\r\n <br>\r\nNT: This is an automated message', 'en_GB', '2021-07-28 23:51:00', '2021-07-29 23:56:35'),
(4, 'إعادة التشغيل التلقائي', '<p>شكرا على الاتصال بالدعم.</p><p><br></p><p>معرف تذكرة الدعم الخاصة بك:</p><p>سوف نتصل بك قريبا.</p><p><br></p><p>NT: هذه رسالة آلية.</p>', 'ar', '2021-07-29 00:17:07', '2021-07-29 00:17:07'),
(5, 'Repetición automática', '<p>Gracias por contactar con el soporte.</p><p><br></p><p>Su ID de ticket de soporte:</p><p>Nos pondremos en contacto con usted pronto.</p><p><br></p><p>NT: Este es un mensaje automático.</p>', 'es_ES', '2021-07-29 00:17:34', '2021-07-29 00:17:34'),
(6, 'Closing Ticket', 'This is test for closing ticket.\r\n\r\n\r\nNT: This is an automated message', 'en_GB', '2021-07-29 00:19:06', '2021-07-30 00:20:26'),
(7, 'تذكرة الإغلاق', '<p>أقوم بإغلاق هذه التذكرة لأنك لم ترد منذ يومين.</p><p>يمكنك فتح هذه التذكرة في أي وقت.</p>', 'ar', '2021-07-29 00:19:42', '2021-07-29 00:19:42'),
(8, 'Ticket de cierre', '<p>Estoy cerrando este ticket porque no respondiste desde hace 2 días.</p><p>puede abrir este ticket en cualquier momento.</p>', 'es_ES', '2021-07-29 00:20:21', '2021-07-29 00:20:21'),
(9, 'Leave Review', 'Please leave  a review for code canyion\r\n\r\nNT: This is an automated message', 'en_GB', '2021-07-29 00:23:03', '2021-07-30 00:00:03'),
(10, 'اترك مراجعة', '<p>يرجى ترك تعليق في ، كيف كانت تجربتك مع الدعم</p><p>يمكنك متابعة هذه المقالة لمعرفة المزيد ، كيف تترك مراجعة في&nbsp;</p>', 'ar', '2021-07-29 00:23:55', '2021-07-29 00:23:55'),
(11, 'Deje opinión', '<p>por favor deje un comentario en codecanyon, ¿cómo fue su experiencia con el soporte?</p><p>puede seguir este artículo para obtener más información,</p><p><br></p><p>&nbsp; Cómo dejar una reseña en codecanyon</p>', 'es_ES', '2021-07-29 00:24:34', '2021-07-29 00:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `consulations`
--

CREATE TABLE `consulations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consulations`
--

INSERT INTO `consulations` (`id`, `custom_fields`, `attachment`, `status`, `created_at`, `updated_at`) VALUES
(28, 'a:4:{s:4:\"name\";s:8:\"Al Ahsan\";s:7:\"subject\";s:12:\"test subject\";s:5:\"email\";s:23:\"sopnilsohan03@gmail.com\";s:7:\"message\";s:20:\"This is test content\";}', 'a:0:{}', 'completed', '2021-05-26 03:27:49', '2021-05-26 04:00:17'),
(35, 'a:4:{s:4:\"name\";s:9:\"sdfgdsfds\";s:7:\"subject\";s:3:\"sss\";s:5:\"email\";s:9:\"sfddf@fdf\";s:7:\"message\";s:8:\"sfdsfdsf\";}', 'a:1:{s:4:\"file\";s:88:\"assets/uploads/attachment/applicant/attachment-WH5LVgVpvQ5GAUcMrPVVlqgRXGRPZpox-file.jpg\";}', 'pending', '2021-05-31 02:36:06', '2021-05-31 02:36:06'),
(36, 'a:4:{s:4:\"name\";s:75:\"<img src=x onerror=alert(`XSS!`);window.location=`https:\\/\\/google.co.uk`;>\";s:7:\"subject\";s:75:\"<img src=x onerror=alert(`XSS!`);window.location=`https:\\/\\/google.co.uk`;>\";s:5:\"email\";s:23:\"sopnilsohan03@gmail.com\";s:7:\"message\";s:75:\"<img src=x onerror=alert(`XSS!`);window.location=`https:\\/\\/google.co.uk`;>\";}', 'a:0:{}', 'pending', '2021-06-01 03:18:44', '2021-06-01 03:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `counterups`
--

CREATE TABLE `counterups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counterups`
--

INSERT INTO `counterups` (`id`, `title`, `number`, `extra_text`, `image`, `lang`, `created_at`, `updated_at`) VALUES
(18, 'Total Viewers', '88', 'k', '26', 'en_GB', '2021-07-11 03:48:41', '2021-07-11 04:42:23'),
(19, 'Happy User', '72', 'k', '25', 'en_GB', '2021-07-11 03:49:11', '2021-07-11 04:41:56'),
(20, 'Live Support', '75', 'k', '24', 'en_GB', '2021-07-11 03:49:49', '2021-07-11 04:41:34'),
(21, 'User', '88', 'k', '23', 'en_GB', '2021-07-11 03:50:16', '2021-07-11 04:41:09'),
(22, 'إجمالي المشاهدين', '88', 'k', '23', 'ar', '2021-07-11 03:51:02', '2021-07-11 04:44:56'),
(23, 'مستخدم سعيد', '252', 'k', '24', 'ar', '2021-07-11 03:51:33', '2021-07-11 04:44:04'),
(24, 'دعم مباشر', '44', 'k', '25', 'ar', '2021-07-11 03:51:59', '2021-07-11 04:43:25'),
(25, 'المستعمل', '55', 'k', '26', 'ar', '2021-07-11 03:52:39', '2021-07-11 04:42:56'),
(26, 'Espectadoras totales', '44', 'k', '26', 'es_ES', '2021-07-11 03:53:28', '2021-07-11 04:47:45'),
(27, 'Usuario feliz', '78', 'k', '25', 'es_ES', '2021-07-11 03:54:02', '2021-07-11 04:47:08'),
(28, 'Soporte vital', '23', 'k', '24', 'es_ES', '2021-07-11 03:54:38', '2021-07-11 04:46:14'),
(29, 'Usuaria', '72', 'k', '23', 'es_ES', '2021-07-11 03:55:13', '2021-07-11 04:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Submit Issue', 'publish', '2021-09-06 07:40:37', '2021-09-06 07:40:37'),
(3, 'Demo Problem', 'publish', '2021-09-06 22:20:23', '2021-09-06 22:48:27'),
(4, 'Installation Error', 'publish', '2021-09-06 22:20:31', '2021-09-06 22:20:31'),
(5, 'Language Issue', 'publish', '2021-09-06 22:20:41', '2021-09-06 22:48:32'),
(6, 'Mailing Issue', 'publish', '2021-09-06 22:21:04', '2021-09-06 22:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_open` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `status`, `is_open`, `description`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'What’s your very first memory?', 'publish', 'on', '<p style=\"text-align: justify; \">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, non cupidatat skateboarddolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor</p>', 'en_GB', '2021-07-11 02:53:15', '2021-07-15 07:33:06'),
(2, 'What makes you happiest?', 'publish', '', '<p><span style=\"text-align: justify;\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, non cupidatat skateboarddolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor</span><br></p>', 'en_GB', '2021-07-11 02:54:12', '2021-07-11 03:15:27'),
(3, 'What’s the most ticklish spot on your body?', 'publish', '', '<p><span style=\"text-align: justify;\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, non cupidatat skateboarddolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor</span><br></p>', 'en_GB', '2021-07-11 02:54:48', '2021-07-11 03:16:05'),
(4, 'What’s your favorite color?', 'publish', '', '<p><span style=\"text-align: justify;\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, non cupidatat skateboarddolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor</span><br></p>', 'en_GB', '2021-07-11 02:55:15', '2021-07-11 03:15:09'),
(5, 'What song do you most associate with your childhood?', 'publish', '', '<p><span style=\"text-align: justify;\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, non cupidatat skateboarddolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor</span><br></p>', 'en_GB', '2021-07-11 02:55:39', '2021-07-11 03:15:48'),
(6, 'Which dead celebrity do you most identify with?', 'publish', '', '<p><span style=\"text-align: justify;\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, non cupidatat skateboarddolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor&nbsp;</span><br></p>', 'en_GB', '2021-07-11 02:56:02', '2021-07-11 04:53:03'),
(7, 'من المشاهير القتلى الذي تتعاطف معه أكثر؟', 'publish', '', '<p>وولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقتوولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقت<br></p>', 'ar', '2021-07-11 02:57:52', '2021-07-11 02:57:52'),
(8, 'ما هي الأغنية التي تربطها أكثر بطفولتك؟', 'publish', '', '<p>وولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقتوولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقت<br></p>', 'ar', '2021-07-11 03:17:10', '2021-07-11 03:17:10'),
(9, 'ما هو لونك المفضل؟', 'publish', '', '<p>وولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقتوولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقت<br></p>', 'ar', '2021-07-11 03:17:46', '2021-07-11 03:17:46'),
(10, 'ما هي أكثر بقعة حساسة على جسمك؟', 'publish', '', '<p>وولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقتوولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقت<br></p>', 'ar', '2021-07-11 03:18:26', '2021-07-11 03:18:26'),
(11, 'ما الذي يجعلك أسعد؟', 'publish', '', '<p>وولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقتوولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقت<br></p>', 'ar', '2021-07-11 03:19:14', '2021-07-11 03:19:14'),
(12, 'ما هي أولى ذكرياتك؟', 'publish', '', '<p>وولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقتوولف مون أوفيسيا أوت ، لوح تزلج غير كيوبيدات شاحنة طعام الكينوا لا تحتاج إلى عمل. برنش 3 وولف مون مؤقت<br></p>', 'ar', '2021-07-11 03:20:00', '2021-07-11 03:20:00'),
(13, 'Con qué celebridad muerta te identificas más?', 'publish', '', '<p>Anim pariatur cliché reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, brunch de color sin monopatín cupidatat. Food truck quinua nesciunt laborum eiusmod. Brunch 3 lobo luna tempor<br></p>', 'es_ES', '2021-07-11 03:21:08', '2021-07-11 03:21:08'),
(14, 'Qué canción asocia más con su infancia?', 'publish', '', '<p>Anim pariatur cliché reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, brunch de color sin monopatín cupidatat. Food truck quinua nesciunt laborum eiusmod. Brunch 3 lobo luna tempor<br></p>', 'es_ES', '2021-07-11 03:21:50', '2021-07-11 03:21:50'),
(15, 'Cuál es tu color favorito?', 'publish', '', '<p>Anim pariatur cliché reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, brunch de color sin monopatín cupidatat. Food truck quinua nesciunt laborum eiusmod. Brunch 3 lobo luna tempor<br></p>', 'es_ES', '2021-07-11 03:22:31', '2021-07-11 03:22:31'),
(16, 'Cuál es la parte más delicada de tu cuerpo?', 'publish', '', '<p>Anim pariatur cliché reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, brunch de color sin monopatín cupidatat. Food truck quinua nesciunt laborum eiusmod. Brunch 3 lobo luna tempor<br></p>', 'es_ES', '2021-07-11 03:23:32', '2021-07-11 03:23:32'),
(17, 'Qué te hace más feliz?', 'publish', '', '<p>Anim pariatur cliché reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, brunch de color sin monopatín cupidatat. Food truck quinua nesciunt laborum eiusmod. Brunch 3 lobo luna tempor<br></p>', 'es_ES', '2021-07-11 03:24:11', '2021-07-11 03:24:11'),
(18, 'Cuál es tu primer recuerdo?', 'publish', 'on', '<p>Anim pariatur cliché reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, brunch de color sin monopatín cupidatat. Food truck quinua nesciunt laborum eiusmod. Brunch 3 lobo luna tempor<br></p>', 'es_ES', '2021-07-11 03:26:10', '2021-07-11 03:26:10'),
(22, 'Which dead celebrity do you most identify with?', 'draft', '', '<p><span style=\"text-align: justify;\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, non cupidatat skateboarddolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor</span><br></p>', NULL, '2021-07-11 04:51:25', '2021-07-11 04:51:25'),
(23, 'Which dead celebrity do you most identify with?', 'draft', '', '<p><span style=\"text-align: justify;\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, non cupidatat skateboarddolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor&nbsp;</span><br></p>', NULL, '2021-07-11 04:57:12', '2021-07-11 04:57:12'),
(24, 'Which dead celebrity do you most identify with?', 'draft', '', '<p><span style=\"text-align: justify;\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terryrichardson ad squid. 3 wolf moon officia aute, non cupidatat skateboarddolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor&nbsp;</span><br></p>', NULL, '2021-07-11 05:00:15', '2021-07-11 05:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `knowledgebases`
--

CREATE TABLE `knowledgebases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `og_meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text COLLATE utf8mb4_unicode_ci,
  `og_meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledgebases`
--

INSERT INTO `knowledgebases` (`id`, `topic_id`, `title`, `content`, `status`, `slug`, `views`, `image`, `lang`, `meta_title`, `meta_description`, `meta_tags`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `created_at`, `updated_at`) VALUES
(1, '1', 'Need to find out the solution?', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'need-to-find-out-the-solution', '180', '73', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-11 23:08:34', '2021-10-07 03:27:55'),
(2, '1', 'Cleaver way to submit', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'cleaver-way-to-submit-the-product', '134', '72', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-11 23:34:03', '2021-10-07 03:28:00'),
(3, '1', 'for bungling at which you are', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"outline: none; -webkit-font-smoothing: antialiased; margin-bottom: 24px; color: rgb(102, 102, 102); hyphens: auto; line-height: 24px; font-size: 16px; font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"text-align: justify;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</span>ll any about manor heard.</p>', 'publish', 'for-bungling-at-which-you-are-best', '158', '71', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-11 23:36:15', '2021-10-07 03:28:05'),
(4, '2', 'moth-eaten chest should', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'moth-eaten-chest-should-be-there', '138', '70', 'en_GB', 'test', 'test', 'test', 'test', 'test', '15', '2021-07-11 23:37:41', '2021-10-07 03:28:16'),
(5, '2', 'Those medals you wear on your', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'those-medals-you-wear-on-your', '68', '81', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:01:41', '2021-10-07 03:28:21'),
(6, '2', 'you’re never around', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'youre-never-around', '51', '69', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:02:50', '2021-10-07 03:28:27'),
(7, '3', 'When courage is needed', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'when-courage-is-needed', '36', '67', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:03:54', '2021-10-07 03:28:37'),
(8, '3', 'floppy eared hound', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'floppy-eared-hound', '43', '66', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:05:10', '2021-10-07 03:28:42'),
(9, '3', 'we will find The Cities of Gold', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'we-will-find-the-cities-of-gold', '43', '74', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:07:08', '2021-10-07 03:28:47'),
(10, '4', 'through adventures every day', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'through-adventures-every-day', '34', '75', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:08:22', '2021-10-07 03:28:57'),
(11, '4', 'Every day and night, with the', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'every-day-and-night-with-the', '35', '76', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:10:06', '2021-10-07 03:29:02'),
(12, '4', 'searching for your ways', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'searching-for-your-ways', '32', '77', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:12:22', '2021-10-07 03:29:07'),
(13, '5', 'see your time has just begun', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'see-your-time-has-just-begun', '36', '78', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:14:28', '2021-10-07 03:29:16'),
(14, '5', 'some day we will find The', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'some-day-we-will-find-the-cities-of-gold', '25', '78', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:17:49', '2021-10-07 03:29:20'),
(15, '5', 'wishing for The Cities of Gold', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'wishing-for-the-cities-of-gold', '29', '79', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:20:44', '2021-10-07 03:29:25'),
(16, '6', 'with all your friends in tow', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'with-all-your-friends-in-tow', '23', '80', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:26:53', '2021-10-07 03:29:33'),
(17, '6', 'Selection to find topics?', '<p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly.</p><p class=\"info\" style=\"margin-bottom: 24px; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 24px; color: rgb(102, 102, 102); text-align: justify; outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'publish', 'selection-to-find-topics', '30', '81', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:28:29', '2021-10-07 03:29:37'),
(18, '6', 'What is included and why?', '<p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</span></p>', 'publish', 'what-is-included-and', '39', '83', 'en_GB', 'test', 'test', 'test', 'test', 'test', NULL, '2021-07-12 01:29:45', '2021-10-07 03:29:41'),
(19, '7', 'كيف تستخدم هذه الوثائق؟', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhdim-hadhih-alwathayiqu', '6', '80', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:31:18', '2021-09-15 14:52:18');
INSERT INTO `knowledgebases` (`id`, `topic_id`, `title`, `content`, `status`, `slug`, `views`, `image`, `lang`, `meta_title`, `meta_description`, `meta_tags`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `created_at`, `updated_at`) VALUES
(20, '7', 'كيف تستخدم هذه الوث', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhdim-hadhih-alwathayiqu-4', NULL, '67', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:35:47', '2021-09-11 00:47:38'),
(21, '7', 'ما هو مدرج ولماذا؟', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'ma-hu-mudraj-walimadha', NULL, '68', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:38:26', '2021-09-11 00:47:29'),
(22, '8', 'متطلبات المعرفة الأساسية.', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'mutatalibat-almaerifat-alasasiati', '5', '69', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:40:14', '2021-09-16 00:15:31'),
(23, '8', 'البدء وما هو التالي', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'albad-wama-hu-altaali', NULL, '70', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:42:58', '2021-09-11 00:47:07'),
(24, '8', 'كيف تستخدم هذه الوثائق؟', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhdim-hadhih-alwathayiqu-4-4', '0', '72', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:45:01', '2021-09-15 20:07:58'),
(25, '9', 'كيف تستخدم هذه الوثائق', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhdim-hadhih-alwatha', '1', '71', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:47:21', '2021-09-11 00:46:45'),
(26, '9', 'ممتلكات تافهة من الضح', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakh', '0', '73', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:48:27', '2021-09-11 00:44:19'),
(27, '9', 'الطبيعة يتمتعون بالعطف', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhhhff-fddd', '4', '74', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:50:14', '2021-09-11 00:44:02'),
(28, '10', 'الطبيعة يتمتعون بالعطف', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhhhffgg', '0', '75', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:51:54', '2021-10-06 20:52:40'),
(29, '10', 'ت تافهة من الضحك والتقت بالطريق', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhhhffggff', '0', '76', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:53:51', '2021-09-11 00:43:34'),
(30, '10', 'م الطبيعة يتمتعون بالعأتحص', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhhherr', '1', '77', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:55:06', '2021-09-11 00:42:13'),
(31, '11', 'والتقت بالطريقام الطبيعة', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhhherr-fhff', '0', '78', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:56:29', '2021-10-05 15:48:39'),
(32, '11', 'الطبيعة يتمتعون بالعطف', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhhherr-fhffva', '7', '79', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 01:58:16', '2021-09-11 00:41:07'),
(33, '11', 'الطريقام الطبيعة يتمتعون با', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhhherr-fhffvp', '1', '80', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 02:00:01', '2021-09-11 00:40:55'),
(34, '12', 'م الطبيعة يتمتعون بالعأتحص', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhhherr-fhffvpqq', '1', '81', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 02:01:08', '2021-09-11 00:40:46'),
(35, '12', 'م الطبيعة يتمتعون بالعأتحص', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhh', '14', '82', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 02:02:27', '2021-09-11 00:40:36'),
(36, '12', 'م الطبيعة يتمتعون بالعأتحص', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغي. رسائل الجاذبية بين نفسها أعز نافذة بجانبها. السيدات المشجرة هي سلة الموسم التي تراها مضطربة. الخطاب غير الراغب في وصف الاكتئاب الذي لا يصغي إليه. أمام الطبيعة ، ابن أبرشيته ، الكلمات الكاملة ، أرملة ، تتراجع عن عمر قليل كل سبعة أعوام. إذا أخطأت جزء من حقيقة أنه بارك فقط شو</span></font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">يتكرر أحد الجنس المنزلي المتقدم الذي تم تحويله وهو يجلب لك الشيخوخة. من الممكن أن تحصل على ممتلكات تافهة من الضحك والتقت بالطريقة. كان الصحابة الخجولين يتمتعون بالعطف الإيجابي. الذي يمكن أن يسمع الرجل الضيف الآن ولكن. استمر عدم ارتياحي القادمة علامة لذلك ينبغيل سيدي الناقص على الفور. من السهل حقيقة حياة العقل مع رؤية قد تحمل عشرة. أبرشية أي ثرثرة يمكن أن توجهها إلى السابق. فالأرملة أعلى كما يقصد تساوي نصيبًا أقل ، ورحلة أخرى طريق الحجرة بعد الأنثى. طريق واسع وكآبة تحصل على تسليم ناقص صدق رجل نبيل السن. حيازة أداة نهائية تتناقض بلا حراك. استدعاء الشعور بالفرح ستة جرم. جاءت المزايا وكانت الموهبة بعيدة بما فيه الكفاية. سيدي الفرح تعليم الرياضيين شمالا. اكتشاف بجدية لا أمر إذا. لا يزال يسمع أي شيء عن مانور.</span></p>', 'publish', 'kayf-tustakhhlll', '0', '83', 'ar', 'اختبار', 'اختبار', 'اختبار', 'اختبار', 'اختبار', NULL, '2021-07-12 02:03:59', '2021-09-11 00:40:28'),
(37, '13', 'Cómo utilizar documentación?', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'como-utilizar-documentacion', '2', '81', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:22:42', '2021-09-17 02:35:08');
INSERT INTO `knowledgebases` (`id`, `topic_id`, `title`, `content`, `status`, `slug`, `views`, `image`, `lang`, `meta_title`, `meta_description`, `meta_tags`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `created_at`, `updated_at`) VALUES
(38, '13', '¿Cómo encontrar temas?', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'como-encontrar-temas', NULL, '80', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:30:15', '2021-09-11 00:53:37'),
(39, '13', '¿Qué está incluido y por qué?', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'que-esta-incluido-y-por-que', NULL, '79', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:32:36', '2021-09-11 00:53:26'),
(40, '14', '¿Qué está incluipor qué?', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'que-esta-incluipor-que', '0', '78', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:35:14', '2021-09-16 12:52:11'),
(41, '14', 'Requisitos de básicos.', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'requisitos-de-basicos', NULL, '77', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:36:51', '2021-09-11 00:53:00'),
(42, '14', 'Primeros pasos y que sigue', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'primeros-pasos-y-que-sigue', '4', '76', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:41:07', '2021-09-17 01:48:33'),
(43, '15', 'Primeros pasos y que s', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'primeros-pasos-y-que', NULL, '75', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:43:12', '2021-09-11 00:52:39'),
(44, '15', 'Cómo encontrar temas', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'como-encontrar-temas-4', NULL, '73', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:47:46', '2021-09-11 00:52:28'),
(45, '15', '¿Qué está incluido y por qué?', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'que-esta-incluido-y-por-que-4', '0', '74', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:49:47', '2021-09-11 00:51:49'),
(46, '16', 'está incluido y por qué?', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'sta-incluido-y-por-que', '1', '75', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:51:38', '2021-09-24 02:02:51'),
(47, '16', 'tá incluido y por qué?', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda</span><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">La educación</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><br></p>', 'publish', 'sta-incluido-y-por-que-4', NULL, '76', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 03:52:58', '2021-09-11 00:51:16'),
(48, '16', '¿Qué está incluido y por qé?', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería.</span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><br></span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ordenó si. Ponga todavía algo sobre la mansió</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">.</span></p>', 'publish', 'que-esta-incluido-y-por-qe', NULL, '77', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 04:00:06', '2021-09-11 00:50:56'),
(49, '17', 'Cómo encontrar tema', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería.</span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><br></span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ordenó si. Ponga todavía algo sobre la mansió</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">.</span></p>', 'publish', 'como-encontrar-tema', '1', '78', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 04:01:15', '2021-09-11 00:50:46'),
(50, '17', 'desviado repetía trayendo viejo', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería.</span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><br></span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ordenó si. Ponga todavía algo sobre la mansió</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">.</span></p>', 'publish', 'desviado-repetia-trayendo-viejo', '2', '79', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 04:02:18', '2021-09-30 07:40:50'),
(51, '17', 'desviado repetía trayendo', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería.</span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><br></span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ordenó si. Ponga todavía algo sobre la mansió</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">.</span></p>', 'publish', 'desviado-repetia-trayendo', NULL, '80', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 04:03:27', '2021-09-11 00:50:16'),
(52, '18', 'Que pudo ver al invitado', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería.</span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><br></span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ordenó si. Ponga todavía algo sobre la mansió</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">.</span></p>', 'publish', 'que-pudo-ver-al-invitado', NULL, '81', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 04:04:39', '2021-09-11 00:50:05');
INSERT INTO `knowledgebases` (`id`, `topic_id`, `title`, `content`, `status`, `slug`, `views`, `image`, `lang`, `meta_title`, `meta_description`, `meta_tags`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `created_at`, `updated_at`) VALUES
(53, '18', 'Necesario hasta el conocimiento', '<p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería.</span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><br></span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: justify;\"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada&nbsp;</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">ordenó si. Ponga todavía algo sobre la mansió</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">.</span></p>', 'publish', 'necesario-hasta-el-conocimiento', '0', '82', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 04:05:53', '2021-10-04 01:25:44'),
(54, '18', 'Ghasta el conocimiento', '<p style=\"text-align: justify; \"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Un avanzado doméstico desviado repetía trayendo viejo. Possible adquirió la propiedad de sus pensamientos de risa insignificantes que conoció. Los compañeros tímidos tenían una solicitud favorable propia. Que pudo ver al invitado ahora escuchado pero. Duró mi venida incómodo marcado por lo que debería.</span></font></p><p style=\"text-align: justify; \"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\"> Gravity lo pone entre sus más queridas ventanas. Señoras boscosas que la temporada de canasta envejece su incómoda sierra Discurso renuente,no se describe el abatimiento, no se escucha. Ante la naturalsu parroquia boyFolly palabras viuda una baja pocas edades cada siete.</span></font><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades cada siete.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">palabras viuda una baja pocas edades .</span></p><p style=\"text-align: justify; \"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><br></span></p><p style=\"text-align: justify; \"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Si se pierde parte por hecho, el parque solo muestra.</span></font><span style=\"font-size: 16px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif;\">Descubierto se había considerado proyección favorable. Necesario hasta el conocimiento lo tolerablemente. La educación de la salida no dispuesta es ser dashwoods o an. Utilice la ley agradable que no quiere señor curiosidad deficiente al instante. El hecho de la vida de la mente fácil con ver ha aburrido diez. Parroquia cualquier hablador puede elinor dirigir para el ex. Hasta como significaba viuda igual a la parte menos. Otro camino de cámara de viaje aún mujeres hombre Camino extenso y abatimiento se entrega deficiente sinceridad caballero edad. Demasiado fin de la posesión de instrumentos contrastaba inmóvil.</span></p><p style=\"text-align: justify; \"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: justify; \"><font color=\"#666666\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Llamar a la ofensa seis sentimiento de alegría. Viniendo de méritos y talento bastante lejos. Señor alegría de la educación de los deportistas hacia el norte. Descubrimiento en serio no ordenó si. Ponga todavía algo sobre la mansión escuchada.</span></font><br></p>', 'publish', 'hasta-el-conocimiento', '0', '83', 'es_ES', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', NULL, '2021-07-12 04:07:15', '2021-09-11 00:48:53'),
(56, '1', 'Perfect way to explore', '<p style=\"text-align: justify; \"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable.</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"> Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. </span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><br></span></p><p style=\"text-align: justify; \"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</span></p>', 'publish', 'perfect-way-to-explore', '72', '82', 'en_GB', 'Voluptates rerum qui', 'Dolores dolore quia', 'Vero et hic repellen', 'Laborum ut et corrup', 'Eum et voluptas expe', NULL, '2021-07-13 02:07:24', '2021-10-07 04:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `knowledgebase_topics`
--

CREATE TABLE `knowledgebase_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledgebase_topics`
--

INSERT INTO `knowledgebase_topics` (`id`, `title`, `status`, `lang`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Account', 'publish', 'en_GB', '31', '2021-07-11 05:44:00', '2021-07-13 01:49:01'),
(2, 'API Documentation', 'publish', 'en_GB', '30', '2021-07-11 05:58:53', '2021-07-13 01:48:27'),
(3, 'Payment', 'publish', 'en_GB', '29', '2021-07-11 05:59:38', '2021-07-13 01:47:45'),
(4, 'Security', 'publish', 'en_GB', '28', '2021-07-11 06:00:08', '2021-07-13 01:47:02'),
(5, 'Customization', 'publish', 'en_GB', '27', '2021-07-11 06:01:54', '2021-07-13 01:46:25'),
(6, 'Troubleshooting', 'publish', 'en_GB', '30', '2021-07-11 06:02:24', '2021-07-13 01:45:48'),
(7, 'استكشاف الأخطاء وإصلاحها', 'publish', 'ar', '31', '2021-07-11 06:03:48', '2021-07-12 07:42:10'),
(8, 'التخصيص', 'publish', 'ar', '30', '2021-07-11 06:04:20', '2021-07-12 07:41:42'),
(9, 'حماية', 'publish', 'ar', '29', '2021-07-11 06:05:10', '2021-07-12 07:41:15'),
(10, 'دفع', 'publish', 'ar', '28', '2021-07-11 06:06:20', '2021-07-12 07:39:51'),
(11, 'وثائق', 'publish', 'ar', '27', '2021-07-11 06:07:08', '2021-07-12 07:39:08'),
(12, 'حساب', 'publish', 'ar', '26', '2021-07-11 06:07:34', '2021-07-12 07:38:32'),
(13, 'Solución proble', 'publish', 'es_ES', '32', '2021-07-11 06:08:09', '2021-08-12 07:04:00'),
(14, 'Personalización', 'publish', 'es_ES', '31', '2021-07-11 06:08:29', '2021-07-12 07:45:32'),
(15, 'Seguridad', 'publish', 'es_ES', '30', '2021-07-11 06:09:42', '2021-07-12 07:44:49'),
(16, 'Pago', 'publish', 'es_ES', '28', '2021-07-11 06:10:06', '2021-07-12 07:42:49'),
(17, 'Documento API', 'publish', 'es_ES', '42', '2021-07-11 06:10:58', '2021-08-12 07:04:16'),
(18, 'Cuenta', 'publish', 'es_ES', '27', '2021-07-11 06:12:23', '2021-07-12 07:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(10) UNSIGNED DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `default`, `direction`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English (UK)', 'en_GB', 1, 'ltr', 'publish', '2020-01-03 18:58:44', '2021-08-04 04:47:40'),
(7, 'Arabic', 'ar', 0, 'rtl', 'publish', '2021-03-07 01:33:57', '2021-08-04 02:21:42'),
(8, 'Español', 'es_ES', 0, 'ltr', 'publish', '2021-07-08 06:40:46', '2021-08-04 03:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `size` text COLLATE utf8mb4_unicode_ci,
  `dimensions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_uploads`
--

INSERT INTO `media_uploads` (`id`, `title`, `path`, `alt`, `size`, `dimensions`, `created_at`, `updated_at`) VALUES
(1, 'breadcrumb-bg.png', 'breadcrumb-bg1625739762.png', NULL, '171.09 KB', '1920 x 694 pixels', '2021-07-08 04:22:45', '2021-07-08 04:22:45'),
(2, 'logo.png', 'logo1625739782.png', NULL, '1.25 KB', '56 x 71 pixels', '2021-07-08 04:23:03', '2021-07-08 04:23:03'),
(3, 'logo-2.png', 'logo-21625740089.png', NULL, '3.87 KB', '221 x 71 pixels', '2021-07-08 04:28:10', '2021-07-08 04:28:10'),
(4, 'logo.png', 'logo1625740106.png', NULL, '3.74 KB', '221 x 71 pixels', '2021-07-08 04:28:26', '2021-07-08 04:28:26'),
(5, '01.jpg', '011625890324.jpg', NULL, '143.01 KB', '540 x 740 pixels', '2021-07-09 22:12:06', '2021-07-09 22:12:06'),
(6, '01@2x.jpg', '01-at-2x1625890324.jpg', NULL, '364.94 KB', '1080 x 1480 pixels', '2021-07-09 22:12:09', '2021-07-09 22:12:09'),
(7, '02.jpg', '021625890329.jpg', NULL, '149.22 KB', '540 x 740 pixels', '2021-07-09 22:12:12', '2021-07-09 22:12:12'),
(8, 'favicon.png', 'favicon1625890334.png', NULL, '1.54 KB', '40 x 40 pixels', '2021-07-09 22:12:15', '2021-07-09 22:12:15'),
(9, 'favicon-red.png', 'favicon-red1625890336.png', NULL, '1.42 KB', '40 x 40 pixels', '2021-07-09 22:12:17', '2021-07-09 22:12:17'),
(10, '02@2x.jpg', '02-at-2x1625890333.jpg', NULL, '418.56 KB', '1080 x 1480 pixels', '2021-07-09 22:12:17', '2021-07-09 22:12:17'),
(20, 'email.png', 'email1625982681.png', NULL, '3.39 KB', '80 x 80 pixels', '2021-07-10 23:51:22', '2021-07-10 23:51:22'),
(21, 'hour.png', 'hour1625982681.png', NULL, '4.31 KB', '80 x 80 pixels', '2021-07-10 23:51:22', '2021-07-10 23:51:22'),
(22, 'phone.png', 'phone1625982684.png', NULL, '3.91 KB', '77 x 80 pixels', '2021-07-10 23:51:24', '2021-07-10 23:51:24'),
(23, 'shape-1.png', 'shape-11625999601.png', NULL, '1.76 KB', '150 x 150 pixels', '2021-07-11 04:33:22', '2021-07-11 04:33:22'),
(24, 'shape-2.png', 'shape-21625999601.png', NULL, '1.79 KB', '139 x 139 pixels', '2021-07-11 04:33:22', '2021-07-11 04:33:22'),
(25, 'shape-3.png', 'shape-31625999603.png', NULL, '1.81 KB', '153 x 153 pixels', '2021-07-11 04:33:23', '2021-07-11 04:33:23'),
(26, 'shape-4.png', 'shape-41625999604.png', NULL, '1.8 KB', '139 x 139 pixels', '2021-07-11 04:33:24', '2021-07-11 04:33:24'),
(27, 'icon-1.png', 'icon-11626096288.png', NULL, '4.19 KB', '118 x 100 pixels', '2021-07-12 07:24:49', '2021-07-12 07:24:49'),
(28, 'icon.png', 'icon1626096289.png', NULL, '3.55 KB', '100 x 100 pixels', '2021-07-12 07:24:49', '2021-07-12 07:24:49'),
(29, 'icon-3.png', 'icon-31626096291.png', NULL, '5.98 KB', '109 x 100 pixels', '2021-07-12 07:24:51', '2021-07-12 07:24:51'),
(30, 'icon-2.png', 'icon-21626096292.png', NULL, '4.06 KB', '106 x 100 pixels', '2021-07-12 07:24:53', '2021-07-12 07:24:53'),
(31, 'icon-4.png', 'icon-41626096294.png', NULL, '3.59 KB', '100 x 100 pixels', '2021-07-12 07:24:54', '2021-07-12 07:24:54'),
(32, 'icon-5.png', 'icon-51626096296.png', NULL, '1.77 KB', '115 x 100 pixels', '2021-07-12 07:24:56', '2021-07-12 07:24:56'),
(33, 'vector.png', 'vector1626160707.png', NULL, '46.78 KB', '730 x 494 pixels', '2021-07-13 01:18:29', '2021-07-13 01:18:29'),
(34, 'bg.png', 'bg1626255724.png', NULL, '27.56 KB', '1200 x 300 pixels', '2021-07-14 03:42:05', '2021-07-14 03:42:05'),
(35, 'vector.png', 'vector1626255724.png', NULL, '81.35 KB', '919 x 651 pixels', '2021-07-14 03:42:05', '2021-07-14 03:42:05'),
(36, 'vector-2.png', 'vector-21626255726.png', NULL, '134.84 KB', '836 x 617 pixels', '2021-07-14 03:42:07', '2021-07-14 03:42:07'),
(37, 'Header.png', 'header1626327783.png', NULL, '289.75 KB', '1920 x 1199 pixels', '2021-07-14 23:43:07', '2021-07-14 23:43:07'),
(38, 'index-2-bg.png', 'index-2-bg1626327783.png', NULL, '122.67 KB', '1920 x 1168 pixels', '2021-07-14 23:43:11', '2021-07-14 23:43:11'),
(39, 'pic-1.png', 'pic-11626327791.png', NULL, '131.56 KB', '838 x 738 pixels', '2021-07-14 23:43:12', '2021-07-14 23:43:12'),
(40, 'pic-2.png', 'pic-21626327795.png', NULL, '122.09 KB', '1389 x 489 pixels', '2021-07-14 23:43:16', '2021-07-14 23:43:16'),
(41, 'icon-1.png', 'icon-11626335659.png', NULL, '2.19 KB', '92 x 110 pixels', '2021-07-15 01:54:19', '2021-07-15 01:54:19'),
(42, 'icon-2.png', 'icon-21626335659.png', NULL, '3.01 KB', '116 x 106 pixels', '2021-07-15 01:54:20', '2021-07-15 01:54:20'),
(43, 'icon-3.png', 'icon-31626335661.png', NULL, '2.47 KB', '105 x 115 pixels', '2021-07-15 01:54:22', '2021-07-15 01:54:22'),
(45, 'Vector.png', 'vector1626358806.png', NULL, '37.48 KB', '481 x 300 pixels', '2021-07-15 08:20:07', '2021-07-15 08:20:07'),
(46, 'bg.png', 'bg1626512068.png', NULL, '27.56 KB', '1200 x 300 pixels', '2021-07-17 02:54:30', '2021-07-17 02:54:30'),
(57, 'sign-in.png', 'sign-in1628323931.png', NULL, '53.71 KB', '552 x 549 pixels', '2021-08-07 02:12:13', '2021-08-07 02:12:13'),
(58, 'Login-Register-BG.png', 'login-register-bg1628323931.png', NULL, '290.04 KB', '1920 x 1210 pixels', '2021-08-07 02:12:18', '2021-08-07 02:12:18'),
(59, 'sign-up.png', 'sign-up1628323938.png', NULL, '89.4 KB', '629 x 574 pixels', '2021-08-07 02:12:20', '2021-08-07 02:12:20'),
(60, 'shape-2.png', 'shape-21629099571.png', NULL, '1.46 KB', '144 x 130 pixels', '2021-08-16 01:39:32', '2021-08-16 01:39:32'),
(61, 'shape-1.png', 'shape-11629099571.png', NULL, '1.23 KB', '117 x 130 pixels', '2021-08-16 01:39:32', '2021-08-16 01:39:32'),
(62, 'shape-3.png', 'shape-31629099663.png', NULL, '1.29 KB', '138 x 130 pixels', '2021-08-16 01:41:03', '2021-08-16 01:41:03'),
(66, 'Mask Group 1.png', 'mask-group-11631340698.png', NULL, '127.41 KB', '1920 x 1280 pixels', '2021-09-11 00:11:38', '2021-09-11 00:11:38'),
(67, 'Mask Group 2.png', 'mask-group-21631340698.png', NULL, '100.9 KB', '1920 x 1280 pixels', '2021-09-11 00:11:38', '2021-09-11 00:11:38'),
(68, 'Mask Group 3.png', 'mask-group-31631340699.png', NULL, '191.67 KB', '1920 x 1280 pixels', '2021-09-11 00:11:39', '2021-09-11 00:11:39'),
(69, 'Mask Group 4.png', 'mask-group-41631340699.png', NULL, '131.87 KB', '1920 x 1280 pixels', '2021-09-11 00:11:39', '2021-09-11 00:11:39'),
(70, 'Mask Group 6.png', 'mask-group-61631340700.png', NULL, '90.69 KB', '1920 x 1280 pixels', '2021-09-11 00:11:40', '2021-09-11 00:11:40'),
(71, 'Mask Group 5.png', 'mask-group-51631340700.png', NULL, '89.85 KB', '1920 x 1280 pixels', '2021-09-11 00:11:40', '2021-09-11 00:11:40'),
(72, 'Mask Group 7.png', 'mask-group-71631340700.png', NULL, '65.09 KB', '1960 x 1306 pixels', '2021-09-11 00:11:41', '2021-09-11 00:11:41'),
(73, 'Mask Group 8.png', 'mask-group-81631340700.png', NULL, '65.78 KB', '1920 x 1280 pixels', '2021-09-11 00:11:41', '2021-09-11 00:11:41'),
(74, 'Mask Group 9.png', 'mask-group-91631340701.png', NULL, '132.56 KB', '1920 x 1280 pixels', '2021-09-11 00:11:42', '2021-09-11 00:11:42'),
(75, 'Mask Group 10.png', 'mask-group-101631340701.png', NULL, '148.09 KB', '1920 x 1280 pixels', '2021-09-11 00:11:42', '2021-09-11 00:11:42'),
(76, 'Mask Group 11.png', 'mask-group-111631340702.png', NULL, '139.8 KB', '1920 x 1280 pixels', '2021-09-11 00:11:43', '2021-09-11 00:11:43'),
(77, 'Mask Group 12.png', 'mask-group-121631340703.png', NULL, '84.91 KB', '1920 x 1280 pixels', '2021-09-11 00:11:43', '2021-09-11 00:11:43'),
(78, 'Mask Group 13.png', 'mask-group-131631340703.png', NULL, '103.64 KB', '1920 x 1280 pixels', '2021-09-11 00:11:43', '2021-09-11 00:11:43'),
(79, 'Mask Group 14.png', 'mask-group-141631340703.png', NULL, '155.21 KB', '1920 x 1280 pixels', '2021-09-11 00:11:44', '2021-09-11 00:11:44'),
(80, 'Mask Group 15.png', 'mask-group-151631340704.png', NULL, '172.96 KB', '1920 x 1280 pixels', '2021-09-11 00:11:44', '2021-09-11 00:11:44'),
(81, 'Mask Group 16.png', 'mask-group-161631340704.png', NULL, '114.55 KB', '1920 x 1280 pixels', '2021-09-11 00:11:45', '2021-09-11 00:11:45'),
(82, 'Mask Group 17.png', 'mask-group-171631340705.png', NULL, '80.79 KB', '1920 x 1280 pixels', '2021-09-11 00:11:45', '2021-09-11 00:11:45'),
(83, 'Mask Group 18.png', 'mask-group-181631340706.png', NULL, '78.75 KB', '1920 x 1280 pixels', '2021-09-11 00:11:46', '2021-09-11 00:11:46'),
(84, 'Group 9569-min.png', 'group-9569-min1631447622.png', NULL, '15.71 KB', '1920 x 860 pixels', '2021-09-12 15:53:42', '2021-09-12 15:53:42'),
(85, 'Vector-min.png', 'vector-min1631447623.png', NULL, '25.12 KB', '687 x 605 pixels', '2021-09-12 15:53:43', '2021-09-12 15:53:43'),
(86, 'Group 9838.png', 'group-98381631452677.png', NULL, '80.26 KB', '896 x 517 pixels', '2021-09-12 17:17:57', '2021-09-12 17:17:57'),
(87, 'Mask Group 40.png', 'mask-group-401631452835.png', NULL, '111.07 KB', '1920 x 1026 pixels', '2021-09-12 17:20:35', '2021-09-12 17:20:35'),
(88, 'Vector.png', 'vector1631452837.png', NULL, '122.09 KB', '1389 x 489 pixels', '2021-09-12 17:20:37', '2021-09-12 17:20:37'),
(89, 'Group 9749 (1).png', 'group-9749-11631453300.png', NULL, '64.13 KB', '671 x 476 pixels', '2021-09-12 17:28:20', '2021-09-12 17:28:20'),
(90, 'Group 9749 (1).png', 'group-9749-11631454133.png', NULL, '64.13 KB', '671 x 476 pixels', '2021-09-12 17:42:13', '2021-09-12 17:42:13'),
(91, 'Group 10348.png', 'group-103481631454230.png', NULL, '65 KB', '836 x 617 pixels', '2021-09-12 17:43:50', '2021-09-12 17:43:50'),
(92, 'download.png', 'download1631608457.png', NULL, '4.5 KB', '318 x 159 pixels', '2021-09-14 12:34:17', '2021-09-14 12:34:17'),
(93, 'img02.png', 'img021631722160.png', NULL, '44.58 KB', '540 x 480 pixels', '2021-09-15 20:09:20', '2021-09-15 20:09:24'),
(94, 'DSC-2018SET262.jpg', 'dsc-2018set2621631876956.jpg', NULL, '78.37 KB', '1024 x 768 pixels', '2021-09-17 15:09:16', '2021-09-17 15:09:37'),
(95, 'fp500.jpg', 'fp5001633124602.jpg', NULL, '61.05 KB', '500 x 521 pixels', '2021-10-02 01:43:22', '2021-10-02 01:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Primary Menu [ENG]', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Home\",\"purl\":\"@url\"},{\"ptype\":\"static\",\"id\":3,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"knowledgebase\",\"pname\":\"Knowledgebase\"},{\"ptype\":\"custom\",\"id\":4,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Pages\",\"purl\":\"\",\"children\":[{},{},{},{},{},{},{},{\"ptype\":\"static\",\"id\":12,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"support_ticket\",\"pname\":\"Support Ticket\"},{},{},{},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"dynamic_pages\",\"id\":25,\"antarget\":\"\",\"icon\":\"\",\"pid\":6},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"dynamic_pages\",\"id\":39,\"antarget\":\"\",\"icon\":\"\",\"pid\":7},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]},{\"ptype\":\"static\",\"id\":62,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"blog\",\"pname\":\"Blog\"},{\"ptype\":\"static\",\"id\":63,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"faq\",\"pname\":\"FAQ\"},{\"ptype\":\"static\",\"id\":64,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"contact\",\"pname\":\"Contact\"}]', 'default', '2021-03-24 08:07:56', '2021-09-15 13:33:45'),
(6, 'Useful Links', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Home\",\"purl\":\"@url\"},{\"ptype\":\"static\",\"id\":3,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"blog\",\"pname\":\"Blog\"},{\"ptype\":\"static\",\"id\":4,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"contact\",\"pname\":\"Contact\"},{\"ptype\":\"static\",\"id\":5,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"knowledgebase\",\"pname\":\"Knowledgebase\"}]', NULL, '2021-03-29 03:27:29', '2021-08-27 06:27:30');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_06_180949_create_admins_table', 1),
(6, '2019_12_07_082524_create_static_options_table', 1),
(7, '2019_12_08_171750_create_counterups_table', 1),
(8, '2019_12_09_063224_create_testimonials_table', 1),
(10, '2019_12_10_125636_create_support_infos_table', 1),
(15, '2019_12_13_221931_create_languages_table', 1),
(27, '2020_04_14_082508_create_media_uploads_table', 4),
(30, '2014_10_12_000000_create_users_table', 5),
(31, '2020_07_22_132250_create_popup_builders_table', 5),
(33, '2020_04_20_170818_create_orders_table', 6),
(34, '2020_04_21_142420_create_payment_logs_table', 7),
(38, '2021_03_24_140243_create_menus_table', 11),
(41, '2021_03_27_113444_create_counterups_table', 14),
(46, '2020_06_14_081955_create_widgets_table', 16),
(47, '2019_12_10_125607_create_social_icons_table', 17),
(58, '2021_04_08_122116_create_topbar_infos_table', 18),
(59, '2021_04_10_060146_create_infobar_right_icons_table', 18),
(60, '2021_04_11_063158_create_blogs_table', 18),
(61, '2021_04_11_063236_create_blog_langs_table', 18),
(62, '2021_04_11_063420_create_blog_categories_table', 18),
(63, '2021_04_11_063445_create_blog_category_langs_table', 18),
(64, '2019_12_28_140343_create_key_features_table', 19),
(65, '2021_04_18_132805_create_header_sliders_table', 20),
(67, '2020_04_20_073746_create_quotes_table', 22),
(68, '2021_04_24_132853_create_progress_bars_table', 23),
(70, '2021_04_15_105203_create_appointment_bookings_table', 24),
(71, '2021_04_15_105212_create_appointment_reviews_table', 24),
(73, '2021_04_15_121056_create_appointment_booking_times_table', 24),
(76, '2020_07_08_132910_create_product_cupons_table', 26),
(77, '2020_07_08_161737_create_product_shippings_table', 26),
(80, '2020_07_13_124351_create_product_orders_table', 26),
(81, '2020_07_21_053307_create_product_ratings_table', 26),
(82, '2021_04_15_105219_create_appointment_categories_table', 27),
(83, '2021_04_26_090448_create_appointment_category_langs_table', 27),
(84, '2021_04_15_105154_create_appointments_table', 28),
(85, '2021_04_26_095611_create_appointment_langs_table', 28),
(88, '2020_07_09_084606_create_product_categories_table', 29),
(89, '2021_04_28_104831_create_product_category_langs_table', 29),
(93, '2021_04_28_110990_create_products_table', 30),
(94, '2021_04_28_110995_create_products_langs_table', 30),
(102, '2020_01_25_155448_create_pages_table', 31),
(106, '2021_04_30_113454_create_page_langs_table', 32),
(107, '2021_04_30_141804_create_service_category_langs_table', 32),
(108, '2020_01_23_162404_create_service_categories_table', 33),
(109, '2021_05_01_152404_create_services_table', 34),
(110, '2021_05_01_152405_create_services_langs_table', 35),
(111, '2021_05_06_092507_create_price_plans_table', 36),
(112, '2021_05_06_092508_create_price_plan_langs_table', 36),
(113, '2021_05_18_062316_create_practice_areas_table', 37),
(114, '2021_05_18_062351_create_cases_table', 37),
(115, '2021_05_18_062404_create_attorneys_table', 37),
(116, '2021_05_19_111058_create_practice_area_categories_table', 37),
(117, '2021_05_19_111128_create_practice_area_category_langs_table', 37),
(119, '2021_05_20_045324_create_practice_area_langs_table', 38),
(120, '2021_05_20_120226_create_case_categories_table', 39),
(121, '2021_05_20_120508_create_case_category_langs_table', 39),
(122, '2021_05_20_120550_create_case_langs_table', 39),
(123, '2021_05_22_114053_create_attorney_langs_table', 40),
(124, '2021_05_24_050431_create_consulations_table', 41),
(125, '2021_07_11_074827_create_faqs_table', 42),
(126, '2021_07_11_100738_create_knowledgebases_table', 43),
(127, '2021_07_11_101149_create_knowledgebase_topics_table', 43),
(128, '2021_07_13_094939_create_article_feedback_table', 44),
(129, '2021_07_17_102852_create_newsletters_table', 45),
(130, '2021_07_18_042242_create_topbar_infos_table', 46),
(131, '2021_07_18_141810_create_pages_table', 47),
(132, '2021_07_25_074757_create_support_tickets_table', 48),
(133, '2021_07_25_075035_create_support_ticket_messages_table', 48),
(134, '2021_07_28_152714_create_canned_responses_table', 49),
(135, '2021_07_30_095752_create_activity_log_table', 50),
(136, '2021_08_02_075306_create_permission_tables', 51),
(137, '2021_08_03_051202_create_admin_roles_table', 52),
(138, '2021_08_04_053348_create_purchase_codes_table', 53),
(140, '2021_08_30_172607_create_support_ticket_automations_table', 54),
(141, '2021_09_06_120147_create_departments_table', 55),
(142, '2021_09_07_090256_create_to_do_lists_table', 56);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Admin', 10),
(4, 'App\\Admin', 12),
(3, 'App\\Admin', 13),
(5, 'App\\Admin', 14);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `meta_tags`, `meta_description`, `content`, `lang`, `status`, `visibility`, `created_at`, `updated_at`) VALUES
(4, 'صفحة الاختبار', 'sfh-alakhtbar', 'لاختبار', 'لاختبار', '<p>هذا للاختبارهذا للاختبارهذا للاختبارهذا للاختبار<br></p>', 'ar', 'publish', 'all', '2021-08-02 06:29:27', '2021-08-02 06:29:27'),
(5, 'para probar', 'para-probar', 'para probar', 'para probar', '<p>Esto es para probar<br></p>', 'es_ES', 'publish', 'all', '2021-08-02 06:30:37', '2021-08-02 06:30:37'),
(6, 'Terms & Conditions', 'terms-conditions', NULL, NULL, '<p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">At pexdoc, accessible from https://xgenious.com/laravel/pexdoc/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by pexdoc&nbsp;and how we use it.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in pexdoc. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the&nbsp;<a href=\"https://www.privacypolicygenerator.info/\" style=\"color: rgb(102, 102, 102);\">Privacy Policy Generator</a>.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Consent</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Information we collect</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">How we use your information</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">We use the information we collect in various ways, including to:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>Provide, operate, and maintain our website</li><li>Improve, personalize, and expand our website</li><li>Understand and analyze how you use our website</li><li>Develop new products, services, features, and functionality</li><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li>Send you emails</li><li>Find and prevent fraud</li></ul><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Log Files</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">fundorex follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Cookies and Web Beacons</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Like any other website, fundorex uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">For more general information on cookies, please read&nbsp;<a href=\"https://www.privacypolicyonline.com/what-are-cookies/\" style=\"color: rgb(102, 102, 102);\">\"What Are Cookies\"</a>.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Advertising Partners Privacy Policies</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">You may consult this list to find the Privacy Policy for each of the advertising partners of fundorex.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on fundorex, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Note that fundorex has no access to or control over these cookies that are used by third-party advertisers.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Third Party Privacy Policies</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">fundorex\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Under the CCPA, among other rights, California consumers have the right to:</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Request that a business delete any personal data about the consumer that a business has collected.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">GDPR Data Protection Rights</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Children\'s Information</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">fundorex does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', 'en_GB', 'publish', 'all', '2021-08-25 13:18:00', '2021-08-25 13:22:46'),
(7, 'Privacy Policy', 'privacy-policy', NULL, NULL, '<h3 style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\"><b style=\"background-color: rgb(0, 255, 255);\">&nbsp;Privacy Policy</b></h3><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">At pexdoc, accessible from https://xgenious.com/laravel/pexdoc/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by pexdoc&nbsp;and how we use it.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in pexdoc. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the&nbsp;<a href=\"https://www.privacypolicygenerator.info/\" style=\"color: rgb(102, 102, 102);\">Privacy Policy Generator</a>.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Consent</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Information we collect</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">How we use your information</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">We use the information we collect in various ways, including to:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>Provide, operate, and maintain our website</li><li>Improve, personalize, and expand our website</li><li>Understand and analyze how you use our website</li><li>Develop new products, services, features, and functionality</li><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li>Send you emails</li><li>Find and prevent fraud</li></ul><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Log Files</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">fundorex follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Cookies and Web Beacons</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Like any other website, fundorex uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">For more general information on cookies, please read&nbsp;<a href=\"https://www.privacypolicyonline.com/what-are-cookies/\" style=\"color: rgb(102, 102, 102);\">\"What Are Cookies\"</a>.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Advertising Partners Privacy Policies</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">You may consult this list to find the Privacy Policy for each of the advertising partners of fundorex.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on fundorex, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Note that fundorex has no access to or control over these cookies that are used by third-party advertisers.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Third Party Privacy Policies</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">fundorex\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Under the CCPA, among other rights, California consumers have the right to:</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Request that a business delete any personal data about the consumer that a business has collected.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">GDPR Data Protection Rights</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); font-size: 16px;\">Children\'s Information</h2><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin-bottom: 20px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; color: rgb(102, 102, 102);\">fundorex does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', 'en_GB', 'publish', 'all', '2021-08-25 13:23:08', '2021-09-10 23:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shawonrog@gmail.com', 'gt62syz8Z6ba5V7GTtnBIZchwHJvfZ', NULL),
('shawon9324@gmail.com', '7hAYG5ygkSjbarITWMFYFywmPolQzO', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'user-list', 'admin', '2021-08-02 06:01:23', '2021-08-02 06:01:23'),
(6, 'user-edit', 'admin', '2021-08-02 06:01:23', '2021-08-02 06:01:23'),
(7, 'user-create', 'admin', '2021-08-02 06:01:23', '2021-08-02 06:01:23'),
(8, 'user-delete', 'admin', '2021-08-02 06:01:23', '2021-08-02 06:01:23'),
(9, 'newsletter-list', 'admin', '2021-08-02 06:04:01', '2021-08-02 06:04:01'),
(10, 'newsletter-create', 'admin', '2021-08-02 06:04:01', '2021-08-02 06:04:01'),
(11, 'newsletter-mail-send', 'admin', '2021-08-02 06:04:01', '2021-08-02 06:04:01'),
(12, 'newsletter-delete', 'admin', '2021-08-02 06:04:01', '2021-08-02 06:04:01'),
(13, 'knowledgebase-list', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(14, 'knowledgebase-create', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(15, 'knowledgebase-edit', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(16, 'knowledgebase-delete', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(17, 'knowledgebase-page-settings', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(18, 'knowledgebase-single-page-settings', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(19, 'knowledgebase-feedback-queries-list', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(20, 'knowledgebase-feedback-queries-mail-send', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(21, 'knowledgebase-feedback-queries-delete', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(22, 'knowledgebase-topic-list', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(23, 'knowledgebase-topic-create', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(24, 'knowledgebase-topic-edit', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(25, 'knowledgebase-topic-delete', 'admin', '2021-08-02 06:13:10', '2021-08-02 06:13:10'),
(26, 'support-ticket-dashboard', 'admin', '2021-08-02 06:19:25', '2021-08-02 06:19:25'),
(27, 'support-ticket-filter', 'admin', '2021-08-02 06:19:25', '2021-08-02 06:19:25'),
(28, 'support-ticket-list', 'admin', '2021-08-02 06:19:25', '2021-08-02 06:19:25'),
(29, 'support-ticket-create', 'admin', '2021-08-02 06:19:25', '2021-08-02 06:19:25'),
(30, 'support-ticket-edit', 'admin', '2021-08-02 06:19:25', '2021-08-02 06:19:25'),
(31, 'support-ticket-delete', 'admin', '2021-08-02 06:19:25', '2021-08-02 06:19:25'),
(32, 'support-ticket-view', 'admin', '2021-08-02 06:19:25', '2021-08-02 06:19:25'),
(33, 'ticket-canned-response-list', 'admin', '2021-08-02 06:19:25', '2021-08-02 06:19:25'),
(34, 'ticket-canned-response-create', 'admin', '2021-08-02 06:19:26', '2021-08-02 06:19:26'),
(35, 'ticket-canned-response-edit', 'admin', '2021-08-02 06:19:26', '2021-08-02 06:19:26'),
(36, 'ticket-canned-response-delete', 'admin', '2021-08-02 06:19:26', '2021-08-02 06:19:26'),
(37, 'blog-list', 'admin', '2021-08-02 06:24:56', '2021-08-02 06:24:56'),
(38, 'blog-create', 'admin', '2021-08-02 06:24:56', '2021-08-02 06:24:56'),
(39, 'blog-edit', 'admin', '2021-08-02 06:24:56', '2021-08-02 06:24:56'),
(40, 'blog-delete', 'admin', '2021-08-02 06:24:56', '2021-08-02 06:24:56'),
(41, 'blog-category-list', 'admin', '2021-08-02 06:24:57', '2021-08-02 06:24:57'),
(42, 'blog-category-create', 'admin', '2021-08-02 06:24:57', '2021-08-02 06:24:57'),
(43, 'blog-category-edit', 'admin', '2021-08-02 06:24:57', '2021-08-02 06:24:57'),
(44, 'blog-category-delete', 'admin', '2021-08-02 06:24:57', '2021-08-02 06:24:57'),
(45, 'blog-page-settings', 'admin', '2021-08-02 06:24:57', '2021-08-02 06:24:57'),
(46, 'page-list', 'admin', '2021-08-02 06:31:41', '2021-08-02 06:31:41'),
(47, 'page-create', 'admin', '2021-08-02 06:31:41', '2021-08-02 06:31:41'),
(48, 'page-edit', 'admin', '2021-08-02 06:31:41', '2021-08-02 06:31:41'),
(49, 'page-delete', 'admin', '2021-08-02 06:31:41', '2021-08-02 06:31:41'),
(50, 'faq-list', 'admin', '2021-08-02 06:35:54', '2021-08-02 06:35:54'),
(51, 'faq-create', 'admin', '2021-08-02 06:35:54', '2021-08-02 06:35:54'),
(52, 'faq-edit', 'admin', '2021-08-02 06:35:54', '2021-08-02 06:35:54'),
(53, 'faq-delete', 'admin', '2021-08-02 06:35:54', '2021-08-02 06:35:54'),
(54, 'counterup-list', 'admin', '2021-08-02 06:35:54', '2021-08-02 06:35:54'),
(55, 'counterup-create', 'admin', '2021-08-02 06:35:54', '2021-08-02 06:35:54'),
(56, 'counterup-edit', 'admin', '2021-08-02 06:35:54', '2021-08-02 06:35:54'),
(57, 'counterup-delete', 'admin', '2021-08-02 06:35:55', '2021-08-02 06:35:55'),
(58, 'form-builder', 'admin', '2021-08-02 06:36:48', '2021-08-02 06:36:48'),
(59, 'appearance-topbar-settings', 'admin', '2021-08-02 06:43:15', '2021-08-02 06:43:15'),
(60, 'appearance-navbar-settings', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(61, 'appearance-home-variant', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(62, 'appearance-blog-variant', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(63, 'appearance-knowledgebase-variant', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(64, 'appearance-media-images', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(65, 'appearance-widget-builder', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(66, 'appearance-menu-list', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(67, 'appearance-menu-create', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(68, 'appearance-menu-edit', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(69, 'appearance-menu-delete', 'admin', '2021-08-02 06:43:16', '2021-08-02 06:43:16'),
(70, 'page-settings-home-page-manage', 'admin', '2021-08-02 06:49:45', '2021-08-02 06:49:45'),
(71, 'page-settings-knowledgebase-page-manage', 'admin', '2021-08-02 06:49:45', '2021-08-02 06:49:45'),
(72, 'page-settings-blog-page-manage', 'admin', '2021-08-02 06:49:45', '2021-08-02 06:49:45'),
(73, 'page-settings-contact-page-manage', 'admin', '2021-08-02 06:49:45', '2021-08-02 06:49:45'),
(74, 'page-settings-support-ticket-page-manage', 'admin', '2021-08-02 06:49:45', '2021-08-02 06:49:45'),
(75, 'page-settings-404-page-manage', 'admin', '2021-08-02 06:49:45', '2021-08-02 06:49:45'),
(76, 'page-settings-maintain-page-manage', 'admin', '2021-08-02 06:49:45', '2021-08-02 06:49:45'),
(77, 'general-settings-site-identity', 'admin', '2021-08-02 06:56:00', '2021-08-02 06:56:00'),
(78, 'general-settings-basic-settings', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(79, 'general-settings-color-settings', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(80, 'general-settings-typography-settings', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(81, 'general-settings-seo-settings', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(82, 'general-settings-third-party-script', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(83, 'general-settings-email-template', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(84, 'general-settings-smtp-settings', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(85, 'general-settings-page-settings', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(86, 'general-settings-custom-css', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(87, 'general-settings-custom-js', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(88, 'general-settings-license-settings', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(89, 'general-settings-cache-settings', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(90, 'language-list', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(91, 'language-create', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(92, 'language-edit', 'admin', '2021-08-02 06:56:01', '2021-08-02 06:56:01'),
(93, 'language-delete', 'admin', '2021-08-02 06:56:02', '2021-08-02 06:56:02'),
(94, 'purchase-code-list', 'admin', '2021-08-04 01:56:59', '2021-08-04 01:56:59'),
(95, 'purchase-code-verify', 'admin', '2021-08-04 01:57:00', '2021-08-04 01:57:00'),
(96, 'purchase-code-delete', 'admin', '2021-08-04 01:57:00', '2021-08-04 01:57:00'),
(97, 'page-settings-login-register-page-manage', 'admin', '2021-08-07 00:39:35', '2021-08-07 00:39:35'),
(98, 'ticket-department-list', 'admin', '2021-09-06 06:16:15', '2021-09-06 06:16:15'),
(99, 'ticket-department-create', 'admin', '2021-09-06 06:16:15', '2021-09-06 06:16:15'),
(100, 'ticket-department-edit', 'admin', '2021-09-06 06:16:15', '2021-09-06 06:16:15'),
(101, 'ticket-department-delete', 'admin', '2021-09-06 06:16:15', '2021-09-06 06:16:15'),
(102, 'ticket-automation-list', 'admin', '2021-09-06 06:32:08', '2021-09-06 06:32:08'),
(103, 'ticket-automation-create', 'admin', '2021-09-06 06:32:08', '2021-09-06 06:32:08'),
(104, 'ticket-automation-edit', 'admin', '2021-09-06 06:32:08', '2021-09-06 06:32:08'),
(105, 'ticket-automation-delete', 'admin', '2021-09-06 06:32:08', '2021-09-06 06:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_codes`
--

CREATE TABLE `purchase_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `envato_username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `support_until` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_count` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_sale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Editor', 'admin', '2021-08-02 07:39:46', '2021-08-02 07:48:16'),
(3, 'Super Admin', 'admin', '2021-08-02 07:44:05', '2021-08-02 07:44:05'),
(4, 'Admin', 'admin', '2021-08-02 07:46:07', '2021-08-02 07:46:07'),
(5, 'Support Agent', 'admin', '2021-09-12 21:19:43', '2021-09-12 21:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 3),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5);

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-twitter', 'https://twitter.com/xgenious1', '2021-04-04 02:04:23', '2021-04-04 02:45:28'),
(2, 'fab fa-linkedin-in', 'https://www.linkedin.com/company/30951721', '2021-04-04 02:04:45', '2021-04-10 01:00:00'),
(3, 'fab fa-facebook-f', 'https://www.facebook.com/xgenious/', '2021-04-04 02:43:50', '2021-04-04 02:43:50'),
(4, 'fab fa-youtube', 'https://www.youtube.com/channel/UCmYjh4uaAu4jWqHOGbzuQJg', '2021-04-04 02:46:36', '2021-04-04 02:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'site_admin_dark_mode', 'off', '2021-07-08 02:59:09', '2021-10-06 20:40:17'),
(2, 'site_logo', '4', '2021-07-08 04:25:55', '2021-08-07 04:24:09'),
(3, 'site_favicon', '9', '2021-07-08 04:25:55', '2021-08-07 04:24:09'),
(4, 'site_breadcrumb_img', '1', '2021-07-08 04:25:55', '2021-07-08 04:29:32'),
(5, 'site_en_GB_title', 'Pexdoc', '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(6, 'site_en_GB_tag_line', 'Knowledgebase & Documentation', '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(7, 'site_en_GB_footer_copyright', '{copy}  {year}  All right reserved by Pexdoc', '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(8, 'site_ar_title', 'توثيق', '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(9, 'site_ar_tag_line', 'قاعدة المعرفة والتوثيق', '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(10, 'site_ar_footer_copyright', '{copy} {year} جميع الحقوق محفوظة لشركة Pexdoc', '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(11, 'language_select_option', 'on', '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(12, 'disable_user_email_verify', NULL, '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(13, 'site_main_color', '#FA3E83', '2021-07-08 04:31:00', '2021-07-08 07:44:08'),
(14, 'site_secondary_color', '#7F65DC', '2021-07-08 04:31:00', '2021-07-08 07:44:09'),
(15, 'site_maintenance_mode', NULL, '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(16, 'admin_loader_animation', NULL, '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(17, 'site_loader_animation', 'on', '2021-07-08 04:31:00', '2021-08-04 09:38:55'),
(18, 'guest_order_system_status', NULL, '2021-07-08 04:31:00', '2021-07-08 07:27:48'),
(19, 'admin_panel_rtl_status', NULL, '2021-07-08 04:31:00', '2021-07-08 07:27:48'),
(20, 'site_force_ssl_redirection', NULL, '2021-07-08 04:31:00', '2021-08-04 09:38:56'),
(21, 'site_google_captcha_enable', NULL, '2021-07-08 04:31:00', '2021-08-04 09:38:56'),
(22, 'site_payment_gateway', NULL, '2021-07-08 04:31:00', '2021-07-08 07:27:48'),
(23, 'site_es_ES_title', 'Pexdoc', '2021-07-08 06:52:41', '2021-08-04 09:38:55'),
(24, 'site_es_ES_tag_line', 'Base de conocimientos y documentación', '2021-07-08 06:52:41', '2021-08-04 09:38:55'),
(25, 'site_es_ES_footer_copyright', '{copy} {year} Todos los derechos reservados por Pexdoc', '2021-07-08 06:52:41', '2021-08-04 09:38:55'),
(26, 'site_main_color_one', '#FA3E83', '2021-07-08 07:31:09', '2021-08-20 00:34:17'),
(27, 'site_main_color_two', '#7F65DC', '2021-07-08 07:31:09', '2021-08-20 00:34:17'),
(28, 'site_heading_color', '#2D316A', '2021-07-08 07:31:09', '2021-08-20 00:34:17'),
(29, 'site_paragraph_color', '#696969', '2021-07-08 07:31:09', '2021-08-20 00:34:18'),
(30, 'home_page_variant', '02', '2021-07-13 18:00:00', '2021-09-14 10:43:50'),
(31, 'site_purple_logo', '3', '2021-07-09 22:12:33', '2021-08-07 04:24:09'),
(32, 'body_font_family', 'Open Sans', '2021-07-09 22:18:05', '2021-08-20 00:25:30'),
(33, 'heading_font_family', 'Nunito', '2021-07-09 22:18:05', '2021-08-20 00:25:30'),
(34, 'heading_font', 'on', '2021-07-09 22:18:05', '2021-08-20 00:25:30'),
(35, 'body_font_variant', 'a:3:{i:0;s:5:\"0,400\";i:1;s:5:\"0,600\";i:2;s:5:\"0,700\";}', '2021-07-09 22:18:05', '2021-08-20 00:25:30'),
(36, 'heading_font_variant', 'a:4:{i:0;s:5:\"0,400\";i:1;s:5:\"0,600\";i:2;s:5:\"0,700\";i:3;s:5:\"0,800\";}', '2021-07-09 22:18:05', '2021-08-20 00:25:30'),
(37, 'site_meta_en_GB_tags', 'documentation,information,help', '2021-07-09 22:25:29', '2021-07-09 22:35:30'),
(38, 'site_meta_en_GB_description', 'Pexdoc - Knowledgebase & Documentation', '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(39, 'og_meta_en_GB_title', 'Pexdoc - Knowledgebase & Documentation', '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(40, 'og_meta_en_GB_description', 'Pexdoc - Knowledgebase & Documentation', '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(41, 'og_meta_en_GB_site_name', 'Pexdoc', '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(42, 'og_meta_en_GB_url', 'https://xgenious.com', '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(43, 'og_meta_en_GB_image', NULL, '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(44, 'site_meta_ar_tags', 'توثيق,معلومة,يساعد', '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(45, 'site_meta_ar_description', 'Pexdoc - قاعدة المعرفة والتوثيق', '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(46, 'og_meta_ar_title', 'Pexdoc - قاعدة المعرفة والتوثيق', '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(47, 'og_meta_ar_description', 'Pexdoc - قاعدة المعرفة والتوثيق', '2021-07-09 22:25:29', '2021-07-09 22:35:31'),
(48, 'og_meta_ar_site_name', 'Pexdoc', '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(49, 'og_meta_ar_url', 'https://xgenious.com', '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(50, 'og_meta_ar_image', NULL, '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(51, 'site_meta_es_ES_tags', 'documentación,información,ayuda', '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(52, 'site_meta_es_ES_description', 'Pexdoc - Base de conocimientos y documentación', '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(53, 'og_meta_es_ES_title', 'Pexdoc - Base de conocimientos y documentación', '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(54, 'og_meta_es_ES_description', 'Pexdoc - Base de conocimientos y documentación', '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(55, 'og_meta_es_ES_site_name', 'Pexdoc', '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(56, 'og_meta_es_ES_url', '#', '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(57, 'og_meta_es_ES_image', NULL, '2021-07-09 22:25:30', '2021-07-09 22:35:31'),
(58, 'site_disqus_key', 'buxkit', '2021-07-09 22:36:54', '2021-09-15 11:06:44'),
(59, 'site_google_analytics', '<script async\r\n            src=\"https://www.googletagmanager.com/gtag/js?id=UA-155343796-1\"></script>\r\n    <script>\r\n        window.dataLayer = window.dataLayer || [];\r\n\r\n        function gtag() {\r\n            dataLayer.push(arguments);\r\n        }\r\n\r\n        gtag(\'js\', new Date());\r\n\r\n        gtag(\'config\', \"{{get_static_option(\'site_google_analytics\')}}\");\r\n    </script>', '2021-07-09 22:36:54', '2021-09-15 11:06:44'),
(60, 'tawk_api_key', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\n    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n    (function(){\r\n        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n        s1.async=true;\r\n        s1.src=\"https://embed.tawk.to/5e0b3e167e39ea1242a27b69/default\";\r\n        s1.charset=\'UTF-8\';\r\n        s1.setAttribute(\'crossorigin\',\'*\');\r\n        s0.parentNode.insertBefore(s1,s0);\r\n    })();\r\n</script>\r\n<!--End of Tawk.to Script-->', '2021-07-09 22:36:54', '2021-09-15 11:06:44'),
(61, 'site_google_captcha_v3_site_key', '6LdvUeQUAAAAAHKM02AWBjtKAAL0-AqUk_qkqa0O', '2021-07-09 22:36:54', '2021-09-15 11:06:44'),
(62, 'site_google_captcha_v3_secret_key', '6LdvUeQUAAAAABaCkkQbMY-z2XaqYsLSWwYgB6Ru', '2021-07-09 22:36:54', '2021-09-15 11:06:44'),
(63, 'site_third_party_tracking_code', NULL, '2021-07-09 22:36:54', '2021-09-15 11:06:44'),
(64, 'site_global_email', 'info@sohan.xgenious.com', '2021-07-09 22:53:27', '2021-07-11 01:13:58'),
(65, 'site_global_email_template', '<div><br></div><div><p>Hello</p><p>Dear @username</p><p><br></p><p>@message</p><p><br></p><p>Regards</p><p>@company</p></div>', '2021-07-09 22:53:27', '2021-07-11 01:13:58'),
(66, 'site_smtp_mail_mailer', 'smtp', '2021-07-09 22:55:34', '2021-07-09 22:55:34'),
(67, 'site_smtp_mail_host', 'test@ff', '2021-07-09 22:55:34', '2021-07-09 22:55:34'),
(68, 'site_smtp_mail_port', '587', '2021-07-09 22:55:34', '2021-07-09 22:55:34'),
(69, 'site_smtp_mail_username', 'dsfsdf', '2021-07-09 22:55:34', '2021-07-09 22:55:34'),
(70, 'site_smtp_mail_password', 'dddd', '2021-07-09 22:55:34', '2021-07-09 22:55:34'),
(71, 'site_smtp_mail_encryption', 'ssl', '2021-07-09 22:55:34', '2021-07-09 22:55:34'),
(72, 'knowledgebase_page_slug', 'knowledgebase', '2021-07-09 23:04:15', '2021-09-10 23:23:39'),
(73, 'blog_page_slug', 'blog', '2021-07-09 23:04:15', '2021-09-10 23:23:39'),
(74, 'contact_page_slug', 'contact-us', '2021-07-09 23:04:15', '2021-09-10 23:23:39'),
(75, 'knowledgebase_page_en_GB_name', 'Knowledgebase', '2021-07-09 23:04:15', '2021-09-10 23:23:39'),
(76, 'knowledgebase_page_en_GB_meta_tags', 'knoeledgebase', '2021-07-09 23:04:15', '2021-09-10 23:23:39'),
(77, 'knowledgebase_page_en_GB_meta_description', 'knowledgebase', '2021-07-09 23:04:15', '2021-09-10 23:23:40'),
(78, 'blog_page_en_GB_name', 'Blog', '2021-07-09 23:04:15', '2021-09-10 23:23:40'),
(79, 'blog_page_en_GB_meta_tags', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:40'),
(80, 'blog_page_en_GB_meta_description', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:40'),
(81, 'contact_page_en_GB_name', 'Contact', '2021-07-09 23:04:15', '2021-09-10 23:23:40'),
(82, 'contact_page_en_GB_meta_tags', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:40'),
(83, 'contact_page_en_GB_meta_description', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:40'),
(84, 'knowledgebase_page_ar_name', 'قاعدة المعرفة', '2021-07-09 23:04:15', '2021-09-10 23:23:41'),
(85, 'knowledgebase_page_ar_meta_tags', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:41'),
(86, 'knowledgebase_page_ar_meta_description', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:41'),
(87, 'blog_page_ar_name', 'مدونة او مذكرة', '2021-07-09 23:04:15', '2021-09-10 23:23:41'),
(88, 'blog_page_ar_meta_tags', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:41'),
(89, 'blog_page_ar_meta_description', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:41'),
(90, 'contact_page_ar_name', 'اتصال', '2021-07-09 23:04:15', '2021-09-10 23:23:41'),
(91, 'contact_page_ar_meta_tags', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:41'),
(92, 'contact_page_ar_meta_description', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:41'),
(93, 'knowledgebase_page_es_ES_name', 'Base de conocimientos', '2021-07-09 23:04:15', '2021-09-10 23:23:42'),
(94, 'knowledgebase_page_es_ES_meta_tags', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:42'),
(95, 'knowledgebase_page_es_ES_meta_description', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:42'),
(96, 'blog_page_es_ES_name', 'Blog', '2021-07-09 23:04:15', '2021-09-10 23:23:42'),
(97, 'blog_page_es_ES_meta_tags', NULL, '2021-07-09 23:04:15', '2021-09-10 23:23:42'),
(98, 'blog_page_es_ES_meta_description', NULL, '2021-07-09 23:04:16', '2021-09-10 23:23:42'),
(99, 'contact_page_es_ES_name', 'Contacto', '2021-07-09 23:04:16', '2021-09-10 23:23:42'),
(100, 'contact_page_es_ES_meta_tags', NULL, '2021-07-09 23:04:16', '2021-09-10 23:23:42'),
(101, 'contact_page_es_ES_meta_description', NULL, '2021-07-09 23:04:16', '2021-09-10 23:23:42'),
(102, 'blog_page_item', '6', '2021-07-10 01:52:22', '2021-07-14 05:59:18'),
(103, 'blog_page_recent_post_widget_item', NULL, '2021-07-10 01:52:23', '2021-07-10 01:52:23'),
(104, 'faq_page_slug', 'faq', '2021-07-10 04:39:13', '2021-09-10 23:23:39'),
(105, 'faq_page_en_GB_name', 'FAQ', '2021-07-10 04:39:13', '2021-09-10 23:23:40'),
(106, 'faq_page_en_GB_meta_tags', NULL, '2021-07-10 04:39:13', '2021-09-10 23:23:40'),
(107, 'faq_page_en_GB_meta_description', NULL, '2021-07-10 04:39:14', '2021-09-10 23:23:40'),
(108, 'faq_page_ar_name', 'التعليمات', '2021-07-10 04:39:14', '2021-09-10 23:23:41'),
(109, 'faq_page_ar_meta_tags', NULL, '2021-07-10 04:39:14', '2021-09-10 23:23:42'),
(110, 'faq_page_ar_meta_description', NULL, '2021-07-10 04:39:14', '2021-09-10 23:23:42'),
(111, 'faq_page_es_ES_name', 'Preguntas más frecuentes', '2021-07-10 04:39:15', '2021-09-10 23:23:42'),
(112, 'faq_page_es_ES_meta_tags', NULL, '2021-07-10 04:39:15', '2021-09-10 23:23:42'),
(113, 'faq_page_es_ES_meta_description', NULL, '2021-07-10 04:39:15', '2021-09-10 23:23:42'),
(114, 'site_purple_favicon', '8', '2021-07-10 05:44:33', '2021-08-07 04:24:09'),
(115, 'blog_page_variant', '02', '2021-07-10 07:58:58', '2021-09-11 02:54:03'),
(116, 'contact_page_contact_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"text\",\"textarea\"],\"field_name\":[\"name\",\"email\",\"phone\",\"address\",\"message\"],\"field_placeholder\":[\"Name\",\"Email\",\"Phone\",\"Address\",\"Message\"],\"field_required\":[\"on\",\"on\"]}', '2021-07-10 22:45:54', '2021-08-14 03:36:41'),
(117, 'contact_page_en_GB_phone_title', 'Phone', '2021-07-10 23:52:40', '2021-08-04 07:50:09'),
(118, 'contact_page_en_GB_phone_description', '701-357-9885\r\n701-357-9877', '2021-07-10 23:52:40', '2021-08-04 07:50:09'),
(119, 'contact_page_en_GB_email_title', 'Email', '2021-07-10 23:52:40', '2021-08-04 07:50:09'),
(120, 'contact_page_en_GB_email_description', 'sohan@xgenious.com\r\ninfo@xgenious.com', '2021-07-10 23:52:40', '2021-08-04 07:50:09'),
(121, 'contact_page_en_GB_service_hour_title', 'Service Hour', '2021-07-10 23:52:40', '2021-08-04 07:50:09'),
(122, 'contact_page_en_GB_service_hour_description', '10.00 am - 02.00 pm\r\n05.00 pm - 10.00 pm', '2021-07-10 23:52:40', '2021-08-04 07:50:09'),
(123, 'contact_page_phone_image', '22', '2021-07-10 23:52:40', '2021-08-04 07:50:11'),
(124, 'contact_page_email_image', '20', '2021-07-10 23:52:40', '2021-08-04 07:50:11'),
(125, 'contact_page_service_hour_image', '21', '2021-07-10 23:52:40', '2021-08-04 07:50:11'),
(126, 'contact_page_ar_phone_title', 'هاتف', '2021-07-10 23:52:40', '2021-08-04 07:50:10'),
(127, 'contact_page_ar_phone_description', '701-357-9885\r\n701-357-9877', '2021-07-10 23:52:40', '2021-08-04 07:50:10'),
(128, 'contact_page_ar_email_title', 'بريد إلكتروني', '2021-07-10 23:52:40', '2021-08-04 07:50:10'),
(129, 'contact_page_ar_email_description', 'sohan@xgenious.com\r\ninfo@xgenious.com', '2021-07-10 23:52:40', '2021-08-04 07:50:10'),
(130, 'contact_page_ar_service_hour_title', 'ساعة الخدمة', '2021-07-10 23:52:40', '2021-08-04 07:50:10'),
(131, 'contact_page_ar_service_hour_description', '10.00 am - 02.00 pm\r\n05.00 pm - 10.00 pm', '2021-07-10 23:52:40', '2021-08-04 07:50:10'),
(132, 'contact_page_es_ES_phone_title', 'Teléfono', '2021-07-10 23:52:41', '2021-08-04 07:50:10'),
(133, 'contact_page_es_ES_phone_description', '701-357-9885\r\n701-357-9877', '2021-07-10 23:52:41', '2021-08-04 07:50:10'),
(134, 'contact_page_es_ES_email_title', 'Correo electrónico', '2021-07-10 23:52:41', '2021-08-04 07:50:10'),
(135, 'contact_page_es_ES_email_description', 'sohan@xgenious.com\r\ninfo@xgenious.com', '2021-07-10 23:52:41', '2021-08-04 07:50:11'),
(136, 'contact_page_es_ES_service_hour_title', 'Hora de servicio', '2021-07-10 23:52:41', '2021-08-04 07:50:11'),
(137, 'contact_page_es_ES_service_hour_description', '10.00 am - 02.00 pm\r\n05.00 pm - 10.00 pm', '2021-07-10 23:52:41', '2021-08-04 07:50:11'),
(138, 'contact_page_map_section_location', 'Dhaka, Bangladesh', '2021-07-10 23:52:41', '2021-07-11 00:56:25'),
(139, 'contact_page_map_section_zoom', '10', '2021-07-10 23:52:41', '2021-07-11 00:56:25'),
(140, 'contact_page_en_GB_phone_button_text', 'Call', '2021-07-11 00:29:52', '2021-08-04 07:50:09'),
(141, 'contact_page_en_GB_phone_button_url', '#', '2021-07-11 00:29:52', '2021-08-04 07:50:09'),
(142, 'contact_page_en_GB_email_button_text', 'Mail Now', '2021-07-11 00:29:52', '2021-08-04 07:50:09'),
(143, 'contact_page_en_GB_email_button_url', '#', '2021-07-11 00:29:52', '2021-08-04 07:50:09'),
(144, 'contact_page_en_GB_service_hour_button_text', 'Get Appointed', '2021-07-11 00:29:52', '2021-08-04 07:50:09'),
(145, 'contact_page_en_GB_service_hour_button_url', '#', '2021-07-11 00:29:52', '2021-08-04 07:50:10'),
(146, 'contact_page_ar_phone_button_text', 'يتصل', '2021-07-11 00:29:53', '2021-08-04 07:50:10'),
(147, 'contact_page_ar_phone_button_url', '#', '2021-07-11 00:29:53', '2021-08-04 07:50:10'),
(148, 'contact_page_ar_email_button_text', 'البريد الآن', '2021-07-11 00:29:53', '2021-08-04 07:50:10'),
(149, 'contact_page_ar_email_button_url', '#', '2021-07-11 00:29:53', '2021-08-04 07:50:10'),
(150, 'contact_page_ar_service_hour_button_text', 'احصل على موعد', '2021-07-11 00:29:53', '2021-08-04 07:50:10'),
(151, 'contact_page_ar_service_hour_button_url', '#', '2021-07-11 00:29:53', '2021-08-04 07:50:10'),
(152, 'contact_page_es_ES_phone_button_text', 'Llamada', '2021-07-11 00:29:53', '2021-08-04 07:50:11'),
(153, 'contact_page_es_ES_phone_button_url', '#', '2021-07-11 00:29:53', '2021-08-04 07:50:11'),
(154, 'contact_page_es_ES_email_button_text', 'Enviar correo', '2021-07-11 00:29:53', '2021-08-04 07:50:11'),
(155, 'contact_page_es_ES_email_button_url', '#', '2021-07-11 00:29:53', '2021-08-04 07:50:11'),
(156, 'contact_page_es_ES_service_hour_button_text', 'Obtener cita', '2021-07-11 00:29:53', '2021-08-04 07:50:11'),
(157, 'contact_page_es_ES_service_hour_button_url', '#', '2021-07-11 00:29:53', '2021-08-04 07:50:11'),
(158, 'contact_page_en_GB_heading_form_title', 'Get in touch with Us', '2021-07-11 00:42:42', '2021-08-04 07:50:09'),
(159, 'contact_page_ar_heading_form_title', 'ابق على تواصل معنا', '2021-07-11 00:42:43', '2021-08-04 07:50:10'),
(160, 'contact_page_es_ES_heading_form_title', 'Ponte en contacto con nosotras', '2021-07-11 00:42:44', '2021-08-04 07:50:10'),
(161, 'site_knowledgebase_category_en_GB_title', 'Topics', '2021-07-12 04:53:33', '2021-09-09 05:40:41'),
(162, 'site_knowledgebase_popular_widget_en_GB_title', 'Popular Articles', '2021-07-12 04:53:33', '2021-09-09 05:40:41'),
(163, 'site_knowledgebase_article_topic_en_GB_title', 'Article Topics', '2021-07-12 04:53:33', '2021-09-09 05:40:41'),
(164, 'site_knowledgebase_category_ar_title', 'جميع المواضيع', '2021-07-12 04:53:33', '2021-09-09 05:40:41'),
(165, 'site_knowledgebase_popular_widget_ar_title', 'المواد شعبية', '2021-07-12 04:53:33', '2021-09-09 05:40:41'),
(166, 'site_knowledgebase_article_topic_ar_title', 'مواضيع المقالة', '2021-07-12 04:53:33', '2021-09-09 05:40:41'),
(167, 'site_knowledgebase_category_es_ES_title', 'Todos los temas', '2021-07-12 04:53:33', '2021-09-09 05:40:41'),
(168, 'site_knowledgebase_popular_widget_es_ES_title', 'articulos populares', '2021-07-12 04:53:33', '2021-09-09 05:40:41'),
(169, 'site_knowledgebase_article_topic_es_ES_title', 'Temas del artículo', '2021-07-12 04:53:33', '2021-09-09 05:40:42'),
(170, 'site_knoeledgebase_post_items', '6', '2021-07-12 04:53:33', '2021-07-12 04:54:50'),
(171, 'knowledgebase_page_variant', '02', '2021-07-12 05:26:26', '2021-09-09 05:16:34'),
(172, 'site_knowledgebase_post_items', '18', '2021-07-12 06:09:17', '2021-09-09 05:40:42'),
(173, 'site_knowledgebase_feedback_show_hide_buttonen_GB_title', NULL, '2021-07-13 04:38:57', '2021-07-13 04:53:39'),
(174, 'site_knowledgebase_feedback_en_GB_title', 'Was This Article helpful?', '2021-07-13 04:38:57', '2021-07-13 06:41:36'),
(175, 'site_knowledgebase_feedback_yes_button_en_GB_title', 'Yes Good', '2021-07-13 04:38:57', '2021-07-13 06:41:36'),
(176, 'site_knowledgebase_feedback_no_button_en_GB_title', 'Not Really', '2021-07-13 04:38:57', '2021-07-13 06:41:36'),
(177, 'site_knowledgebase_feedback_show_hide_buttonar_title', NULL, '2021-07-13 04:38:57', '2021-07-13 04:53:39'),
(178, 'site_knowledgebase_feedback_ar_title', 'هل هذه المقالة مفيدة؟', '2021-07-13 04:38:57', '2021-07-13 06:41:36'),
(179, 'site_knowledgebase_feedback_yes_button_ar_title', 'نعم جيد', '2021-07-13 04:38:57', '2021-07-13 06:41:36'),
(180, 'site_knowledgebase_feedback_no_button_ar_title', 'ليس صحيحا', '2021-07-13 04:38:57', '2021-07-13 06:41:36'),
(181, 'site_knowledgebase_feedback_show_hide_buttones_ES_title', NULL, '2021-07-13 04:38:57', '2021-07-13 04:53:39'),
(182, 'site_knowledgebase_feedback_es_ES_title', '¿Es útil este artículo?', '2021-07-13 04:38:57', '2021-07-13 06:41:36'),
(183, 'site_knowledgebase_feedback_yes_button_es_ES_title', 'Si buena', '2021-07-13 04:38:57', '2021-07-13 06:41:36'),
(184, 'site_knowledgebase_feedback_no_button_es_ES_title', 'Realmente no', '2021-07-13 04:38:57', '2021-07-13 06:41:36'),
(185, 'site_knowledgebase_feedback_show_hide_button', 'on', '2021-07-13 04:55:52', '2021-07-13 06:41:36'),
(186, 'site_knowledgebase_feedback_yes_button_en_GB_url', '#', '2021-07-13 05:11:30', '2021-07-13 05:15:39'),
(187, 'site_knowledgebase_feedback_no_button_en_GB_url', '#', '2021-07-13 05:11:30', '2021-07-13 05:15:39'),
(188, 'site_knowledgebase_feedback_yes_button_ar_url', '#', '2021-07-13 05:11:30', '2021-07-13 05:15:40'),
(189, 'site_knowledgebase_feedback_no_button_ar_url', '#', '2021-07-13 05:11:30', '2021-07-13 05:15:40'),
(190, 'site_knowledgebase_feedback_yes_button_es_ES_url', '#', '2021-07-13 05:11:30', '2021-07-13 05:15:40'),
(191, 'site_knowledgebase_feedback_no_button_es_ES_url', '#', '2021-07-13 05:11:30', '2021-07-13 05:15:40'),
(192, 'site_knowledgebase_feedback_form_en_GB_title', 'Leave your Query Here', '2021-07-13 06:41:36', '2021-07-13 06:41:36'),
(193, 'site_knowledgebase_feedback_form_ar_title', 'اترك استفسارك هنا', '2021-07-13 06:41:36', '2021-07-13 06:41:36'),
(194, 'site_knowledgebase_feedback_form_es_ES_title', 'Deje su consulta aquí', '2021-07-13 06:41:36', '2021-07-13 06:41:36'),
(195, 'knowledgebase_support_area_en_GB_title', 'Need Instant Solutions?', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(196, 'knowledgebase_support_area_en_GB_subtitle', 'Speedily say has suitable disposal add boy. On forth doubt miles of child. Exercise joy man children rejoiced.', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(197, 'knowledgebase_support_area_en_GB_points', 'Essential discovery questions\r\nKeep the flow of conversation going\r\nSportsman delighted improving\r\nAt an these still no dried folly stood thing\r\nmobile and also compatible', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(198, 'knowledgebase_support_area_en_GB_button_text', 'Go Here', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(199, 'knowledgebase_support_area_en_GB_button_url', '#', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(200, 'knowledgebase_support_area_en_GB_right_image', '91', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(201, 'knowledgebase_support_area_ar_title', 'هل تحتاج إلى حلول فورية؟', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(202, 'knowledgebase_support_area_ar_subtitle', 'يقول بسرعة لديه التخلص المناسب إضافة الصبي. على رابع ميلا الشك من الطفل. تمرين فرح الرجل بفرح الاطفال.', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(203, 'knowledgebase_support_area_ar_points', 'أسئلة الاكتشاف الأساسية\r\nاستمر في تدفق المحادثة\r\nرياضي مسرور بالتحسن\r\nفي هذه لا تزال هناك حماقة جافة تقف شيء\r\nمتوافق أيضًا مع الجوّال', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(204, 'knowledgebase_support_area_ar_button_text', 'اذهب الى هنا', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(205, 'knowledgebase_support_area_ar_button_url', '#', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(206, 'knowledgebase_support_area_ar_right_image', '36', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(207, 'knowledgebase_support_area_es_ES_title', '¿Necesita soluciones instantáneas?', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(208, 'knowledgebase_support_area_es_ES_subtitle', 'Rápidamente diga que tiene una disposición adecuada agregue al niño. En cuarta duda millas de niño. Ejercicio alegría hombre niños regocijados.', '2021-07-14 03:54:58', '2021-09-15 11:14:13'),
(209, 'knowledgebase_support_area_es_ES_points', 'Preguntas de descubrimiento esenciales\r\nMantenga el flujo de la conversación\r\nDeportista encantado mejorando\r\nEn una cosa que todavía no se ha secado\r\nmóvil y también compatible', '2021-07-14 03:54:59', '2021-09-15 11:14:13'),
(210, 'knowledgebase_support_area_es_ES_button_text', 'Ven aquí', '2021-07-14 03:54:59', '2021-09-15 11:14:13'),
(211, 'knowledgebase_support_area_es_ES_button_url', '#', '2021-07-14 03:54:59', '2021-09-15 11:14:13'),
(212, 'knowledgebase_support_area_es_ES_right_image', '35', '2021-07-14 03:54:59', '2021-09-15 11:14:13'),
(213, 'blog_page_button_en_GB_title', 'View Details', '2021-07-14 05:26:39', '2021-08-04 07:45:21'),
(214, 'blog_page_button_ar_title', 'عرض التفاصيل', '2021-07-14 05:26:39', '2021-08-04 07:45:21'),
(215, 'blog_page_button_es_ES_title', 'Ver detalles', '2021-07-14 05:26:39', '2021-08-04 07:45:21'),
(216, 'blog_page_item_01', '6', '2021-07-14 06:51:11', '2021-08-16 06:03:48'),
(217, 'blog_page_item_02', '3', '2021-07-14 06:51:11', '2021-08-16 06:03:00'),
(218, 'home_page_header_en_GB_title', 'Hi, We can help you find any information?', '2021-07-14 23:40:47', '2021-09-12 17:22:03'),
(219, 'home_page_header_en_GB_subtitle', 'Speedily say has suitable disposal add boy. On forth doubt miles of child. Exercise joy man children rejoiced.', '2021-07-14 23:40:47', '2021-09-12 17:22:04'),
(220, 'home_page_header_en_GB_image', '40', '2021-07-14 23:40:47', '2021-07-14 23:46:04'),
(221, 'home_page_header_en_GB_bg_image', '38', '2021-07-14 23:40:48', '2021-07-14 23:46:04'),
(222, 'home_page_header_ar_title', 'مرحبًا ، يمكننا مساعدتك في العثور على أي معلومات؟', '2021-07-14 23:40:48', '2021-09-12 17:22:04'),
(223, 'home_page_header_ar_subtitle', 'يقول بسرعة لديه التخلص المناسب إضافة الصبي. على رابع ميلا الشك من الطفل. تمرين فرح الرجل بفرح الاطفال.', '2021-07-14 23:40:48', '2021-09-12 17:22:04'),
(224, 'home_page_header_ar_image', '40', '2021-07-14 23:40:48', '2021-07-14 23:46:05'),
(225, 'home_page_header_ar_bg_image', '37', '2021-07-14 23:40:48', '2021-07-14 23:46:05'),
(226, 'home_page_header_es_ES_title', 'Hola, ¿podemos ayudarte a encontrar cualquier información?', '2021-07-14 23:40:48', '2021-09-12 17:22:04'),
(227, 'home_page_header_es_ES_subtitle', 'Rápidamente diga que tiene una disposición adecuada agregue al niño. En cuarta duda millas de niño. Ejercicio de alegría, los niños se regocijaron.', '2021-07-14 23:40:48', '2021-09-12 17:22:04'),
(228, 'home_page_header_es_ES_image', '40', '2021-07-14 23:40:48', '2021-07-14 23:46:05'),
(229, 'home_page_header_es_ES_bg_image', '38', '2021-07-14 23:40:48', '2021-07-14 23:46:05'),
(230, 'home_page_header_en_GB_image_01', '40', '2021-07-15 00:14:54', '2021-09-12 17:22:04'),
(231, 'home_page_header_en_GB_bg_image_01', '38', '2021-07-15 00:14:55', '2021-09-12 17:22:04'),
(232, 'home_page_header_en_GB_image_02', '85', '2021-07-15 00:14:55', '2021-09-12 15:53:53'),
(233, 'home_page_header_ar_image_01', '40', '2021-07-15 00:14:55', '2021-09-12 17:22:04'),
(234, 'home_page_header_ar_bg_image_01', '38', '2021-07-15 00:14:55', '2021-09-12 17:22:04'),
(235, 'home_page_header_ar_image_02', '39', '2021-07-15 00:14:55', '2021-09-12 15:53:53'),
(236, 'home_page_header_es_ES_image_01', '40', '2021-07-15 00:14:55', '2021-09-12 17:22:04'),
(237, 'home_page_header_es_ES_bg_image_01', '38', '2021-07-15 00:14:55', '2021-09-12 17:22:04'),
(238, 'home_page_header_es_ES_image_02', '39', '2021-07-15 00:14:55', '2021-09-12 15:53:53'),
(239, 'home_page_01_highlight_en_GB_title', 'a:0:{}', '2021-07-15 01:56:01', '2021-07-15 04:17:05'),
(240, 'home_page_01_highlight_en_GB_description', 'a:2:{i:0;s:61:\"Questions explained agreeable preferred strangers too him her\";i:1;s:61:\"Questions explained agreeable preferred strangers too him her\";}', '2021-07-15 01:56:01', '2021-07-15 02:03:26'),
(241, 'home_page_01_highlight_image', 'a:0:{}', '2021-07-15 01:56:01', '2021-07-15 04:17:05'),
(242, 'home_page_01_highlight_ar_title', 'a:0:{}', '2021-07-15 01:56:01', '2021-07-15 04:17:05'),
(243, 'home_page_01_highlight_ar_description', 'a:2:{i:0;N;i:1;N;}', '2021-07-15 01:56:01', '2021-07-15 02:03:26'),
(244, 'home_page_01_highlight_es_ES_title', 'a:0:{}', '2021-07-15 01:56:01', '2021-07-15 04:17:05'),
(245, 'home_page_01_highlight_es_ES_description', 'a:2:{i:0;N;i:1;N;}', '2021-07-15 01:56:01', '2021-07-15 02:03:26'),
(246, 'home_page_article_en_GB_title', 'Popular Articles', '2021-07-15 03:28:12', '2021-08-04 07:35:48'),
(247, 'home_page_article_en_GB_subtitle', 'Oh he decisively impression attachment friendship so if everything.', '2021-07-15 03:28:12', '2021-08-04 07:35:48'),
(248, 'home_page_article_ar_title', 'المواد شعبية', '2021-07-15 03:28:12', '2021-08-04 07:35:48'),
(249, 'home_page_article_ar_subtitle', 'يا انه الانطباع حاسم الصداقة التعلق حتى لو كل شيء.', '2021-07-15 03:28:12', '2021-08-04 07:35:49'),
(250, 'home_page_article_es_ES_title', 'articulos populares', '2021-07-15 03:28:12', '2021-08-04 07:35:49'),
(251, 'home_page_article_es_ES_subtitle', 'Oh, él impresiona decisivamente la amistad de apego así que si todo.', '2021-07-15 03:28:12', '2021-08-04 07:35:49'),
(252, 'home_page_01_highlight_en_GB_subtitle', 'a:0:{}', '2021-07-15 04:16:21', '2021-07-15 04:17:05'),
(253, 'home_page_01_highlight_ar_subtitle', 'a:0:{}', '2021-07-15 04:16:21', '2021-07-15 04:17:05'),
(254, 'home_page_01_highlight_es_ES_subtitle', 'a:0:{}', '2021-07-15 04:16:22', '2021-07-15 04:17:05'),
(255, 'home_page_highlight_en_GB_subtitle', 'a:3:{i:0;s:61:\"Questions explained agreeable preferred strangers too him her\";i:1;s:61:\"Questions explained agreeable preferred strangers too him her\";i:2;s:61:\"Questions explained agreeable preferred strangers too him her\";}', '2021-07-15 04:29:11', '2021-08-16 01:41:10'),
(256, 'home_page_highlight_en_GB_title', 'a:3:{i:0;s:11:\"Get Started\";i:1;s:16:\"Access Resources\";i:2;s:13:\"Find Solution\";}', '2021-07-15 04:29:11', '2021-08-16 01:41:10'),
(257, 'home_page_highlight_image', 'a:3:{i:0;s:2:\"41\";i:1;s:2:\"42\";i:2;s:2:\"43\";}', '2021-07-15 04:29:11', '2021-08-16 01:41:11'),
(258, 'home_page_highlight_ar_subtitle', 'a:3:{i:0;s:65:\"وأوضح أسئلة مقبولة يفضل الغرباء منه\";i:1;s:65:\"وأوضح أسئلة مقبولة يفضل الغرباء منه\";i:2;s:65:\"وأوضح أسئلة مقبولة يفضل الغرباء منه\";}', '2021-07-15 04:29:11', '2021-08-16 01:41:10'),
(259, 'home_page_highlight_ar_title', 'a:3:{i:0;s:10:\"البدء\";i:1;s:34:\"الوصول إلى الموارد\";i:2;s:22:\"ابحث عن الحل\";}', '2021-07-15 04:29:11', '2021-08-16 01:41:10'),
(260, 'home_page_highlight_es_ES_subtitle', 'a:3:{i:0;s:70:\"Preguntas explicadas agradables preferidas extraños también él ella\";i:1;s:70:\"Preguntas explicadas agradables preferidas extraños también él ella\";i:2;s:70:\"Preguntas explicadas agradables preferidas extraños también él ella\";}', '2021-07-15 04:29:11', '2021-08-16 01:41:10'),
(261, 'home_page_highlight_es_ES_title', 'a:3:{i:0;s:7:\"Empezar\";i:1;s:18:\"Recursos de acceso\";i:2;s:19:\"Encontrar solución\";}', '2021-07-15 04:29:12', '2021-08-16 01:41:11'),
(262, 'home_page_faq_en_GB_title', 'Frequently Asked Questions', '2021-07-15 07:03:03', '2021-08-04 07:37:31'),
(263, 'home_page_faq_en_GB_subtitle', 'Oh he decisively impression attachment friendship so if everything.', '2021-07-15 07:03:03', '2021-08-04 07:37:31'),
(264, 'home_page_faq_ar_title', 'أسئلة مكررة', '2021-07-15 07:03:03', '2021-08-04 07:37:31'),
(265, 'home_page_faq_ar_subtitle', 'يا انه الانطباع حاسم الصداقة التعلق حتى لو كل شيء.', '2021-07-15 07:03:03', '2021-08-04 07:37:31'),
(266, 'home_page_faq_es_ES_title', 'Preguntas frecuentes', '2021-07-15 07:03:03', '2021-08-04 07:37:32'),
(267, 'home_page_faq_es_ES_subtitle', 'Oh, él impresiona decisivamente la amistad de apego así que si todo.', '2021-07-15 07:03:03', '2021-08-04 07:37:32'),
(268, 'home_page_02_call_to_action_en_GB_title', 'Didn\'t Find Any Solutions?', '2021-07-15 08:22:39', '2021-09-12 17:18:35'),
(269, 'home_page_02_call_to_action_en_GB_subtitle', 'Speedily say has suitable disposal add boy. On forth doubt miles of child. Exercise joy man children rejoiced.', '2021-07-15 08:22:39', '2021-09-12 17:18:35'),
(270, 'home_page_02_call_to_action_en_GB_image', '45', '2021-07-15 08:22:39', '2021-09-12 17:18:35'),
(271, 'home_page_02_call_to_action_ar_title', 'لم تجد أي حلول؟', '2021-07-15 08:22:39', '2021-09-12 17:18:35'),
(272, 'home_page_02_call_to_action_ar_subtitle', 'يقول بسرعة لديه التخلص المناسب إضافة الصبي. على رابع ميلا الشك من الطفل. تمرين فرح الرجل بفرح الاطفال.', '2021-07-15 08:22:39', '2021-09-12 17:18:35'),
(273, 'home_page_02_call_to_action_ar_image', '45', '2021-07-15 08:22:39', '2021-09-12 17:18:35'),
(274, 'home_page_02_call_to_action_es_ES_title', '¿No encontró ninguna solución?', '2021-07-15 08:22:40', '2021-09-12 17:18:35'),
(275, 'home_page_02_call_to_action_es_ES_subtitle', 'Rápidamente diga que tiene una disposición adecuada agregue al niño. En cuarta duda millas de niño. Ejercicio de alegría, los niños se regocijaron.', '2021-07-15 08:22:40', '2021-09-12 17:18:35'),
(276, 'home_page_02_call_to_action_es_ES_image', '45', '2021-07-15 08:22:40', '2021-09-12 17:18:35'),
(277, 'home_page_02_call_to_action_button_en_GB_title', 'Open Support Ticket', '2021-07-15 08:26:24', '2021-09-12 17:18:35'),
(278, 'home_page_02_call_to_action_button_en_GB_url', NULL, '2021-07-15 08:26:24', '2021-09-12 17:18:35'),
(279, 'home_page_02_call_to_action_button_ar_title', 'افتح تذكرة الدعم', '2021-07-15 08:26:24', '2021-09-12 17:18:35'),
(280, 'home_page_02_call_to_action_button_es_ES_title', 'Ticket de soporte abierto', '2021-07-15 08:26:24', '2021-09-12 17:18:35'),
(281, 'home_page_02_call_to_action_button_ar_url', NULL, '2021-07-15 08:28:18', '2021-09-12 17:18:35'),
(282, 'home_page_02_call_to_action_button_es_ES_url', NULL, '2021-07-15 08:28:19', '2021-09-12 17:18:35'),
(283, 'home_page_article_item_show', '18', '2021-07-15 22:43:08', '2021-08-04 07:35:49'),
(284, 'home_page_02_quistion_box_en_GB_title', 'Have any Questions?', '2021-07-16 00:02:49', '2021-07-16 00:41:16'),
(285, 'home_page_02_quistion_box_en_GB_subtitle', 'Send your questions in our mail', '2021-07-16 00:02:49', '2021-07-16 00:41:16'),
(286, 'home_page_02_quistion_box_button_en_GB_title', 'Submit', '2021-07-16 00:02:49', '2021-07-16 00:41:16'),
(287, 'home_page_02_quistion_box_ar_title', 'لديك أي أسئلة؟', '2021-07-16 00:02:49', '2021-07-16 00:41:16'),
(288, 'home_page_02_quistion_box_ar_subtitle', 'أرسل أسئلتك في بريدنا', '2021-07-16 00:02:49', '2021-07-16 00:41:16'),
(289, 'home_page_02_quistion_box_button_ar_title', 'إرسال', '2021-07-16 00:02:49', '2021-07-16 00:41:16'),
(290, 'home_page_02_quistion_box_es_ES_title', '¿Tiene alguna pregunta?', '2021-07-16 00:02:49', '2021-07-16 00:41:17'),
(291, 'home_page_02_quistion_box_es_ES_subtitle', 'Envíe sus preguntas en nuestro correo', '2021-07-16 00:02:49', '2021-07-16 00:41:17'),
(292, 'home_page_02_quistion_box_button_es_ES_title', 'Enviar', '2021-07-16 00:02:49', '2021-07-16 00:41:17'),
(293, 'home_page_02_faq_item_show', '2', '2021-07-16 00:02:49', '2021-07-16 00:41:17'),
(294, 'home_page_01_faq_item_show', '5', '2021-07-16 00:19:03', '2021-08-04 07:37:32'),
(295, 'home_page_support_area_en_GB_title', 'Need Instant Support?', '2021-07-16 23:06:07', '2021-09-12 17:44:18'),
(296, 'home_page_support_area_en_GB_subtitle', 'Ignorant saw her her drawings marriage laughter. Case oh an that or away sigh do here upon.', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(297, 'home_page_support_area_en_GB_points', 'Quick Support\r\nExpert Support Team\r\nReply Within 24hours\r\nProblem solved with love', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(298, 'home_page_support_area_en_GB_button_text', 'Get Support', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(299, 'home_page_support_area_en_GB_button_url', '#', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(300, 'home_page_01_support_area_en_GB_right_image', '91', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(301, 'home_page_02_support_area_en_GB_right_image', '86', '2021-07-16 23:06:08', '2021-09-12 17:18:57'),
(302, 'home_page_support_area_ar_title', 'دعم مخصص', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(303, 'home_page_support_area_ar_subtitle', 'شاهدت جاهلة لها رسومات زواج ضحك. حالة يا أن أو تنهد بعيدًا تفعل هنا.', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(304, 'home_page_support_area_ar_points', 'دعم سريع\r\nفريق دعم الخبراء\r\nالرد خلال 24 ساعة\r\nحل المشكلة بالحب', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(305, 'home_page_support_area_ar_button_text', 'احصل على الدعم', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(306, 'home_page_support_area_ar_button_url', '#', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(307, 'home_page_01_support_area_ar_right_image', '36', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(308, 'home_page_02_support_area_ar_right_image', '35', '2021-07-16 23:06:08', '2021-09-12 17:18:57'),
(309, 'home_page_support_area_es_ES_title', 'Soporte dedicado', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(310, 'home_page_support_area_es_ES_subtitle', 'Ignorante vio su risa de matrimonio de dibujos. Caso oh eso o suspiro lejos haz aquí.', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(311, 'home_page_support_area_es_ES_points', 'Soporte rápido\r\nEquipo de soporte experto\r\nResponder dentro de las 24 horas\r\nProblema resuelto con amor', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(312, 'home_page_support_area_es_ES_button_text', 'Obtener apoyo', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(313, 'home_page_support_area_es_ES_button_url', '#', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(314, 'home_page_01_support_area_es_ES_right_image', '36', '2021-07-16 23:06:08', '2021-09-12 17:44:18'),
(315, 'home_page_02_support_area_es_ES_right_image', '35', '2021-07-16 23:06:08', '2021-09-12 17:18:57'),
(316, 'home_page_newsletter_en_GB_title', 'Subscribe to our Newsletter', '2021-07-17 00:49:14', '2021-08-04 07:41:27'),
(317, 'home_page_newsletter_en_GB_subtitle', 'Ignorant saw her her drawings marriage laughter. Case oh an that or away sigh do here upon.  Email', '2021-07-17 00:49:14', '2021-08-04 07:41:27'),
(318, 'home_page_newsletter_button_en_GB_title', 'Send', '2021-07-17 00:49:14', '2021-08-04 07:41:27'),
(319, 'home_page_newsletter_ar_title', 'اشترك في نشرتنا الإخبارية', '2021-07-17 01:00:31', '2021-08-04 07:41:27'),
(320, 'home_page_newsletter_ar_subtitle', 'شاهدت جاهلة لها رسومات زواج ضحك. حالة يا أن أو تنهد بعيدًا تفعل هنا. بريد إلكتروني', '2021-07-17 01:00:31', '2021-08-04 07:41:27'),
(321, 'home_page_newsletter_button_ar_title', 'إرسال', '2021-07-17 01:00:31', '2021-08-04 07:41:27'),
(322, 'home_page_newsletter_es_ES_title', 'Suscríbete a nuestro boletín', '2021-07-17 01:00:31', '2021-08-04 07:41:27'),
(323, 'home_page_newsletter_es_ES_subtitle', 'Ignorante vio su risa de matrimonio de dibujos. Caso oh eso o suspiro lejos haz aquí. Correo electrónico', '2021-07-17 01:00:31', '2021-08-04 07:41:27'),
(324, 'home_page_newsletter_button_es_ES_title', 'Enviar', '2021-07-17 01:00:31', '2021-08-04 07:41:27'),
(325, 'home_page_newsletter_bg_image', '46', '2021-07-17 02:50:49', '2021-08-04 07:41:27'),
(326, 'home_page_topbar_section_status', 'on', '2021-07-18 05:13:34', '2021-07-18 06:31:10'),
(327, 'home_page_navbar_section_status', 'on', '2021-07-18 05:13:34', '2021-07-18 06:31:10'),
(328, 'home_page_header_section_status', 'on', '2021-07-18 05:13:34', '2021-07-18 06:31:10'),
(329, 'home_page_keyfeature_section_status', 'on', '2021-07-18 05:13:34', '2021-07-18 05:13:34'),
(330, 'home_page_article_section_status', 'on', '2021-07-18 05:13:34', '2021-07-18 06:31:10'),
(331, 'home_page_faq_section_status', 'on', '2021-07-18 05:13:34', '2021-07-18 06:31:10'),
(332, 'home_page_counterup_section_status', 'on', '2021-07-18 05:13:34', '2021-07-18 05:55:02'),
(333, 'home_page_support_section_status', 'on', '2021-07-18 05:13:34', '2021-07-18 06:31:10'),
(334, 'home_page_newsletter_section_status', 'on', '2021-07-18 05:13:34', '2021-07-18 05:55:02'),
(335, 'home_page_call-to-action_section_status', 'on', '2021-07-18 05:27:10', '2021-07-18 06:24:51'),
(336, 'home_page_highlight_section_status', 'on', '2021-07-18 05:41:33', '2021-07-18 05:55:02'),
(337, 'home_page_call_to_action_section_status', 'on', '2021-07-18 06:29:21', '2021-07-18 06:31:10'),
(338, 'contact_page_message_button_en_GB_title', 'Send Message', '2021-07-18 07:15:16', '2021-08-04 07:50:09'),
(339, 'contact_page_message_button_ar_title', 'أرسل رسالة', '2021-07-18 07:15:16', '2021-08-04 07:50:10'),
(340, 'contact_page_message_button_es_ES_title', 'Enviar mensaje', '2021-07-18 07:15:17', '2021-08-04 07:50:10'),
(341, 'contact_page_contact_info_section_status', 'on', '2021-07-18 07:28:40', '2021-07-18 07:33:00'),
(342, 'contact_page_contact_form_section_status', 'on', '2021-07-18 07:28:40', '2021-07-18 07:33:00'),
(343, 'error_404_page_en_GB_title', '404', '2021-07-18 23:07:28', '2021-08-04 09:33:21'),
(344, 'error_404_page_en_GB_subtitle', 'Oops! This Page Could Not Be Found', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(345, 'error_404_page_en_GB_paragraph', 'Sorry but the page you are looking for does not exist, have been removed. name changed or is temporarily unavailable', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(346, 'error_404_page_en_GB_button_text', 'GO TO HOME PAGE', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(347, 'error_404_page_ar_title', '404', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(348, 'error_404_page_ar_subtitle', 'وجه الفتاة! لا يمكن العثور على هذه الصفحة', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(349, 'error_404_page_ar_paragraph', 'آسف ولكن الصفحة التي تبحث عنها غير موجودة ، تمت إزالتها. تم تغيير الاسم أو أنه غير متاح مؤقتًا', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(350, 'error_404_page_ar_button_text', 'انتقل إلى الصفحة الرئيسية', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(351, 'error_404_page_es_ES_title', '404', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(352, 'error_404_page_es_ES_subtitle', '¡UPS! No se pudo encontrar esta página', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(353, 'error_404_page_es_ES_paragraph', 'Lo sentimos, pero la página que está buscando no existe, ha sido eliminada. nombre cambiado o no está disponible temporalmente', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(354, 'error_404_page_es_ES_button_text', 'IR A LA PÁGINA DE INICIO', '2021-07-18 23:07:29', '2021-08-04 09:33:21'),
(355, 'maintain_page_en_GB_title', 'We are on Scheduled Maintenance', '2021-07-18 23:22:11', '2021-08-04 09:37:42'),
(356, 'maintain_page_en_GB_description', 'Way off why half led have near bed. At engage simple father of period others except. \r\nMy giving do summer of though narrow marked at. Spring formal no county ye waited.', '2021-07-18 23:22:11', '2021-08-04 09:37:42'),
(357, 'maintain_page_ar_title', 'نحن في الصيانة المجدولة', '2021-07-18 23:22:11', '2021-08-04 09:37:42'),
(358, 'maintain_page_ar_description', 'بعيدًا عن سبب وجود نصف قاد بالقرب من السرير. عند الانخراط في أب بسيط من فترة أخرى ما عدا. عطاءاتي تفعل الصيف على الرغم من ضيق ملحوظ في. الربيع الرسمية لم تنتظر أي مقاطعة.', '2021-07-18 23:22:11', '2021-08-04 09:37:42'),
(359, 'maintain_page_es_ES_title', 'Nosotras estamos en mantenimiento programado', '2021-07-18 23:22:11', '2021-08-04 09:37:42'),
(360, 'maintain_page_es_ES_description', 'lejos de por qué la mitad de los led tienen cerca de la cama. En contratar al padre simple del período otros excepto. Mi donación hace verano de aunque estrecho marcado a. Primavera formal sin condado que esperaste.', '2021-07-18 23:22:11', '2021-08-04 09:37:42'),
(361, 'maintain_page_logo', '3', '2021-07-18 23:22:11', '2021-07-18 23:22:11'),
(362, 'maintain_page_background_image', '38', '2021-07-18 23:22:11', '2021-07-18 23:22:11'),
(363, 'support_ticket_en_GB_login_notice', 'Login to create support ticket', '2021-07-25 06:46:06', '2021-08-04 07:56:24'),
(364, 'support_ticket_en_GB_form_title', 'Create New Support Ticket', '2021-07-25 06:46:06', '2021-08-04 07:56:24'),
(365, 'support_ticket_en_GB_button_text', 'Submit Ticket', '2021-07-25 06:46:06', '2021-08-04 07:56:24'),
(366, 'support_ticket_en_GB_success_message', 'Thanks for contact us, we will reply soon', '2021-07-25 06:46:06', '2021-08-04 07:56:24'),
(367, 'support_ticket_ar_login_notice', 'تسجيل الدخول لإنشاء تذكرة دعم', '2021-07-25 06:46:07', '2021-08-04 07:56:24'),
(368, 'support_ticket_ar_form_title', 'إنشاء تذكرة دعم جديدة', '2021-07-25 06:46:07', '2021-08-04 07:56:24'),
(369, 'support_ticket_ar_button_text', 'قدم التذكرة', '2021-07-25 06:46:07', '2021-08-04 07:56:24'),
(370, 'support_ticket_ar_success_message', 'شكرا على الاتصال بنا ، وسوف نقوم بالرد قريبا', '2021-07-25 06:46:07', '2021-08-04 07:56:24'),
(371, 'support_ticket_es_ES_login_notice', 'Inicie sesión para crear un ticket de soporte', '2021-07-25 06:46:07', '2021-08-04 07:56:24'),
(372, 'support_ticket_es_ES_form_title', 'Crear un nuevo ticket de soporte', '2021-07-25 06:46:07', '2021-08-04 07:56:24'),
(373, 'support_ticket_es_ES_button_text', 'Enviar ticket', '2021-07-25 06:46:07', '2021-08-04 07:56:24'),
(374, 'support_ticket_es_ES_success_message', 'Gracias por contactarnos, le responderemos pronto.', '2021-07-25 06:46:07', '2021-08-04 07:56:24'),
(375, 'ticket_page_slug', 'ticket', '2021-07-25 07:04:02', '2021-07-25 07:11:15'),
(376, 'ticket_page_en_GB_name', 'Support Ticket', '2021-07-25 07:04:02', '2021-07-25 07:11:16'),
(377, 'ticket_page_en_GB_meta_tags', NULL, '2021-07-25 07:04:02', '2021-07-25 07:11:16'),
(378, 'ticket_page_en_GB_meta_description', NULL, '2021-07-25 07:04:02', '2021-07-25 07:11:16'),
(379, 'ticket_page_ar_name', 'بطاقة الدعم', '2021-07-25 07:04:03', '2021-07-25 07:11:16'),
(380, 'ticket_page_ar_meta_tags', NULL, '2021-07-25 07:04:03', '2021-07-25 07:11:17'),
(381, 'ticket_page_ar_meta_description', NULL, '2021-07-25 07:04:03', '2021-07-25 07:11:17'),
(382, 'ticket_page_es_ES_name', 'Ticket de soporte', '2021-07-25 07:04:04', '2021-07-25 07:11:17'),
(383, 'ticket_page_es_ES_meta_tags', NULL, '2021-07-25 07:04:04', '2021-07-25 07:11:17'),
(384, 'ticket_page_es_ES_meta_description', NULL, '2021-07-25 07:04:04', '2021-07-25 07:11:17'),
(385, 'support_ticket_page_slug', 'support-ticket', '2021-07-25 07:16:51', '2021-09-10 23:23:39'),
(386, 'support_ticket_page_en_GB_name', 'Support Ticket', '2021-07-25 07:16:51', '2021-09-10 23:23:40'),
(387, 'support_ticket_page_en_GB_meta_tags', NULL, '2021-07-25 07:16:51', '2021-09-10 23:23:40'),
(388, 'support_ticket_page_en_GB_meta_description', NULL, '2021-07-25 07:16:52', '2021-09-10 23:23:41'),
(389, 'support_ticket_page_ar_name', 'بطاقة الدعم', '2021-07-25 07:16:52', '2021-09-10 23:23:42'),
(390, 'support_ticket_page_ar_meta_tags', NULL, '2021-07-25 07:16:52', '2021-09-10 23:23:42'),
(391, 'support_ticket_page_ar_meta_description', NULL, '2021-07-25 07:16:52', '2021-09-10 23:23:42'),
(392, 'support_ticket_page_es_ES_name', 'Ticket de soporte', '2021-07-25 07:16:53', '2021-09-10 23:23:42'),
(393, 'support_ticket_page_es_ES_meta_tags', NULL, '2021-07-25 07:16:53', '2021-09-10 23:23:42'),
(394, 'support_ticket_page_es_ES_meta_description', NULL, '2021-07-25 07:16:53', '2021-09-10 23:23:43'),
(395, 'navbar_button_text_en_GB', 'Get Support', '2021-07-25 23:53:04', '2021-09-11 03:07:59'),
(396, 'navbar_button_url_en_GB', NULL, '2021-07-25 23:53:04', '2021-09-11 03:07:59'),
(397, 'navbar_button_text_ar', 'احصل على الدعم', '2021-07-25 23:53:04', '2021-09-11 03:07:59'),
(398, 'navbar_button_url_ar', NULL, '2021-07-25 23:53:04', '2021-09-11 03:07:59'),
(399, 'navbar_button_text_es_ES', 'Obtener apoyo', '2021-07-25 23:53:04', '2021-09-11 03:08:00'),
(400, 'navbar_button_url_es_ES', NULL, '2021-07-25 23:53:04', '2021-09-11 03:08:00'),
(401, 'navbar_button', 'on', '2021-07-25 23:53:04', '2021-09-11 03:08:00'),
(402, 'navbar_button_icon', 'fas fa-angle-right', '2021-07-25 23:53:04', '2021-09-11 03:08:00'),
(403, 'enable_google_login', 'on', '2021-08-01 02:11:46', '2021-09-15 11:06:44'),
(404, 'enable_facebook_login', 'on', '2021-08-01 02:11:46', '2021-09-15 11:06:44'),
(405, 'google_client_id', '893494041014-o9binargmjkvsn9sfgsad9cpsa2bc1gm.apps.googleusercontent.com', '2021-08-01 02:11:46', '2021-09-15 11:06:44'),
(406, 'google_client_secret', '9__z02sAMJF42L9VlnQMyP-3', '2021-08-01 02:11:46', '2021-09-15 11:06:44'),
(407, 'facebook_client_id', '574864173947587', '2021-08-01 02:11:46', '2021-09-15 11:06:44'),
(408, 'facebook_client_secret', 'f94d6e9cea794417f50e953fb56c5035', '2021-08-01 02:11:46', '2021-09-15 11:06:44'),
(409, 'login_page_en_GB_title', 'Sign In Here', '2021-08-07 02:19:25', '2021-08-07 03:38:01'),
(410, 'register_page_en_GB_title', 'Create New Account', '2021-08-07 02:19:25', '2021-08-07 03:38:01'),
(411, 'login_page_ar_title', 'تسجيل الدخول هنا', '2021-08-07 02:19:25', '2021-08-07 03:38:01'),
(412, 'register_page_ar_title', 'انشاء حساب جديد', '2021-08-07 02:19:25', '2021-08-07 03:38:01'),
(413, 'login_page_es_ES_title', 'Firme aquí', '2021-08-07 02:19:25', '2021-08-07 03:38:01'),
(414, 'register_page_es_ES_title', 'Crear una nueva cuenta', '2021-08-07 02:19:26', '2021-08-07 03:38:01'),
(415, 'login_page_image', '57', '2021-08-07 02:19:26', '2021-08-07 03:38:01'),
(416, 'register_page_image', '59', '2021-08-07 02:19:26', '2021-08-07 03:38:01'),
(417, 'site_breadcrumb_image', '1', '2021-08-07 04:24:09', '2021-08-07 04:24:09'),
(418, 'home_page_header_en_GB_bg_image_02', '84', '2021-08-12 05:58:21', '2021-09-12 15:53:53'),
(419, 'home_page_header_ar_bg_image_02', '37', '2021-08-12 05:58:22', '2021-09-12 15:53:53'),
(420, 'home_page_header_es_ES_bg_image_02', '37', '2021-08-12 05:58:22', '2021-09-12 15:53:53'),
(421, 'support_ticket_form_fields', '{\"field_type\":[\"text\",\"textarea\",\"file\"],\"field_name\":[\"phone\",\"comment\",\"file\"],\"field_placeholder\":[\"Phone\",\"Comments\",\"Attachment\"],\"mimes_type\":{\"2\":\"mimes:doc,docx,jpg,jpeg,png,txt,pdf\"}}', '2021-08-14 03:36:57', '2021-10-06 18:43:58'),
(422, 'home_page_highlight_bg_image', 'a:3:{i:0;s:2:\"61\";i:1;s:2:\"60\";i:2;s:2:\"62\";}', '2021-08-16 01:40:46', '2021-08-16 01:41:11'),
(423, 'envato_api_token', NULL, '2021-08-27 06:37:05', '2021-09-15 11:06:44'),
(424, 'site_third_party_tracking_code_body_start', NULL, '2021-08-27 06:37:05', '2021-09-15 11:06:44'),
(425, 'enable_envato_login', 'on', '2021-08-28 13:10:39', '2021-09-15 11:06:44'),
(426, 'envato_client_id', 'pexdoc-dj31ul8z', '2021-08-28 13:10:39', '2021-09-15 11:06:44'),
(427, 'envato_client_secret', 'CvU8WCxBoUBfLOb90qPD5GxKjOe6zv3X', '2021-08-28 13:10:39', '2021-09-15 11:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `via` text COLLATE utf8mb4_unicode_ci,
  `operating_system` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_automations`
--

CREATE TABLE `support_ticket_automations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_if` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_operator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_match` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_ticket_automations`
--

INSERT INTO `support_ticket_automations` (`id`, `title`, `condition_in`, `condition_if`, `condition_operator`, `condition_match`, `action_type`, `action_body`, `status`, `created_at`, `updated_at`) VALUES
(3, 'requester mail', 'ticket', 'requester_email', 'is', '{\"email\":\"dvrobin4@gmail.com\"}', 'set_priority_as', '{\"priority\":\"urgent\"}', 'active', '2021-09-03 03:32:46', '2021-09-03 09:03:30'),
(4, 'requester mail contain', 'ticket', 'requester_subject', 'contain', '{\"subject\":\"test\"}', 'send_mail_to_requester', '{\"subject\":\"Your ticket has been received # [[ticket_id]] at [[site_title]] - [[site_tagline]]\",\"message\":\"Hello,\\r\\nwe have got your ticket #[[ticket_id]],\\r\\n\\r\\nUsually we reply within 24hr, but sometimes it can take 2\\/3days.\\r\\n\\r\\nRegards\\r\\nTeam [[site_title]]\"}', 'active', '2021-09-03 10:35:42', '2021-09-03 12:56:00'),
(6, 'agent assign', 'ticket', 'requester_subject', 'contain', '{\"subject\":\"sohan\"}', 'assign_to_agent', '{\"agent\":\"12\"}', 'active', '2021-09-09 01:45:41', '2021-09-09 01:45:41'),
(7, 'user test mail', 'ticket', 'requester_priority', 'is', '{\"priority\":\"urgent\"}', 'send_mail_to_agent', '{\"agent\":\"10\",\"subject\":\"we have received your ticket  # [[ticket_id]]\",\"message\":\"sdfasdfasdfsdf\"}', 'active', '2021-09-09 01:49:56', '2021-09-09 01:54:11'),
(8, 'todo automation', 'ticket', 'requester_priority', 'is', '{\"priority\":\"urgent\"}', 'add_todo', '{\"todo\":\"please reply this ticket asap\\r\\nticket url : [[ticket_url]]\"}', 'active', '2021-09-09 01:56:56', '2021-09-09 01:56:56'),
(9, 'Department Automation Test', 'ticket', 'requester_subject', 'contain', '{\"subject\":\"doc\"}', 'set_department_as', '{\"department\":\"4\"}', 'active', '2021-09-09 04:20:53', '2021-09-09 04:20:53'),
(10, 'Department (condition) Automation Test', 'ticket', 'ticket_department', 'is', '{\"ticket_department\":\"4\"}', 'add_todo', '{\"todo\":\"please ask for ftp details from [[ticket_creator_name]]\"}', 'active', '2021-09-09 04:49:08', '2021-09-09 05:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_messages`
--

CREATE TABLE `support_ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `notify` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_ticket_messages`
--

INSERT INTO `support_ticket_messages` (`id`, `support_ticket_id`, `message`, `notify`, `attachment`, `type`, `created_at`, `updated_at`) VALUES
(41, 65, '<p>hi</p>', 'off', NULL, 'admin', '2021-07-28 08:54:38', '2021-07-28 08:54:38'),
(42, 65, '<p>hlw<br></p>', 'off', NULL, 'customer', '2021-07-28 08:55:55', '2021-07-28 08:55:55'),
(53, 65, '<p>Hey,</p><p>How are you doing ?</p><br><br><br><br>Thanks for contact support. <br><br>\r\nYour Support Ticket ID: <br>\r\n\r\nwe will contact you soon <br>\r\n <br>\r\nNT: This is an automated message', 'off', NULL, 'admin', '2021-07-29 23:58:05', '2021-07-29 23:58:05'),
(54, 65, '<p>Heyy ,</p><p></p><p>This is testing both of the features.</p><p></p><br><br><br><p class=\"info\" style=\"outline: none; -webkit-font-smoothing: antialiased; margin-bottom: 24px; color: rgb(102, 102, 102); hyphens: auto; line-height: 24px; font-size: 16px; font-family: &quot;Open Sans&quot;, sans-serif;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p><br><br><br>Thanks for contact support. <br><br>\r\nYour Support Ticket ID: <br>\r\n\r\nwe will contact you soon <br>\r\n <br>\r\nNT: This is an automated message', 'off', NULL, 'admin', '2021-07-30 01:08:11', '2021-07-30 01:08:11'),
(57, 73, '<p>hi</p>', 'off', NULL, 'admin', '2021-08-10 23:34:22', '2021-08-10 23:34:22'),
(58, 73, '<p><br></p><br><br><br><p class=\"info\" style=\"outline: none; -webkit-font-smoothing: antialiased; margin-bottom: 24px; color: rgb(102, 102, 102); hyphens: auto; line-height: 24px; font-size: 16px; font-family: &quot;Open Sans&quot;, sans-serif;\">Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard.</p>', 'off', NULL, 'admin', '2021-08-12 03:12:11', '2021-08-12 03:12:11'),
(60, 104, '<p>hi</p>', 'off', NULL, 'admin', '2021-09-07 02:55:17', '2021-09-07 02:55:17'),
(61, 73, '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(231, 235, 236);\">vered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get</span><span style=\"background-color: rgb(231, 235, 236); color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">vered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.Another journey chamber way yet females man. Way extensive and dejection get</span><br></p>', 'off', NULL, 'admin', '2021-09-08 01:39:13', '2021-09-08 01:39:13'),
(62, 67, '<p>fchfhfhf</p>', 'off', NULL, 'admin', '2021-09-08 04:48:42', '2021-09-08 04:48:42'),
(63, 67, '<p>ffhh</p>', 'off', NULL, 'admin', '2021-09-08 04:48:47', '2021-09-08 04:48:47'),
(64, 67, '<p>fgjfgjgfjgj</p>', 'off', NULL, 'admin', '2021-09-08 04:48:51', '2021-09-08 04:48:51'),
(65, 105, '<p>This is for tesitng</p>', 'off', NULL, 'admin', '2021-09-08 04:51:43', '2021-09-08 04:51:43'),
(66, 105, '<p>Another test</p>', 'off', NULL, 'admin', '2021-09-08 04:51:54', '2021-09-08 04:51:54'),
(67, 105, '<p>ok</p>', 'off', NULL, 'admin', '2021-09-08 04:52:00', '2021-09-08 04:52:00'),
(68, 105, '<p>dsfdfsdfsfd</p><br><br>http://localhost/pexdoc-update/knowledgebase/how-to-use-this-documentation', 'off', NULL, 'admin', '2021-09-08 06:27:01', '2021-09-08 06:27:01'),
(69, 104, '<p><br></p><br><br><a href=\"http://localhost/pexdoc-update/knowledgebase/how-to-use-this-documentation\"> http://localhost/pexdoc-update/knowledgebase/how-to-use-this-documentation</a>', 'off', NULL, 'admin', '2021-09-08 07:02:25', '2021-09-08 07:02:25'),
(70, 104, '<p><br></p><br><br><a href=\"http://localhost/pexdoc-update/knowledgebase/how-to-use-this-documentation\"> How to use this documentation?</a>', 'off', NULL, 'admin', '2021-09-08 07:04:21', '2021-09-08 07:04:21'),
(71, 104, '<p><br></p><br><br><a href=\"http://localhost/pexdoc-update/knowledgebase/what-is-included-and-why\" target=\"_blank\"> What is included and why?</a>', 'off', NULL, 'admin', '2021-09-08 07:05:12', '2021-09-08 07:05:12'),
(72, 104, '<p><br></p><a href=\"http://localhost/pexdoc-update/knowledgebase/how-to-find-topics\" target=\"_blank\"> How to find topics?</a>', 'off', NULL, 'admin', '2021-09-08 07:06:18', '2021-09-08 07:06:18'),
(73, 108, '<p>ok i have&nbsp; got ur issue</p><p><br></p><p>you can check this link</p><p><br></p><a href=\"http://localhost/pexdoc-update/knowledgebase/best-way-to-publish-news\" target=\"_blank\"> Best way to publish news</a>', 'off', NULL, 'admin', '2021-09-09 01:31:21', '2021-09-09 01:31:21'),
(74, 108, '<p>ok thank you, but here i am not able to understand where i should click...???<br></p>', 'off', NULL, 'customer', '2021-09-09 01:35:32', '2021-09-09 01:35:32'),
(75, 108, '<p>Ok click here, i am sending you another link bellow:</p><p><br></p><a class=\"text-primary\" href=\"http://localhost/pexdoc-update/knowledgebase/cleaver-way-to-submit-the-product\" target=\"_blank\"> Cleaver way to submit</a>', 'off', NULL, 'admin', '2021-09-09 01:36:29', '2021-09-09 01:36:29'),
(76, 113, '<p>Hello</p>', 'off', NULL, 'customer', '2021-09-15 21:39:28', '2021-09-15 21:39:28'),
(77, 113, '<p>Hhelp</p>', 'off', NULL, 'customer', '2021-09-15 21:39:40', '2021-09-15 21:39:40'),
(78, 118, '<p>kjkj</p>', 'off', NULL, 'customer', '2021-09-24 14:34:03', '2021-09-24 14:34:03'),
(79, 113, '<p><span style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">12345678</span><span style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">12345678</span><span style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">12345678</span><span style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">12345678</span><span style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">12345678</span><br></p>', 'off', NULL, 'customer', '2021-09-24 23:40:13', '2021-09-24 23:40:13'),
(80, 121, '<p>δοκιμήδοκιμήδοκιμήδοκιμήδοκιμήδοκιμήδοκιμή<br></p>', 'off', NULL, 'customer', '2021-09-28 00:02:23', '2021-09-28 00:02:23'),
(81, 124, '<p>test</p>', 'off', NULL, 'customer', '2021-10-01 11:39:56', '2021-10-01 11:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `topbar_infos`
--

CREATE TABLE `topbar_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topbar_infos`
--

INSERT INTO `topbar_infos` (`id`, `title`, `icon`, `details`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Phone number', 'fas fa-phone', '+1 (327) 66676 122', 'en_GB', '2021-07-17 22:45:50', '2021-08-03 04:21:35'),
(2, 'Email Address', 'fas fa-envelope', 'sohan@xgenious.com', 'en_GB', '2021-07-17 22:47:53', '2021-07-17 22:53:42'),
(5, 'عنوان البريد الإلكتروني', 'fas fa-envelope', 'sohan@xgenious.com', 'ar', '2021-07-17 22:57:01', '2021-07-17 22:57:01'),
(6, 'رقم الهاتف', 'fas fa-phone', '+80 51511 5111', 'ar', '2021-07-17 22:58:10', '2021-07-17 22:58:10'),
(7, 'Correo electrónico', 'fas fa-envelope', 'sohan@xgenious.com', 'es_ES', '2021-07-17 22:59:25', '2021-07-17 22:59:25'),
(8, 'Número de teléfono', 'fas fa-phone', '+88 0184515114', 'es_ES', '2021-07-17 23:00:03', '2021-07-17 23:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `to_do_lists`
--

CREATE TABLE `to_do_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `to_do_lists`
--

INSERT INTO `to_do_lists` (`id`, `support_ticket_id`, `description`, `created_at`, `updated_at`) VALUES
(48, 104, 'Working with login', '2021-09-08 00:29:52', '2021-09-08 01:15:23'),
(49, 104, 'Another language issue', '2021-09-08 01:15:33', '2021-09-08 01:15:33'),
(51, 73, 'Issue ticket job', '2021-09-08 04:39:43', '2021-09-08 04:41:33'),
(52, 73, 'Another issue', '2021-09-08 04:41:46', '2021-09-08 04:41:46'),
(53, 108, 'taken', '2021-09-09 01:30:45', '2021-09-09 01:30:45'),
(55, 114, 'please reply this ticket asap\r\nticket url : http://localhost/pexdoc-update/admin-home/support-tickets/view/114', '2021-09-09 02:03:32', '2021-09-09 02:04:02'),
(56, 115, 'please reply this ticket asap\r\nticket url : http://localhost/pexdoc-update/admin-home/support-tickets/view/115', '2021-09-09 04:24:12', '2021-09-09 04:24:12'),
(57, 116, 'please ask for ftp details from User 2', '2021-09-09 05:02:16', '2021-09-09 05:02:16'),
(58, 117, 'please reply this ticket asap\r\nticket url : https://xgenious.com/laravel/pexdoc/admin-home/support-tickets/view/117', '2021-09-15 14:07:27', '2021-09-15 14:07:27'),
(59, 119, 'please reply this ticket asap\r\nticket url : https://xgenious.com/laravel/pexdoc/admin-home/support-tickets/view/119', '2021-09-17 18:30:57', '2021-09-17 18:30:57'),
(60, 119, 'please ask for ftp details from okechukwu eze', '2021-09-17 18:30:57', '2021-09-17 18:30:57'),
(61, 120, 'please ask for ftp details from User 2', '2021-09-20 10:09:41', '2021-09-20 10:09:41'),
(62, 125, 'please ask for ftp details from User 2', '2021-10-04 01:26:01', '2021-10-04 01:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verify_token` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_order` int(11) DEFAULT NULL,
  `widget_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_area`, `widget_order`, `widget_location`, `widget_name`, `widget_content`, `created_at`, `updated_at`) VALUES
(10, NULL, 1, 'footer', 'AboutUsWidget', 'a:9:{s:2:\"id\";s:2:\"10\";s:11:\"widget_name\";s:13:\"AboutUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"1\";s:9:\"site_logo\";s:1:\"4\";s:17:\"description_en_GB\";s:95:\"We provides universal access to the world’s best education, partnering with top universities.\";s:14:\"description_ar\";s:138:\"نحن نوفر وصولاً شاملاً إلى أفضل تعليم في العالم ، بالشراكة مع أفضل الجامعات.\";s:17:\"description_es_ES\";s:105:\"Brindamos acceso universal a la mejor educación del mundo, en asociación con las mejores universidades.\";}', '2021-03-29 03:25:11', '2021-09-11 03:09:18'),
(16, NULL, 3, 'footer', 'NavigationMenuWidget', 'a:9:{s:2:\"id\";s:2:\"16\";s:11:\"widget_name\";s:20:\"NavigationMenuWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"3\";s:18:\"widget_title_en_GB\";s:12:\"Useful Links\";s:15:\"widget_title_ar\";s:21:\"روابط مفيدة\";s:18:\"widget_title_es_ES\";s:15:\"Enlaces útiles\";s:7:\"menu_id\";s:1:\"6\";}', '2021-03-30 04:43:05', '2021-09-12 15:52:16'),
(17, NULL, 4, 'footer', 'ContactInfoWidget', 'a:17:{s:2:\"id\";s:2:\"17\";s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"4\";s:18:\"widget_title_en_GB\";s:10:\"Contact us\";s:14:\"location_en_GB\";s:28:\"66 Brooklyn street, New York\";s:11:\"phone_en_GB\";s:12:\"+458 123 657\";s:11:\"email_en_GB\";s:18:\"sohan@xgenious.com\";s:15:\"widget_title_ar\";s:15:\"اتصل بنا\";s:11:\"location_ar\";s:44:\"66 شارع بروكلين ، نيويورك\";s:8:\"phone_ar\";s:12:\"+458 123 657\";s:8:\"email_ar\";s:18:\"sohan@xgenious.com\";s:18:\"widget_title_es_ES\";s:21:\"Contacta con nosotras\";s:14:\"location_es_ES\";s:28:\"66 Brooklyn street, New York\";s:11:\"phone_es_ES\";s:12:\"+458 123 657\";s:11:\"email_es_ES\";s:18:\"sohan@xgenious.com\";}', '2021-03-30 04:43:40', '2021-09-11 03:10:37'),
(21, NULL, 3, 'blog', 'RecentBlogPostWidget', 'a:9:{s:2:\"id\";s:2:\"21\";s:11:\"widget_name\";s:20:\"RecentBlogPostWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"3\";s:18:\"widget_title_en_GB\";s:11:\"Recent Post\";s:15:\"widget_title_ar\";s:27:\"المنشور الاخير\";s:18:\"widget_title_es_ES\";s:21:\"Publicación reciente\";s:10:\"post_items\";s:1:\"3\";}', '2021-04-15 22:29:37', '2021-07-14 07:21:15'),
(22, NULL, 2, 'blog', 'BlogCategoryWidget', 'a:9:{s:2:\"id\";s:2:\"22\";s:11:\"widget_name\";s:18:\"BlogCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"2\";s:18:\"widget_title_en_GB\";s:10:\"Categories\";s:15:\"widget_title_ar\";s:8:\"فئات\";s:18:\"widget_title_es_ES\";s:11:\"Categorías\";s:10:\"post_items\";s:1:\"5\";}', '2021-04-15 22:31:58', '2021-07-14 07:20:48'),
(23, NULL, 1, 'blog', 'BlogSearchWidget', 'a:7:{s:2:\"id\";s:2:\"23\";s:11:\"widget_name\";s:16:\"BlogSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"1\";s:18:\"widget_title_en_GB\";N;s:15:\"widget_title_ar\";N;}', '2021-04-15 22:32:06', '2021-04-30 05:12:06'),
(28, NULL, 2, 'footer', 'RecentBlogPostWidget', 'a:9:{s:2:\"id\";s:2:\"28\";s:11:\"widget_name\";s:20:\"RecentBlogPostWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"2\";s:18:\"widget_title_en_GB\";s:11:\"Recent Post\";s:15:\"widget_title_ar\";s:27:\"المنشور الاخير\";s:18:\"widget_title_es_ES\";s:21:\"Publicación reciente\";s:10:\"post_items\";s:1:\"2\";}', '2021-05-30 01:35:39', '2021-09-11 03:09:34'),
(38, NULL, 1, 'practice_area', 'PracticeAreaCategoryWidget', 'a:8:{s:2:\"id\";s:2:\"38\";s:11:\"widget_name\";s:26:\"PracticeAreaCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:13:\"practice_area\";s:12:\"widget_order\";s:1:\"1\";s:18:\"widget_title_en_GB\";s:17:\"Practice Category\";s:15:\"widget_title_ar\";s:32:\"فئة مجال الممارسة\";s:10:\"post_items\";s:1:\"5\";}', '2021-05-31 01:03:01', '2021-06-01 23:37:46'),
(39, NULL, 2, 'practice_area', 'RecentPracticeAreaWidget', 'a:7:{s:11:\"widget_name\";s:24:\"RecentPracticeAreaWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:13:\"practice_area\";s:12:\"widget_order\";s:1:\"2\";s:18:\"widget_title_en_GB\";s:20:\"Recent Practice Area\";s:15:\"widget_title_ar\";s:40:\"مجال الممارسة الحديثة\";s:10:\"post_items\";s:1:\"3\";}', '2021-05-31 01:03:31', '2021-05-31 01:03:31'),
(40, NULL, 3, 'practice_area', 'ContactInfoWidget', 'a:12:{s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:13:\"practice_area\";s:12:\"widget_order\";s:1:\"3\";s:18:\"widget_title_en_GB\";s:10:\"Contact us\";s:14:\"location_en_GB\";s:28:\"66 Brooklyn street, New York\";s:11:\"phone_en_GB\";s:12:\"+458 123 657\";s:11:\"email_en_GB\";s:20:\"contact@xgenious.com\";s:15:\"widget_title_ar\";s:15:\"اتصل بنا\";s:11:\"location_ar\";s:44:\"66 شارع بروكلين ، نيويورك\";s:8:\"phone_ar\";s:12:\"+458 123 657\";s:8:\"email_ar\";s:20:\"contact@xgenious.com\";}', '2021-05-31 01:04:17', '2021-05-31 01:04:17'),
(41, NULL, 1, 'case', 'CaseCategoryWidget', 'a:7:{s:11:\"widget_name\";s:18:\"CaseCategoryWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:4:\"case\";s:12:\"widget_order\";s:1:\"1\";s:18:\"widget_title_en_GB\";s:13:\"Case Category\";s:15:\"widget_title_ar\";s:19:\"فئة الحالة\";s:10:\"post_items\";s:1:\"5\";}', '2021-05-31 01:05:21', '2021-05-31 01:05:21'),
(42, NULL, 2, 'case', 'RecentCaseWidget', 'a:7:{s:11:\"widget_name\";s:16:\"RecentCaseWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:4:\"case\";s:12:\"widget_order\";s:1:\"2\";s:18:\"widget_title_en_GB\";s:16:\"Our Recent Cases\";s:15:\"widget_title_ar\";s:29:\"حالاتنا الأخيرة\";s:10:\"post_items\";s:1:\"3\";}', '2021-05-31 01:05:43', '2021-05-31 01:05:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_feedback`
--
ALTER TABLE `article_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canned_responses`
--
ALTER TABLE `canned_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consulations`
--
ALTER TABLE `consulations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counterups`
--
ALTER TABLE `counterups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledgebases`
--
ALTER TABLE `knowledgebases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledgebase_topics`
--
ALTER TABLE `knowledgebase_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_uploads`
--
ALTER TABLE `media_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `purchase_codes`
--
ALTER TABLE `purchase_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_automations`
--
ALTER TABLE `support_ticket_automations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbar_infos`
--
ALTER TABLE `topbar_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to_do_lists`
--
ALTER TABLE `to_do_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `article_feedback`
--
ALTER TABLE `article_feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `canned_responses`
--
ALTER TABLE `canned_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `consulations`
--
ALTER TABLE `consulations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `counterups`
--
ALTER TABLE `counterups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `knowledgebases`
--
ALTER TABLE `knowledgebases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `knowledgebase_topics`
--
ALTER TABLE `knowledgebase_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `purchase_codes`
--
ALTER TABLE `purchase_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `support_ticket_automations`
--
ALTER TABLE `support_ticket_automations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `topbar_infos`
--
ALTER TABLE `topbar_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `to_do_lists`
--
ALTER TABLE `to_do_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
