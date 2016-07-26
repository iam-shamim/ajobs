-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2016 at 12:10 PM
-- Server version: 5.7.13
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ajobs`
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `profileID`, `aboutTitle`, `actualText`, `created_at`, `updated_at`) VALUES
(1, 5, 'I am php expert', 'Mei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpora deserunt te vis. Melius oporteat ea usu. Timeam tincidunt cum et. Eam justo utroque no. Enim aliquando abhorreant ea sea, vis ex efficiendi referrentur, ei pro tacimates sadipscing.\r\n&lt;br&gt;\r\nMei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpora deserunt te vis. Melius oporteat ea usu. Timeam tincidunt cum et. Eam justo utroque no. Enim aliquando abhorreant ea sea, vis ex efficiendi referrentur, ei pro tacimates sadipscing. ', '2016-04-24 14:07:13', '2016-05-15 14:43:59'),
(3, 11, 'I am php expert', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa cupiditate incidunt minima nemo pariatur placeat sit velit. Facere, in, temporibus! Aliquid eos fugit ipsum magnam numquam perspiciatis, quis tempora velit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa cupiditate incidunt minima nemo pariatur placeat sit velit. Facere, in, temporibus! Aliquid eos fugit ipsum magnam numquam perspiciatis, quis tempora velit Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa cupiditate incidunt minima nemo pariatur placeat sit velit.', '2016-06-02 22:46:00', '2016-06-02 23:11:32'),
(4, 7, 'I am php expert', 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-06-08 16:05:20', '2016-06-08 16:05:20');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `sortInd`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineering', 1, NULL, '2016-05-15 12:09:01'),
(2, 'Accounting', 2, NULL, '2016-03-21 14:05:19'),
(4, 'Marketing', 3, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `companyName`, `city`, `district`, `postcode`, `address`, `phone`, `email`, `website`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Techmasters Co', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://techmasters.co', '9795c94b78dc4f626391c141e05d6f3f.jpg', NULL, NULL),
(2, 'techmasters 1', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(3, 'techmasters 2', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(4, 'techmasters 3', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(5, 'techmasters 4', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(6, 'techmasters 5', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(7, 'techmasters 6', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(8, 'techmasters 7', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(9, 'techmasters 8', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(10, 'techmasters 9', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(11, 'techmasters 10', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(12, 'techmasters 11', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(13, 'techmasters 12', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(14, 'techmasters 13', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(15, 'techmasters 14', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(16, 'techmasters 15', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(17, 'techmasters 16', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(18, 'techmasters 17', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(19, 'techmasters 18', 'Dhaka', 'Dhaka', '75289', 'Dhaka,mohakhali,mohakhali DOSH,Road 30/2', '365354', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', NULL, NULL),
(20, 'Test', 'Dhaka', 'Dhaka', '474754', 'dhaka', '365354', 'fci@mail.com', 'http://www.techmasters.co', 'company-icon.png', '2016-04-23 04:13:01', '2016-04-23 04:13:01'),
(21, 'Test', 'test', 'test', '474754', 'Company Address', '47747745', 'info@techmasters.co', 'http://www.techmasters.co', 'company-icon.png', '2016-04-29 08:10:23', '2016-04-29 08:10:23'),
(22, 'test', 'Feni', 'Feni', '474754', 'Address', '47747745', '', '', 'company-icon.png', '2016-04-29 08:15:35', '2016-04-29 08:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `coverletters`
--

CREATE TABLE `coverletters` (
  `id` int(11) NOT NULL,
  `coverLetter` mediumtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coverletters`
--

