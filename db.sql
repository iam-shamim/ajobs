-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2016 at 11:44 AM
-- Server version: 5.7.13
-- PHP Version: 5.4.42

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `amar_jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `aboutTitle` varchar(45) DEFAULT NULL,
  `actualText` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `profileID`, `aboutTitle`, `actualText`, `created_at`, `updated_at`) VALUES
(5, 25, 'I am php expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(6, 22, 'I am Laravel expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(7, 23, 'I am PHP expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(9, 26, 'I am JAVA expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(10, 27, 'I am iOS expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(11, 28, 'I am C# expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(13, 29, 'I am JS expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(15, 30, 'I am php expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(17, 31, 'I am php expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(18, 32, 'I am php expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 06:30:51', '2016-07-22 06:31:01'),
(19, 34, 'I am php developer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-25 00:57:44', '2016-07-25 00:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(100) DEFAULT NULL,
  `sortInd` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `sortInd`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineering', 1, NULL, '2016-05-15 12:09:01'),
(2, 'Accounting', 2, NULL, '2016-03-21 14:05:19'),
(6, 'Accounting/Finance', 4, '2016-07-23 22:55:17', '2016-07-23 22:55:17'),
(7, 'Bank/Non-Bank Fin. Institution', 5, '2016-07-23 22:55:49', '2016-07-23 22:55:49'),
(8, 'Marketing/Sales', 6, '2016-07-23 22:56:15', '2016-07-23 22:56:15'),
(9, 'Law/Legal', 7, '2016-07-23 22:56:25', '2016-07-23 22:56:25'),
(10, 'Medical/Pharma', 8, '2016-07-23 22:56:45', '2016-07-23 22:56:45'),
(11, 'Education/Training', 9, '2016-07-23 22:57:11', '2016-07-23 22:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT 'company-icon.png',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `companyName`, `city`, `district`, `postcode`, `address`, `phone`, `email`, `website`, `logo`, `created_at`, `updated_at`) VALUES
(2, 'Twoinsoft Technology', 'Feni', 'Feni', '3942', ' 322,Sah alam Tower,5th floor,Block #c,(Opposite by islampur road)SSk Road Feni ', '+88 01817711619', 'twoinsoft@gmail.com', 'http://www.twoinsoftbd.com', '64f646b0e490c06df36e948d3e810cc7.jpg', '2016-07-22 18:57:24', '2016-07-22 18:57:24'),
(5, 'Tech Masters', 'Dhaka', 'Dhaka', '12073', '    TechMasters\r\n    Ground Floor, House#406, Road#29\r\n    New D.O.H.S\r\n    Mohakhali\r\n    Dhaka', '01714-075160', 'info@techmasters.co', 'http://techmasters.co', '9ccf8ae8458da58bba7cc5cbc27c2ac9.png', '2016-07-22 21:11:38', '2016-07-22 21:11:38'),
(6, 'IBCS PRIMAX', 'Dhaka', 'Dhaka', '6534', 'House # 51, Road # 10A, Dhanmondi R/A,\r\nDhaka-1209, Bangladesh', '', 'info@ibcs-primax.com', 'http://www.ibcs-primax.com/', '3a1445faf25e17aa60156d48e21e7425.png', '2016-07-23 19:55:22', '2016-07-23 19:55:22'),
(7, 'Web Institute', 'Dhaka', 'Dhaka', '3942', ' House No- 13, 1st Floor, Road No- 10, Nikunja - 2 Khilkhet, Dhaka-1229', '+88 01756699099 ', ' info@webinstitute.com.bd,', 'http://www.webinstitute.com.bd/', '81067120bbdf67100e48ae3a20f796e7.png', '2016-07-23 19:59:21', '2016-07-23 19:59:21'),
(8, 'Digital Equality Network', 'Dhaka', 'Dhaka', '3942', 'Digital Equality Network Ltd (DEN)\r\nHouse- 79(South Block, 3rd floor, left), Road- 12/A\r\nDhanmondi, ', '01717498633', 'info@denbd.com', 'http://www.denbd.com/', '566f664b2b6fa99af163fb01070429d0.png', '2016-07-23 20:23:18', '2016-07-23 20:23:18'),
(9, 'Talha Training', 'Dhaka', 'Dhaka', '3942', 'Talha Training\r\n1st Floor, 161/B,\r\nLake Circus, Kalabagan,\r\nDhaka-1205, Bangladesh', '+88 01712 742217 ', 'info@talhatraining.com', 'https://talhatraining.com/', '8f040e8ee49f49ee6755434315567fe9.png', '2016-07-23 20:28:44', '2016-07-23 20:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `coverletters`
--

CREATE TABLE `coverletters` (
  `id` int(11) NOT NULL,
  `coverLetter` mediumtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coverletters`
--

