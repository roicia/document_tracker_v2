-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 28, 2023 at 12:42 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_document_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE IF NOT EXISTS `activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `details` text NOT NULL,
  `department` varchar(150) NOT NULL,
  `created` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(150) NOT NULL,
  `details` text NOT NULL,
  `max_time` int NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `details`, `max_time`, `created`, `updated`) VALUES
(2, 'Voucher', 'a small printed piece of paper that entitles the holder to a discounts.', 7, '2023-08-17 12:39:41', NULL),
(4, 'Memo', 'a written message, especially in business.', 7, '2023-08-24 11:46:15', NULL),
(5, 'Communications', 'the imparting or exchanging of information or news.', 7, '2023-08-24 11:46:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code`, `department`, `username`, `password`, `location`, `token`, `created`, `updated`) VALUES
(1, 'CDRRMO', 'CITY DISASTER RISK REDUCTION MNGT. OFFICE', 'CDRRMO', '$2y$10$ygm51.BobWtfnmdTPI8F/OnnYYPD/Jd08FBKktQ73JJIxOm..lL7y', '', '', '2023-05-10 02:26:56', NULL),
(2, 'EEMO', 'OFFICE OF THE ECONOMIC ENTERPRISES AND MANAGEMENT(C)', 'EEMO', '$2y$10$qGdGtTV3VhVl3xUc55.sTehoM8AINFBAPtJIPIQXuwkekhBXN7hcK', '', '', '2023-05-10 02:27:38', NULL),
(3, 'PDAO', 'PERSONS WITH DISABILITY AFFAIRS OFFICE', 'PDAO', '$2y$10$.O6Jfac2KrvjtLG2rNH39Onh/mvIF1A9rHzJIA.XO3HzX44fsf2aC', '', '', '2023-05-10 02:28:43', NULL),
(4, 'CAPDO', 'OFFICE ON ARCHITECTURAL PLANNING AND DESIGN', 'CAPDO', '$2y$10$gVAqgdfKpfq.uFk8neh12uE/bRciiqXoaHa8KgEuWy/gajuF7RVcm', '', '', '2023-05-10 02:32:21', NULL),
(5, 'VETERINARY', 'OFFICE ON VETERINARY SERVICES', 'VETERINARY', '$2y$10$gJnazgKlxb3g41s5GCplfO4fJ1XqU0xf8IdyLGQNO0cg855h/Qpk.', '', '', '2023-05-10 02:32:39', NULL),
(6, 'CICLEDO', 'CITY OF IMUS COOPERATIVE LIVELIHOOD AND ENTREPRENEURIAL  DEVELOPMENT OFFICE', 'CICLEDO', '$2y$10$77jpSXNqdLBr33EdUwq8HeCV.45xgbatDPkQf6F1vJ1uU4/Uo7wTG', '', '', '2023-05-10 02:33:02', NULL),
(7, 'TOURISM', 'OFFICE OF THE CITY TOURISM AND DEVELOPMENT', 'TOURISM', '$2y$10$RVwsHH8BH6FTnUZU177wIe3z/2Wvdh/A9zVt1y.f.Uk11KL6vRemG', '', '', '2023-05-10 02:33:11', NULL),
(8, 'TRU', 'OFFICE OF THE MAYOR: TRICYCLE REGULATORY UNIT', 'TRU', '$2y$10$5bzAni0LAFag1WiZGxp9ped3NKnn18i4lEfOBYArXGYknzmlifCqa', '', '', '2023-05-10 02:33:27', NULL),
(9, 'LIBRARY', 'OFFICE OF THE MAYOR: CITY PUBLIC LIBRARY', 'LIBRARY', '$2y$10$WM2YXo.x2nQ9zEhMbqpgVu36bD4.B7cuV77u45y5g6VPul.uXOxiK', '', '', '2023-05-10 02:33:40', NULL),
(10, 'ECONOMIC', 'OFFICE OF THE ECONOMIC ENTERPRISES AND MANAGEMENT(B)', 'ECONOMIC', '$2y$10$5dAfYEQ9zmV2rjDcyibNFeGNeCXlqd.Jwlu4EC/OIbNOQZiK9iXe.', '', '', '2023-04-17 05:40:28', NULL),
(11, 'GSO', 'GENERAL SERVICES OFFICE', 'GSO', '$2y$10$iPKLjAKZdCzhiiRRIgo5JutXheeK4Hq62Nab9CESAYpfcfcnwOCC6', '', '', '2023-05-10 02:34:37', NULL),
(12, 'POLYTECHNIC', 'IMUS POLYTECHNIC INSTITUTE', 'POLYTECHNIC', '$2y$10$ynl5k.ttvYGgYflnRV46A.pBZptHscqV4Syqe/Vc6/xOzMNfcxcXi', '', '', '2023-04-17 05:40:29', NULL),
(13, 'POPDEV', 'OFFICE ON POPULATION DEVELOPMENT', 'POPDEV', '$2y$10$RFoFsqUTCHBKq61HsfgGWeS3h4gPnfAwZ2I.SHObfj4EZCT.525BK', '', '', '2023-05-10 02:35:02', NULL),
(14, 'ADMIN', 'OFFICE OF THE CITY  ADMINISTRATOR', 'ADMIN', '$2y$10$/cdscq0HW.ArgLAGRA9xquO7O8F3FsPvS/GkZE11LJfPr5ApKUAEG', '', '', '2023-05-10 02:35:07', NULL),
(15, 'OSCA', 'OFFICE OF THE MAYOR: OFFICE OF THE SENIOR CITIZENS AFFAIRS', 'OSCA', '$2a$12$SHhJXpKb8CrBOWUoa3kUruPnuV9zdw14svyGYH4mNhXPGsSWd/hAy', '', '', '2023-05-10 02:35:43', NULL),
(16, 'LEDIPO', 'LOCAL ECONOMIC DEVELOPMENT AND INVESTMENT PROMOTION OFFICE', 'LEDIPO', '$2y$10$wzJ6RRvrZLGID.zKDyg0TOn0EZv7imSXGjaIcoEPUhlDOV6pQ7CzK', '', '', '2023-05-10 02:35:52', NULL),
(17, 'YOUTH', 'CITY YOUTH AFFAIRS OFFICE', 'YOUTH', '$2y$10$mPJxVMqohZX/OlyFn.mVd.eAT/xW7WQ.7PJ.daN6rCioszQCwCCYi', '', '', '2023-05-10 02:36:03', NULL),
(18, 'ONI', 'CITY HOSPITAL OF IMUS', 'ONI', '$2a$12$CK1Zug2K1ICDnqMyVGW/ZuPHH.NP2W4oWc6yknRvDmpyV1aFPv1Ti', '', '', '2023-05-10 02:36:16', NULL),
(19, 'PARKS', 'OFFICE OF THE MAYOR: CITY PARKS & HISTORICAL PLACES', 'PARKS', '$2y$10$bWMN4pZD7ws8M/j2c8eTT.ii2ELOX3W5f80hA7/QIbnXgSmi0508y', '', '', '2023-05-10 02:36:30', NULL),
(20, 'PESO', 'OFFICE OF THE MAYOR: CITY PUBLIC EMPLOYMENT SERVICES', 'PESO', '$2y$10$Z9rkYRexLGE84OuAOPb9EOlo7U6k.v3t/b4otmjfRvbETH27UGoGi', '', '', '2023-05-10 02:36:37', NULL),
(21, 'GAD', 'OFFICE OF THE MAYOR: GENDER & DEVELOPMENT UNIT', 'GAD', '$2y$10$rax8E0eGqOD6wEzsRVmZJ.bW/ZnZCSGw9OWa0B00VFk3XlWKZ49ES', '', '', '2023-05-10 02:36:56', NULL),
(22, 'EXTENSION', 'OFFICE OF THE MAYOR: EXTENSION OFFICE', 'EXTENSION', '$2y$10$ceebgihEAj4qp9v1i1lFsu8vSl2gxo6/xebLca8Lzlnq8U5GsAJSy', '', '', '2023-05-10 02:37:04', NULL),
(23, 'FACILITY', 'IMUS ISOLATION FACILITY', 'FACILITY', '$2y$10$XRb7w2GdrPes2iF//F8uJe5YbaRtsILqvfvnPnYOCxqwOORJe40Pa', '', '', '2023-04-17 05:40:29', NULL),
(24, 'LABORATORY', 'OFFICE ON HEALTH SERVICES:  MOLECULAR LABORATORY', 'LABORATORY', '$2y$10$L8ag.cQRdrxNWOzzVHZMd.JCC9U0k4UN8AMngdClXj8HbYb/mKKru', '', '', '2023-04-17 05:40:29', NULL),
(25, 'SKO', 'OFFICE OF THE CITY MAYOR: SANGGUNIANG KABATAAN', 'SKO', '$2a$12$HFAgcysRJ0XQ0LOjnrW/5.hJZIPrUJfrAFk3s/WOieHHEAd0O5dMu', '', '', '2023-07-11 04:28:10', NULL),
(26, 'CITRMU', 'OFFICE OF THE MAYOR: CITY OF IMUS INFORMATION TECHNOLOGY & RECORDS MANAGEMENT UNIT', 'CITRMU', '$2y$10$Eb3gyM5HWYHgcq6skMMfP.4i4dTysjQgySFBR7etpS9SR8WCZWyeG', '', '', '2023-05-10 02:38:04', NULL),
(27, 'CENRO', 'OFFICE ON ENVIRONMENT AND NATURAL RESOURCES', 'CENRO', '$2y$10$y41mSXZx8wp6NIej.WY3W.s1Ng0epkMfwQooesukt9PILXZdoTzUu', '', '', '2023-05-10 02:38:30', NULL),
(28, 'BPLO', 'BUSINESS PERMIT AND LICENSING OFFICE', 'BPLO', '$2y$10$hICRhW1f/kJ74YxLPh.Su./aZlZOtTdC5fDyApSsTNX1lG9kw3CR.', '', '', '2023-05-10 02:38:18', NULL),
(29, 'HRMO', 'HUMAN RESOURCE MANAGEMENT OFFICE', 'HRMO', '$2y$10$i2q4yhTSdLBbL.EE6SiqkOrOSQdLH6gbHQlodZeNyObZK69UhdPbO', '', '', '2023-05-10 02:38:35', NULL),
(30, 'CIO', 'OFFICE OF THE MAYOR: CITY INFORMATION OFFICE', 'CIO', '$2y$10$SdJ46jQRfh1gSKs9kAtOfelXm.QAf9Yamk8Zj6QqDIniha0qf7fpO', '', '', '2023-05-10 02:38:38', NULL),
(31, 'CSU', 'OFFICE OF THE MAYOR: SECURITY UNIT', 'CSU', '$2y$10$p4cXwMm1WCIl3gpdTyjYRuXyHsR3ZG4gVX0nNoGWPucummuLekdU6', '', '', '2023-06-15 04:32:05', NULL),
(32, 'EDUCATION', 'OFFICE OF THE MAYOR: SPECIAL SERVICES (EDUCATION) ', 'EDUCATION', '$2y$10$HYjXcWzBzd5aQ1kTT6W8XOdt.PehCKME4iBoREYzwL5IHl8qLgDZC', '', '', '2023-04-17 05:40:29', NULL),
(33, 'TRAFFIC', 'OFFICE OF THE MAYOR: TRAFFIC MANAGEMENT UNIT', 'TRAFFIC', '$2y$10$WZMGr3W5Rg.Evz5jRe0mf.OZxCkqTZms0hgtdZo8gmKONa0JexoE6', '', '', '2023-04-17 05:40:29', NULL),
(34, 'ECONOMIC', 'OFFICE OF THE MAYOR: ECONOMIC ENTERPRISE MANAGEMENT (A)', 'ECONOMIC', '$2y$10$hDYfy2JLvdFS5aU4skWQhe2s2IrYNonfTB08v363f2meswCmC7n9C', '', '', '2023-04-17 05:40:29', NULL),
(35, 'ACCOUNTING', 'OFFICE ON ACCOUNTING & INTERNAL AUDIT SERVICES', 'ACCOUNTING', '$2y$10$jT5.n69kRUUZdOs8AwStMeftEkugxoNAULZ8uCvV61J8WMRfAwNMa', '', '', '2023-06-15 23:54:09', NULL),
(36, 'AGRICULTURE', 'OFFICE ON AGRICULTURAL SERVICES', 'AGRICULTURE', '$2y$10$stlISvySAdJ9SB/bfEEC6OWE6qV5rQHXscEpGQ2/aNMOVE5Vqm5fe', '', '', '2023-06-15 23:54:02', NULL),
(37, 'ASSESSOR', 'CITY ASSESSOR OFFICE', 'ASSESSOR', '$2y$10$c0tygIBAZElDAdZ3itgMVOHuZHeUZnEBKDFvb2Yfx3ei7fOU7HsOe', '', '', '2023-05-10 02:39:16', NULL),
(38, 'BUDGET', 'CITY BUDGET OFFICE', 'BUDGET', '$2y$10$9rYCS7KDF3twZrQjaEN4Xu.fsOiBGd4RDgwV08qM.Cwb5GvebsoRy', '', '', '2023-05-10 02:39:25', NULL),
(39, 'CCRO', 'OFFICE OF CIVIL REGISTRY', 'CCRO', '$2y$10$fF57TkZgoHpgSaTnF4ncCO0BaS0Mv9mlNQyexyefBWi/Dy9/xsOSK', '', '', '2023-05-10 02:39:38', NULL),
(40, 'ENGINEERING', 'CITY ENGINEERING OFFICE', 'ENGINEERING', '$2y$10$LnXy7uHTbe5FXeseUVA8UeUPjcqxHIvZ2Ly3mgqPZTyi0BV7mi5yy', '', '', '2023-05-10 04:21:23', NULL),
(41, 'HEALTH', 'OFFICE ON HEALTH SERVICES', 'HEALTH', '$2y$10$KBfPzxzvSBNxF7tXEXpqzOKERBNHFWYmeqslAghjLL05QUwgOmyUW', '', '', '2023-06-15 23:53:46', NULL),
(42, 'LEGAL', 'OFFICE FOR LEGAL SERVICES', 'LEGAL', '$2y$10$Q7UEJRbVnAzOlRqo/nI7cOHrSbXaQrFcx1x7jVKNCe4zULcY3bYpW', '', '', '2023-05-10 02:40:45', NULL),
(43, 'MAYOR', 'OFFICE OF THE CITY MAYOR', 'MAYOR', '$2y$10$wIIcqufnMjVeb7288/FmxuqjAxR7BEQC8QkXULGH2XKzJkhLaCCQa', '', '', '2023-05-10 04:38:40', NULL),
(44, 'CPDO', 'CITY PLANNING AND DEVELOPMENT OFFICE', 'CPDO', '$2y$10$.llXASarMAtKa4s2.EkEUeFfxVgJXV1YVBhxo7xk6haPB.vwPYUNe', '', '', '2023-05-10 04:38:35', NULL),
(45, 'CSWDO', 'OFFICE ON SOCIAL WELFARE AND DEVELOPMENT SERVICES', 'CSWDO', '$2y$10$lO5HAAVvBGs1fGZ95BR3ZuByzPNEbL79pqXo8SDaPJoX4J8f4w1va', '', '', '2023-05-10 02:41:07', NULL),
(46, 'CTO', 'CITY TREASURY OFFICE', 'CTO', '$2y$10$Frqc12sNq1nTVgmLHqWYTO3aU2XdMk96yS6kq9G/FKpjnSUAGzREm', '', '', '2023-05-10 02:41:13', NULL),
(47, 'OBO', 'OFFICE OF THE CITY BUILDING OFFICIAL', 'OBO', '$2y$10$bND9l9xb6sQNJj1UAXII5ursp1Nl6XwO3teWGghaFFLMvt3.YHwNe', '', '', '2023-05-10 02:41:19', NULL),
(48, 'SPO', 'SANGGUNIANG PANLUNGSOD OFFICE', 'SPO', '$2a$12$jifwz23s7kA6ZLAaOiJvMONU6XPiw/6phKpKgoWo6cIwC0sr9TGXW', '', '', '2023-06-15 23:53:31', NULL),
(49, 'VMO', 'CITY VICE-MAYOR OFFICE ', 'VMO', '$2y$10$nv5DCH/kbvb9Jw42iILq8uLWPbhgz/BxRjI/R3LbFuDhAHKfnOjVi', '', '', '2023-06-15 23:53:37', NULL),
(50, 'SPORTS', 'OFFICE OF THE MAYOR: SPORTS UNIT', 'SPORTS', '$2y$10$HPRHgkSfUNSAfJROWi6LTOQo5N2aEOHv8P9MLRxUwCazLs.3LcCU.', '', '', '2023-05-10 02:41:39', NULL),
(51, 'SCHOOL', 'LOCAL SCHOOL BOARD', 'SCHOOL', '$2y$10$uRu06dHywy8qseAwxDI8y.zn2yDHpAj4TCpHReqezDRh8pGCHJjDe', '', '', '2023-04-17 05:40:30', NULL),
(52, 'BFP', 'BUREAU OF FIRE PROTECTION', 'BFP', '$2y$10$/OoE6jFd.vRCul8BACE2/eSuGLn1M/i3a2NoCYnlsekbFmc1RmWrG', '', '', '2023-05-10 02:41:55', NULL),
(53, 'CONGRESSMAN', 'OFFICE OF THE CONGRESSMAN', 'CONGRESSMAN', '$2y$10$0c0kGDT6F.ZPPEHu.pr0S.Jl0lyC.1kJhalimMZ0pHZosFmyVpeJu', '', '', '2023-06-14 00:19:39', NULL),
(54, 'DILG', 'DEPARTMENT OF INTERIOR LOCAL GOVERNMENT', 'DILG', '$2y$10$CSHNEwwPje0vjkT4s4JjOuJdqip7w/HmJHdSaDqaWSgl5hPfqv/DW', '', '', '2023-06-15 04:37:46', NULL),
(55, 'AIMHAI', 'ANGAT IMUS HOMEOWNERS ALLIANCE, INC', 'AIMHAI', '$2y$10$3EL2p5.lWf4uubXSZskK6.0T00d1yeV/ZklV4AMZ1C3OZD/1T9WYK', '4TH FLOOR', '', '2023-07-24 05:05:28', NULL),
(56, 'COA', 'COMMISSION ON AUDIT', 'COA', '$2y$10$3gdY95Vtyc4YXVG2xMEqW.RQJdVhMajeRFmJB/ciNDL7b0N3xt/pS', '3RD FLOOR', '', '2023-07-24 07:14:14', NULL),
(58, 'CSO', 'CIVIL SOCIETY  ORGANIZATION OFFICE', 'CSO', '$2a$12$igvmBXfNJYHb.HdhGqBKSeLNWDKJOP/rnDStZaKLZ9FxQXH3iBo.a', '4TH FLOOR', '', '2023-07-24 07:13:56', '2023-07-03 06:21:33'),
(59, 'ABC', 'ABC/LIGA NG MGA BARANGAY NG IMUS', 'ABC', '$2y$10$VzXH7VdHrIDdWH4B7YT5eeIAKrF/cQ3a9Qa8D4HC4cs8tgOt/4oQS', '5TH FLOOR', '', '2023-07-04 23:54:28', NULL),
(60, 'POPS', 'PEACE AND ORDER', 'POPS', '$2y$10$pw6a5WVNJ8czw9PdLwVXkeHTgUUes6vf3voEJ0xDjlnnyTPeyvDRS', '4TH FLOOR', '', '2023-07-24 07:14:27', '2023-07-05 23:35:12'),
(61, 'BAC', 'BIDS AND AWARDS COMMITTEE', 'BAC', '$2y$10$qTWo2WiJH2lrAWmpgB7hQ.QAk4NyZGZAOB.XH.QVocM7Wfntc7Z6a', '4TH FLOOR', '', '2023-07-24 05:05:37', NULL),
(63, 'LHO', 'LOCAL HOUSING OFFICE', 'LHO', '$2y$10$V9QKIzK5FQnt./Ri5wvYvuCW85sQJNyW7onwO3mHx1s0dDwj4NYe2', 'UPPER GROUND', '', '2023-07-11 05:24:39', NULL),
(64, 'RECORDS', 'SP SECRETARY/ RECORDS', 'RECORDS', '$2y$10$y5wCz3jYhjDXiDpJmV.ErObM67fCvNUsLBUxsWi6iIROf9InqhZK6', '5TH FLOOR', '', '2023-07-24 07:14:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reference` varchar(45) NOT NULL,
  `sender` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `document` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `details` text NOT NULL,
  `status` varchar(45) NOT NULL,
  `hidden` int NOT NULL,
  `date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `details` text NOT NULL,
  `status` int NOT NULL COMMENT '0 = unread,\r\n1 = read',
  `created` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
CREATE TABLE IF NOT EXISTS `tracker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reference` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(45) NOT NULL,
  `sender` varchar(45) NOT NULL,
  `department` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(45) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(150) NOT NULL,
  `token` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `token`, `created`, `updated`) VALUES
(1, 'admin', '$2y$10$Fmf4HDibA4caQMMjpYM7a.X8oig042oORz0T/HcjJ9BViNBCMVeMO', '', '2023-08-15 16:00:38', NULL),
(6, 'test', '$2y$10$RT2UovCq.7Vtav1ReyKxheSiQ9YZqHUU8bwxMpCdTO2jLekk/wPxC', '', '2023-08-27 07:55:03', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