INSERT INTO `coverletters` (`id`, `coverLetter`, `created_at`, `updated_at`) VALUES
(11, ' first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe] ', '2016-06-18 00:16:22', '2016-06-18 00:16:22'),
(12, 'The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.', '2016-06-18 00:19:52', '2016-06-18 00:19:52'),
(13, 'Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-06-27 16:30:46', '2016-06-27 16:30:46'),
(14, 'The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.', '2016-06-27 16:31:55', '2016-06-27 16:31:55'),
(15, 'The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.', '2016-06-27 16:38:18', '2016-06-27 16:38:18'),
(16, 'The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.', '2016-06-27 17:19:11', '2016-06-27 17:19:11'),
(17, 'The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.', '2016-06-27 17:30:35', '2016-06-27 17:30:35'),
(18, 'The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.\r\n', '2016-06-27 17:40:11', '2016-06-27 17:40:11'),
(19, 'The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.\r\n', '2016-06-27 18:20:07', '2016-06-27 18:20:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `degreeName`, `sortInd`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor''s Degrees', 1, NULL, NULL),
(2, 'Undergraduate Degrees', 2, NULL, NULL),
(3, 'Graduate Degrees', 3, NULL, NULL),
(4, 'Associate''s Degrees', 4, NULL, NULL),
(5, 'Master''s Degrees', 5, NULL, NULL),
(6, 'Doctoral Degrees', 6, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `userID`, `companyID`, `companySummary`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '\n\nMei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming ', NULL, NULL),
(11, 6, 1, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-05-09 10:30:27', '2016-05-09 10:30:27'),
(12, 9, 1, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-05-09 11:31:25', '2016-05-09 11:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `featured_apply`
--

CREATE TABLE `featured_apply` (
  `id` int(11) NOT NULL,
  `jobsID` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `instituteName`, `city`, `district`, `postcode`, `address`, `phone`, `email`, `website`, `logo`, `instituteCode`, `created_at`, `updated_at`) VALUES
(1, 'feni computer institute', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3900', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(2, 'feni computer institute 1', 'Feni', 'Feni', '474754', ' Mei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpo', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3901', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(3, 'feni computer institute 2', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3902', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(4, 'feni computer institute 3', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3903', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(5, 'feni computer institute 4', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3904', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(6, 'feni computer institute 5', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3905', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(7, 'feni computer institute 6', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3906', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(8, 'feni computer institute 7', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3907', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(9, 'feni computer institute 8', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3908', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(10, 'feni computer institute 9', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3909', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(11, 'feni computer institute 10', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3910', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(12, 'feni computer institute 11', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3911', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(13, 'feni computer institute 12', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3912', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(14, 'feni computer institute 13', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3913', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(15, 'feni computer institute 14', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3914', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(16, 'feni computer institute 15', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3915', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(17, 'feni computer institute 16', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3916', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(18, 'feni computer institute 17', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3917', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(19, 'feni computer institute 18', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3918', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(20, 'feni computer institute 19', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3919', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(21, 'feni computer institute 20', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3920', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(22, 'feni computer institute 21', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3921', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(23, 'feni computer institute 22', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3922', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(24, 'feni computer institute 23', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3923', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(26, 'feni computer institute 30', 'Feni', 'Feni', '536346', 'Feni', '47747745', 'shamim258038@gmail.com', 'fcibd.net', 'feni computer institute 30', '3930', '2016-04-21 03:13:26', '2016-04-21 03:13:26'),
(32, 'feni computer institute 31', 'Feni', 'Feni', '474754', 'Feni', '7345735734', 'mobarok@gmail.com', 'fcibd.net', '4bb07a7ac87b215f6023b8babf862124.jpg', '3931', '2016-04-21 20:13:51', '2016-04-21 20:13:51'),
(33, 'feni computer institute 32', 'Feni', 'Feni', '474754', 'Feni', '7345735734', 'mobarok@gmail.com', 'fcibd.net', '29960c5c508f76f5cc5bd07acc79e3bc.jpg', '3932', '2016-04-21 20:14:13', '2016-04-21 20:14:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interviews`
--

INSERT INTO `interviews` (`id`, `jobID`, `applicantID`, `interviewDate`, `interviewTime`, `interviewType`, `interviewInfo`, `seenByApplicant`, `created_at`, `updated_at`) VALUES
(7, 20, 7, '2016-06-30', '9:30 AM', 'Email', 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, '2016-06-24 12:45:55', '2016-06-24 12:45:55'),
(10, 20, 8, '2016-06-30', '9:30 AM', 'OnlineTest', 'that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name', b'1', '2016-06-25 06:07:00', '2016-06-25 06:34:30'),
(12, 20, 6, '2016-06-30', '9:30 AM', 'Call', 'Mei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpora deserunt te vis. Melius oporteat ea usu. Timeam tincidunt cum et. Eam justo utroque no. Enim aliquando abhorreant ea sea, vis ex efficiendi referrentur, ei pro tacimates sadipscing.', NULL, '2016-06-27 14:25:37', '2016-06-27 14:25:37'),
(13, 20, 2, '2016-07-30', '9:30 AM', 'Call', 'Mei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpora deserunt te vis. Melius oporteat ea usu. Timeam tincidunt cum et. Eam justo utroque no. Enim aliquando abhorreant ea sea, vis ex efficiendi referrentur, ei pro tacimates sadipscing.', NULL, '2016-07-01 12:33:59', '2016-07-01 12:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `employerID` int(11) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobSummary` varchar(1000) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `employerID`, `jobTitle`, `jobSummary`, `jobDescription`, `jobType`, `jobLocation`, `applicationEndDate`, `salary`, `jobCategory`, `applicationInstruction`, `featuredJob`, `numberOfPosition`, `minimumExperience`, `minimumAge`, `others`, `created_at`, `updated_at`) VALUES
(1, 1, 'Php Developer need need', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'PartTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 1, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'1', 4, 1, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-06-27 22:22:22'),
(3, 1, 'Php Developer', 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '<p>first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', 'Internship', 'Dhaka, mohammadpur', '2016-08-31', '15000-30000', 2, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', b'1', 4, 10, 3, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-05-11 13:21:41', '2016-05-17 18:04:15'),
(6, 1, 'Php Developer', '<p>first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '<p>first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-09-30', '20000-40000', 1, '<p>first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', b'0', 10, 3, 22, '<p>first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-15 19:08:24', '2016-05-15 19:08:24'),
(7, 1, 'Php Developer need', 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '<p>first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '15000-30000', 1, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', b'1', 4, 5, 3, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-05-11 13:21:41', '2016-05-17 18:04:15'),
(8, 1, 'Php Expert', 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '<p>first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '15000-30000', 1, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', b'1', 4, 1, 3, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-05-11 13:21:41', '2016-05-17 18:04:15'),
(9, 1, 'Need Php Expert', 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '<p>first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', 'FullTime', 'Feni, Trunk Road', '2016-08-31', '15000-30000', 1, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', b'1', 4, 4, 3, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-06-03 13:21:41', '2016-05-17 18:04:15'),
(10, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 1, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 7, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(11, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 1, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 8, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(12, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 1, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 9, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(13, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 1, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 2, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(14, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 2, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 1, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(15, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 1, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 6, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(16, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 2, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 5, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(17, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 1, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 11, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(18, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 4, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 1, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(19, 1, 'Php Developer', '<p>The candidate will be responsible for developing, maintaining, and deploying entire builds of sites and apps with our team. This includes database design, backend development, frontend development, compiling, provisioning servers, and deploying. This person will assist in developing wireframes and visual design concepts into compelling full web architecture under various web platforms primarily developed in laravel, themosis, and ionic. You will frequently collaborate with a cross-functional team including creative design, project management, and backend development.</p>', '<p><strong>Requirements and Expectations</strong></p>\r\n<ul>\r\n<li>Developing, maintaining, and an advanced level of SASS, PHP, NPM, Gulp &amp; Git.</li>\r\n<li>A firm knowledge of, MVC, Angular 2.0, Laravel, and deployment technologies.</li>\r\n<li>Strong Linux skills focused in Ubuntu.</li>\r\n<li>Experience developing unit tests (TDD or BDD).</li>\r\n<li>Laravel 5.2 architecture and development background an absolute must.</li>\r\n<li>Mobile development with Cordova/Angular is a bonus.</li>\r\n<li>Understanding of Omnigraffle and Adobe CC suite.</li>\r\n<li>Work with UX team members and developers through the stages of design, development, QA, launch, and maintenance.</li>\r\n<li>Translating detailed designs and user experience descriptions into front-end code that&rsquo;s responsive, mobile, and cross-browser compatible.</li>\r\n<li>Providing direction on the best web and UI frameworks to leverage for implementing the required design such as Bootstrap, Angular JS, and LESS/SASS.</li>\r\n<li>Ensuring that the integrity of designs, branding elements, and user experience standards are maintained throughout development.</li>\r\n<li>Producing working prototypes that explore new approaches to UI design and WOW customers.</li>\r\n<li>Drinking great beer.</li>\r\n<li>Documenting best practices for maintaining front-end code.</li>\r\n<li>Working with Project Managers, providing a list of objectives and estimating work/hour estimates for these objectives.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'FullTime', 'Dhaka, mohammadpur', '2016-08-31', '25000-40000', 1, '<p>Please email your resume/qualifications to <strong>jobs@futuremandigital.com</strong> along with any projects you may have contributed to. Must be in Chicago.</p>', b'0', 4, 1, 20, '<p>Others: first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', '2016-05-11 11:42:14', '2016-05-17 06:36:21'),
(20, 1, 'Php Developer', 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '<p>first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]</p>', 'Internship', 'Dhaka, mohammadpur', '2016-08-31', '15000-30000', 1, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', b'1', 8, 10, 3, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-05-11 13:21:41', '2016-05-17 18:04:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_applicants`
--

INSERT INTO `job_applicants` (`id`, `jobID`, `profileID`, `coverLetterID`, `attachedResume`, `status`, `created_at`, `updated_at`) VALUES
(2, 20, 5, 11, '0c1690bf99765c6700fbfad1a780bd2f.text', 'ShortListed', '2016-06-18 00:16:22', '2016-06-18 00:16:22'),
(3, 1, 5, 12, '7edd283118fce1ef1023ace2189e1d99.text', 'Viewed', '2016-06-18 00:19:52', '2016-06-18 00:19:52'),
(4, 20, 5, 11, '0c1690bf99765c6700fbfad1a780bd2f.text', 'Viewed', '2016-06-18 00:16:22', '2016-06-18 00:16:22'),
(5, 20, 5, 11, '0c1690bf99765c6700fbfad1a780bd2f.text', 'Viewed', '2016-06-18 00:16:22', '2016-06-18 00:16:22'),
(6, 20, 11, 11, '0c1690bf99765c6700fbfad1a780bd2f.text', 'ShortListed', '2016-06-18 00:16:22', '2016-06-18 00:16:22'),
(7, 20, 5, 11, '0c1690bf99765c6700fbfad1a780bd2f.text', 'ShortListed', '2016-06-18 00:16:22', '2016-06-18 00:16:22'),
(8, 20, 5, 11, 'Mobarok_CV.pdf', 'ShortListed', '2016-06-18 00:16:22', '2016-06-18 00:16:22'),
(16, 19, 11, 19, '2eafc66d88ef8340f00635d2370ec3ea.pdf', 'Viewed', '2016-06-27 18:20:07', '2016-06-27 18:20:07');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mail_verification`
--

INSERT INTO `mail_verification` (`id`, `userID`, `activeCode1`, `activeCode2`, `activeLink1`, `activeLink2`, `created_at`, `updated_at`) VALUES
(1, 16, 97280, 74320, 'bb1e63ebb2d035eaa01571bca9c2dd70', '8a9a6462c34719d9c570f34614686d69', '2016-06-29 21:05:59', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `profileID`, `notificationText`, `url`, `created_at`, `updated_at`) VALUES
(2, 11, 'You are invitated for an interview from "php developer need"', 'http://jobs.com/my/jobs/7/interview', NULL, NULL),
(4, 11, 'Something changed your job interview for "php developer need"', 'http://jobs.com/my/jobs/1/interview', NULL, NULL),
(11, 5, 'Something changed your job interview for "Php Developer"', 'http://jobs.com/my/jobs/20/interview', '2016-06-27 14:42:40', '2016-06-27 14:42:40'),
(12, 5, 'You are invitated for an interview from "Php Developer"', 'http://jobs.com/my/jobs/20/interview', '2016-07-01 12:33:59', '2016-07-01 12:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `routesID` int(11) NOT NULL,
  `userTypeID` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `routesID`, `userTypeID`, `created_at`, `updated_at`) VALUES
(46, 332, 8, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(47, 333, 8, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(48, 344, 8, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(53, 346, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(54, 346, 2, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(55, 348, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(56, 348, 2, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(57, 354, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(58, 354, 2, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(59, 355, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(60, 353, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(61, 353, 2, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
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
(162, 330, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(163, 329, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(164, 283, 8, '2016-04-06 17:55:34', '2016-04-06 17:55:34'),
(168, 369, 1, '2016-04-07 19:48:01', '2016-04-07 19:48:01'),
(170, 347, 1, '2016-04-08 07:58:46', '2016-04-08 07:58:46'),
(171, 347, 2, '2016-04-08 07:58:46', '2016-04-08 07:58:46'),
(174, 345, 1, '2016-04-08 07:59:10', '2016-04-08 07:59:10'),
(175, 345, 2, '2016-04-08 07:59:10', '2016-04-08 07:59:10'),
(177, 313, 1, '2016-04-08 08:02:10', '2016-04-08 08:02:10'),
(185, 367, 8, '2016-04-14 04:59:40', '2016-04-14 04:59:40'),
(186, 405, 5, '2016-04-29 09:01:12', '2016-04-29 09:01:12'),
(187, 406, 5, '2016-04-29 09:01:12', '2016-04-29 09:01:12'),
(188, 408, 5, '2016-04-29 09:01:12', '2016-04-29 09:01:12'),
(189, 409, 5, '2016-04-29 09:01:12', '2016-04-29 09:01:12'),
(190, 407, 5, '2016-04-29 09:01:12', '2016-04-29 09:01:12'),
(191, 404, 5, '2016-04-29 09:04:59', '2016-04-29 09:04:59'),
(192, 360, 5, '2016-06-08 22:50:04', '2016-06-08 22:50:04'),
(195, 443, 8, '2016-06-27 20:11:58', '2016-06-27 20:11:58'),
(196, 444, 8, '2016-06-27 20:11:58', '2016-06-27 20:11:58'),
(197, 445, 8, '2016-06-27 20:11:58', '2016-06-27 20:11:58'),
(198, 446, 8, '2016-06-27 20:11:58', '2016-06-27 20:11:58'),
(199, 447, 8, '2016-06-27 20:11:58', '2016-06-27 20:11:58'),
(200, 374, 8, '2016-06-27 20:12:15', '2016-06-27 20:12:15'),
(201, 373, 8, '2016-06-27 20:12:15', '2016-06-27 20:12:15'),
(202, 459, 8, '2016-06-27 20:12:15', '2016-06-27 20:12:15'),
(203, 458, 8, '2016-06-27 20:12:15', '2016-06-27 20:12:15'),
(204, 393, 8, '2016-06-27 20:12:40', '2016-06-27 20:12:40'),
(205, 394, 8, '2016-06-27 20:12:40', '2016-06-27 20:12:40'),
(206, 395, 8, '2016-06-27 20:12:40', '2016-06-27 20:12:40'),
(207, 396, 8, '2016-06-27 20:12:40', '2016-06-27 20:12:40'),
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
(243, 448, 5, '2016-06-27 22:28:38', '2016-06-27 22:28:38'),
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
(321, 476, 1, '2016-07-01 12:45:32', '2016-07-01 12:45:32');

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
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `userID`, `firstName`, `lastName`, `middleName`, `DOB`, `gender`, `featuredProfile`, `email`, `phone`, `summary`, `profilePic`, `created_at`, `updated_at`) VALUES
(5, 4, 'Nurun', 'Shamim', 'Nobi', '1994-08-07', 'M', 'N', 'admin@gmail.com', '', 'Mei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpora deserunt te vis. Melius oporteat ea usu. Timeam tincidunt cum et. Eam justo utroque no. Enim aliquando abhorreant ea sea, vis ex efficiendi referrentur, ei pro tacimates sadipscing.', '6bf925606da15c4eca7a3bbf3b50a5e3.jpg', '2016-05-01 18:00:00', '2016-06-27 20:05:27'),
(6, 6, 'Nurun Nobi', 'Shamim', 'Nobi', '2014-11-01', 'M', 'N', 'shamim258038@gmail', '093805830', 'first name-that part of your name that comes first\r\nlast name-it''s your caste\r\nmiddle name -if you have a three letter word then that part which comes in the middle is the middle name\r\ngiven name-the name that is given\r\nfamily name -probably that name which your family has given you[pet name]\r\nsurname-your caste[maybe]', '147cf0ea14a63556c73a93d2aa9015a9.jpg', '2016-04-30 18:00:00', '2016-05-07 13:15:28'),
(7, 10, 'Nurun', 'Shamim', 'Nobi', '1994-01-31', 'M', 'Y', 'shamim2588@gmail.com', '0938058', 'first name-that part of your name that comes first\r\nlast name-it''s your caste\r\nmiddle name -if you have a three letter word then that part which comes in the middle is the middle name\r\ngiven name-the name that is given\r\nfamily name -probably that name which your family has given you[pet name]\r\nsurname-your caste[maybe]', 'b585cc9970926adfc20cdcd77f9a4ca7.jpg', '2016-04-06 18:00:00', '2016-06-29 17:05:08'),
(10, 11, 'Nurun Nobi Shamim', '', '', '2016-03-05', 'M', 'N', 'shamim258038@gmail', '', '', NULL, NULL, '2016-05-07 06:10:56'),
(11, 5, 'Nurun Nobi Shamim', '', '', '2016-08-06', 'M', 'N', 'shamim258038@gmail', '', '', NULL, '2016-05-06 14:02:36', '2016-06-08 17:08:41'),
(12, 16, NULL, NULL, NULL, NULL, NULL, 'N', 'name@gamil.com', NULL, NULL, NULL, '2016-06-29 21:05:59', NULL),
(13, 17, NULL, NULL, NULL, NULL, NULL, 'N', 'shamim258038@gmail.com', NULL, NULL, NULL, '2016-06-29 21:07:50', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_education`
--

INSERT INTO `profile_education` (`id`, `profileID`, `institutionID`, `degreeID`, `subjectName`, `startedOn`, `endedOn`, `created_at`, `updated_at`) VALUES
(9, 5, 8, 5, 'Computer science & engineering', '2016-04-21', '2016-04-21', '2016-04-21 03:17:49', '2016-04-21 03:17:49'),
(13, 5, 7, 1, 'Computer science & engineering', '2016-04-25', NULL, '2016-04-25 01:12:23', '2016-04-25 01:12:23'),
(14, 7, 5, 1, 'Computer science & engineering', '2016-05-01', NULL, '2016-05-13 10:29:24', '2016-05-13 10:29:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_experiences`
--

INSERT INTO `profile_experiences` (`id`, `profileID`, `companyID`, `startedOn`, `endedOn`, `jobSummary`, `jobTitle`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2016-01-01', '2016-04-30', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab corporis eum ex harum, in ipsum molestiae nihil optio pariatur ', 'Php Developer', '2016-04-23 04:10:16', '2016-04-23 04:10:16'),
(2, 5, 8, '2011-01-01', NULL, 'Mei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpora deserunt te vis.', 'Web Developer', '2016-04-24 00:33:51', '2016-04-24 00:33:51'),
(3, 7, 1, '2014-05-07', '1970-01-01', 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', 'Php Developer', '2016-05-06 13:57:00', '2016-05-06 13:57:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_recommendations`
--

INSERT INTO `profile_recommendations` (`id`, `profileID`, `recommendationBy`, `recommendationText`, `created_at`, `updated_at`) VALUES
(1, 7, 6, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, NULL),
(3, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, '2016-04-27 16:11:38'),
(4, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, NULL),
(5, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, NULL),
(6, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, NULL),
(7, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, NULL),
(8, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, NULL),
(9, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, NULL),
(10, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, NULL),
(15, 5, 7, 'that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-04-27 12:35:44', '2016-04-27 12:35:44'),
(18, 7, 5, 'that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-04-27 12:39:20', '2016-04-27 12:39:20'),
(19, 7, 5, 'that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-04-27 12:39:24', '2016-04-27 12:39:24'),
(20, 5, 7, 'that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-04-27 12:35:44', '2016-04-27 12:35:44'),
(21, 5, 7, 'that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-04-27 12:35:44', '2016-04-27 12:35:44'),
(22, 5, 7, 'that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-04-27 12:35:44', '2016-04-27 12:35:44'),
(23, 5, 7, 'that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-04-27 12:35:44', '2016-04-27 12:35:44'),
(24, 5, 7, 'Mei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpora deserunt te vis. Melius oporteat ea usu. Timeam tincidunt cum et. Eam justo utroque no. Enim aliquando abhorreant ea sea, vis ex efficiendi referrentur, ei pro tacimates sadipscing. ', '2016-04-27 14:16:47', '2016-04-27 14:16:47'),
(25, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe] <br>\r\nfirst name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', NULL, '2016-04-27 16:14:12'),
(26, 7, 5, 'Shamim that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-04-27 16:12:39', '2016-04-27 16:12:39'),
(27, 7, 5, 'Feni first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-04-27 16:13:00', '2016-04-27 16:13:00'),
(28, 7, 5, 'first name-that part of your name that comes first last name-it''s your caste middle name -if you have a three letter word then that part which comes in the middle is the middle name given name-the name that is given family name -probably that name which your family has given you[pet name] surname-your caste[maybe]', '2016-05-15 14:49:19', '2016-05-15 14:50:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_skills`
--

INSERT INTO `profile_skills` (`id`, `profileID`, `skillID`, `skillRange`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 82, NULL, '2016-04-24 14:52:47'),
(2, 5, 9, 91, NULL, '2016-04-13 19:02:03'),
(9, 5, 10, 85, '2016-04-11 17:50:00', '2016-04-13 19:02:11'),
(10, 5, 13, 60, '2016-04-11 18:16:56', '2016-04-11 20:47:13'),
(11, 5, 11, 43, '2016-04-11 18:17:12', '2016-04-24 02:26:01'),
(14, 5, 2, 100, '2016-04-11 19:04:55', '2016-06-08 16:13:26'),
(15, 5, 14, 65, '2016-04-11 19:05:09', '2016-04-11 20:52:33'),
(16, 7, 12, 3, '2016-04-14 04:55:44', '2016-04-14 04:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `resetLink1` varchar(32) NOT NULL,
  `resetLink2` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;

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
(367, '/', 'GET', 'App\\Http\\Controllers\\homeController@index', 'enable', '2016-04-05 13:45:10', '2016-04-14 05:00:04'),
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
(476, 'signup/admin', 'GET', 'App\\Http\\Controllers\\SignUpController@adminCreate', 'enable', '2016-07-01 12:45:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skillName` varchar(45) NOT NULL,
  `sortInd` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `password`, `userType`, `userStatus`, `joinedOn`, `lastLoggedIn`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'nurun.nobi.shamim', '$2y$10$Hp01WrqpO32sGcAIwst6KupQUVWPaiNACIW3PN.D9nfnHm/dRYL4G', 'Company', 'Active', NULL, NULL, '7sGwSzDve7eODZIrco1zuJgMPTf13Gc7GULT2rmnjKPS03mj1lXOpB7RSeAO', NULL, '2016-07-01 12:34:17'),
(5, 'nurun_nobi_shamim', '$2y$10$Hp01WrqpO32sGcAIwst6KupQUVWPaiNACIW3PN.D9nfnHm/dRYL4G', 'JobSeeker', 'Active', NULL, NULL, 'Mmb0EQkuEWutWqYPni10DVon3Bxrs1mAhQg5CxqcoYVTzfefk2ll3sMXi12R', NULL, '2016-07-01 12:34:38'),
(6, 'nurunNobiShamim', '$2y$10$lPhzFZItlXu15ftZ4B3a.OdyQX.bU7CVURpqLzUTQbTEd0bPJ0vyi', 'Root', 'Active', NULL, NULL, 'PhaP8p14cQRv8A2Jvv1Y0Bneju82bZ3uzlTJkWPPWYy6uWGB5Q7wiDUXeigm', NULL, '2016-06-30 16:38:50'),
(9, 'shamimBd', '$2y$10$lPhzFZItlXu15ftZ4B3a.OdyQX.bU7CVURpqLzUTQbTEd0bPJ0vyi', 'Company', 'Active', NULL, NULL, 'cPizpMYk0Q8en8OXMAhdd2uOLghutnAHABFccBnjIINDIw8tVkyIHUAsTWRP', NULL, '2016-06-08 16:09:26'),
(10, NULL, NULL, 'JobSeeker', 'Active', NULL, NULL, 'jgu3TrXgqwKbl2kuN509fsxmmMxr6jkmjrrFqy6VQPP0fUCKi5Ej5WytL6LT', NULL, '2016-06-29 17:05:52'),
(11, NULL, NULL, 'JobSeeker', 'InActive', NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, 'JobSeeker', 'InActive', NULL, NULL, NULL, '2016-05-06 08:52:49', '2016-05-06 08:52:49'),
(13, NULL, NULL, 'JobSeeker', 'InActive', NULL, NULL, NULL, '2016-05-06 10:52:37', '2016-05-06 10:52:37'),
(14, NULL, NULL, 'JobSeeker', 'Active', NULL, NULL, 'sZav5kGsvTWtKPbafqX3VYgwOzXKqAuATHnmIHqUdOzG0VOUFstcLobR9aD6', '2016-05-06 14:02:36', '2016-05-07 13:14:19'),
(15, NULL, NULL, 'JobSeeker', 'Active', NULL, NULL, 'u6rb6nWjsCpNumjFOfOHqeCvSnGxeYTzHYzw8yVoMqzC2tO5LtVVfHkIYnnN', '2016-05-07 13:14:27', '2016-05-07 13:15:01'),
(16, 'shamimBd124', '$2y$10$uy99C2I9wiYgEESp0xkTVuRwURLuhbpHrHSl4Z60MqYZAEYZQAu32', 'Company', 'InActive', NULL, NULL, NULL, NULL, NULL),
(17, 'shamimBd142', '$2y$10$10iDba0d.HLOf76xx5hV5u.J1sdMos898rhQqQ.1mtuT34A8hBuC2', 'Company', 'Active', NULL, NULL, '4NBuNlBi1oiINvCglPhn9HSIyd5aEYYQfQHnry2npAqJgZUJiDZbf1XBOjWV', NULL, '2016-06-30 12:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
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
  ADD KEY `fkProfilesUserID_idx` (`userID`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `coverletters`
--
ALTER TABLE `coverletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `featured_apply`
--
ALTER TABLE `featured_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mail_verification`
--
ALTER TABLE `mail_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `profile_education`
--
ALTER TABLE `profile_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `profile_experiences`
--
ALTER TABLE `profile_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `profile_recommendations`
--
ALTER TABLE `profile_recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `profile_skills`
--
ALTER TABLE `profile_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=477;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
  ADD CONSTRAINT `fkEmployersUserID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `featured_apply`
--
ALTER TABLE `featured_apply`
  ADD CONSTRAINT `featured_apply_ibfk_1` FOREIGN KEY (`jobsID`) REFERENCES `jobs` (`id`);

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `fkInterviewsApplicantID` FOREIGN KEY (`applicantID`) REFERENCES `job_applicants` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkInterviewsJobID` FOREIGN KEY (`jobID`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `fkJobsCategoryID` FOREIGN KEY (`jobCategory`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkJobsEmployerID` FOREIGN KEY (`employerID`) REFERENCES `employers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD CONSTRAINT `fkApplicantsCoverLetterID` FOREIGN KEY (`coverLetterID`) REFERENCES `coverletters` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkApplicantsJobID` FOREIGN KEY (`jobID`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkApplicantsProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
  ADD CONSTRAINT `fkProfilesUserID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