INSERT INTO `coverletters` (`id`, `coverLetter`, `created_at`, `updated_at`) VALUES
(1, 'PHP Developer role then you will usually have experience in this area and be familiar with HTML, CSS, PHP5, and other web development languages and programs. You may come from a web development background and wanting to progress to something more specific such as PHP.\n\nYou will have a proven track record of working in IT with web development programs, you may help to develop websites and write in code.', '2016-07-25 01:01:46', '2016-07-25 01:01:46'),
(2, 'looking for a PHP Developer role then you will usually have experience in this area and be familiar with HTML, CSS, PHP5, and other web development languages and programs. You may come from a web development background and wanting to progress to something more specific such as PHP.\n\nYou will have a proven track record of working in IT with web development programs, you may help to develop websites and write in code.', '2016-07-25 01:02:25', '2016-07-25 01:02:25'),
(3, 'If you are looking for a PHP Developer role then you will usually have experience in this area and be familiar with HTML, CSS, PHP5, and other web development languages and programs. You may come from a web development background and wanting to progress to something more specific such as PHP.\r\n\r\nYou will have a proven track record of working in IT with web development programs, you may help to develop websites and write in code.', '2016-07-25 01:02:42', '2016-07-25 01:02:42'),
(4, 'If you are looking for a PHP Developer role then you will usually have experience in this area and be familiar with HTML, CSS, PHP5, and other web development languages and programs. You may come from a web development background and wanting to progress to something more specific such as PHP.\n', '2016-07-25 01:02:59', '2016-07-25 01:02:59'),
(5, ' PHP (Personal Home Page) developer essentially develops web-based applications using PHP language. PHP is a scripting language. A PHP developer should be able to develop good programming logic to ensure the developed software functions properly. Once the code is developed, he is also supposed to test to track bugs within it. The bugs tracked should be fixed and the code should be checked once again with various sample data. A PHP developer should pass a graduates or postgraduates degree in software engineering. Knowledge of other programming languages like Java, .Net, C, C++, etc would be an added advantage for these people. They should also have knowledge of other scripting languages like JavaScript, Perl, Jumla, etc. ', '2016-07-25 01:35:38', '2016-07-25 01:35:38'),
(6, ' PHP (Personal Home Page) developer essentially develops web-based applications using PHP language. PHP is a scripting language. A PHP developer should be able to develop good programming logic to ensure the developed software functions properly. Once the code is developed, he is also supposed to test to track bugs within it. The bugs tracked should be fixed and the code should be checked once again with various sample data. A PHP developer should pass a graduates or postgraduates degree in software engineering. Knowledge of other programming languages like Java, .Net, C, C++, etc would be an added advantage for these people. They should also have knowledge of other scripting languages like JavaScript, Perl, Jumla, etc. ', '2016-07-25 01:36:24', '2016-07-25 01:36:24'),
(7, 'As a highly skilled PHP Web Developer, I read your posting for a new PHP Web Developer with interest. My experience aligns well with the qualifications you are seeking at Collaborative Systems, in particular my role as a PHP Web Developer at Elite Systems, and I am certain I would make a valuable addition to your organization.', '2016-07-25 01:42:15', '2016-07-25 01:42:15'),
(8, 'I have been working in web development and web design since I began my career in IT following an IT degree and specialising in the web side. I enjoy working on websites and pages and the interaction with the clients to ensure that the website is as they specifically want it.\n\n I enjoy working on websites and pages and the interaction with the clients to ensure that the website is as they specifically want it.', '2016-07-25 01:47:55', '2016-07-25 01:47:55'),
(9, ' I have the experience needed to create and design PHP programs, applications and websites. I am familiar with modular and object oriented programming and designing applications. I have experience working with Oracle, MSSQL and MySQL. I also have extensive knowledge of CSS, HTML, XHTML and SQL.', '2016-07-25 01:51:59', '2016-07-25 01:51:59'),
(10, 'I have worked the last seven years as a PHP Developer for Cyber Tec, Inc. I have proficiency in all computer systems, software, and applications to include: JavaScript, LUCENE SOLR, SOAP, WAMP, CSS, HTML, jquery, and more. My main responsibilities over the past few years have been to design databases, maintain the web server, update system requirements, and optimize web applications developments projects. I work well as a part of a team, am focused, and conscientious. ', '2016-07-25 01:52:41', '2016-07-25 01:52:41'),
(11, 'I have a B.S. in Computer Science, and have worked the last seven years as a PHP Developer for Cyber Tec, Inc. I have proficiency in all computer systems, software, and applications to include: JavaScript, LUCENE SOLR, SOAP, WAMP, CSS, HTML, jquery, and more. My main responsibilities over the past few years have been to design databases, maintain the web server, update system requirements, and optimize web applications developments projects. I work well as a part of a team, am focused, and conscientious.  maintain the web server, update system requirements, and optimize web applications developments projects. I work well as a part of a team, am focused, and conscientious. ', '2016-07-25 01:59:22', '2016-07-25 01:59:22'),
(12, 'I have a B.S. in Computer Science, and have worked the last seven years as a PHP Developer for Cyber Tec, Inc. I have proficiency in all computer systems, software, and applications to include: JavaScript, LUCENE SOLR, SOAP, WAMP, CSS, HTML, jquery, and more. My main responsibilities over the past few years have been to design databases, maintain the web server, update system requirements, and optimize web applications developments projects. I work well as a part of a team, am focused, and conscientious. ', '2016-07-25 01:59:39', '2016-07-25 01:59:39'),
(13, ' I am proficient using HTML, CSS, PHP, Flash, ActionScript, Java and C/C++. My last project at Resin8 IT Designers involved designing an SQL database, which I was able to complete well before deadline and for which the company has had very positive feedback. The project before that involved building custom interfaces and the client was impressed with my diplomacy skills and the way I was able to communicate to find out exactly what he wanted, and then bring the planned vision to life, working under pressure. - See more at: http://www.careerfaqs.com.au/careers/sample-resumes-and-cover-letters/web-developer-cover-letter', '2016-07-25 02:11:32', '2016-07-25 02:11:32'),
(14, 'I am proficient using HTML, CSS, PHP, Flash, ActionScript, Java and C/C++. My last project at Resin8 IT Designers involved designing an SQL database, which I was able to complete well before deadline and for which the company has had very positive feedback. The project before that involved building custom interfaces and the client was impressed with my diplomacy skills and the way I was able to communicate to find out exactly what he wanted, and then bring the planned vision to life, working under pressure. - See more at: http://www.careerfaqs.com.au/careers/sample-resumes-and-cover-letters/web-developer-cover-letter', '2016-07-25 02:11:51', '2016-07-25 02:11:51'),
(15, 'I am proficient using HTML, CSS, PHP, Flash, ActionScript, Java and C/C++. My last project at Resin8 IT Designers involved designing an SQL database, which I was able to complete well before deadline and for which the company has had very positive feedback. The project before that involved building custom interfaces and the client was impressed with my diplomacy skills and the way I was able to communicate to find out exactly what he wanted, and then bring the planned vision to life, working under pressure. - See more at: http://www.careerfaqs.com.au/careers/sample-resumes-and-cover-letters/web-developer-cover-letter', '2016-07-25 02:12:02', '2016-07-25 02:12:02'),
(16, 'I am proficient using HTML, CSS, PHP, Flash, ActionScript, Java and C/C++. My last project at Resin8 IT Designers involved designing an SQL database, which I was able to complete well before deadline and for which the company has had very positive feedback. The project before that involved building custom interfaces and the client was impressed with my diplomacy skills and the way I was able to communicate to find out exactly what he wanted, and then bring the planned vision to life, working under pressure. - See more at: http://www.careerfaqs.com.au/careers/sample-resumes-and-cover-letters/web-developer-cover-letter', '2016-07-25 02:12:21', '2016-07-25 02:12:21'),
(17, 'I am proficient using HTML, CSS, PHP, Flash, ActionScript, Java and C/C++. My last project at Resin8 IT Designers involved designing an SQL database, which I was able to complete well before deadline and for which the company has had very positive feedback. The project before that involved building custom interfaces and the client was impressed with my diplomacy skills and the way I was able to communicate to find out exactly what he wanted, and then bring the planned vision to life, working under pressure. - See more at: http://www.careerfaqs.com.au/careers/sample-resumes-and-cover-letters/web-developer-cover-letter', '2016-07-25 02:13:23', '2016-07-25 02:13:23'),
(18, 'I am proficient using HTML, CSS, PHP, Flash, ActionScript, Java and C/C++. My last project at Resin8 IT Designers involved designing an SQL database, which I was able to complete well before deadline and for which the company has had very positive feedback. The project before that involved building custom interfaces and the client was impressed with my diplomacy skills and the way I was able to communicate to find out exactly what he wanted, and then bring the planned vision to life, working under pressure. - See more at: http://www.careerfaqs.com.au/careers/sample-resumes-and-cover-letters/web-developer-cover-letter', '2016-07-25 02:13:30', '2016-07-25 02:13:30'),
(19, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:30:30', '2016-07-25 02:30:30'),
(20, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:30:48', '2016-07-25 02:30:48'),
(21, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:30:52', '2016-07-25 02:30:52'),
(22, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:30:56', '2016-07-25 02:30:56'),
(23, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:31:01', '2016-07-25 02:31:01'),
(24, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:31:36', '2016-07-25 02:31:36'),
(25, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:31:40', '2016-07-25 02:31:40'),
(26, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:31:51', '2016-07-25 02:31:51'),
(27, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:31:58', '2016-07-25 02:31:58'),
(28, 'You job post caught my attention where you required the skills of PHP programming to develop websites and web applications. Let me tell you that I have created few websites in the past and I have satisfied the clients, with my skills. I have good experience in PHP website and online applications development.', '2016-07-25 02:32:11', '2016-07-25 02:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int(11) NOT NULL,
  `degreeName` varchar(45) DEFAULT NULL,
  `sortInd` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `degreeName`, `sortInd`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor''s Degrees', 1, NULL, NULL),
(2, 'Undergraduate Degrees', 2, NULL, NULL),
(3, 'Graduate Degrees', 3, NULL, NULL),
(4, 'Associate''s Degrees', 4, NULL, NULL),
(5, 'Master''s Degrees', 5, NULL, NULL),
(6, 'Doctoral Degrees', 6, NULL, NULL),
(7, 'Diploma Engineering', 7, '2016-07-22 17:26:04', '2016-07-22 17:26:04'),
(8, 'SSC', 8, '2016-07-22 17:36:21', '2016-07-22 17:36:21'),
(9, 'HSC', 9, '2016-07-22 17:36:27', '2016-07-22 17:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `companySummary` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `userID`, `companyID`, `companySummary`, `created_at`, `updated_at`) VALUES
(1, 29, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:28:08', '2016-07-22 19:28:08'),
(2, 28, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 22:36:29', '2016-07-22 22:36:29'),
(3, 30, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde.', '2016-07-23 19:55:22', '2016-07-23 19:55:22'),
(4, 32, 7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde.', '2016-07-23 19:59:21', '2016-07-23 19:59:21'),
(5, 33, 8, '\\adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde.', '2016-07-23 20:23:18', '2016-07-23 20:23:18'),
(6, 34, 9, 'consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat', '2016-07-23 20:28:44', '2016-07-23 20:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `featured_apply`
--

CREATE TABLE `featured_apply` (
  `id` int(11) NOT NULL,
  `jobsID` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `featured_apply`
--

INSERT INTO `featured_apply` (`id`, `jobsID`, `created_at`, `updated_at`) VALUES
(10, 5, '2016-07-25 00:29:28', '2016-07-25 00:29:28'),
(11, 6, '2016-07-25 00:29:56', '2016-07-25 00:29:56'),
(12, 4, '2016-07-25 00:30:17', '2016-07-25 00:30:17'),
(13, 3, '2016-07-25 00:32:47', '2016-07-25 00:32:47'),
(14, 6, '2016-07-25 00:32:52', '2016-07-25 00:32:52'),
(15, 1, '2016-07-25 00:32:59', '2016-07-25 00:32:59'),
(16, 9, '2016-07-25 00:33:44', '2016-07-25 00:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` int(11) NOT NULL,
  `instituteName` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT 'institute_icon.PNG',
  `instituteCode` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `instituteName`, `city`, `district`, `postcode`, `address`, `phone`, `email`, `website`, `logo`, `instituteCode`, `created_at`, `updated_at`) VALUES
(1, 'Feni Computer Institute', 'Feni', 'Feni', '3942', 'Ranir Hat, Feni', '0331-61888', 'atiq_duet@yahoo.com', 'http://www.fcibd.net/', 'ceaa6e6e6df235bab259dc1ba33e1a.jpg', '5784', '2016-07-22 17:27:18', '2016-07-22 17:27:18'),
(2, 'RAJUK Uttara Model College', 'Dhaka', 'Uttara', '3497', 'Sector: 6, Uttara Model Town', '', 'rumc1994@yahoo.com', 'http://www.rajukcollege.edu.bd/', 'ceaa6edf235bab259dc1ba33e1a9d.png.jpg', '5893', '2016-07-22 17:36:58', '2016-07-22 17:36:58'),
(5, 'Bangladesh University of Engineering and Technology (BUAT)', 'Dhaka', 'Dhaka', '75289', 'Dhaka-1000, Bangladesh. ', '(880 2) 8613046', 'nameid@off.buet.ac.bd', 'http://www.buet.ac.bd/', 'ceaa6e6e6df235bab259dc1ba33e1a9d.png', '63364', '2016-07-22 20:50:29', '2016-07-22 20:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `id` int(11) NOT NULL,
  `jobID` int(11) DEFAULT NULL,
  `applicantID` int(11) DEFAULT NULL,
  `interviewDate` date DEFAULT NULL,
  `interviewTime` varchar(30) DEFAULT NULL,
  `interviewType` enum('Call','Email','OnlineTest','InPerson') DEFAULT NULL,
  `interviewInfo` mediumtext NOT NULL,
  `seenByApplicant` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interviews`
--

INSERT INTO `interviews` (`id`, `jobID`, `applicantID`, `interviewDate`, `interviewTime`, `interviewType`, `interviewInfo`, `seenByApplicant`, `created_at`, `updated_at`) VALUES
(1, 6, 19, '2016-08-27', '9:30 AM', 'Email', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', b'1', '2016-07-25 02:58:40', '2016-07-25 02:58:40'),
(2, 6, 7, '2016-08-24', '9:30 AM', 'OnlineTest', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', b'1', '2016-07-25 02:59:14', '2016-07-25 02:59:14'),
(3, 6, 6, '2016-08-24', 'Lorem ipsum dolor sit amet, co', 'InPerson', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', b'1', '2016-07-25 02:59:43', '2016-07-25 02:59:43'),
(4, 2, 23, '2016-08-26', '9:30 AM', 'Call', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', b'1', '2016-07-25 03:05:40', '2016-07-25 03:05:40'),
(5, 2, 9, '2016-09-15', '9:30 AM', 'InPerson', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', b'1', '2016-07-25 03:13:39', '2016-07-25 03:13:39'),
(6, 10, 26, '2016-08-30', '9:30 AM', 'Call', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', b'1', '2016-07-25 03:18:52', '2016-07-25 03:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `employerID` int(11) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobSummary` varchar(2000) DEFAULT NULL,
  `jobDescription` mediumtext,
  `jobType` enum('FullTime','PartTime','Internship','Contractual') DEFAULT NULL,
  `jobLocation` varchar(100) DEFAULT NULL,
  `applicationEndDate` date DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `jobCategory` int(11) DEFAULT NULL,
  `applicationInstruction` varchar(1000) DEFAULT NULL,
  `featuredJob` bit(1) DEFAULT NULL,
  `numberOfPosition` tinyint(4) DEFAULT NULL,
  `minimumExperience` int(2) DEFAULT NULL,
  `minimumAge` int(11) DEFAULT NULL,
  `others` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `employerID`, `jobTitle`, `jobSummary`, `jobDescription`, `jobType`, `jobLocation`, `applicationEndDate`, `salary`, `jobCategory`, `applicationInstruction`, `featuredJob`, `numberOfPosition`, `minimumExperience`, `minimumAge`, `others`, `created_at`, `updated_at`) VALUES
(1, 2, 'Sr. Software Engineer', '<div class="Job_keyPoints">\r\n<h5>Key Points</h5>\r\n<ul>\r\n<li>Implement plans for exciting new features for our highly dynamic website.</li>\r\n<li>Perform R&amp;D when necessary to identify the best solution to problems.</li>\r\n<li>Assist in team testing to ensure top code quality.</li>\r\n</ul>\r\n</div>', '<div class="job_des">\r\n<h5>Job Description / Responsibility</h5>\r\n<ul>\r\n<li>Expert on JavaScript.</li>\r\n<li>Strong knowledge of Object Oriented Programming (OOP)</li>\r\n<li>Strong background in PHP</li>\r\n<li>Advanced knowledge of SQL - MySQL is a plus</li>\r\n<li>Knowledgeable in CSS3 and HTML5 and modern frontend development practices</li>\r\n<li>Familiarity with MVC frameworks</li>\r\n<li>Familiarity with Test Driven Development practices</li>\r\n<li>Strong written and verbal communication skills in English</li>\r\n<li>Ability to work individually and independently with minimal supervision</li>\r\n<li>Highly motivated, reliable and hardworking</li>\r\n<li>Graduate in Computer Science</li>\r\n<li>Team programming experience</li>\r\n</ul>\r\n<div class="job_req">\r\n<h5>Additional Job Requirements</h5>\r\n<ul>\r\n<li>Familiarity with version control systems such as GitHub</li>\r\n<li>Familiarity with package management tools (npm, grunt, composer, and bower)</li>\r\n<li>Past experience with automated testing processes</li>\r\n<li>Knowledge of Linux or other Unix-based systems</li>\r\n<li>Experience with Web Services based on SOAP or REST</li>\r\n<li>Knowledge on technologies - nodejs, vagrant, Microservices, rabbitMQ, Elasticsearch etc.</li>\r\n<li>Relational Database performance optimizations.</li>\r\n<li>Experience building highly available web applications</li>\r\n<li>Broad technical knowledge</li>\r\n</ul>\r\n</div>\r\n</div>', 'FullTime', 'Dhaka', '2016-12-31', 'Negotiable', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> itcareer@gmail.com</strong></div>\r\n<div class="instruction-details">We are an equal opportunity employer. <br />Note: Please mention the position ''Sr. Software Engineer'' in the SUBJECT line of your email. <br />Only capable candidates are requested to send the resume in MS Word format with photograph.</div>', b'0', 1, 4, 22, '<div class="oth_ben">\r\n<h5>Other Benefits</h5>\r\n<ul>\r\n<li>5 Days work per week</li>\r\n<li>We work for our own product</li>\r\n<li>Salary Range: Negotiable</li>\r\n<li>10 % guaranteed increment each year of gross salary and yearly bonus: 100% of gross salary</li>\r\n<li>In-house catering service for Lunch</li>\r\n<li>A very friendly working environment</li>\r\n<li>Ensured job security</li>\r\n<li>9 hours office (flexible entry time)</li>\r\n<li>Great learning opportunity</li>\r\n<li>Opportunity to work with cross-cultural teams across the globe</li>\r\n</ul>\r\n</div>', '2016-07-23 21:02:56', '2016-07-25 00:32:59'),
(2, 2, 'PHP Developer/ Web Developer (Wordpress)', '<p><strong>Job Description / Responsibility </strong></p>\r\n<ul>\r\n<li>Applicant Must have 2-3 Years experience in Wordpress</li>\r\n<li>Applicant Must have experience in Wordpress templates Creation and Conversion from PSD</li>\r\n<li>Solid working experience on PHP framework CodeIgnator will consider as Advantage</li>\r\n<li>Good practical understanding of HTML5, CSS3, JavaScript, Bootstrap</li>\r\n<li>Ability to hand code without supervision using Notepad++ or any commonly used IDEs</li>\r\n<li>Understand the use of various APIs including but not limited to, Google, Facebook, Twitter.</li>\r\n<li>Working experience of version control systems such as bitbucket.</li>\r\n<li>Experience in developing websites and/or web applications.</li>\r\n<li>Ability to write well-abstracted, reusable code</li>\r\n<li>MUST HAVE WORKING KNOWLEDGE OF REST SERVICE, both server &amp; client side development.</li>\r\n<li>Must have working experience with both Apache &amp; Nginx setups</li>\r\n</ul>', '<p>&nbsp;</p>\r\n<div class="job_req">\r\n<div class="job_des">\r\n<div class="edu_req">\r\n<h5>Educational Requirements</h5>\r\n<ul>CSE Graduates preferable but Graduation from other background with experience can apply as well.</ul>\r\n</div>\r\n<h5>Experience Requirements</h5>\r\n<ul>\r\n<li>2 to 3 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />IT System Management, Programmer/Software Engineer, Web Developer/Web Designer</li>\r\n<li>The applicants should have experience in the following business area(s):<br />Software Company, IT Enabled Servic</li>\r\n</ul>\r\n</div>\r\n<h5>Experience Requirements</h5>\r\n<ul>\r\n<li>2 to 3 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />IT System Management, Programmer/Software Engineer, Web Developer/Web Designer</li>\r\n<li>The applicants should have experience in the following business area(s):<br />Software Company, IT Enabled Servic</li>\r\n</ul>\r\n</div>', 'FullTime', 'Dhaka', '2016-11-24', '20000-40000', 1, '<p>send your CV to <strong> koreamts01@gmail.com</strong></p>\r\n<div class="instruction-details">If you have at least 2-3 years of experiences then please Send your CV to the above email address or Apply Online</div>', NULL, 3, 3, 20, '<div class="job_req">\r\n<ul>\r\n<li>Applicants from Uttara will be given preference.</li>\r\n<li>Responsive website portfolio of at least 3 live links.</li>\r\n<li>You will communicate proactively with inform, inquire about project information and also work closely with Project Manager.</li>\r\n<li>You will be responsible to carryout multiple online projects.</li>\r\n<li>Responsible for creating/ developing website, web application &amp; graphics, illustrations with various prototypes and Image Conversion as required.</li>\r\n<li>Ability to meet deadlines and achieve specified results.</li>\r\n<li>Solid working experience on PHP framework CodeIgnator / Laravel is required.</li>\r\n<li>Advanced knowledge in PHP, MySQL, JavaScript, Ajax, JSON and jQuery are preferred.</li>\r\n<li>Able to do PSD to HTML Conversion (must be responsive).</li>\r\n</ul>\r\n</div>', '2016-07-24 00:25:06', '2016-07-24 00:25:06'),
(3, 2, 'iOS Developer', '<div class="job_des">\r\n<h5>Job Description / Responsibility</h5>\r\n<ul>\r\n<li>Analyze business requirements, providing development estimates, feedback and proper implementation</li>\r\n<li>Mentor others in development technologies, best practices, tools, and processes</li>\r\n<li>Maintain, support, troubleshoot, monitor and optimize existing and future iOS mobile applications</li>\r\n<li>Collaborate with engineers, project managers, executive team and testers to bring new features and services into production</li>\r\n<li>Skills &amp; Requirements:</li>\r\n<li>3+ years iOS development experience using iOS SDK</li>\r\n<li>Minimum one year iOS development experience using swift</li>\r\n<li>Strong knowledge on objective-c and swift</li>\r\n<li>Proven track record for the design and development of iOS mobile applications with a product company</li>\r\n<li>Experience with Scrum methodologies and software development best practices</li>\r\n<li>iOS game development experience would be a plus.</li>\r\n</ul>\r\n</div>', '<div class="oth_ben">\r\n<h5>Other Benefits</h5>\r\n<ul>\r\n<li>International quality work environment with competitive salary and benefits</li>\r\n<li>Friendly and flexible work atmosphere with great mentors</li>\r\n<li>In-house and external training.</li>\r\n<li>Daily breakfast and lunch, monthly team parties, weekly seminars etc</li>\r\n<li>Opportunity for Onsite visits to Switzerland</li>\r\n</ul>\r\n</div>', 'FullTime', 'Dhaka', '2016-11-25', '25000-45000', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> job@selise.ch</strong></div>\r\n<div class="instruction-details">Email subject must be: ''iOS Developer''.<br />You must apply to: job@selise.ch mentioning job title in email subject.<br />Application will not be considered if you don''t mention the job title in email subject.</div>', b'0', 5, 2, 21, '', '2016-07-24 02:19:34', '2016-07-25 00:32:47'),
(4, 2, 'App Developer', '<div class="job_des">\r\n<h5>Job Description / Responsibility</h5>\r\n<ul>\r\n<li>Understanding and translating functional requirements into conceptual and detailed designs using UML diagramming techniques.</li>\r\n<li>Deliver Android application features using an agile SCRUM based approach to development.</li>\r\n<li>Provide time estimates for developments using SCRUM Sprint planning techniques.</li>\r\n<li>Implement proof of concept, prototypes and production grade software.</li>\r\n<li>Identify suitable libraries or develop code from scratch depending on the nature of the feature required.</li>\r\n<li>Work alongside the NodeJs / CaklePhp (back end) and iOS developed to ensure consistency of features and capabilities across platforms and to ensure the app works well with the API and database at the back end.</li>\r\n</ul>\r\n</div>', '<h5>Experience Requirements</h5>\r\n<ul>\r\n<li>At least 2 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />Mobile apps developer, Programmer/Software Engineer</li>\r\n</ul>\r\n<div class="job_req">\r\n<h5>Additional Job Requirements</h5>\r\n<ul>\r\n<li>Knowledge on server maintenance and SEO will be preferred.</li>\r\n<li>At least two years industrial experience in delivering quality Android applications including media sharing and/or social media apps.</li>\r\n<li>Ideally the candidate will have experience of developing social media features such as user tagging, video preparation and sharing, photo editing, push notifications etc.</li>\r\n<li>Ability to write code designed to work with the latest three versions of Android OS (and ideally older) and also on a range of Android devices.</li>\r\n<li>Knowledge and understanding of the capabilities of IOS devices.</li>\r\n<li>The experience of preparing apps for upload to the app store (e.g. Google Play).</li>\r\n<li>REST/Web Service APIs.</li>\r\n<li>Agile development processes.</li>\r\n<li>A hardworking, dedicated approach to delivering timely and well structured code.</li>\r\n<li>Ability to work alone or in small teams.</li>\r\n<li>Show an innovative and creative approach to problem solving.</li>\r\n<li>People Management skills and experience, and Leadership traits.</li>\r\n<li>Experience of, or the ability to work with agile methodologies.</li>\r\n<li>Good written and oral English communication.</li>\r\n<li>Working with APIs to pass data between the app and the back end database.</li>\r\n<li>Be able to work with and create design assets such as buttons, icons etc.</li>\r\n</ul>\r\n</div>', 'FullTime', 'Dhaka, mohammadpur', '2016-11-25', 'Negotiable', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> recruitment@sekai-lab-bd.com</strong></div>\r\n<div class="instruction-details">Please mention ''Application for the Position of Sr. QA Engineer/ QA Engineer'' in your email subject and send your soft-copy CV in PDF format from your personal email address.</div>', NULL, 6, 1, 19, '<div class="oth_ben">\r\n<h5>Other Benefits</h5>\r\n<ul>As per company policy.</ul>\r\n</div>', '2016-07-24 02:28:24', '2016-07-25 00:30:17'),
(5, 2, 'Sr. QA Engineer/ QA Engineer', '<div class="job_des">\r\n<h5>Job Description / Responsibility</h5>\r\n<ul>\r\n<li>Having responsibility of Quality Assurance on several projects</li>\r\n<li>Handle testing phase with Project Manager</li>\r\n<li>Provide plan for testing phase, design test cases and gather test results</li>\r\n<li>Create documentation for testing progress/ result management</li>\r\n</ul>\r\n</div>', '<div class="job_req">\r\n<h5>Additional Job Requirements</h5>\r\n<ul>\r\n<li class="age">Age At most 30 year(s)</li>\r\n<li>Few years'' work experience both as a Software Developer and QA Engineer in iOS/ Android</li>\r\n<li>Experience testing mobile apps for multiple size phones/ tabs</li>\r\n<li>Experience with writing unit tests</li>\r\n<li>Experience with UI testing tools</li>\r\n<li>Experience in designing customized QA process which is considered on requirement and project status of each project from scratch</li>\r\n<li>Good skills on Business Analysis, High Level Design, Automated Code Design is preferable</li>\r\n<li>Good knowledge on Continuous Integration, Static Code Analysis &amp; others also preferable</li>\r\n<li>Experience with backend server (REST) API testing is a plus</li>\r\n<li>ITEE Passer and Scrum Master are preferable</li>\r\n<li>Sense of Ownership: Not blaming co-workers even there is mistake but focus how we can achieve our goal and make it better</li>\r\n<li>Honest: Honest to yourself to continuously learn more from other co-workers</li>\r\n<li>Collaboration: Have passion to work in diversified team with differences of race, culture, religion and, other backgrounds</li>\r\n<li>Growth Motivation: Believe in your possibility to lead yourself towards brilliant future and, have strong will to keep trying for it</li>\r\n<li>Work time may shift depending on the project</li>\r\n</ul>\r\n</div>', 'PartTime', 'Feni, Trank Road', '2016-11-29', 'Negotiable', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> recruitment@sekai-lab-bd.com</strong></div>\r\n<div class="instruction-details">Please mention ''Application for the Position of Sr. QA Engineer/ QA Engineer'' in your email subject and send your soft-copy CV in PDF format from your personal email address.</div>', NULL, 5, 0, 18, '', '2016-07-24 02:35:35', '2016-07-25 00:29:28'),
(6, 2, 'Web Developer', '<div class="Job_keyPoints">\r\n<h5>Key Points</h5>\r\n<ul>\r\n<li>Implement plans for exciting new features for our highly dynamic website.</li>\r\n<li>Perform R&amp;D when necessary to identify the best solution to problems.</li>\r\n<li>Assist in team testing to ensure top code quality.</li>\r\n</ul>\r\n</div>', '<div class="job_des">\r\n<h5>Job Description / Responsibility</h5>\r\n<ul>\r\n<li>Expert on JavaScript.</li>\r\n<li>Strong knowledge of Object Oriented Programming (OOP)</li>\r\n<li>Strong background in PHP</li>\r\n<li>Advanced knowledge of SQL - MySQL is a plus</li>\r\n<li>Knowledgeable in CSS3 and HTML5 and modern frontend development practices</li>\r\n<li>Familiarity with MVC frameworks</li>\r\n<li>Familiarity with Test Driven Development practices</li>\r\n<li>Strong written and verbal communication skills in English</li>\r\n<li>Ability to work individually and independently with minimal supervision</li>\r\n<li>Highly motivated, reliable and hardworking</li>\r\n<li>Graduate in Computer Science</li>\r\n<li>Team programming experience</li>\r\n</ul>\r\n<div class="job_req">\r\n<h5>Additional Job Requirements</h5>\r\n<ul>\r\n<li>Familiarity with version control systems such as GitHub</li>\r\n<li>Familiarity with package management tools (npm, grunt, composer, and bower)</li>\r\n<li>Past experience with automated testing processes</li>\r\n<li>Knowledge of Linux or other Unix-based systems</li>\r\n<li>Experience with Web Services based on SOAP or REST</li>\r\n<li>Knowledge on technologies - nodejs, vagrant, Microservices, rabbitMQ, Elasticsearch etc.</li>\r\n<li>Relational Database performance optimizations.</li>\r\n<li>Experience building highly available web applications</li>\r\n<li>Broad technical knowledge</li>\r\n</ul>\r\n</div>\r\n</div>', 'FullTime', 'Dhaka', '2016-12-31', 'Negotiable', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> itcareer@gmail.com</strong></div>\r\n<div class="instruction-details">We are an equal opportunity employer. <br />Note: Please mention the position ''Sr. Software Engineer'' in the SUBJECT line of your email. <br />Only capable candidates are requested to send the resume in MS Word format with photograph.</div>', b'0', 1, 4, 22, '<div class="oth_ben">\r\n<h5>Other Benefits</h5>\r\n<ul>\r\n<li>5 Days work per week</li>\r\n<li>We work for our own product</li>\r\n<li>Salary Range: Negotiable</li>\r\n<li>10 % guaranteed increment each year of gross salary and yearly bonus: 100% of gross salary</li>\r\n<li>In-house catering service for Lunch</li>\r\n<li>A very friendly working environment</li>\r\n<li>Ensured job security</li>\r\n<li>9 hours office (flexible entry time)</li>\r\n<li>Great learning opportunity</li>\r\n<li>Opportunity to work with cross-cultural teams across the globe</li>\r\n</ul>\r\n</div>', '2016-07-23 21:02:56', '2016-07-25 00:32:52'),
(8, 1, 'PHP Programmer', '<div class="job_des">\r\n<h5>Job Description / Responsibility</h5>\r\n<ul>\r\n<li>Develop and maintain web-based PHP applications</li>\r\n<li>Creation and implementation of a wide variety of Web-based database solution using PHP, JavaScript, jQuery, MySQL, JSON, XML, Ajax, CSS3</li>\r\n<li>Must be experienced in raw PHP</li>\r\n<li>Develop front-end and back-end applications</li>\r\n<li>Convey effectively with all task progress, evaluations, suggestions, schedules along with technical team</li>\r\n</ul>\r\n</div>', '<div class="edu_req">\r\n<h5>Experience Requirements</h5>\r\n<ul>\r\n<li>3 to 5 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />Programmer/Software Engineer, Technical Lead (Software), Team Leader (Software)</li>\r\n<li>The applicants should have experience in the following business area(s):<br />IT Enabled Service, Software Company</li>\r\n</ul>\r\n</div>', 'FullTime', 'Dhaka', '2016-09-16', '18000 - 25000', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> bigm.resources@gmail.com</strong></div>\r\n<div class="instruction-details">Send your CV to bigm.resources@gmail.com <br />BIG M Resources Limited<br />Address: 17/1B (1st floor) Block-B, Babor Road, Shamoly, Dhaka<br />Web: http://www.bigm-bd.com</div>', b'1', 2, 0, 22, '', '2016-07-24 03:41:50', '2016-07-24 23:28:57'),
(9, 1, 'Need PHP Programmer', '<div class="job_des">\r\n<h5>Job Description / Responsibility</h5>\r\n<ul>\r\n<li>Develop and maintain web-based PHP applications</li>\r\n<li>Creation and implementation of a wide variety of Web-based database solution using PHP, JavaScript, jQuery, MySQL, JSON, XML, Ajax, CSS3</li>\r\n<li>Must be experienced in raw PHP</li>\r\n<li>Develop front-end and back-end applications</li>\r\n<li>Convey effectively with all task progress, evaluations, suggestions, schedules along with technical team</li>\r\n</ul>\r\n</div>', '<div class="edu_req">\r\n<h5>Experience Requirements</h5>\r\n<ul>\r\n<li>3 to 5 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />Programmer/Software Engineer, Technical Lead (Software), Team Leader (Software)</li>\r\n<li>The applicants should have experience in the following business area(s):<br />IT Enabled Service, Software Company</li>\r\n</ul>\r\n</div>', 'PartTime', 'Dhaka', '2016-09-16', '18000 - 25000', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> bigm.resources@gmail.com</strong></div>\r\n<div class="instruction-details">Send your CV to bigm.resources@gmail.com <br />BIG M Resources Limited<br />Address: 17/1B (1st floor) Block-B, Babor Road, Shamoly, Dhaka<br />Web: http://www.bigm-bd.com</div>', b'0', 2, 0, 22, '', '2016-07-24 03:41:50', '2016-07-25 00:33:44'),
(10, 1, 'PHP Expert', '<div class="job_des">\r\n<h5>Job Description / Responsibility</h5>\r\n<ul>\r\n<li>Develop and maintain web-based PHP applications</li>\r\n<li>Creation and implementation of a wide variety of Web-based database solution using PHP, JavaScript, jQuery, MySQL, JSON, XML, Ajax, CSS3</li>\r\n<li>Must be experienced in raw PHP</li>\r\n<li>Develop front-end and back-end applications</li>\r\n<li>Convey effectively with all task progress, evaluations, suggestions, schedules along with technical team</li>\r\n</ul>\r\n</div>', '<div class="edu_req">\r\n<h5>Experience Requirements</h5>\r\n<ul>\r\n<li>3 to 5 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />Programmer/Software Engineer, Technical Lead (Software), Team Leader (Software)</li>\r\n<li>The applicants should have experience in the following business area(s):<br />IT Enabled Service, Software Company</li>\r\n</ul>\r\n</div>', 'PartTime', 'Dhaka', '2016-09-16', '18000 - 25000', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> bigm.resources@gmail.com</strong></div>\r\n<div class="instruction-details">Send your CV to bigm.resources@gmail.com <br />BIG M Resources Limited<br />Address: 17/1B (1st floor) Block-B, Babor Road, Shamoly, Dhaka<br />Web: http://www.bigm-bd.com</div>', b'1', 2, 0, 22, '', '2016-07-24 03:41:50', '2016-07-24 23:28:28'),
(11, 3, 'Java Web Developer', '<p>We are looking for a developer at either graduate or entry level, to work with our support team providing development support on a wide variety of platforms, languages and third party systems.</p>\r\n<p>This is ideal for a graduate/junior developer wanting to get a lot of experience rapidly. Your skill set will increase drastically. We offer a career path to mid- and senior-level developers with training, book and conference budget. You&rsquo;ll be in at the deep end, but with the help of an expert team.</p>\r\n<p>You need to be familiar with the latest techniques and technologies in web development and you will be keen to stay up to date and learn more. If you have some knowledge and experience which you want to build into a solid, professional understanding of web technologies - frontend, backend, server - this role is for you.</p>\r\n<p>You should exhibit an ability and desire to learn quickly and apply new technologies and a be able to demonstrate a working knowledge of several programming languages.</p>', '<div class="job_des">\r\n<h5><strong>Job Description / Responsibility</strong></h5>\r\n<ul>\r\n<li>Experience in design, development and deployment of web applications using core Java and J2EE technologies (JSP, Servlet, JSTL).</li>\r\n<li>Familiarity with software build/deployment frameworks (such as MAVEN, ANT)</li>\r\n<li>Strong experience solving cross-browser UI compatibility issues.</li>\r\n<li>Solid knowledge in javascript.</li>\r\n<li>At least 2 years of experience in Java and Web based software development.</li>\r\n</ul>\r\n</div>\r\n<div class="edu_req">\r\n<h5><strong>Educational Requirements</strong></h5>\r\n<ul>Minimum B.Sc in computer science or computer engineering from any renowned University</ul>\r\n</div>\r\n<div class="edu_req">\r\n<h5><strong>Experience Requirements</strong></h5>\r\n<ul>\r\n<li>2 to 3 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />Web Developer/Web Designer, Programmer/Software Engineer, UX Designer</li>\r\n<li>The applicants should have experience in the following business area(s):<br />Software Company, Group of Companies, IT Enabled Service</li>\r\n</ul>\r\n</div>', 'FullTime', 'Dhaka, mohammadpur', '2016-11-30', 'Negotiable', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> kibria.khan@karatbars.com</strong></div>\r\n<div class="instruction-details">If you are interested, please send your CV with a cover letter. <br />In the email/cover letter please mention why you think you are the right person for this position.</div>', b'1', 3, 0, 20, '<ul>\r\n<li class="age">Age 24 to 30 year(s)</li>\r\n<li>Self-managed, independent, initiative and proactive.</li>\r\n<li>Familiar with Git, trello.</li>\r\n<li>Maintain coding standard and documentation.</li>\r\n<li>Working knowledge with other programming knowledge is preferable.</li>\r\n<li>Good communication skills.</li>\r\n</ul>', '2016-07-24 21:29:51', '2016-07-24 23:28:27'),
(12, 3, 'Senior Software Engineer (JAVA EE)', '<p>You are an industry-experienced developer. Your interest in development is a reflection of your passion for genuine satisfaction in the quality of the work you produce. You are excited about the prospect of a fun work environment and rewarding relationships with other developers and designers.</p>\r\n<p>You will work closely with developer advocates who handle project management and client collaboration with an understanding and consideration of how developers work.</p>\r\n<p>You will pair regularly with other back-end developers and you will be an integral part of the team that works on a diverse range of projects. You will have opportunities to continue to learn new skills and hone your craft with other members of the Vehikl team.</p>\r\n<p>You will be able to take advantage of the company of other developers and designers at conferences, peer-to-peer groups, community networking events, and company outings.</p>\r\n<p>Development skills you bring to the Vehikl team: HTML/CSS PHP Object Oriented Design Javascript Version control Skills you''re excited to hone: Laravel framework Git Bootstrap/Foundation Design Patterns Deployment Tools</p>', '<div class="job_des">\r\n<h5 style="text-align: left;"><strong>Job Description / Responsibility</strong></h5>\r\n<ul>\r\n<li>Minimum 5 years experience as JAVA EE developer.</li>\r\n<li>Deep knowledge on object oriented design and implementation</li>\r\n<li>Work directly with different development team.</li>\r\n<li>Take active part in system design and project estimation along with the Technical Project Manager.</li>\r\n<li>All tasks and activities performed is with focus on best practices and quality</li>\r\n<li>Develop all parts of the system including the core and GUIs based on clients'' requirements.</li>\r\n<li>Maintain necessary documentation in accordance with companies and clients'' quality, process and documentation requirements.</li>\r\n<li>Be on top of new technologies.</li>\r\n<li>Design, develop, test and implement products based on established technical specifications.</li>\r\n<li>Consults with Technical Project Manager to identify customer needs and include these into the project objectives.</li>\r\n</ul>\r\n<h5><strong>Additional Job Requirements</strong></h5>\r\n<ul>\r\n<li>Highly motivated, reliable and hard working.</li>\r\n<li>Should be proactive and have ability to prioritize his/her work</li>\r\n<li>Must be a quick learner of software features and testing tools</li>\r\n<li>Should have ability to work under pressure</li>\r\n<li>Excellent written and verbal communication skills in English.</li>\r\n<li>Strong problem solving and analytical abilities.</li>\r\n<li>Strong troubleshooting skills.</li>\r\n<li>Skill in standard SQL and database optimization.</li>\r\n<li>Knowledge of Object Oriented programming, HTML and programming language frameworks is a plus.</li>\r\n<li>Experience in test automation, and unit testing frameworks is a plus.</li>\r\n<li>Be a team player and willing to put in the extra effort to deploy high-quality software in a fast-paced, collaborative team environment.</li>\r\n<li>Ability to work individually and independently with minimal supervision.</li>\r\n</ul>\r\n</div>', 'FullTime', 'Dhaka, Mohakhali', '2016-11-25', '30000-50000', 1, '<div class="oth_ben">\r\n<div class="or text-center" style="text-align: left;">Send your CV to <strong> kibria.khan@karatbars.com</strong></div>\r\n<div class="instruction-details">If you are interested, please send your CV with a cover letter. <br />In the email/cover letter please mention why you think you are the right person for this position.</div>\r\n</div>', b'1', 1, 4, 25, '<div class="job_req"><br />\r\n<div class="oth_ben"><strong>Other Benefits </strong>\r\n<ul>\r\n<li>Market competitive salary with excellent career opportunity in global payment industry.</li>\r\n<li>Two festivals bonus.</li>\r\n<li>Learning and friendly working environment.</li>\r\n<li>All Bangladesh Govt. holidays.</li>\r\n<li>2 days of weekend</li>\r\n<li>Casual Leave, Medical Leave</li>\r\n<li>Partial Lunch bill</li>\r\n</ul>\r\n</div>\r\n</div>', '2016-07-24 21:44:08', '2016-07-24 23:28:26'),
(13, 3, 'Business Development Manager', '<p>You will be responsible for building high performance and responsive web applications that push browsers and web frameworks to their limits. This will include working on the full stack &ndash; the front-end, backend and database. Unit testing and deploying to our staging and production systems will be required. You will also participate in the design and implementation of our next generation application and will be expected to take projects from concept to production with minimal supervision.</p>\r\n<p>&nbsp;</p>', '<div class="job_des">\r\n<h5><strong>Job Description / Responsibility </strong></h5>\r\n<ul>\r\n<li>Manage a portfolio of accounts.</li>\r\n<li>Build strong and long-term relationships with vendors/partners.</li>\r\n<li>Follow-up for new deals &amp; product/feature up gradation from the partners.</li>\r\n<li>Achieve the best possible synergy from the pool of products from a partner.</li>\r\n<li>Deal in the middle for the unsatisfied client and partner if necessary.</li>\r\n<li>Cooperate with the After-Sales Department to achieve their objectives.</li>\r\n<li>Meet deadlines for including vendor/partner Accounts.</li>\r\n<li>Achieve Sales Target on designated categories.</li>\r\n<li>Review sales and profit performance in a weekly basis.</li>\r\n<li>Report weekly to the line Manager.</li>\r\n</ul>\r\n<div class="job_req">\r\n<h5><strong>Additional Job Requirements</strong></h5>\r\n<ul>\r\n<li>Minimum 4 year(s) relevant experience in similar industry</li>\r\n<li>Proficiency in MS Office</li>\r\n<li>Should have excellent Verbal and Written Communication Skills in English &amp; Bengali</li>\r\n<li>Excellent management capability.</li>\r\n<li>Strong people management skills.</li>\r\n<li>Strong team leadership, able to build relationships between teams.</li>\r\n<li>Pro-active and participatory in decision-making and problem-solving.</li>\r\n<li>Good conceptual understanding of marketing strategies and approaches.</li>\r\n<li>Stress tolerance and positive coping strategies.</li>\r\n<li>Evaluate the quality of completed work and services</li>\r\n<li>Capable of multi-tasking</li>\r\n</ul>\r\n</div>\r\n</div>', 'FullTime', 'Dhaka', '2016-10-13', 'Negotiable', 8, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> hr@pickaboo.com</strong></div>\r\n<div class="instruction-details">Interested &amp; deserving candidates are requested to apply with a complete resume with contact number and a copy of a recent passport size photograph at hr@pickaboo.com</div>', NULL, 2, 0, 20, '', '2016-07-24 21:50:49', '2016-07-24 21:50:49'),
(14, 3, 'Manager - Marketing', '<p>You will be responsible for building high performance and responsive web applications that push browsers and web frameworks to their limits. This will include working on the full stack &ndash; the front-end, backend and database. Unit testing and deploying to our staging and production systems will be required. You will also participate in the design and implementation of our next generation application and will be expected to take projects from concept to production with minimal supervision.</p>\r\n<p>&nbsp;</p>', '<div class="job_des">\r\n<h5><strong>Job Description / Responsibility</strong></h5>\r\n<ul>\r\n<li>Develop and drive Local/Export marketing activity by considering the sales offer and evaluating the feedback to achieve sales growth</li>\r\n<li>To accelerate action plan to identify potential Market/Clients along with new sales/business opportunity.</li>\r\n<li>Work with the Supply Chain and Operations team to deliver the promotional material in the field.</li>\r\n<li>Anticipate, identify and understand branding of the product and take initiative for ATL &amp; BTL activity.</li>\r\n<li>Maintain position relationship with current &amp; potential channel partners through regular contracts</li>\r\n<li>Assisting team members with day to day marketing tasks and coordinating marketing activities.</li>\r\n<li>Planning &amp; producing marketing communications, such as flyers, brochures, leaflet and arranging DEMO exhibition at the local bazar Level.</li>\r\n<li>Support the sales &amp; marketing team in implementing tactical events and programs, and provide project and administrative support.</li>\r\n<li>Interface with internal (especially the sales team) and external customers along with marketing vendors.</li>\r\n</ul>\r\n<div class="edu_req">\r\n<h5><strong>Experience Requirements</strong></h5>\r\n<ul>\r\n<li>At least 8 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />Brand Planning/Development, Corporate Marketing</li>\r\n<li>The applicants should have experience in the following business area(s):<br />Battery, Storage cell, Cement, Direct Selling/Marketing Service Company, Electronic Equipment/Home Appliances</li>\r\n</ul>\r\n<div class="job_req">\r\n<h5><strong>Additional Job Requirements</strong></h5>\r\n<ul>\r\n<li class="age">Age At most 40 year(s)</li>\r\n<li>Previous experience in Promotional &amp; Marketing activity monitoring is strongly preferred Excellent communication skills</li>\r\n<li>Good knowledge and interest in electronic/equipment''s business</li>\r\n<li>Entrepreneurial, self‐motivated with strong problem‐solving skills and ability to work under Pressure</li>\r\n<li>Strong Analytical skills.</li>\r\n<li>Excellent English language skills</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'FullTime', 'Dhaka', '2016-10-16', 'Negotiable', 8, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> kibria.khan@karatbars.com</strong></div>\r\n<div class="instruction-details">If you are interested, please send your CV with a cover letter. <br />In the email/cover letter please mention why you think you are the right person for this position.</div>', NULL, 2, 0, 24, '<div class="oth_ben">\r\n<h5>Other Benefits</h5>\r\n<ul>\r\n<li>Cell phone allowance</li>\r\n<li>Competitive base salary &amp; incentive</li>\r\n<li>Others allowance when traveling official work</li>\r\n</ul>\r\n</div>', '2016-07-24 21:53:28', '2016-07-24 22:00:07'),
(15, 4, 'Trainer (Web Design &amp; Development)', '<div class="job_des">\r\n<p>We are looking for an experienced LAMP developer who will be working on the next generation of our platform. This is an exciting position to work on the cutting edge of technology, expand your skill set and make a meaningful contribution every single day.</p>\r\n</div>', '<h5><strong>Job Description / Responsibility </strong></h5>\r\n<ul>\r\n<li>Deep knowledge about PHP 5.5</li>\r\n<li>Mysql</li>\r\n<li>HTML5 &amp; CSS3</li>\r\n<li>Javascript</li>\r\n<li>Responsive Design</li>\r\n<li>CSS Framework</li>\r\n<li>if have knowledge about PHP framework it will be plus</li>\r\n<li>Conduct the classes for Web Development and Web Design</li>\r\n</ul>\r\n<div class="edu_req">\r\n<h5><strong>Educational Requirements</strong></h5>\r\n<ul>\r\n<li>Minimum Graduate</li>\r\n<li>Graduation completed before 2011</li>\r\n</ul>\r\n</div>', 'FullTime', 'Dhaka', '2016-11-08', '30000 - 40000', 11, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> asad@itbangla.net</strong></div>\r\n<div class="instruction-details">Eligible and interested candidates are requested to send their application and CV with 1 (One) copies of recent passport size color photographs, Mailing Address: IT Bangla Ltd. 32, Topkhana Road, Chattagram Samity Bhaban (3rd Floor), Purana Paltan, Dhaka-1000.<br />KalaBagan Branch: 158, Lake Circus Road(2nd floor), Kalabagan, Dhaka-1205</div>', NULL, 10, 0, 24, '', '2016-07-24 22:18:43', '2016-07-24 22:18:43'),
(16, 5, 'Software Engineer - iOS', '<p>Our Mobile Software Engineering Team work on the cutting edge to produce high-quality mobile apps for both iOS and Android. We are now on the lookout for an iOS Software Engineer to join this dynamic team. If your heart beats a bit faster when you are writing clean code and if you have a natural instinct for spotting new trends or technologies then we want to hear from you. Our Software Engineering teams help to shape the future of the world&rsquo;s largest hotel search. With around 3 billion requests per month, we are operating on a large scale, complex and rapidly evolving IT landscape. We encourage all team members to question established processes and give them the freedom to experiment with new technologies in order to drive trivago to the next level.</p>', '<p><strong>Your responsibilities:</strong></p>\r\n<ul>\r\n<li>Develop our mobile apps in an agile environment.</li>\r\n<li>Use your expert knowledge to bring fresh new ideas to the table.</li>\r\n<li>Analyze feature requests and then plan &amp; implement them in a test-driven way.</li>\r\n<li>Create and review pull requests in order to achieve the best possible solution.</li>\r\n<li>Contribute to the maintenance and development of new and existing open source components.</li>\r\n<li>Exchange ideas and share your knowledge with the rest of the team and participate in pair programming.</li>\r\n</ul>\r\n<h2 class="detail-sectionTitle">Skills &amp; Requirements</h2>\r\n<hr />\r\n<p><strong>The ideal candidate:</strong></p>\r\n<ul>\r\n<li>Is looking for a new challenge!</li>\r\n<li>Has earned a degree/equivalent qualification in computer science or similar field.</li>\r\n<li>Can prove their technical skills in native iOS development and can share code references.</li>\r\n<li>Has experience in dealing with iOS frameworks, design patterns and software architectures such as MVC/MVP/MVVM.</li>\r\n<li>Is genuinely interested in agile development processes and automated testing. Experience in these areas would be a plus.</li>\r\n<li>Is familiar with Scrum, Kanban, TDD, BDD, Reactive Programming and Continuous Integration.</li>\r\n<li>Speaks English fluently. German language skills would be a plus.</li>\r\n</ul>\r\n<p><strong>Life at trivago&nbsp;is...</strong></p>\r\n<ul>\r\n<li>The ability to push your ideas through to execution without being held back by bureaucracy.</li>\r\n<li>The freedom to embrace small-scale failures as a path to large-scale success.</li>\r\n<li>The belief that factual proof, not seniority, determines which path to take.</li>\r\n<li>Self-determined working hoursbased on measuring productivity through goals rather than number of hours spent in the office.</li>\r\n<li>Being supported in all your needs, including relocation assistance and language classes for international arrivals.</li>\r\n<li>The opportunity to develop personally and professionally with regular free code workshops andHackathons, as well as the chance to contribute to our&nbsp;tech blog.</li>\r\n<li>Living in D&uuml;sseldorf,a city boasting the 6th highest quality of life&nbsp;in the world for expats.</li>\r\n</ul>', 'FullTime', 'Dhaka', '2016-11-18', '50000-80000', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> hr@brotecs.com</strong></div>\r\n<div class="instruction-details">Please send us your updated resume to the above email address and attach the resume (file name of resume) as follows: <br />Resume_Of_Your_Full_Name_Email_Address_Position_Applied. <br />For Example: Resume_Of_Mark_Zuckerberg_mark.zuckerberg@yahoo.com_Software_Engineer_iOS <br />Or, Please post your resume and cover letter along with passport size photograph to: BroTecs Technologies Ltd., 28, Shahjalal Avenue, Sector-4, Uttara, Dhaka-1230, Bangladesh.</div>', NULL, 4, 0, 25, '', '2016-07-24 22:49:07', '2016-07-24 22:49:07'),
(17, 5, 'Mobile Developer - iOS', '<p>Imagine the challenge of helping the worlds finance professionals work from anywhere. Making that all important trading decision walking between meetings. Looking at up-to-date market news whenever they glance at their mobile device, explore in-depth market analysis, or getting instant notifications on critical market moving events. We provide Bloomberg''s market leading service in real time on popular mobile platforms.<br /><br />Our Mobile teams develop, design and define the mobile experience for many thousands of people daily. With team members specialising in creating mobile UIs, client software, infrastructure and services working together we look ahead to take advantage of the latest mobile technologies and techniques. All aimed towards making the definitive mobile experience for the financial markets.<br /><br />You will be joining a growing group of 50+ mobile developers with new projects on the horizon and an ample chance to make an impact. Working in smaller engineering teams based e</p>', '<p>We''ll trust you to:<br /><br /></p>\r\n<ul>\r\n<li>Take ownership of business requirements and build solutions to meet our customers'' needs</li>\r\n<li>Liaise closely with our internal UX team to ensure an exemplary look and feel for our application</li>\r\n<li>Make the most of iOS unique technology features</li>\r\n</ul>\r\n<p><br /><br />You''ll need to have:<br /><br /></p>\r\n<ul>\r\n<li>Expertise developing and designing iOS applications</li>\r\n</ul>\r\n<p><br /><br />We''d love to see:<br /><br /></p>\r\n<ul>\r\n<li>Swift Experience</li>\r\n<li>Great collaboration with others</li>\r\n<li>That you want to learn new things</li>\r\n<li>That you want to teach other people what you know</li>\r\n</ul>\r\n<p><br /><br />If this sounds like you:<br /><br /></p>', 'FullTime', 'Dhaka, mohammadpur', '2016-12-10', '30000-50000', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> contactus.braincraft@gmail.com</strong></div>\r\n<div class="instruction-details">Immediate Employment could be arranged for the deserving candidate.<br />Freshers with good analytical skills are welcome.<br />Add ''Brain Craft iOS'' as subject of your mail.<br />Please mention your expected salary at your CV.</div>', NULL, 2, 0, 20, '', '2016-07-24 22:50:54', '2016-07-24 22:50:54'),
(18, 6, 'Web Developer (PHP, Codeigniter, Ajax Expert)', '<p>&nbsp;The Westwing mission is to inspire and make every home a beautiful home. We are on a quest to bring the wonders of eCommerce for home &amp; living to our more than 26 million members in 14 international countries. In less than 5 years on the market, we have grown to more than 219 million Euros in annual sales, and the opportunity ahead of us is massive.</p>', '<p>&nbsp;<strong>Job Description / Responsibility </strong></p>\r\n<div class="job_des">\r\n<ul>\r\n<li>Backend Development</li>\r\n<li>Frontend Development</li>\r\n<li>API integration such as facebook, google, twitter, paypal etc.</li>\r\n</ul>\r\n<div class="edu_req">\r\n<h5><strong>Experience Requirements</strong></h5>\r\n<ul>\r\n<li>1 to 3 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />Web Developer/Web Designer</li>\r\n</ul>\r\n</div>\r\n<div class="job_req">\r\n<h5><strong>Additional Job Requirements</strong></h5>\r\n<ul>\r\n<li>Specialist in codeigniter.</li>\r\n<li>Specialist in Jquery, Ajax and JavaScript</li>\r\n<li>Expert in HTML5, CSS3, Responsive web design and UI</li>\r\n<li>Basic knowledge about on page on page SEO and off page SEO</li>\r\n<li>Note: Suitable candidates will need to have proven hands on experience</li>\r\n</ul>\r\n</div>\r\n</div>', 'FullTime', 'Dhaka', '2016-09-23', 'Negotiable', 1, '<p style="text-align: left;">&nbsp; Send your CV to <strong> career@abhworld.com</strong></p>\r\n<div class="instruction-details">Applicant must enclose his/her Photograph with CV &amp; must mention previous work portfolio &amp; provide his FB and Other Social ID. <br />Don''t forget to give your portfolio links<br />Please Direct send your CV from your email address not from BDjobs system. Bcoz we will ask many question via email.</div>', NULL, 2, 0, 20, '', '2016-07-24 23:04:23', '2016-07-24 23:04:23'),
(19, 1, 'PHP Developer', '<div class="job_des">\r\n<h5><strong>Job Description / Responsibility</strong></h5>\r\n<ul>\r\n<li>We are ERP solution provider. So, please Apply who want to continue for long term contract (minimum 2 years)</li>\r\n<li>Should have good knowledge on Core PHP, MySQL, HTML5, XML, CSS3,jQuery Database design .</li>\r\n<li>Should have good knowledge over OOP.</li>\r\n<li>Experience on Zend Framework 2 added advantage.</li>\r\n<li>Hard worker and meet the deadline.</li>\r\n<li>Send some portfolio of previous work with CV with live link.</li>\r\n<li>Better understanding of requirements and efficient coding with documentation</li>\r\n</ul>\r\n</div>', '<div class="edu_req">\r\n<h5><strong>Educational Requirements</strong></h5>\r\n<ul>\r\n<li>Minimum Graduate.</li>\r\n<li>B.Sc in CSE/ CS/ other Science faculty.</li>\r\n<li>Educational qualification will be considered for experienced applicants.</li>\r\n</ul>\r\n<h5><strong>Experience Requirements</strong></h5>\r\n<ul>\r\n<li>The applicants should have experience in the following area(s):<br />Technical Lead (Software), Programmer/Software Engineer</li>\r\n</ul>\r\n<div class="job_req">\r\n<h5>Additional Job Requirements</h5>\r\n<ul>\r\n<li>Better English Communication skills.</li>\r\n<li>Good understanding of requirements analysis and database design.</li>\r\n<li>Must write efficient code with documentation</li>\r\n<li>Must be able to handle multiple projects and deadline.</li>\r\n</ul>\r\n</div>\r\n</div>', 'FullTime', 'Feni, Trank Road', '2016-11-26', '30000-50000', 1, '<div class="or text-center" style="text-align: left;">Send your CV to <strong> info@softwareshell.com</strong></div>\r\n<div class="instruction-details">Brief description of different projects you did<br />Technology you used<br />Mention year of experience in your CV file name<br />Please send your updated CV with project details to info@softwareshell.com</div>', b'0', 10, 0, 520, '<div class="oth_ben">\r\n<h5><strong>Other Benefits</strong></h5>\r\n<ul>Yearly bonus</ul>\r\n</div>', '2016-07-24 03:41:50', '2016-07-25 01:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` int(11) NOT NULL,
  `jobID` int(11) DEFAULT NULL,
  `profileID` int(11) DEFAULT NULL,
  `coverLetterID` int(11) DEFAULT NULL,
  `attachedResume` varchar(38) DEFAULT NULL,
  `status` enum('Applied','Viewed','ShortListed','Rejected','Deleted','Blocked') DEFAULT 'Applied',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_applicants`
--

INSERT INTO `job_applicants` (`id`, `jobID`, `profileID`, `coverLetterID`, `attachedResume`, `status`, `created_at`, `updated_at`) VALUES
(1, 18, 34, 1, 'a6ddb92f173fe40d6c751e6fc0096bfb.docx', 'Applied', '2016-07-25 01:01:46', '2016-07-25 01:01:46'),
(2, 9, 34, 2, '43373498a1b49ef55fdd50d94251c0ab.docx', 'Viewed', '2016-07-25 01:02:25', '2016-07-25 01:02:25'),
(3, 8, 34, 3, '7175304d2e8bdc79d4c38d46d6b55856.docx', 'Viewed', '2016-07-25 01:02:42', '2016-07-25 01:02:42'),
(5, 2, 34, 5, '8d2e6ad90b301d9e272ccf93e68bda25.docx', 'ShortListed', '2016-07-25 01:35:38', '2016-07-25 01:35:38'),
(6, 6, 34, 6, '49cf5ab69a60b74ff613ccc5a0c44894.docx', 'ShortListed', '2016-07-25 01:36:24', '2016-07-25 01:36:24'),
(7, 6, 30, 7, '3686de4d31faa81a23dc0395eb57ecb6.docx', 'ShortListed', '2016-07-25 01:42:15', '2016-07-25 01:42:15'),
(8, 5, 30, 8, '3b7ca7f986a6a6442080242161de845a.docx', 'ShortListed', '2016-07-25 01:47:55', '2016-07-25 01:47:55'),
(9, 2, 30, 9, 'c07b1d924978de70a5780c788ac0ba36.docx', 'ShortListed', '2016-07-25 01:51:59', '2016-07-25 01:51:59'),
(10, 1, 30, 10, NULL, 'Applied', '2016-07-25 01:52:41', '2016-07-25 01:52:41'),
(11, 18, 30, 11, '7eb905dcc063ec35a5272361707eb8da.docx', 'Applied', '2016-07-25 01:59:22', '2016-07-25 01:59:22'),
(12, 15, 30, 12, 'a6767d70da3cdfc9aa846c1134ba36a8.docx', 'Applied', '2016-07-25 01:59:39', '2016-07-25 01:59:39'),
(13, 10, 31, 13, 'e19f7bcc88f4c880d7306226fff9a165.docx', 'ShortListed', '2016-07-25 02:11:32', '2016-07-25 02:11:32'),
(14, 9, 31, 14, '60897d14dddd0d9df8fb18e8eabe170f.docx', 'ShortListed', '2016-07-25 02:11:51', '2016-07-25 02:11:51'),
(15, 8, 31, 15, NULL, 'ShortListed', '2016-07-25 02:12:02', '2016-07-25 02:12:02'),
(16, 19, 31, 16, 'c2394bcac2105ac8fb3c35768f7498b6.docx', 'Viewed', '2016-07-25 02:12:21', '2016-07-25 02:12:21'),
(17, 18, 31, 17, NULL, 'Applied', '2016-07-25 02:13:23', '2016-07-25 02:13:23'),
(18, 15, 31, 18, NULL, 'Applied', '2016-07-25 02:13:30', '2016-07-25 02:13:30'),
(19, 6, 32, 19, '522b48ee1cddd84c71a12c6797beb453.docx', 'ShortListed', '2016-07-25 02:30:30', '2016-07-25 02:30:30'),
(20, 1, 32, 20, NULL, 'Applied', '2016-07-25 02:30:48', '2016-07-25 02:30:48'),
(21, 5, 32, 21, NULL, 'ShortListed', '2016-07-25 02:30:52', '2016-07-25 02:30:52'),
(22, 4, 32, 22, NULL, 'ShortListed', '2016-07-25 02:30:56', '2016-07-25 02:30:56'),
(23, 2, 32, 23, NULL, 'ShortListed', '2016-07-25 02:31:01', '2016-07-25 02:31:01'),
(24, 8, 32, 24, NULL, 'ShortListed', '2016-07-25 02:31:36', '2016-07-25 02:31:36'),
(25, 19, 32, 25, NULL, 'Viewed', '2016-07-25 02:31:40', '2016-07-25 02:31:40'),
(26, 10, 32, 26, 'a8c23cd663add9aec59dc7705a59f0d6.docx', 'ShortListed', '2016-07-25 02:31:51', '2016-07-25 02:31:51'),
(27, 9, 32, 27, '8a4c28dcd8972f14f29bfad045f16e59.docx', 'ShortListed', '2016-07-25 02:31:58', '2016-07-25 02:31:58'),
(28, 18, 32, 28, '1aff84ec5b4812d0ea6d3c287a72b846.docx', 'Applied', '2016-07-25 02:32:11', '2016-07-25 02:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `mail_verification`
--

CREATE TABLE `mail_verification` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `activeCode1` int(5) NOT NULL,
  `activeCode2` int(5) NOT NULL,
  `activeLink1` varchar(32) NOT NULL,
  `activeLink2` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `toWhome` int(11) DEFAULT NULL,
  `jobID` int(11) DEFAULT NULL,
  `messageTitle` varchar(200) DEFAULT NULL,
  `messageBody` text,
  `hasSeen` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachedFiles` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `profileID` int(11) NOT NULL,
  `notificationText` varchar(300) NOT NULL,
  `url` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `profileID`, `notificationText`, `url`, `created_at`, `updated_at`) VALUES
(1, 29, 'Someone apply to get a job in your company as a "Web Developer (PHP, Codeigniter, Ajax Expert)"', 'http://jobs.com/jobs/18/applicant/1', '2016-07-25 01:01:47', '2016-07-25 01:01:47'),
(10, 23, 'Someone apply to get a job in your company as a "Sr. Software Engineer"', 'http://jobs.com/jobs/1/applicant/10', '2016-07-25 01:52:41', '2016-07-25 01:52:41'),
(11, 29, 'Someone apply to get a job in your company as a "Web Developer (PHP, Codeigniter, Ajax Expert)"', 'http://jobs.com/jobs/18/applicant/11', '2016-07-25 01:59:22', '2016-07-25 01:59:22'),
(12, 27, 'Someone apply to get a job in your company as a "Trainer (Web Design &amp; Development)"', 'http://jobs.com/jobs/15/applicant/12', '2016-07-25 01:59:39', '2016-07-25 01:59:39'),
(17, 29, 'Someone apply to get a job in your company as a "Web Developer (PHP, Codeigniter, Ajax Expert)"', 'http://jobs.com/jobs/18/applicant/17', '2016-07-25 02:13:23', '2016-07-25 02:13:23'),
(18, 27, 'Someone apply to get a job in your company as a "Trainer (Web Design &amp; Development)"', 'http://jobs.com/jobs/15/applicant/18', '2016-07-25 02:13:30', '2016-07-25 02:13:30'),
(20, 23, 'Someone apply to get a job in your company as a "Sr. Software Engineer"', 'http://jobs.com/jobs/1/applicant/20', '2016-07-25 02:30:48', '2016-07-25 02:30:48'),
(28, 29, 'Someone apply to get a job in your company as a "Web Developer (PHP, Codeigniter, Ajax Expert)"', 'http://jobs.com/jobs/18/applicant/28', '2016-07-25 02:32:11', '2016-07-25 02:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `routesID` int(11) NOT NULL,
  `userTypeID` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `routesID`, `userTypeID`, `created_at`, `updated_at`) VALUES
(68, 304, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(69, 304, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(70, 305, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(71, 305, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(72, 303, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(73, 303, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(92, 315, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(94, 314, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(95, 314, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(96, 316, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(97, 316, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(98, 301, 1, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(99, 301, 2, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(100, 352, 1, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(101, 352, 2, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(102, 300, 1, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(103, 300, 2, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(104, 302, 1, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(105, 302, 2, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(106, 318, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(107, 319, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(108, 317, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(109, 320, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(110, 322, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(111, 321, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(112, 364, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(113, 323, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(114, 325, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(115, 326, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(116, 324, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(117, 336, 8, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(118, 337, 8, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(119, 287, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(120, 287, 2, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(121, 343, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(122, 343, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(123, 286, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(124, 286, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(125, 288, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(126, 288, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(127, 290, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(128, 290, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(129, 341, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(130, 341, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(131, 289, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(132, 289, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(133, 285, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(134, 285, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(138, 308, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(139, 356, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(140, 358, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(141, 307, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(142, 357, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(143, 363, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(144, 309, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(145, 311, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(146, 312, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(147, 359, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(148, 361, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(149, 362, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(150, 310, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(156, 284, 8, '2016-04-06 17:54:22', '2016-04-06 17:54:22'),
(157, 331, 8, '2016-04-06 17:54:32', '2016-04-06 17:54:32'),
(158, 338, 8, '2016-04-06 17:54:32', '2016-04-06 17:54:32'),
(159, 335, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(160, 327, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(161, 328, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(163, 329, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(164, 283, 8, '2016-04-06 17:55:34', '2016-04-06 17:55:34'),
(168, 369, 1, '2016-04-07 19:48:01', '2016-04-07 19:48:01'),
(177, 313, 1, '2016-04-08 08:02:10', '2016-04-08 08:02:10'),
(192, 360, 5, '2016-06-08 22:50:04', '2016-06-08 22:50:04'),
(208, 397, 8, '2016-06-27 20:12:40', '2016-06-27 20:12:40'),
(209, 385, 8, '2016-06-27 20:13:04', '2016-06-27 20:13:04'),
(210, 386, 8, '2016-06-27 20:13:22', '2016-06-27 20:13:22'),
(211, 387, 8, '2016-06-27 20:13:22', '2016-06-27 20:13:22'),
(212, 388, 8, '2016-06-27 20:13:22', '2016-06-27 20:13:22'),
(213, 389, 8, '2016-06-27 20:13:22', '2016-06-27 20:13:22'),
(214, 390, 8, '2016-06-27 20:13:22', '2016-06-27 20:13:22'),
(215, 391, 8, '2016-06-27 20:13:22', '2016-06-27 20:13:22'),
(216, 392, 8, '2016-06-27 20:13:22', '2016-06-27 20:13:22'),
(217, 464, 5, '2016-06-27 20:13:42', '2016-06-27 20:13:42'),
(218, 465, 5, '2016-06-27 20:13:42', '2016-06-27 20:13:42'),
(219, 472, 8, '2016-06-27 20:13:51', '2016-06-27 20:13:51'),
(220, 454, 8, '2016-06-27 22:21:21', '2016-06-27 22:21:21'),
(221, 414, 5, '2016-06-27 22:21:21', '2016-06-27 22:21:21'),
(222, 415, 5, '2016-06-27 22:21:38', '2016-06-27 22:21:38'),
(223, 416, 5, '2016-06-27 22:21:38', '2016-06-27 22:21:38'),
(224, 428, 1, '2016-06-27 22:22:12', '2016-06-27 22:22:12'),
(225, 428, 2, '2016-06-27 22:22:12', '2016-06-27 22:22:12'),
(226, 449, 1, '2016-06-27 22:22:12', '2016-06-27 22:22:12'),
(227, 449, 2, '2016-06-27 22:22:12', '2016-06-27 22:22:12'),
(228, 450, 1, '2016-06-27 22:23:32', '2016-06-27 22:23:32'),
(229, 450, 2, '2016-06-27 22:23:32', '2016-06-27 22:23:32'),
(230, 456, 5, '2016-06-27 22:23:32', '2016-06-27 22:23:32'),
(231, 419, 8, '2016-06-27 22:23:32', '2016-06-27 22:23:32'),
(232, 457, 5, '2016-06-27 22:23:32', '2016-06-27 22:23:32'),
(233, 461, 5, '2016-06-27 22:24:43', '2016-06-27 22:24:43'),
(234, 460, 5, '2016-06-27 22:25:02', '2016-06-27 22:25:02'),
(235, 451, 6, '2016-06-27 22:25:02', '2016-06-27 22:25:02'),
(236, 424, 5, '2016-06-27 22:25:23', '2016-06-27 22:25:23'),
(237, 417, 5, '2016-06-27 22:25:23', '2016-06-27 22:25:23'),
(238, 418, 5, '2016-06-27 22:25:23', '2016-06-27 22:25:23'),
(239, 426, 1, '2016-06-27 22:26:06', '2016-06-27 22:26:06'),
(240, 426, 2, '2016-06-27 22:26:06', '2016-06-27 22:26:06'),
(241, 425, 5, '2016-06-27 22:26:14', '2016-06-27 22:26:14'),
(242, 466, 5, '2016-06-27 22:26:17', '2016-06-27 22:26:17'),
(244, 427, 1, '2016-06-27 22:28:38', '2016-06-27 22:28:38'),
(245, 427, 2, '2016-06-27 22:28:38', '2016-06-27 22:28:38'),
(246, 467, 5, '2016-06-27 22:28:38', '2016-06-27 22:28:38'),
(247, 462, 5, '2016-06-27 22:28:39', '2016-06-27 22:28:39'),
(248, 463, 5, '2016-06-27 22:28:39', '2016-06-27 22:28:39'),
(249, 468, 5, '2016-06-27 22:28:39', '2016-06-27 22:28:39'),
(250, 469, 6, '2016-06-27 22:28:39', '2016-06-27 22:28:39'),
(252, 452, 8, '2016-06-27 22:28:56', '2016-06-27 22:28:56'),
(253, 453, 8, '2016-06-27 22:29:01', '2016-06-27 22:29:01'),
(258, 471, 8, '2016-06-27 22:29:13', '2016-06-27 22:29:13'),
(259, 368, 8, '2016-06-27 22:29:37', '2016-06-27 22:29:37'),
(260, 370, 8, '2016-06-27 22:29:37', '2016-06-27 22:29:37'),
(261, 371, 8, '2016-06-27 22:29:37', '2016-06-27 22:29:37'),
(262, 381, 8, '2016-06-27 22:29:37', '2016-06-27 22:29:37'),
(263, 382, 8, '2016-06-27 22:30:19', '2016-06-27 22:30:19'),
(264, 384, 8, '2016-06-27 22:30:19', '2016-06-27 22:30:19'),
(265, 383, 8, '2016-06-27 22:30:19', '2016-06-27 22:30:19'),
(266, 398, 8, '2016-06-27 22:30:19', '2016-06-27 22:30:19'),
(267, 402, 8, '2016-06-27 22:30:19', '2016-06-27 22:30:19'),
(268, 403, 8, '2016-06-27 22:30:19', '2016-06-27 22:30:19'),
(269, 399, 8, '2016-06-27 22:30:19', '2016-06-27 22:30:19'),
(270, 400, 8, '2016-06-27 22:30:19', '2016-06-27 22:30:19'),
(271, 401, 8, '2016-06-27 22:30:19', '2016-06-27 22:30:19'),
(272, 411, 8, '2016-06-27 22:30:35', '2016-06-27 22:30:35'),
(273, 413, 8, '2016-06-27 22:30:35', '2016-06-27 22:30:35'),
(274, 412, 8, '2016-06-27 22:30:35', '2016-06-27 22:30:35'),
(275, 420, 8, '2016-06-27 22:30:53', '2016-06-27 22:30:53'),
(276, 421, 8, '2016-06-27 22:30:53', '2016-06-27 22:30:53'),
(277, 306, 1, '2016-06-27 22:31:30', '2016-06-27 22:31:30'),
(278, 306, 2, '2016-06-27 22:31:30', '2016-06-27 22:31:30'),
(279, 308, 2, '2016-06-27 22:31:30', '2016-06-27 22:31:30'),
(280, 356, 2, '2016-06-27 22:31:30', '2016-06-27 22:31:30'),
(281, 358, 2, '2016-06-27 22:31:30', '2016-06-27 22:31:30'),
(282, 307, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(283, 357, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(284, 363, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(285, 309, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(286, 311, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(287, 312, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(288, 359, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(289, 361, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(290, 362, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(291, 310, 2, '2016-06-27 22:31:53', '2016-06-27 22:31:53'),
(292, 360, 1, '2016-06-27 22:32:03', '2016-06-27 22:32:03'),
(293, 360, 2, '2016-06-27 22:32:03', '2016-06-27 22:32:03'),
(294, 429, 8, '2016-06-27 22:33:12', '2016-06-27 22:33:12'),
(295, 435, 8, '2016-06-27 22:33:12', '2016-06-27 22:33:12'),
(296, 430, 8, '2016-06-27 22:33:12', '2016-06-27 22:33:12'),
(297, 431, 8, '2016-06-27 22:33:12', '2016-06-27 22:33:12'),
(298, 433, 8, '2016-06-27 22:33:12', '2016-06-27 22:33:12'),
(299, 434, 8, '2016-06-27 22:33:12', '2016-06-27 22:33:12'),
(300, 432, 8, '2016-06-27 22:33:51', '2016-06-27 22:33:51'),
(301, 439, 8, '2016-06-27 22:33:51', '2016-06-27 22:33:51'),
(302, 441, 8, '2016-06-27 22:33:51', '2016-06-27 22:33:51'),
(303, 442, 8, '2016-06-27 22:33:51', '2016-06-27 22:33:51'),
(304, 410, 8, '2016-06-27 22:34:44', '2016-06-27 22:34:44'),
(305, 375, 8, '2016-06-27 22:34:44', '2016-06-27 22:34:44'),
(306, 376, 8, '2016-06-27 22:34:44', '2016-06-27 22:34:44'),
(307, 377, 8, '2016-06-27 22:34:44', '2016-06-27 22:34:44'),
(308, 379, 8, '2016-06-27 22:34:44', '2016-06-27 22:34:44'),
(309, 380, 8, '2016-06-27 22:34:44', '2016-06-27 22:34:44'),
(310, 378, 8, '2016-06-27 22:34:44', '2016-06-27 22:34:44'),
(311, 466, 6, '2016-06-30 12:52:18', '2016-06-30 12:52:18'),
(312, 468, 6, '2016-06-30 12:52:18', '2016-06-30 12:52:18'),
(318, 470, 5, '2016-07-01 12:22:59', '2016-07-01 12:22:59'),
(319, 470, 6, '2016-07-01 12:22:59', '2016-07-01 12:22:59'),
(320, 475, 1, '2016-07-01 12:45:32', '2016-07-01 12:45:32'),
(321, 476, 1, '2016-07-01 12:45:32', '2016-07-01 12:45:32'),
(322, 448, 1, '2016-07-19 13:00:34', '2016-07-19 13:00:34'),
(323, 448, 2, '2016-07-19 13:00:34', '2016-07-19 13:00:34'),
(326, 332, 8, '2016-07-20 15:04:24', '2016-07-20 15:04:24'),
(327, 330, 8, '2016-07-20 15:10:55', '2016-07-20 15:10:55'),
(328, 367, 8, '2016-07-20 15:22:14', '2016-07-20 15:22:14'),
(329, 345, 1, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(330, 345, 2, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(331, 347, 1, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(332, 347, 2, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(333, 346, 1, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(334, 346, 2, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(335, 348, 1, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(336, 348, 2, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(337, 354, 1, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(338, 354, 2, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(339, 355, 1, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(340, 355, 2, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(341, 353, 1, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(342, 353, 2, '2016-07-20 15:37:41', '2016-07-20 15:37:41'),
(343, 480, 1, '2016-07-21 02:55:33', '2016-07-21 02:55:33'),
(344, 480, 2, '2016-07-21 02:55:33', '2016-07-21 02:55:33'),
(345, 479, 1, '2016-07-21 02:55:44', '2016-07-21 02:55:44'),
(346, 479, 2, '2016-07-21 02:55:44', '2016-07-21 02:55:44'),
(347, 367, 1, '2016-07-21 03:16:26', '2016-07-21 03:16:26'),
(348, 367, 2, '2016-07-21 03:16:26', '2016-07-21 03:16:26'),
(349, 367, 5, '2016-07-21 03:16:26', '2016-07-21 03:16:26'),
(350, 367, 6, '2016-07-21 03:16:26', '2016-07-21 03:16:26'),
(351, 443, 8, '2016-07-21 03:20:53', '2016-07-21 03:20:53'),
(352, 444, 8, '2016-07-21 03:20:53', '2016-07-21 03:20:53'),
(353, 445, 8, '2016-07-21 03:20:53', '2016-07-21 03:20:53'),
(354, 446, 8, '2016-07-21 03:20:53', '2016-07-21 03:20:53'),
(355, 447, 8, '2016-07-21 03:20:53', '2016-07-21 03:20:53'),
(356, 333, 8, '2016-07-21 03:20:53', '2016-07-21 03:20:53'),
(357, 344, 8, '2016-07-21 03:20:53', '2016-07-21 03:20:53'),
(358, 374, 8, '2016-07-21 03:20:53', '2016-07-21 03:20:53'),
(359, 373, 8, '2016-07-21 03:20:53', '2016-07-21 03:20:53'),
(360, 459, 5, '2016-07-21 03:21:06', '2016-07-21 03:21:06'),
(361, 458, 5, '2016-07-21 03:21:06', '2016-07-21 03:21:06'),
(362, 404, 5, '2016-07-21 03:21:25', '2016-07-21 03:21:25'),
(363, 405, 5, '2016-07-21 03:21:25', '2016-07-21 03:21:25'),
(364, 406, 5, '2016-07-21 03:21:25', '2016-07-21 03:21:25'),
(365, 408, 5, '2016-07-21 03:21:25', '2016-07-21 03:21:25'),
(366, 409, 5, '2016-07-21 03:21:25', '2016-07-21 03:21:25'),
(367, 407, 5, '2016-07-21 03:21:25', '2016-07-21 03:21:25'),
(368, 393, 6, '2016-07-21 03:21:32', '2016-07-21 03:21:32'),
(369, 394, 6, '2016-07-21 03:21:32', '2016-07-21 03:21:32'),
(370, 395, 6, '2016-07-21 03:21:32', '2016-07-21 03:21:32'),
(371, 396, 6, '2016-07-21 03:21:32', '2016-07-21 03:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` enum('M','F','Other') DEFAULT NULL,
  `featuredProfile` enum('Y','N') DEFAULT 'N',
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `profilePic` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `userID`, `firstName`, `lastName`, `middleName`, `DOB`, `gender`, `featuredProfile`, `email`, `phone`, `summary`, `profilePic`, `created_at`, `updated_at`) VALUES
(22, 27, 'Nurun Nobi', 'Shamim', '', '1991-01-04', 'M', 'N', 'root@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '13f4c2b413086f283eca508f281c0c8b.jpg', '2016-07-22 00:06:06', '2016-07-22 00:36:15'),
(23, 28, 'Nurun Nobi Shamim', '', '', '1987-01-31', 'M', 'N', 'shamim@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '13f4c2b413086f283eca508f281c0c8b.jpg', NULL, '2016-07-22 02:50:37'),
(25, 29, 'Rahim Mullla', '', '', '1987-01-31', 'M', 'N', 'rahim_mullla@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', 'Venu_Srinivasan_TVS_Motor_Chairman.jpg', NULL, '2016-07-22 02:50:37'),
(26, 30, 'Mizanur Rahman', '', '', '1987-01-31', 'M', 'N', 'mizanur_rahman@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '1aed56d71695a98aa9cfab142a471c93.jpg', NULL, '2016-07-22 02:50:37'),
(27, 32, 'Kamrul Hasan', '', '', '1987-01-31', 'M', 'N', 'kamrul_hasan@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '13f4c2b413086f283eca508f1c0c8b.jpg', NULL, '2016-07-22 02:50:37'),
(28, 33, 'Rubel Hasan', '', '', '1987-01-31', 'M', 'N', 'rubel_hasan@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '13f4c2b4086f283eca508f1c0c8b.jpg', NULL, '2016-07-22 02:50:37'),
(29, 34, 'Shahed Tanvir', '', '', '1987-01-31', 'M', 'N', 'shahed_tanvir@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', 'carl-henric-svanberg-bp.jpg', NULL, '2016-07-22 02:50:37'),
(30, 35, 'Rahul Badsha', '', '', '1987-01-31', 'M', 'N', 'rahul_badsha@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '13f4c2b4186f283eca508f281c0c8b.jpg', NULL, '2016-07-22 02:50:37'),
(31, 36, 'Kamal Uddin', '', '', '1987-01-31', 'M', 'N', 'kamal_uddin@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '13f4c2b418283eca508f281c0c8b.jpg', NULL, '2016-07-22 02:50:37'),
(32, 37, 'Sabuj Hosain', '', '', '1987-01-31', 'M', 'N', 'sabuj_hosain@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '1aed56d71695a98aa9cfab142a471c93.jpg', NULL, '2016-07-22 02:50:37'),
(34, 39, 'Nurun Nobi Shamim', '', '', '1996-07-01', 'M', 'N', 'shamim25@gmail.com', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '85de6f12a204a1080c4b9d931eae6398.jpg', NULL, '2016-07-25 00:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `profile_education`
--

CREATE TABLE `profile_education` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `institutionID` int(11) DEFAULT NULL,
  `degreeID` int(11) DEFAULT NULL,
  `subjectName` varchar(45) DEFAULT NULL,
  `startedOn` date DEFAULT NULL,
  `endedOn` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_education`
--

INSERT INTO `profile_education` (`id`, `profileID`, `institutionID`, `degreeID`, `subjectName`, `startedOn`, `endedOn`, `created_at`, `updated_at`) VALUES
(4, 25, 1, 7, 'Computer Science &amp; Technology', '2011-07-15', '2015-07-23', '2016-07-22 17:31:25', '2016-07-22 17:31:25'),
(5, 25, 2, 8, 'SSC', '2009-07-01', '2011-04-15', '2016-07-22 17:36:58', '2016-07-22 17:36:58'),
(6, 23, 2, 8, 'SSC', '2007-07-12', '2009-07-01', '2016-07-22 20:33:20', '2016-07-22 20:33:20'),
(7, 23, 2, 9, 'HSC', '2009-08-15', '2011-07-23', '2016-07-22 20:33:55', '2016-07-22 20:33:55'),
(10, 23, 5, 1, 'Computer Science &amp; Engineering', '2011-10-24', '2015-11-27', '2016-07-22 20:50:29', '2016-07-22 20:50:29'),
(11, 26, 5, 1, 'Computer Science &amp; Engineering', '2011-10-24', '2015-11-27', '2016-07-22 20:50:29', '2016-07-22 20:50:29'),
(12, 27, 5, 1, 'Computer Science &amp; Engineering', '2011-10-24', '2015-11-27', '2016-07-22 20:50:29', '2016-07-22 20:50:29'),
(13, 28, 5, 1, 'Computer Science &amp; Engineering', '2011-10-24', '2015-11-27', '2016-07-22 20:50:29', '2016-07-22 20:50:29'),
(14, 29, 5, 1, 'Computer Science &amp; Engineering', '2011-10-24', '2015-11-27', '2016-07-22 20:50:29', '2016-07-22 20:50:29'),
(15, 30, 1, 7, 'Computer Science &amp; Technology', '2011-07-15', '2015-07-23', '2016-07-22 17:31:25', '2016-07-22 17:31:25'),
(16, 31, 1, 7, 'Computer Science &amp; Technology', '2011-07-15', '2015-07-23', '2016-07-22 17:31:25', '2016-07-22 17:31:25'),
(17, 32, 1, 7, 'Computer Science &amp; Technology', '2011-07-15', '2015-07-23', '2016-07-22 17:31:25', '2016-07-22 17:31:25'),
(18, 22, 2, 8, 'SSC', '2009-07-01', '2011-04-15', '2016-07-22 17:36:58', '2016-07-22 17:36:58'),
(19, 22, 2, 8, 'SSC', '2007-07-12', '2009-07-01', '2016-07-22 20:33:20', '2016-07-22 20:33:20'),
(20, 22, 5, 1, 'Computer Science &amp; Engineering', '2011-10-24', '2015-11-27', '2016-07-22 20:50:29', '2016-07-22 20:50:29'),
(21, 23, 2, 8, 'SSC', '2009-07-01', '2011-04-15', '2016-07-22 17:36:58', '2016-07-22 17:36:58'),
(22, 23, 2, 8, 'SSC', '2007-07-12', '2009-07-01', '2016-07-22 20:33:20', '2016-07-22 20:33:20'),
(23, 23, 5, 1, 'Computer Science &amp; Engineering', '2011-10-24', '2015-11-27', '2016-07-22 20:50:29', '2016-07-22 20:50:29'),
(24, 34, 1, 7, 'Computer Science &amp; Technology', '2011-07-08', '2015-07-24', '2016-07-25 00:52:14', '2016-07-25 00:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `profile_experiences`
--

CREATE TABLE `profile_experiences` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `startedOn` date DEFAULT NULL,
  `endedOn` date DEFAULT NULL,
  `jobSummary` varchar(1000) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_experiences`
--

INSERT INTO `profile_experiences` (`id`, `profileID`, `companyID`, `startedOn`, `endedOn`, `jobSummary`, `jobTitle`, `created_at`, `updated_at`) VALUES
(2, 25, 2, '2013-07-05', '2016-07-13', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod.', 'Php Developer', '2016-07-22 18:57:24', '2016-07-22 18:57:24'),
(5, 23, 5, '2014-07-01', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae ', 'Php Developer', '2016-07-22 21:11:38', '2016-07-22 21:11:38'),
(6, 30, 2, '2014-07-02', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde.', 'Php Developer', '2016-07-23 20:45:41', '2016-07-23 20:45:41'),
(7, 31, 5, '2014-07-02', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde.', 'Php Developer', '2016-07-23 20:45:41', '2016-07-23 20:45:41'),
(8, 32, 7, '2014-07-02', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde.', 'Php Developer', '2016-07-23 20:45:41', '2016-07-23 20:45:41'),
(9, 26, 6, '2016-06-01', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', 'JAVA DEVELOPER', '2016-07-23 20:54:45', '2016-07-23 20:54:45'),
(10, 27, 7, '2013-07-01', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', 'Web Developer', '2016-07-23 20:57:09', '2016-07-23 20:57:09'),
(11, 28, 8, '2014-07-01', NULL, 'Lorem ipsum Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet', 'iOS Developer', '2016-07-24 22:30:25', '2016-07-24 22:30:25'),
(12, 29, 9, '2011-04-01', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde.', 'Codeigniter Developer', '2016-07-24 23:00:45', '2016-07-24 23:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `profile_recommendations`
--

CREATE TABLE `profile_recommendations` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `recommendationBy` int(11) DEFAULT NULL,
  `recommendationText` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_recommendations`
--

INSERT INTO `profile_recommendations` (`id`, `profileID`, `recommendationBy`, `recommendationText`, `created_at`, `updated_at`) VALUES
(1, 23, 25, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:21', '2016-07-22 19:10:21'),
(2, 23, 28, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:25', '2016-07-22 19:10:25'),
(3, 26, 25, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(4, 22, 27, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(5, 22, 30, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(6, 25, 29, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(7, 25, 30, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(8, 26, 32, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(9, 31, 28, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(10, 27, 22, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(11, 28, 30, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(12, 29, 25, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(13, 29, 25, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(14, 30, 22, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(15, 31, 28, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(16, 29, 32, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(17, 29, 32, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(18, 32, 30, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(19, 22, 30, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(20, 22, 28, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(21, 22, 29, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(22, 23, 29, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(23, 25, 28, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31'),
(24, 23, 30, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquid facere ipsum magnam maxime molestiae nemo numquam quod, rerum suscipit tempore temporibus unde? Amet earum eveniet repellat soluta voluptatem!', '2016-07-22 19:10:31', '2016-07-22 19:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `profile_skills`
--

CREATE TABLE `profile_skills` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `skillID` int(11) DEFAULT NULL,
  `skillRange` int(3) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_skills`
--

INSERT INTO `profile_skills` (`id`, `profileID`, `skillID`, `skillRange`, `created_at`, `updated_at`) VALUES
(17, 25, 1, 95, '2016-07-22 06:26:44', '2016-07-22 06:26:44'),
(18, 25, 2, 55, '2016-07-22 06:26:56', '2016-07-22 06:26:56'),
(23, 25, 11, 70, '2016-07-22 06:28:46', '2016-07-22 06:28:46'),
(25, 26, 1, 94, '2016-07-22 06:26:44', '2016-07-22 06:26:44'),
(26, 26, 2, 60, '2016-07-22 06:26:56', '2016-07-22 06:26:56'),
(27, 26, 9, 88, '2016-07-22 06:27:06', '2016-07-22 06:27:06'),
(28, 26, 10, 82, '2016-07-22 06:27:48', '2016-07-22 06:28:05'),
(29, 26, 13, 72, '2016-07-22 06:28:19', '2016-07-22 06:28:19'),
(30, 27, 1, 88, '2016-07-22 06:26:44', '2016-07-22 06:26:44'),
(31, 27, 9, 98, '2016-07-22 06:27:06', '2016-07-22 06:27:06'),
(32, 27, 10, 77, '2016-07-22 06:27:48', '2016-07-22 06:28:05'),
(33, 27, 13, 88, '2016-07-22 06:28:19', '2016-07-22 06:28:19'),
(34, 28, 13, 75, '2016-07-22 06:28:19', '2016-07-22 06:28:19'),
(35, 28, 1, 95, '2016-07-22 06:26:44', '2016-07-22 06:26:44'),
(36, 28, 2, 55, '2016-07-22 06:26:56', '2016-07-22 06:26:56'),
(37, 28, 9, 85, '2016-07-22 06:27:06', '2016-07-22 06:27:06'),
(38, 28, 10, 80, '2016-07-22 06:27:48', '2016-07-22 06:28:05'),
(39, 29, 11, 70, '2016-07-22 06:28:46', '2016-07-22 06:28:46'),
(40, 29, 1, 94, '2016-07-22 06:26:44', '2016-07-22 06:26:44'),
(43, 30, 2, 60, '2016-07-22 06:26:56', '2016-07-22 06:26:56'),
(44, 30, 9, 88, '2016-07-22 06:27:06', '2016-07-22 06:27:06'),
(45, 30, 10, 82, '2016-07-22 06:27:48', '2016-07-22 06:28:05'),
(46, 30, 1, 94, '2016-07-22 06:26:44', '2016-07-22 06:26:44'),
(47, 31, 1, 94, '2016-07-22 06:26:44', '2016-07-22 06:26:44'),
(48, 31, 13, 72, '2016-07-22 06:28:19', '2016-07-22 06:28:19'),
(49, 31, 9, 88, '2016-07-22 06:27:06', '2016-07-22 06:27:06'),
(50, 31, 2, 60, '2016-07-22 06:26:56', '2016-07-22 06:26:56'),
(51, 31, 10, 82, '2016-07-22 06:27:48', '2016-07-22 06:28:05'),
(52, 32, 1, 94, '2016-07-22 06:26:44', '2016-07-22 06:26:44'),
(53, 32, 2, 60, '2016-07-22 06:26:56', '2016-07-22 06:26:56'),
(54, 32, 9, 88, '2016-07-22 06:27:06', '2016-07-22 06:27:06'),
(55, 32, 10, 82, '2016-07-22 06:27:48', '2016-07-22 06:28:05'),
(56, 32, 13, 72, '2016-07-22 06:28:19', '2016-07-22 06:28:19'),
(57, 23, 1, 94, '2016-07-22 06:26:44', '2016-07-22 06:26:44'),
(58, 23, 2, 60, '2016-07-22 06:26:56', '2016-07-22 06:26:56'),
(59, 23, 9, 88, '2016-07-22 06:27:06', '2016-07-22 06:27:06'),
(60, 23, 10, 82, '2016-07-22 06:27:48', '2016-07-22 06:28:05'),
(61, 22, 13, 72, '2016-07-22 06:28:19', '2016-07-22 06:28:19'),
(62, 22, 9, 88, '2016-07-22 06:27:06', '2016-07-22 06:27:06'),
(63, 22, 2, 60, '2016-07-22 06:26:56', '2016-07-22 06:26:56'),
(64, 22, 10, 82, '2016-07-22 06:27:48', '2016-07-22 06:28:05'),
(65, 34, 1, 60, '2016-07-25 00:50:45', '2016-07-25 00:50:54'),
(66, 34, 2, 30, '2016-07-25 00:51:00', '2016-07-25 00:51:00'),
(67, 34, 9, 80, '2016-07-25 00:51:13', '2016-07-25 00:51:19'),
(68, 34, 1, 70, '2016-07-25 00:51:32', '2016-07-25 00:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `resetLink1` varchar(32) NOT NULL,
  `resetLink2` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `routeName` varchar(200) NOT NULL,
  `method` varchar(10) NOT NULL,
  `controller` varchar(150) NOT NULL,
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `routeName`, `method`, `controller`, `status`, `created_at`, `updated_at`) VALUES
(283, 'profile', 'GET', 'App\\Http\\Controllers\\profile@index', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(284, 'logout', 'GET', 'App\\Http\\Controllers\\loginController@logout', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(286, 'skills/create', 'GET', 'App\\Http\\Controllers\\skillsController@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(287, 'skills', 'POST', 'App\\Http\\Controllers\\skillsController@store', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(288, 'skills/{id}', 'GET', 'App\\Http\\Controllers\\skillsController@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(289, 'skills/{id}/edit', 'GET', 'App\\Http\\Controllers\\skillsController@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(290, 'skills/{id}', 'PUT', 'App\\Http\\Controllers\\skillsController@update', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(300, 'degrees/create', 'GET', 'App\\Http\\Controllers\\degreesController@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(301, 'degrees', 'POST', 'App\\Http\\Controllers\\degreesController@store', 'enable', '2016-04-04 21:45:58', '2016-04-04 20:49:39'),
(302, 'degrees/{id}', 'GET', 'App\\Http\\Controllers\\degreesController@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(303, 'degrees/{id}/edit', 'GET', 'App\\Http\\Controllers\\degreesController@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(304, 'degrees/{id}', 'PUT', 'App\\Http\\Controllers\\degreesController@update', 'enable', '2016-04-04 21:45:58', '2016-04-04 20:49:40'),
(305, 'degrees/{id}', 'DELETE', 'App\\Http\\Controllers\\degreesController@destroy', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(306, 'user/type', 'GET', 'App\\Http\\Controllers\\userType@index', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(307, 'user/type/create', 'GET', 'App\\Http\\Controllers\\userType@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(308, 'user/type', 'POST', 'App\\Http\\Controllers\\userType@store', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(309, 'user/type/{id}', 'GET', 'App\\Http\\Controllers\\userType@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(310, 'user/type/{id}/edit', 'GET', 'App\\Http\\Controllers\\userType@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(311, 'user/type/{id}', 'PUT', 'App\\Http\\Controllers\\userType@update', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(312, 'user/type/{id}', 'DELETE', 'App\\Http\\Controllers\\userType@destroy', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(313, 'permission', 'GET', 'App\\Http\\Controllers\\PermissionController@index', 'enable', '2016-04-04 21:45:58', '2016-04-11 10:19:36'),
(314, 'permission/create', 'GET', 'App\\Http\\Controllers\\PermissionController@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(315, 'permission', 'POST', 'App\\Http\\Controllers\\PermissionController@store', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(316, 'permission/{id}', 'GET', 'App\\Http\\Controllers\\PermissionController@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(317, 'permission/{id}/edit', 'GET', 'App\\Http\\Controllers\\PermissionController@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(318, 'permission/{id}', 'PUT', 'App\\Http\\Controllers\\PermissionController@update', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(319, 'permission/{id}', 'DELETE', 'App\\Http\\Controllers\\PermissionController@destroy', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(320, 'route', 'GET', 'App\\Http\\Controllers\\routeController@index', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(321, 'route/create', 'GET', 'App\\Http\\Controllers\\routeController@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(322, 'route', 'POST', 'App\\Http\\Controllers\\routeController@store', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(323, 'route/{id}', 'GET', 'App\\Http\\Controllers\\routeController@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(324, 'route/{id}/edit', 'GET', 'App\\Http\\Controllers\\routeController@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(325, 'route/{id}', 'PUT', 'App\\Http\\Controllers\\routeController@update', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(326, 'route/{id}', 'DELETE', 'App\\Http\\Controllers\\routeController@destroy', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(327, 'password/forgot', 'GET', 'App\\Http\\Controllers\\forgotController@index', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(328, 'password/forgot', 'POST', 'App\\Http\\Controllers\\forgotController@reset', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(329, 'password/reset/{resetLink}', 'GET', 'App\\Http\\Controllers\\forgotController@resetConfirmation', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(330, 'password/reset', 'POST', 'App\\Http\\Controllers\\forgotController@resetAction', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(331, 'login', 'POST', 'App\\Http\\Controllers\\loginController@auth', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(332, 'activation/code', 'GET', 'App\\Http\\Controllers\\loginController@activationForm', 'enable', '2016-04-04 22:53:33', '2016-04-04 21:25:27'),
(333, 'activation/code', 'POST', 'App\\Http\\Controllers\\loginController@activationCode', 'enable', '2016-04-04 21:45:58', '2016-04-04 20:58:55'),
(335, 'mail/resend', 'POST', 'App\\Http\\Controllers\\resendActivationController@resend', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(336, 'signup', 'GET', 'App\\Http\\Controllers\\SignUpController@index', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(337, 'signup', 'POST', 'App\\Http\\Controllers\\SignUpController@store', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(338, 'login', 'GET', 'App\\Http\\Controllers\\loginController@index', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(340, 'test', 'GET', 'App\\Http\\Controllers\\test@index', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(341, 'skills/{id}', 'DELETE', 'App\\Http\\Controllers\\skillsController@destroy', 'enable', '2016-04-04 21:50:52', '0000-00-00 00:00:00'),
(343, 'skills', 'GET', 'App\\Http\\Controllers\\skillsController@index', 'enable', '2016-04-04 22:45:41', '0000-00-00 00:00:00'),
(344, 'activation/link/{link}', 'GET', 'App\\Http\\Controllers\\loginController@activationLink', 'enable', '2016-04-04 22:56:28', '2016-04-04 20:58:54'),
(345, 'categories', 'GET', 'App\\Http\\Controllers\\categoriesController@index', 'enable', '2016-04-04 22:56:43', '2016-04-08 07:59:43'),
(346, 'categories/create', 'GET', 'App\\Http\\Controllers\\categoriesController@create', 'enable', '2016-04-04 22:56:43', '0000-00-00 00:00:00'),
(347, 'categories', 'POST', 'App\\Http\\Controllers\\categoriesController@store', 'enable', '2016-04-04 22:56:43', '0000-00-00 00:00:00'),
(348, 'categories/{id}', 'GET', 'App\\Http\\Controllers\\categoriesController@show', 'enable', '2016-04-04 22:56:43', '0000-00-00 00:00:00'),
(352, 'degrees', 'GET', 'App\\Http\\Controllers\\degreesController@index', 'enable', '2016-04-04 22:56:43', '0000-00-00 00:00:00'),
(353, 'categories/{id}/edit', 'GET', 'App\\Http\\Controllers\\categoriesController@edit', 'enable', '2016-04-04 22:58:57', '0000-00-00 00:00:00'),
(354, 'categories/{id}', 'PUT', 'App\\Http\\Controllers\\categoriesController@update', 'enable', '2016-04-04 22:58:57', '0000-00-00 00:00:00'),
(355, 'categories/{id}', 'DELETE', 'App\\Http\\Controllers\\categoriesController@destroy', 'enable', '2016-04-04 22:58:57', '0000-00-00 00:00:00'),
(356, 'user/type', 'GET', 'App\\Http\\Controllers\\userTypeController@index', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(357, 'user/type/create', 'GET', 'App\\Http\\Controllers\\userTypeController@create', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(358, 'user/type', 'POST', 'App\\Http\\Controllers\\userTypeController@store', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(359, 'user/type/{id}', 'GET', 'App\\Http\\Controllers\\userTypeController@show', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(360, 'user/type/{id}/edit', 'GET', 'App\\Http\\Controllers\\userTypeController@edit', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(361, 'user/type/{id}', 'PUT', 'App\\Http\\Controllers\\userTypeController@update', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(362, 'user/type/{id}', 'DELETE', 'App\\Http\\Controllers\\userTypeController@destroy', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(363, 'user/type/status/{id}/{status}', 'GET', 'App\\Http\\Controllers\\userTypeController@status', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(364, 'route/status/{id}/{status}', 'GET', 'App\\Http\\Controllers\\routeController@status', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(365, 'test/{id}', 'GET', 'App\\Http\\Controllers\\test@index', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(367, '/', 'GET', 'App\\Http\\Controllers\\homeController@index', 'enable', '2016-04-05 13:45:10', '2016-07-21 03:18:38'),
(368, 'profile', 'GET', 'App\\Http\\Controllers\\profileController@index', 'enable', '2016-04-07 19:57:07', '0000-00-00 00:00:00'),
(369, 'dashboard', 'GET', 'App\\Http\\Controllers\\dashboardController@index', 'enable', '2016-04-07 19:57:07', '0000-00-00 00:00:00'),
(370, 'profile', 'PUT', 'App\\Http\\Controllers\\profileController@update', 'enable', '2016-04-11 16:18:59', '0000-00-00 00:00:00'),
(371, 'profile/skills', 'GET', 'App\\Http\\Controllers\\profileSkillsController@index', 'enable', '2016-04-11 16:18:59', '0000-00-00 00:00:00'),
(373, 'ajax/education/search', 'GET', 'App\\Http\\Controllers\\educationController@ajaxSearch', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(374, 'ajax/company/search', 'GET', 'App\\Http\\Controllers\\experienceController@ajaxSearch', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(375, 'view/coverLetter/{id}', 'GET', 'App\\Http\\Controllers\\coverLetterController@view', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(376, 'view/education/{id}', 'GET', 'App\\Http\\Controllers\\educationController@view', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(377, 'view/experience/{id}', 'GET', 'App\\Http\\Controllers\\experienceController@view', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(378, 'view/skills/{id}', 'GET', 'App\\Http\\Controllers\\profileSkillsController@view', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(379, 'view/profile/{id}', 'GET', 'App\\Http\\Controllers\\profileController@view', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(380, 'view/recommendations/{id}', 'GET', 'App\\Http\\Controllers\\recommendationController@view', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(381, 'profile/skills', 'POST', 'App\\Http\\Controllers\\profileSkillsController@store', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(382, 'profile/skills/{id}', 'DELETE', 'App\\Http\\Controllers\\profileSkillsController@destroy', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(383, 'profile/skills/{id}/edit', 'GET', 'App\\Http\\Controllers\\profileSkillsController@edit', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(384, 'profile/skills/{id}', 'PUT', 'App\\Http\\Controllers\\profileSkillsController@update', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(385, 'education', 'GET', 'App\\Http\\Controllers\\educationController@index', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(386, 'education/add', 'GET', 'App\\Http\\Controllers\\educationController@add', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(387, 'education/add', 'POST', 'App\\Http\\Controllers\\educationController@store', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(388, 'education/{id}', 'DELETE', 'App\\Http\\Controllers\\educationController@destroy', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(389, 'experience', 'GET', 'App\\Http\\Controllers\\experienceController@index', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(390, 'experience/add', 'GET', 'App\\Http\\Controllers\\experienceController@add', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(391, 'experience/add', 'POST', 'App\\Http\\Controllers\\experienceController@store', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(392, 'experience/{id}', 'DELETE', 'App\\Http\\Controllers\\experienceController@destroy', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(393, 'coverLetter', 'GET', 'App\\Http\\Controllers\\coverLetterController@index', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(394, 'coverLetter/add', 'GET', 'App\\Http\\Controllers\\coverLetterController@add', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(395, 'coverLetter/add', 'POST', 'App\\Http\\Controllers\\coverLetterController@store', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(396, 'coverLetter/{id}/edit', 'GET', 'App\\Http\\Controllers\\coverLetterController@edit', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(397, 'coverLetter/{id}/edit', 'POST', 'App\\Http\\Controllers\\coverLetterController@update', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(398, 'recommendations', 'GET', 'App\\Http\\Controllers\\recommendationController@index', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(399, 'recommendations/{id}/add', 'GET', 'App\\Http\\Controllers\\recommendationController@create', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(400, 'recommendations/{id}/add', 'POST', 'App\\Http\\Controllers\\recommendationController@store', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(401, 'recommendations/{id}/edit', 'GET', 'App\\Http\\Controllers\\recommendationController@edit', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(402, 'recommendations/{id}', 'DELETE', 'App\\Http\\Controllers\\recommendationController@destroy', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(403, 'recommendations/{id}', 'PUT', 'App\\Http\\Controllers\\recommendationController@update', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(404, 'company', 'GET', 'App\\Http\\Controllers\\companyController@index', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(405, 'company/create', 'GET', 'App\\Http\\Controllers\\companyController@create', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(406, 'company/create', 'POST', 'App\\Http\\Controllers\\companyController@store', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(407, 'company/{id}/edit', 'GET', 'App\\Http\\Controllers\\companyController@edit', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(408, 'company/{id}', 'PUT', 'App\\Http\\Controllers\\companyController@update', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(409, 'company/{id}/delete', 'GET', 'App\\Http\\Controllers\\companyController@destroy', 'enable', '2016-04-29 14:59:22', '0000-00-00 00:00:00'),
(410, 'view/company/{id}', 'GET', 'App\\Http\\Controllers\\companyController@view', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(411, 'settings', 'GET', 'App\\Http\\Controllers\\settingsGeneralController@index', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(412, 'settings/user/Name', 'PUT', 'App\\Http\\Controllers\\settingsGeneralController@userNameUpdate', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(413, 'settings/password/change', 'PUT', 'App\\Http\\Controllers\\settingsGeneralController@passwordUpdate', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(414, 'jobs', 'GET', 'App\\Http\\Controllers\\jobsController@index', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(415, 'jobs/create', 'GET', 'App\\Http\\Controllers\\jobsController@create', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(416, 'jobs/create', 'POST', 'App\\Http\\Controllers\\jobsController@store', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(417, 'jobs/{id}/edit', 'GET', 'App\\Http\\Controllers\\jobsController@edit', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(418, 'jobs/{id}/edit', 'POST', 'App\\Http\\Controllers\\jobsController@update', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(419, 'jobs/{id}', 'GET', 'App\\Http\\Controllers\\jobsController@view', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(420, 'socialite/{service}', 'GET', 'App\\Http\\Controllers\\socialiteController@index', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(421, 'socialite/{service}/callback', 'GET', 'App\\Http\\Controllers\\socialiteController@callback', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(422, 'test/socialite/{email}', 'GET', 'App\\Http\\Controllers\\socialiteController@findOrCreateByEmail', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(423, 'test/socialite', 'GET', 'App\\Http\\Controllers\\socialiteController@test', 'enable', '2016-05-13 16:39:48', '0000-00-00 00:00:00'),
(424, 'jobs/{id}/delete', 'GET', 'App\\Http\\Controllers\\jobsController@destroy', 'enable', '2016-05-17 22:55:47', '0000-00-00 00:00:00'),
(425, 'jobs/{id}/featured/apply', 'GET', 'App\\Http\\Controllers\\jobsController@applyFeatured', 'enable', '2016-05-17 22:55:47', '0000-00-00 00:00:00'),
(426, 'jobs/{id}/featured', 'GET', 'App\\Http\\Controllers\\jobsController@featured', 'enable', '2016-05-17 22:55:47', '0000-00-00 00:00:00'),
(427, 'jobs/{id}/undeclared', 'GET', 'App\\Http\\Controllers\\jobsController@undeclared', 'enable', '2016-05-17 22:55:47', '0000-00-00 00:00:00'),
(428, 'jobs/featured/lists', 'GET', 'App\\Http\\Controllers\\jobsController@featuredListIndex', 'enable', '2016-05-17 22:55:47', '0000-00-00 00:00:00'),
(429, 'users/{id}/about', 'GET', 'App\\Http\\Controllers\\aboutController@view', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(430, 'users/{id}/education', 'GET', 'App\\Http\\Controllers\\educationController@view', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(431, 'users/{id}/experience', 'GET', 'App\\Http\\Controllers\\experienceController@view', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(432, 'users/{id}/skills', 'GET', 'App\\Http\\Controllers\\profileSkillsController@view', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(433, 'users/{id}/profile', 'GET', 'App\\Http\\Controllers\\profileController@view', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(434, 'users/{id}/recommendations', 'GET', 'App\\Http\\Controllers\\recommendationController@view', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(435, 'users/{id}/company', 'GET', 'App\\Http\\Controllers\\companyController@view', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(436, 'users', 'GET', 'App\\Http\\Controllers\\routeController@index', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(437, 'users/create', 'GET', 'App\\Http\\Controllers\\routeController@create', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(438, 'users', 'POST', 'App\\Http\\Controllers\\routeController@store', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(439, 'users/{users}', 'GET', 'App\\Http\\Controllers\\routeController@show', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(440, 'users/{users}/edit', 'GET', 'App\\Http\\Controllers\\routeController@edit', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(441, 'users/{users}', 'PUT', 'App\\Http\\Controllers\\routeController@update', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(442, 'users/{users}', 'DELETE', 'App\\Http\\Controllers\\routeController@destroy', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(443, 'about', 'GET', 'App\\Http\\Controllers\\aboutController@index', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(444, 'about/add', 'GET', 'App\\Http\\Controllers\\aboutController@add', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(445, 'about/add', 'POST', 'App\\Http\\Controllers\\aboutController@store', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(446, 'about/{id}/edit', 'GET', 'App\\Http\\Controllers\\aboutController@edit', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(447, 'about/{id}/edit', 'POST', 'App\\Http\\Controllers\\aboutController@update', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(448, 'jobs/{id}/remove', 'GET', 'App\\Http\\Controllers\\jobsController@remove', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(449, 'jobs/featured/{id}/refuse', 'GET', 'App\\Http\\Controllers\\jobsController@featuredRefuse', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(450, 'jobs/list', 'GET', 'App\\Http\\Controllers\\jobsController@jobList', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(451, 'jobs/{id}/application', 'POST', 'App\\Http\\Controllers\\jobsController@application', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(452, 'new', 'GET', 'App\\Http\\Controllers\\jobsController@newJobs', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(453, 'new/featured', 'GET', 'App\\Http\\Controllers\\jobsController@newFeaturedJob', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(454, 'job/search', 'GET', 'App\\Http\\Controllers\\jobsController@jobSearch', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(455, 'test1', 'GET', 'Closure', 'enable', '2016-06-08 23:31:15', '0000-00-00 00:00:00'),
(456, 'jobs/list/view', 'GET', 'App\\Http\\Controllers\\jobsController@ownJobsList', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(457, 'jobs/{id}/applicant', 'GET', 'App\\Http\\Controllers\\applicantInterviewController@applicant', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(458, 'applicant/{id}/shortList', 'POST', 'App\\Http\\Controllers\\applicantInterviewController@shortList', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(459, 'applicant/{id}/reject', 'POST', 'App\\Http\\Controllers\\applicantInterviewController@reject', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(460, 'jobs/{id}/applicant/shortList', 'GET', 'App\\Http\\Controllers\\applicantInterviewController@shortListView', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(461, 'jobs/{id}/applicant/new', 'GET', 'App\\Http\\Controllers\\applicantInterviewController@newApplicant', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(462, 'jobs/{jobsID}/applicant/{applicantID}/interview', 'GET', 'App\\Http\\Controllers\\applicantInterviewController@interviewCreate', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(463, 'jobs/{jobsID}/applicant/{applicantID}/interview', 'POST', 'App\\Http\\Controllers\\applicantInterviewController@interviewStore', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(464, 'interviews/{id}/edit', 'GET', 'App\\Http\\Controllers\\applicantInterviewController@edit', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(465, 'interviews/{id}/update', 'POST', 'App\\Http\\Controllers\\applicantInterviewController@update', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(466, 'jobs/{id}/interviews', 'GET', 'App\\Http\\Controllers\\applicantInterviewController@interview', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(467, 'jobs/{jobsID}/applicant/{applicantID}', 'GET', 'App\\Http\\Controllers\\applicantInterviewController@applicantView', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(468, 'jobs/{jobsID}/interviews/{interviewID}', 'GET', 'App\\Http\\Controllers\\applicantInterviewController@interviewView', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(469, 'my/jobs', 'GET', 'App\\Http\\Controllers\\jobsSeekerJobController@jobsApplicationList', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(470, 'my/jobs/{id}/interview', 'GET', 'App\\Http\\Controllers\\jobsSeekerJobController@jobsInterview', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(471, 'notification', 'GET', 'App\\Http\\Controllers\\notificationController@index', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(472, 'job/company/{id}', 'GET', 'App\\Http\\Controllers\\jobsController@jobCompany', 'enable', '2016-06-27 20:11:13', '0000-00-00 00:00:00'),
(473, 'signup/{type?}', 'GET', 'App\\Http\\Controllers\\SignUpController@index', 'enable', '2016-06-30 16:36:44', '0000-00-00 00:00:00'),
(474, 'signup/{type?}', 'POST', 'App\\Http\\Controllers\\SignUpController@store', 'enable', '2016-06-30 16:36:44', '0000-00-00 00:00:00'),
(475, 'signup/admin', 'POST', 'App\\Http\\Controllers\\SignUpController@store', 'enable', '2016-06-30 16:36:44', '0000-00-00 00:00:00'),
(476, 'signup/admin', 'GET', 'App\\Http\\Controllers\\SignUpController@adminCreate', 'enable', '2016-07-01 12:45:16', '0000-00-00 00:00:00'),
(477, 'permission/search', 'GET', 'App\\Http\\Controllers\\PermissionController@search', 'enable', '2016-07-20 16:55:54', NULL),
(478, 'signup/admin', 'POST', 'App\\Http\\Controllers\\SignUpController@adminStore', 'enable', '2016-07-20 16:55:54', NULL),
(479, 'users/list/view', 'GET', 'App\\Http\\Controllers\\usersController@index', 'enable', '2016-07-20 16:55:54', NULL),
(480, 'users/status/{userID}/{type}', 'GET', 'App\\Http\\Controllers\\usersController@statusChange', 'enable', '2016-07-21 02:55:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skillName` varchar(45) NOT NULL,
  `sortInd` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skillName`, `sortInd`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 1, '2016-04-09 05:26:08', '2016-04-08 23:26:08'),
(2, 'JS', 2, '2016-05-15 17:22:51', '2016-05-15 11:22:51'),
(3, 'Node.JS', 3, '2016-03-20 20:04:04', '0000-00-00 00:00:00'),
(8, 'Java', 4, '2016-03-29 16:18:35', '2016-03-29 10:18:35'),
(9, 'HTML', 5, '2016-04-09 05:25:13', '2016-04-08 23:25:13'),
(10, 'CSS', 6, '2016-04-08 23:25:23', '2016-04-08 23:25:23'),
(11, 'Laravel', 7, '2016-04-09 05:26:41', '2016-04-08 23:26:41'),
(12, 'Codeigniter', 8, '2016-04-08 23:27:35', '2016-04-08 23:27:35'),
(13, 'Mysql', 9, '2016-04-08 23:27:53', '2016-04-08 23:27:53'),
(14, 'jQuery', 10, '2016-04-09 05:28:41', '2016-04-08 23:28:41'),
(15, 'Angular JS', 11, '2016-04-08 23:29:41', '2016-04-08 23:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userType` enum('Root','Admin','Company','JobSeeker') DEFAULT 'JobSeeker',
  `userStatus` enum('Active','Blocked','InActive') DEFAULT 'InActive',
  `joinedOn` datetime DEFAULT NULL,
  `lastLoggedIn` datetime DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `password`, `userType`, `userStatus`, `joinedOn`, `lastLoggedIn`, `remember_token`, `created_at`, `updated_at`) VALUES
(27, 'nurunNobiShamimRoot', '$2y$10$NHPNE0mVMKtXawdvZAUTQe7u3rmDyP5trmszmNwpaEYHTiJ4GgJHO', 'Root', 'Active', NULL, NULL, 'DAIj4vx8JaYxQ1KyczE35Qah7WgVVOUpvLC7u8N213g0Ox4qQwHmkH2mEgnU', '2016-07-21 18:00:00', '2016-07-25 00:46:37'),
(28, 'nurunNobiShamim', '$2y$10$WN5GTSjN2VFGVpQEjj7PCO9.ipN19L947ttFAHctC.OGfbbd5TWK2', 'Company', 'Active', NULL, NULL, 'QpMThqSIpDBRS6kelRWxFDm8V2XfzKvAufo2wRQ7BMLTnsnvvtBdSokoufQC', '2016-07-21 18:00:00', '2016-07-25 03:34:22'),
(29, 'rahimMullla', '$2y$10$vPm6CqAR32L67rzz4L.BXu25rXbGLxDJ71zCfCXqpt.QYx8SVCb/S', 'Company', 'Active', NULL, NULL, 'jnIsyhbd3QaAvgMgD00I09Tr0Igy6rEt0VZCM6WYhNdDS5pgoJxoWhDo1WHa', '2016-07-21 18:00:00', '2016-07-25 03:25:38'),
(30, 'mizanurRahman', '$2y$10$L4KZewKZZdRYSvGyFm/OJ.aULwSL2Z/RD6n6ZPQtlOwBzNjQ5eURC', 'Company', 'Active', NULL, NULL, 'GRKj2HLIfJPPiFN2eCTlfvY0s3Eji03GYdNBByEpI9zzEKbVJSt15Vy74IMR', '2016-07-21 18:00:00', '2016-07-24 22:02:14'),
(32, 'kamrulHasan', '$2y$10$NmgCfmX6r6iXF3ampgBKhONjwi6hHSY80Y9RXo0Nyzdwmaxj29XX2', 'Company', 'Active', NULL, NULL, 'gqSCQyhjuaPolTvZUpmEhoonIKd8WVFF1mS9jynudspkI77NWk2SYeFZ9rSV', '2016-07-21 18:00:00', '2016-07-24 22:28:43'),
(33, 'rubelHasan', '$2y$10$V1CpyJr9kH.7cC60lYIHFOPNgT1w6ptVvPwx4lN1mQInm8bGGN/9O', 'Company', 'Active', NULL, NULL, '7HmQjemlUSXJnswrX4EexIRbPxbCtSAiNCKTLi4spstLIWrlZ4Yyunml7Jo5', '2016-07-21 18:00:00', '2016-07-24 22:54:30'),
(34, 'shahedTanvir', '$2y$10$qY9zOzT.J2UJrBhDQIrSF.Z5Cp3lfj1sbQ47nX8y5yiBcOVFS8ceq', 'Company', 'Active', NULL, NULL, 'FVLNlp9kjRzcv8QtdFKOeCMhcvdOHnHBknFXGqdiVNW5zapEghgdpkbCQ30E', '2016-07-21 18:00:00', '2016-07-24 23:24:35'),
(35, 'rahulBadsha', '$2y$10$U5A8hnuODuBkmD/FhtkcoezBttqyDMUd5IqaENEFsXVKscf2PiII6', 'JobSeeker', 'Active', NULL, NULL, 'RphlyFDhGGVIdZ6qf7UlJlFLYauw8t5eNyHtsvuASC40oo9kwcqbaL49ZHO0', '2016-07-21 18:00:00', '2016-07-25 03:34:43'),
(36, 'kamalUddin', '$2y$10$uCiuJvjQmRL8U9iFRhZLi.J8JOPlljNlozSoyeEJ0NxKW4enpZPGK', 'JobSeeker', 'Active', NULL, NULL, 'm0qauhApQs9iQPf1NX8VdW0XJWwdhAwiLTQgmbZls3jcszL6RqhjVnX3Ten9', '2016-07-21 18:00:00', '2016-07-25 03:35:00'),
(37, 'sabujHosain', '$2y$10$QbAsPikPbxpDBtr4b9eb/eV1AUvAvb4pM5lemmkR9WVONspFpd1Ry', 'JobSeeker', 'Active', NULL, NULL, 'pIKX3x58sf44MISi3eYlpNVGR7ybQ9FWIQ4yTh6Ti7slacmeoQ8r6OykvzWB', '2016-07-21 18:00:00', '2016-07-25 03:35:22'),
(39, 'nurun_nobi_shamim', '$2y$10$5krI9gVeptPW.2FFu1BI/.Iv/SFyBdp07lRyGIcftFECAfS0HZiRW', 'JobSeeker', 'Active', NULL, NULL, 'UswjpW6u50R85CzoRG07KrgWGmyvY8Q2YUpBpGn2SwSxsZlKN3aGhA6c1kTs', NULL, '2016-07-25 03:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `userType`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Root', 'enable', '2016-03-29 17:32:53', '2016-05-05 05:14:56'),
(2, 'Admin', 'enable', '2016-03-29 18:17:44', '2016-04-04 21:30:39'),
(5, 'Company', 'enable', '2016-03-29 18:24:10', '2016-04-05 06:47:27'),
(6, 'JobSeeker', 'enable', '2016-03-30 22:02:45', '2016-04-06 17:51:21'),
(8, 'Any', 'enable', '2016-03-31 00:25:17', '2016-04-06 17:49:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profileID` (`profileID`),
  ADD KEY `fkAboutProfileID_idx` (`profileID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coverletters`
--
ALTER TABLE `coverletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkEmployersUserID_idx` (`userID`),
  ADD KEY `fkEmployersCompanyID_idx` (`companyID`);

--
-- Indexes for table `featured_apply`
--
ALTER TABLE `featured_apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobsID` (`jobsID`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instituteCode_UNIQUE` (`instituteCode`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkInterviewsApplicantID_idx` (`applicantID`),
  ADD KEY `fkInterviewsJobID_idx` (`jobID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkJobsEmployerID_idx` (`employerID`),
  ADD KEY `fkJobsCategoryID_idx` (`jobCategory`),
  ADD FULLTEXT KEY `jobTitle` (`jobTitle`,`jobSummary`,`jobDescription`,`jobLocation`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkApplicantsJobID_idx` (`jobID`),
  ADD KEY `fkApplicantsProfileID_idx` (`profileID`),
  ADD KEY `fkApplicantsCoverLetterID_idx` (`coverLetterID`);

--
-- Indexes for table `mail_verification`
--
ALTER TABLE `mail_verification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userID` (`userID`),
  ADD KEY `userID_2` (`userID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkMessagesUserID_idx` (`userID`),
  ADD KEY `fkMessagesToWhom_idx` (`toWhome`),
  ADD KEY `fkMessagesJobID_idx` (`jobID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profileID` (`profileID`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fkProfilesUserID_idx` (`userID`),
  ADD KEY `email_2` (`email`),
  ADD FULLTEXT KEY `firstName` (`firstName`,`lastName`,`middleName`,`email`);

--
-- Indexes for table `profile_education`
--
ALTER TABLE `profile_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkEducationProfileID_idx` (`profileID`),
  ADD KEY `fkEducationInstitutionID_idx` (`institutionID`),
  ADD KEY `fkEducationDegreeID_idx` (`degreeID`);

--
-- Indexes for table `profile_experiences`
--
ALTER TABLE `profile_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkExperiencesProfileID_idx` (`profileID`),
  ADD KEY `fkExperiencesCompanyID_idx` (`companyID`);

--
-- Indexes for table `profile_recommendations`
--
ALTER TABLE `profile_recommendations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkRecommendationProfileID_idx` (`profileID`),
  ADD KEY `recommendationBy` (`recommendationBy`);

--
-- Indexes for table `profile_skills`
--
ALTER TABLE `profile_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skillID` (`skillID`),
  ADD KEY `profileID` (`profileID`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD FULLTEXT KEY `routeName` (`routeName`);
ALTER TABLE `routes`
  ADD FULLTEXT KEY `controller` (`controller`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName_UNIQUE` (`userName`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `coverletters`
--
ALTER TABLE `coverletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `featured_apply`
--
ALTER TABLE `featured_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `mail_verification`
--
ALTER TABLE `mail_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=372;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `profile_education`
--
ALTER TABLE `profile_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `profile_experiences`
--
ALTER TABLE `profile_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `profile_recommendations`
--
ALTER TABLE `profile_recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `profile_skills`
--
ALTER TABLE `profile_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=481;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `fkAboutProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `employers`
--
ALTER TABLE `employers`
  ADD CONSTRAINT `fkEmployersCompanyID` FOREIGN KEY (`companyID`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkEmployersUserID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `featured_apply`
--
ALTER TABLE `featured_apply`
  ADD CONSTRAINT `featured_apply_ibfk_1` FOREIGN KEY (`jobsID`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `fkInterviewsApplicantID` FOREIGN KEY (`applicantID`) REFERENCES `job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkInterviewsJobID` FOREIGN KEY (`jobID`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `fkJobsCategoryID` FOREIGN KEY (`jobCategory`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkJobsEmployerID` FOREIGN KEY (`employerID`) REFERENCES `employers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD CONSTRAINT `fkApplicantsCoverLetterID` FOREIGN KEY (`coverLetterID`) REFERENCES `coverletters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkApplicantsJobID` FOREIGN KEY (`jobID`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkApplicantsProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fkMessagesJobID` FOREIGN KEY (`jobID`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkMessagesToWhom` FOREIGN KEY (`toWhome`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkMessagesUserID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `fkProfilesUserID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile_education`
--
ALTER TABLE `profile_education`
  ADD CONSTRAINT `fkEducationDegreeID` FOREIGN KEY (`degreeID`) REFERENCES `degrees` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkEducationInstitutionID` FOREIGN KEY (`institutionID`) REFERENCES `institutes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkEducationProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `profile_experiences`
--
ALTER TABLE `profile_experiences`
  ADD CONSTRAINT `fkExperiencesCompanyID` FOREIGN KEY (`companyID`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkExperiencesProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `profile_recommendations`
--
ALTER TABLE `profile_recommendations`
  ADD CONSTRAINT `fkRecommendationProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `profile_recommendations_ibfk_1` FOREIGN KEY (`recommendationBy`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `profile_skills`
--
ALTER TABLE `profile_skills`
  ADD CONSTRAINT `profile_skills_ibfk_1` FOREIGN KEY (`skillID`) REFERENCES `skills` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `profile_skills_ibfk_2` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD CONSTRAINT `reset_password_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
