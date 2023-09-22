-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 22, 2023 at 07:49 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `details`, `max_time`, `created`, `updated`) VALUES
(2, 'Voucher', 'a small printed piece of paper that entitles the holder to a discounts.', 3, '2023-08-17 12:39:41', NULL),
(4, 'Memo', 'a written message, especially in business.', 3, '2023-08-24 11:46:15', NULL),
(5, 'Communications', 'the imparting or exchanging of information or news.', 3, '2023-08-24 11:46:22', NULL),
(10, 'Letter', '', 3, '2023-08-29 00:48:52', NULL);

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
  `token` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code`, `department`, `username`, `password`, `location`, `token`, `created`, `updated`) VALUES
(1, 'CDRRMO', 'CITY DISASTER RISK REDUCTION MNGT. OFFICE', 'CDRRMO', '$2y$10$ygm51.BobWtfnmdTPI8F/OnnYYPD/Jd08FBKktQ73JJIxOm..lL7y', '', '', '2023-05-10 02:26:56', NULL),
(2, 'EEMO', 'OFFICE OF THE ECONOMIC ENTERPRISES AND MANAGEMENT(C)', 'EEMO', '$2y$10$qGdGtTV3VhVl3xUc55.sTehoM8AINFBAPtJIPIQXuwkekhBXN7hcK', '', '', '2023-05-10 02:27:38', NULL),
(3, 'PDAO', 'PERSONS WITH DISABILITY AFFAIRS OFFICE', 'PDAO', '$2y$10$.O6Jfac2KrvjtLG2rNH39Onh/mvIF1A9rHzJIA.XO3HzX44fsf2aC', '', '', '2023-05-10 02:28:43', NULL),
(4, 'CAPDO', 'OFFICE ON ARCHITECTURAL PLANNING AND DESIGN', 'CAPDO', '$2y$10$gVAqgdfKpfq.uFk8neh12uE/bRciiqXoaHa8KgEuWy/gajuF7RVcm', '', '', '2023-05-10 02:32:21', NULL),
(5, 'VETERINARY', 'OFFICE ON VETERINARY SERVICES', 'VETERINARY', '$2y$10$Vp4F2yddhJrojVCdLw6L0ej5kHwWmIEnxKh2EO1egaVoJasU1ECke', '', '', '2023-05-10 02:32:39', NULL),
(6, 'CICLEDO', 'CITY OF IMUS COOPERATIVE LIVELIHOOD AND ENTREPRENEURIAL  DEVELOPMENT OFFICE', 'CICLEDO', '$2y$10$77jpSXNqdLBr33EdUwq8HeCV.45xgbatDPkQf6F1vJ1uU4/Uo7wTG', '', '', '2023-05-10 02:33:02', NULL),
(7, 'TOURISM', 'CITY TOURISM AND HERITAGE OFFICE', 'TOURISM', '$2y$10$RVwsHH8BH6FTnUZU177wIe3z/2Wvdh/A9zVt1y.f.Uk11KL6vRemG', '', '', '2023-05-10 02:33:11', NULL),
(8, 'TRU', 'OFFICE OF THE MAYOR: TRICYCLE REGULATORY UNIT', 'TRU', '$2y$10$5bzAni0LAFag1WiZGxp9ped3NKnn18i4lEfOBYArXGYknzmlifCqa', '', '', '2023-05-10 02:33:27', NULL),
(9, 'LIBRARY', 'OFFICE OF THE MAYOR: CITY PUBLIC LIBRARY', 'LIBRARY', '$2y$10$WM2YXo.x2nQ9zEhMbqpgVu36bD4.B7cuV77u45y5g6VPul.uXOxiK', '', '', '2023-05-10 02:33:40', NULL),
(10, 'ECONOMIC', 'OFFICE OF THE ECONOMIC ENTERPRISES AND MANAGEMENT(B)', 'ECONOMIC', '$2y$10$5dAfYEQ9zmV2rjDcyibNFeGNeCXlqd.Jwlu4EC/OIbNOQZiK9iXe.', '', '', '2023-04-17 05:40:28', NULL),
(11, 'GSO', 'GENERAL SERVICES OFFICE', 'GSO', '$2y$10$iPKLjAKZdCzhiiRRIgo5JutXheeK4Hq62Nab9CESAYpfcfcnwOCC6', '', '', '2023-05-10 02:34:37', NULL),
(12, 'POLYTECHNIC', 'IMUS POLYTECHNIC INSTITUTE', 'POLYTECHNIC', '$2y$10$ynl5k.ttvYGgYflnRV46A.pBZptHscqV4Syqe/Vc6/xOzMNfcxcXi', '', '', '2023-04-17 05:40:29', NULL),
(13, 'POPDEV', 'OFFICE ON POPULATION DEVELOPMENT', 'POPDEV', '$2y$10$RFoFsqUTCHBKq61HsfgGWeS3h4gPnfAwZ2I.SHObfj4EZCT.525BK', '', '', '2023-05-10 02:35:02', NULL),
(14, 'ADMIN', 'OFFICE OF THE CITY  ADMINISTRATOR', 'ADMIN', '$2y$10$/cdscq0HW.ArgLAGRA9xquO7O8F3FsPvS/GkZE11LJfPr5ApKUAEG', '', '', '2023-05-10 02:35:07', NULL),
(15, 'OSCA', 'OFFICE OF THE MAYOR: OFFICE OF THE SENIOR CITIZENS AFFAIRS', 'OSCA', '$2a$12$TMCQQ9tdZPVbwbZTK/V1k.43L7Vk5CM1yh9TAv4JXqUTbZCpqdMke', '', '', '2023-05-10 02:35:43', NULL),
(16, 'LEDIPO', 'LOCAL ECONOMIC DEVELOPMENT AND INVESTMENT PROMOTION OFFICE', 'LEDIPO', '$2y$10$hT/AdRLwrG22VBIQBO.7v.5cpRT7Nxbqn87lXAkUkALaMrqI0JLI.', '', '', '2023-05-10 02:35:52', NULL),
(17, 'YOUTH', 'CITY YOUTH AFFAIRS OFFICE', 'YOUTH', '$2y$10$iEmGX7FpXp7Sfr6Hxaa94upd9GCMQwycmBp1/JjzA3Lx4Es8LqObq', '', '', '2023-05-10 02:36:03', NULL),
(18, 'ONI', 'CITY HOSPITAL OF IMUS', 'ONI', '$2a$12$CK1Zug2K1ICDnqMyVGW/ZuPHH.NP2W4oWc6yknRvDmpyV1aFPv1Ti', '', '', '2023-05-10 02:36:16', NULL),
(19, 'PARKS', 'OFFICE OF THE MAYOR: CITY PARKS & HISTORICAL PLACES', 'PARKS', '$2y$10$bWMN4pZD7ws8M/j2c8eTT.ii2ELOX3W5f80hA7/QIbnXgSmi0508y', '', '', '2023-05-10 02:36:30', NULL),
(20, 'PESO', 'OFFICE OF THE MAYOR: CITY PUBLIC EMPLOYMENT SERVICES', 'PESO', '$2y$10$Z9rkYRexLGE84OuAOPb9EOlo7U6k.v3t/b4otmjfRvbETH27UGoGi', '', '', '2023-05-10 02:36:37', NULL),
(21, 'GAD', 'OFFICE OF THE MAYOR: GENDER & DEVELOPMENT UNIT', 'GAD', '$2y$10$rax8E0eGqOD6wEzsRVmZJ.bW/ZnZCSGw9OWa0B00VFk3XlWKZ49ES', '', '', '2023-05-10 02:36:56', NULL),
(22, 'EXTENSION', 'OFFICE OF THE MAYOR: EXTENSION OFFICE', 'EXTENSION', '$2y$10$ceebgihEAj4qp9v1i1lFsu8vSl2gxo6/xebLca8Lzlnq8U5GsAJSy', '', '', '2023-05-10 02:37:04', NULL),
(23, 'FACILITY', 'IMUS ISOLATION FACILITY', 'FACILITY', '$2y$10$XRb7w2GdrPes2iF//F8uJe5YbaRtsILqvfvnPnYOCxqwOORJe40Pa', '', '', '2023-04-17 05:40:29', NULL),
(24, 'LABORATORY', 'OFFICE ON HEALTH SERVICES:  MOLECULAR LABORATORY', 'LABORATORY', '$2y$10$L8ag.cQRdrxNWOzzVHZMd.JCC9U0k4UN8AMngdClXj8HbYb/mKKru', '', '', '2023-04-17 05:40:29', NULL),
(25, 'SKO', 'OFFICE OF THE CITY MAYOR: SANGGUNIANG KABATAAN', 'SKO', '$2y$10$nSA5DyBCh8xHFpZvWSWrdegLducMWdU8xvOyIJVUGB5OGEBxrUcNC', '', '', '2023-07-11 04:28:10', NULL),
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
(44, 'CPDO', 'CITY PLANNING AND DEVELOPMENT OFFICE', 'CPDO', '$2y$10$vupyIsRLGbqyWQ68Hz.EheQqmTbqBzERZlOZeY.72leom9GHDxaLW', '', '', '2023-05-10 04:38:35', NULL),
(45, 'CSWDO', 'OFFICE ON SOCIAL WELFARE AND DEVELOPMENT SERVICES', 'CSWDO', '$2y$10$lO5HAAVvBGs1fGZ95BR3ZuByzPNEbL79pqXo8SDaPJoX4J8f4w1va', '', '', '2023-05-10 02:41:07', NULL),
(46, 'CTO', 'CITY TREASURY OFFICE', 'CTO', '$2y$10$Frqc12sNq1nTVgmLHqWYTO3aU2XdMk96yS6kq9G/FKpjnSUAGzREm', '', '', '2023-05-10 02:41:13', NULL),
(47, 'OBO', 'OFFICE OF THE CITY BUILDING OFFICIAL', 'OBO', '$2y$10$bND9l9xb6sQNJj1UAXII5ursp1Nl6XwO3teWGghaFFLMvt3.YHwNe', '', '', '2023-05-10 02:41:19', NULL),
(48, 'SPO', 'SANGGUNIANG PANLUNGSOD OFFICE', 'SPO', '$2y$10$qGvxdKZ/NN0djXjgOiejsuAfII7R.ho1nQibYxoA9qs8u/pp3XuLO', '', '', '2023-06-15 23:53:31', NULL),
(49, 'VMO', 'CITY VICE-MAYOR OFFICE ', 'VMO', '$2a$12$PcBRbujznsVTT0LhgRm6xO6KcyUEF5Dn4Neaerk.q8ZXFHvWyrF72', '', '', '2023-06-15 23:53:37', NULL),
(50, 'SPORTS', 'OFFICE OF THE MAYOR: SPORTS UNIT', 'SPORTS', '$2y$10$HPRHgkSfUNSAfJROWi6LTOQo5N2aEOHv8P9MLRxUwCazLs.3LcCU.', '', '', '2023-05-10 02:41:39', NULL),
(51, 'SCHOOL', 'LOCAL SCHOOL BOARD', 'SCHOOL', '$2y$10$uRu06dHywy8qseAwxDI8y.zn2yDHpAj4TCpHReqezDRh8pGCHJjDe', '', '', '2023-04-17 05:40:30', NULL),
(52, 'BFP', 'BUREAU OF FIRE PROTECTION', 'BFP', '$2y$10$/OoE6jFd.vRCul8BACE2/eSuGLn1M/i3a2NoCYnlsekbFmc1RmWrG', '', '', '2023-05-10 02:41:55', NULL),
(53, 'CONGRESSMAN', 'OFFICE OF THE CONGRESSMAN', 'CONGRESSMAN', '$2y$10$0c0kGDT6F.ZPPEHu.pr0S.Jl0lyC.1kJhalimMZ0pHZosFmyVpeJu', '', '', '2023-06-14 00:19:39', NULL),
(54, 'DILG', 'DEPARTMENT OF INTERIOR LOCAL GOVERNMENT', 'DILG', '$2y$10$CSHNEwwPje0vjkT4s4JjOuJdqip7w/HmJHdSaDqaWSgl5hPfqv/DW', '', '', '2023-06-15 04:37:46', NULL),
(55, 'AIMHAI', 'ANGAT IMUS HOMEOWNERS ALLIANCE, INC', 'AIMHAI', '$2y$10$3EL2p5.lWf4uubXSZskK6.0T00d1yeV/ZklV4AMZ1C3OZD/1T9WYK', '4TH FLOOR', '', '2023-07-24 05:05:28', NULL),
(56, 'COA', 'COMMISSION ON AUDIT', 'COA', '$2y$10$3gdY95Vtyc4YXVG2xMEqW.RQJdVhMajeRFmJB/ciNDL7b0N3xt/pS', '3RD FLOOR', '', '2023-07-24 07:14:14', NULL),
(58, 'CSO', 'CIVIL SOCIETY  ORGANIZATION OFFICE', 'CSO', '$2a$12$EptXg9VBN1zo2CcD2gAIXe8MOSPtRI7wANvuTDJyw5gsVO6nwLTAm', '4TH FLOOR', '', '2023-07-24 07:13:56', '2023-07-03 06:21:33'),
(59, 'ABC', 'ABC/LIGA NG MGA BARANGAY NG IMUS', 'ABC', '$2y$10$VzXH7VdHrIDdWH4B7YT5eeIAKrF/cQ3a9Qa8D4HC4cs8tgOt/4oQS', '5TH FLOOR', '', '2023-07-04 23:54:28', NULL),
(60, 'POPS', 'PEACE AND ORDER', 'POPS', '$2y$10$pw6a5WVNJ8czw9PdLwVXkeHTgUUes6vf3voEJ0xDjlnnyTPeyvDRS', '4TH FLOOR', '', '2023-07-24 07:14:27', '2023-07-05 23:35:12'),
(61, 'BAC', 'BIDS AND AWARDS COMMITTEE', 'BAC', '$2y$10$qTWo2WiJH2lrAWmpgB7hQ.QAk4NyZGZAOB.XH.QVocM7Wfntc7Z6a', '4TH FLOOR', '', '2023-07-24 05:05:37', NULL),
(63, 'LHO', 'LOCAL HOUSING OFFICE', 'LHO', '$2y$10$V9QKIzK5FQnt./Ri5wvYvuCW85sQJNyW7onwO3mHx1s0dDwj4NYe2', 'UPPER GROUND', '', '2023-07-11 05:24:39', NULL),
(64, 'RECORDS', 'SP SECRETARY/ RECORDS', 'RECORDS', '$2y$10$y5wCz3jYhjDXiDpJmV.ErObM67fCvNUsLBUxsWi6iIROf9InqhZK6', '5TH FLOOR', '', '2023-07-24 07:14:42', NULL),
(76, 'CITF', 'CITY OF IMUS TASK FORCE FOR ROAD CLEARING', 'CITF', '$2y$10$bCBeWUorQx0wcAeQVGkIPOYvxPmRm725pYHTct4SeEmpaXM1Vk1rm', '', '', '2023-09-11 03:20:56', NULL),
(77, 'SANITARY', 'CITY SANITATION UNIT', 'SANITARY', '$2a$12$FTpDvOnqNEBGBgDd4UMxCO5mGmtBtM97Bt.RU0O7SyaNdCK.QQ9c2', '', '', '2023-09-12 03:02:05', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `reference`, `sender`, `document`, `type`, `details`, `status`, `hidden`, `date`, `created`, `updated`) VALUES
(122, '69940441', 'CSO', 'REQUEST', 'Letter', 'SOLICITATION', 'Ongoing', 0, '2023-09-12', '2023-09-12 05:58:35', NULL),
(121, '76361550', 'CSO', 'REQUEST', 'Letter', 'SOLICITATION', 'Ongoing', 0, '2023-09-12', '2023-09-12 05:57:30', NULL),
(117, '14490897', 'TRAFFIC', 'Voucher', 'Voucher', 'Reimbursement of emission (RD)', 'Ongoing', 0, '2023-09-12', '2023-09-12 03:23:36', NULL),
(116, '41045833', 'CDRRMO', 'Voucher', 'Voucher', 'sample', 'Ongoing', 0, '2023-09-12', '2023-09-12 03:07:03', NULL),
(115, '45014395', 'SPORTS', 'Request Letter', 'Letter', 'cigto request', 'Ongoing', 0, '2023-09-12', '2023-09-12 02:45:39', NULL),
(113, '27358616', 'SPORTS', 'Voucher', 'Voucher', 'Supplies', 'Ongoing', 0, '2023-09-12', '2023-09-12 02:37:23', NULL),
(114, '30282637', 'SPORTS', 'Request Letter', 'Letter', 'Utilization of Facilities', 'Ongoing', 0, '2023-09-12', '2023-09-12 02:40:35', NULL),
(111, '96710603', 'TRAFFIC', 'Memo', 'Memo', 'Transmmital', 'Done', 0, '2023-09-12', '2023-09-12 02:25:18', NULL),
(120, '75873255', 'DILG', 'MC CAO 2023-112', 'Memo', 'Availment', 'Done', 0, '2023-09-12', '2023-09-12 05:48:00', NULL),
(109, '17105284', 'DILG', 'voucher', 'Voucher', 'sample', 'Ongoing', 0, '2023-09-12', '2023-09-12 02:13:19', NULL),
(108, '66660985', 'CONGRESSMAN', 'LETTER', 'Letter', 'LETTER', 'Ongoing', 0, '2023-09-12', '2023-09-12 02:12:07', NULL),
(107, '76823231', 'DILG', 'Correspondence', 'Letter', 'DILG CORR', 'Done', 0, '2023-09-12', '2023-09-12 02:11:28', NULL),
(106, '41428370', 'CONGRESSMAN', 'MEDICAL ASSISTANCE', 'Voucher', 'CONSOLIDATED MEDICAL ASSISTANCE', 'Ongoing', 0, '2023-09-12', '2023-09-12 01:59:54', NULL),
(158, '98091299', 'DILG', 'FUEL CONSUMPTION', 'Voucher', 'MONTHLY SUMMARY/FUEL CONSUMPTION', 'Ongoing', 0, '2023-09-13', '2023-09-13 04:50:19', NULL),
(104, '23246971', 'BUDGET', '5508 - Utilities MERALCO', 'Voucher', 'Electricity- Bahay Kalinga, GK Water Pump', 'Ongoing', 0, '2023-09-12', '2023-09-12 00:59:24', NULL),
(103, '11234043', 'BUDGET', '5509 - Utilities MERALCO', 'Voucher', 'Electricity - ONI', 'Ongoing', 0, '2023-09-12', '2023-09-12 00:58:47', NULL),
(102, '35669893', 'BUDGET', '5510 - Utilities MERALCO', 'Voucher', 'Electricity - MOLE', 'Ongoing', 0, '2023-09-12', '2023-09-12 00:57:53', NULL),
(101, '40330782', 'BUDGET', '5515 - Utilities MERALCO', 'Voucher', 'Electricity - Polytechnic', 'Ongoing', 0, '2023-09-12', '2023-09-12 00:56:54', NULL),
(100, '14969268', 'BUDGET', '5514 - Utilities MERALCO', 'Voucher', 'Electricity - IVTS ', 'Ongoing', 0, '2023-09-12', '2023-09-12 00:56:10', NULL),
(99, '63993647', 'BUDGET', '5511- Utilities MERALCO', 'Voucher', 'Electricity Consumption - Imus Public Market, Parkin, IPM, Dry Market', 'Ongoing', 0, '2023-09-12', '2023-09-12 00:54:59', NULL),
(98, '52166366', 'BUDGET', '5512- Utilities MERALCO', 'Voucher', 'Electricity Consumption - M. Espeleta Public Market & Slaughterhous', 'Ongoing', 0, '2023-09-12', '2023-09-12 00:53:58', NULL),
(97, '46764187', 'CAPDO', 'ARCHI PPMP 2024', 'Communications', '2024 PPMP OF CITY ARCHITECTURAL PLANNING AND DESIGN OFFICE', 'Done', 0, '2023-09-12', '2023-09-12 00:53:30', NULL),
(96, '88201127', 'BUDGET', '5513 - Utilities MERALCO', 'Voucher', 'Electricity Consumption- Streetlights, Offices, and CCTVs', 'Ongoing', 0, '2023-09-12', '2023-09-12 00:52:02', NULL),
(123, '64209990', 'POPS', 'REQUEST', 'Letter', 'FOR COUNCIL MEETING', 'Ongoing', 0, '2023-09-12', '2023-09-12 06:15:00', NULL),
(124, '76300382', 'POPS', 'PR', 'Voucher', 'CONFEDENTIAL', 'Done', 0, '2023-09-12', '2023-09-12 06:18:39', NULL),
(125, '20661065', 'POPS', 'OUTGOING LETTER', 'Letter', 'INVITATION TO CIADAC MEETING', 'Done', 0, '2023-09-12', '2023-09-12 06:21:48', NULL),
(126, '68176547', 'TOURISM', 'Request Letter', 'Letter', 'Usage of Plaza', 'Done', 0, '2023-09-12', '2023-09-12 06:40:41', NULL),
(231, '83355427', 'PESO', 'Purchase Request: Goods', 'Voucher', 'Livelihood Program Starter Package', 'Ongoing', 0, '2023-09-19', '2023-09-19 05:48:30', NULL),
(131, '97522102', 'CIO', 'Mobile', 'Voucher', 'Re imbursement ', 'Ongoing', 0, '2023-09-12', '2023-09-12 07:23:00', NULL),
(133, '14074041', 'CPDO', 'Purchase Request', 'Voucher', 'Spare Parts for Motor Vehicle', 'Done', 1, '2023-09-12', '2023-09-12 07:38:27', NULL),
(137, '57883441', 'OBO', 'PRINTING FORMS', 'Voucher', 'PERMITS', 'Ongoing', 0, '2023-09-12', '2023-09-12 07:54:22', NULL),
(136, '71221628', 'POPDEV', 'Travel Order', 'Communications', 'Travel Order of Maria Theresa C. Sañez - September 21, 2023', 'Done', 0, '2023-09-12', '2023-09-12 07:44:21', NULL),
(138, '67978229', 'PESO', 'Outgoing PESO-OC2023-95', 'Letter', ': Letter addresses to Mayor AA, thru: Mr. Larry Monzon, re: Request of Coaster for Passport on Wheels', 'Done', 0, '2023-09-12', '2023-09-12 07:55:43', NULL),
(141, '26055797', 'CPDO', 'Requisition Slip', 'Voucher', 'Reimbursement for SGLG Re-Orientation/Meeting', 'Done', 1, '2023-09-12', '2023-09-12 08:04:38', NULL),
(140, '86459758', 'OBO', 'RESPONSE LETTER', 'Letter', 'COMPLAINTS', 'Ongoing', 0, '2023-09-12', '2023-09-12 07:56:34', NULL),
(149, '35576846', 'CENRO', 'gasoline report ', 'Voucher', 'month of september gasoline report', 'Done', 0, '2023-09-13', '2023-09-13 00:42:50', NULL),
(152, '94701561', 'CPDO', 'CTO Request for Data E. Profile 2022', 'Communications', 'Request for time series record of the City of Imus\' operating expenditures for 2022', 'Ongoing', 0, '2023-09-13', '2023-09-13 01:10:53', NULL),
(148, '69515279', 'PESO', 'Purchase Request', 'Voucher', 'Cause from Computer', 'Done', 0, '2023-09-13', '2023-09-13 00:40:08', NULL),
(147, '49167323', 'CENRO', 'Purchase Request', 'Voucher', 'Repair  of Vehicle', 'Done', 0, '2023-09-13', '2023-09-13 00:17:28', NULL),
(150, '89680920', 'HEALTH', 'Purchase Request', 'Voucher', 'Medicines', 'Ongoing', 0, '2023-09-13', '2023-09-13 00:49:30', NULL),
(151, '46651817', 'DILG', 'AIR', 'Voucher', 'food and drinks during PTC', 'Ongoing', 0, '2023-09-13', '2023-09-13 00:58:24', NULL),
(153, '84604154', 'CENRO', 'for AIR/inspection ', 'Voucher', 'materials & services plate number NII 2145 / conduction number NIG 354 change oil 2nd time ', 'Ongoing', 0, '2023-09-13', '2023-09-13 01:16:05', NULL),
(154, '64992242', 'DILG', 'ADVISORY - DAPC', 'Communications', 'ADVISORY', 'Ongoing', 0, '2023-09-13', '2023-09-13 01:24:32', NULL),
(155, '71683466', 'DILG', 'LETTER_JOSELITO SARREAL', 'Letter', 'BARANGAY BUCANDALA II', 'Ongoing', 0, '2023-09-13', '2023-09-13 01:27:26', NULL),
(156, '33870258', 'CPDO', 'Accounting Request for Data E. Profile 2022', 'Communications', 'Request for the obligated debt expenditures and time series record of revenue other than property tax for 2022', 'Done', 1, '2023-09-13', '2023-09-13 01:29:46', NULL),
(159, '42640563', 'DILG', 'CERTIFICATION', 'Communications', 'CPOC CERT 2023-007 TO 009', 'Ongoing', 0, '2023-09-13', '2023-09-13 04:53:13', NULL),
(160, '36403065', 'DILG', 'PURCHASE REQUEST', 'Voucher', 'PARTS REPLACEMENT AND CHANGE OIL', 'Ongoing', 0, '2023-09-13', '2023-09-13 04:54:35', NULL),
(161, '63773573', 'PESO', 'Purchase Request - Desktop', 'Voucher', 'Purchase of Desktop', 'Ongoing', 0, '2023-09-13', '2023-09-13 05:38:57', NULL),
(162, '92886091', 'PESO', 'Outgoing Letter: PESO-OC2023-97', 'Letter', ' Letter to Robinsons Place Imus,re: Request for the Use of  Level 4 Movie World Robinsons Place Imus', 'Done', 0, '2023-09-13', '2023-09-13 07:05:18', NULL),
(163, '12727652', 'CPDO', 'MO Request for Endorsement SP Reso  Php150M', 'Communications', 'Request for an endorsement for the creation of the SP Resolution of Php 150M', 'Ongoing', 0, '2023-09-13', '2023-09-13 07:40:38', NULL),
(164, '86814681', 'GSO', 'Purchase Request', 'Voucher', 'Aircon', 'Done', 1, '2023-09-13', '2023-09-13 08:09:37', NULL),
(165, '85797198', 'CENRO', 'for AIR/inspection ', 'Voucher', 'shoot that bottle cans / bins', 'Ongoing', 0, '2023-09-14', '2023-09-14 01:13:06', NULL),
(166, '63649343', 'CICLEDO', 'VOUCHER -BOOK PRINTING', 'Voucher', 'Printing - Book of Financial Reporting Standards for Cooperatives for Cooperatives in Imus.', 'Ongoing', 0, '2023-09-14', '2023-09-14 01:18:47', NULL),
(167, '17639013', 'CICLEDO', 'VOUCHER- VEHICLE REPAIRS', 'Voucher', 'Aircon parts replacement for CICLEDO vehicle, Toyota Innova J, with Plate No. SKC 373', 'Ongoing', 0, '2023-09-14', '2023-09-14 01:22:25', NULL),
(168, '43176566', 'CPDO', 'Accounting Request for Data E. Profile 20-21', 'Communications', 'Request for the obligated debt expenditures and time series record of revenue other than property tax for 2020 and 2021', 'Done', 1, '2023-09-14', '2023-09-14 01:30:43', NULL),
(169, '31913643', 'CITRMU', 'PURCHASE OF INK', 'Voucher', 'PAYMENT OF INK', 'Ongoing', 0, '2023-09-14', '2023-09-14 01:36:52', NULL),
(170, '65158088', 'CITRMU', 'PURCHASE OF IT EQUIPMENT', 'Voucher', 'PAYMENT OF IT EQUIPMENT', 'Ongoing', 0, '2023-09-14', '2023-09-14 01:38:14', NULL),
(171, '41605096', 'CPDO', 'HRMO Request for Training Approval', 'Communications', 'HRMO Request for Training Approval  for Engr. Monzon on October 26-27, 2023', 'Ongoing', 0, '2023-09-14', '2023-09-14 07:56:30', NULL),
(172, '87351009', 'CICLEDO', 'VOUCHER-HONORARIUM', 'Voucher', 'HONORARIUM FOR MSME SEMINAR OF GRETCHEN B. VARIAS', 'Ongoing', 0, '2023-09-15', '2023-09-15 00:51:48', NULL),
(173, '88318047', 'BAC', 'RESOLUTIONS', 'Voucher', 'RESO 2023-756 9/6/23 RESO 2023-755 9/6/23', 'Ongoing', 0, '2023-09-15', '2023-09-15 01:36:34', NULL),
(175, '85065774', 'BAC', 'PURCHASE ORDER ', 'Voucher', 'FOR PO NO. (3 DOCUMENTS) CN: 191, 187,190', 'Ongoing', 0, '2023-09-15', '2023-09-15 01:54:34', NULL),
(176, '48629523', 'CSU', 'LETTER', 'Letter', 'LETTER', 'Ongoing', 0, '2023-09-15', '2023-09-15 03:29:56', NULL),
(177, '69514522', 'PESO', 'Incoming Communication: T#: PESO OC2023:IC-27', 'Communications', 'Invitation Letter: GFPS 3rd Quarterly Meeting ', 'Done', 0, '2023-09-15', '2023-09-15 03:46:36', NULL),
(178, '43017930', 'ACCOUNTING', 'PAYROLL OF BARANGAY BOOKKEEPER', 'Voucher', 'PAYROLL OF BARANGAY BOOKKEEPER', 'Done', 0, '2023-09-18', '2023-09-18 00:27:53', NULL),
(179, '48354953', 'CPDO', 'LEGAL Req for MOU Review Lee Sansuk', 'Communications', 'Request for MOU Review for PLO School of Global Inc and Foundation for Amenity Development', 'Ongoing', 0, '2023-09-18', '2023-09-18 00:31:13', NULL),
(180, '94875255', 'BAC', 'PURCHASE ORDER  / REIMBURSEMENT', 'Voucher', 'IVTS  PR# 2023-09-000029/ 9-13-23 = 5,994', 'Done', 0, '2023-09-18', '2023-09-18 02:13:28', NULL),
(181, '21335607', 'BAC', 'PURCHASE ORDER  / REIMBURSEMENT', 'Voucher', 'MAYOR\'S OFFICE PR# 2023-09-00035 / 9-14-23 = 12,250', 'Done', 0, '2023-09-18', '2023-09-18 02:17:28', NULL),
(182, '75485848', 'BAC', 'PURCHASE ORDER  / SHOPPING', 'Voucher', 'AGRI  PR# 2023-09-00037/ 9-15-23 = 6530', 'Done', 0, '2023-09-18', '2023-09-18 02:24:15', NULL),
(183, '49084367', 'BAC', 'PURCHASE ORDER  RESO # 701', 'Voucher', 'CICLEDO  PR# 2023-08-00092 8/16/23 = 129,850', 'Done', 0, '2023-09-18', '2023-09-18 02:36:49', NULL),
(184, '17285422', 'BAC', 'PURCHASE ORDER  RESO # 663', 'Voucher', 'MOLE PO# 2023-09-00050 / 9-15-23 = 550,000', 'Done', 0, '2023-09-18', '2023-09-18 02:38:51', NULL),
(185, '27905785', 'BAC', 'PURCHASE ORDER  RESO #763', 'Voucher', 'LCPC PO# 2023-09-00049/ 9-15-23 = 148,200', 'Done', 0, '2023-09-18', '2023-09-18 02:40:01', NULL),
(186, '48792615', 'BAC', 'PURCHASE ORDER  RESO #759', 'Voucher', 'CTO PO# 2023-09-00046/ 9-14-23 = 236,052', 'Done', 0, '2023-09-18', '2023-09-18 02:41:08', NULL),
(187, '43813599', 'BAC', 'PURCHASE ORDER  RESO #697', 'Voucher', 'DEPED PO# 2023-09-00045/ 9-14-23 = 142,155', 'Done', 0, '2023-09-18', '2023-09-18 02:42:28', NULL),
(188, '76951499', 'BAC', 'PURCHASE ORDER  / REIMBURSEMENT', 'Voucher', 'CTO PO# 2023-09-00044/ 9-14-23 = 550', 'Done', 0, '2023-09-18', '2023-09-18 02:43:45', NULL),
(189, '62491474', 'BAC', 'PURCHASE ORDER  / SHOPPING', 'Voucher', 'CTO PO# 2023-09-00042/ 9-14-23 =5,930', 'Done', 0, '2023-09-18', '2023-09-18 02:44:37', NULL),
(190, '48589535', 'BAC', 'PURCHASE ORDER  RESO #487', 'Voucher', 'CDRRMO PO# 2023-09-00052/ 9-15-23 = 954,075', 'Done', 0, '2023-09-18', '2023-09-18 02:45:53', NULL),
(270, '21607800', 'BAC', 'DEPED IMUS PR# 2023-09-00056 9/20/23 = 51,000', 'Voucher', 'FOOD AND DRINKS FOR THE CONDUCT OF LOCAL BENCHMARKING OF SDO NAGA CITY ON SBFP AND GULAYAN SA PAARALAN', 'Ongoing', 0, '2023-09-20', '2023-09-20 04:16:42', NULL),
(194, '98464754', 'CENRO', 'TEST DOCUMENT', 'Voucher', 'TEST', 'Ongoing', 0, '2023-09-18', '2023-09-18 03:58:56', NULL),
(206, '89530789', 'ASSESSOR', 'Purchase Request', 'Voucher', 'Supplies', 'Ongoing', 0, '2023-09-18', '2023-09-18 06:30:25', NULL),
(196, '44623439', 'BAC', 'GSO PR#2023-09-00033 9/13/23 = 81,587', 'Voucher', 'PURCHASE OF PARTS REPLACEMENT & CHANGE OIL FOR GOVERNMENT VEHICLE WITH PLATE # P1M561, P1C181 & P2F990', 'Ongoing', 0, '2023-09-18', '2023-09-18 04:10:31', NULL),
(198, '17344487', 'AGRICULTURE', 'Voucher - For Emergency Purchase of the diffe', 'Voucher', 'Amount P4,250', 'Done', 0, '2023-09-18', '2023-09-18 05:39:31', NULL),
(200, '83065019', 'ABC', 'REQUEST', 'Letter', 'MEETING', 'Ongoing', 0, '2023-09-18', '2023-09-18 05:56:46', NULL),
(201, '59338954', 'ABC', 'FOOD AND DRINKS', 'Voucher', 'PAYMENT', 'Ongoing', 0, '2023-09-18', '2023-09-18 05:57:32', NULL),
(202, '66738062', 'CICLEDO', 'LETTER - MOA', 'Communications', 'LETTER FOR MOA LEGAL ADVICE ON ESKWELA KOOPERATIBA', 'Ongoing', 0, '2023-09-18', '2023-09-18 05:58:05', NULL),
(203, '78915860', 'SPO', 'PURCHASE REQUEST', 'Voucher', 'FOOD AND DRINKS', 'Ongoing', 0, '2023-09-18', '2023-09-18 06:05:22', NULL),
(204, '24809251', 'SPO', 'PURCHASE REQUEST', 'Voucher', 'OFFICE SUPPLIES', 'Ongoing', 0, '2023-09-18', '2023-09-18 06:10:20', NULL),
(205, '75061889', 'SPO', 'Transmittal', 'Letter', 'Resolution', 'Ongoing', 0, '2023-09-18', '2023-09-18 06:13:37', NULL),
(209, '42239115', 'BAC', 'BIDDING PURCHASE ORDER  RESO #736', 'Voucher', 'CHO PR# 2023-06-00037/ 6-15-23 =1,55,448', 'Done', 0, '2023-09-18', '2023-09-18 06:37:50', NULL),
(259, '66462355', 'CITRMU', 'CELLPHONE BILL', 'Voucher', 'REIMBURSEMNET OF CELLPHONE BILL', 'Ongoing', 0, '2023-09-20', '2023-09-20 00:56:39', NULL),
(211, '92364749', 'PESO', 'Outgoing Letter: PESO-OC2023-98 ', 'Letter', 'PESO-OC2023-95: Letter addresses to  Mr. Larry Monzon, re: Request of Long Tables for JMA on Sept. 22, 2023', 'Done', 0, '2023-09-18', '2023-09-18 06:39:03', NULL),
(212, '26124068', 'BAC', 'PURCHASE ORDER  / REIMBURSEMENT', 'Voucher', 'CTO PR# 2023-08-00138 /8-30-23= 26022.71', 'Done', 0, '2023-09-18', '2023-09-18 06:39:22', NULL),
(213, '64002015', 'BAC', 'PURCHASE ORDER  / SHOPPING', 'Voucher', 'ENG PR# 2023-08-00143 / 9-01-23 = 9500', 'Done', 0, '2023-09-18', '2023-09-18 06:40:24', NULL),
(214, '88224716', 'BAC', 'PURCHASE ORDER  / REIMBURSEMENT', 'Voucher', 'CPDO PR#2023-09-00031 / 9-15-23 = 5520', 'Done', 0, '2023-09-18', '2023-09-18 06:42:08', NULL),
(355, '27218448', 'VMO', 'PANTRY AND UTILITY SUPPLIES  (PHP. 49,678.00)', 'Voucher', 'PR# 2023-08-00087 PO# 2023-09-00031', 'Ongoing', 0, '2023-09-22', '2023-09-22 05:54:32', NULL),
(216, '36463376', 'BAC', 'PURCHASE ORDER  RESO # 258', 'Voucher', 'CDRRMO PR# 2023-04-00013/ 4-05-23 = 269,972.50', 'Done', 0, '2023-09-18', '2023-09-18 06:54:04', NULL),
(244, '20251815', 'BAC', 'CDRRMO PR# 2023-08-00121 8/23/23  = 2,937,407', 'Voucher', 'PURCHASE OF RESPONSE EQUIPAGE USED FOR CDRRMO RESCUE OPERATION', 'Ongoing', 0, '2023-09-19', '2023-09-19 08:18:27', NULL),
(218, '72377883', 'CTO', 'Purchase Request', 'Voucher', 'Food and Drinks', 'Ongoing', 0, '2023-09-18', '2023-09-18 07:14:27', NULL),
(219, '43813695', 'CTO', 'DISBURSEMENT VOUCHER', 'Voucher', 'CASH ADVANCE', 'Ongoing', 0, '2023-09-18', '2023-09-18 07:25:03', NULL),
(220, '21369514', 'CTO', 'DISBURSEMENT VOUCHER', 'Voucher', 'CASH ADVANCE', 'Ongoing', 0, '2023-09-18', '2023-09-18 07:28:12', NULL),
(260, '32856793', 'VMO', 'REIMBURSEMENT  FOOD AND DRINKS AUG 26- SEPT 1', 'Voucher', 'REIMBURSEMENT  ', 'Ongoing', 0, '2023-09-20', '2023-09-20 01:08:27', NULL),
(232, '77158438', 'AGRICULTURE', 'Obligation Request', 'Voucher', 'For purchase of vehicle parts and change oil', 'Done', 0, '2023-09-19', '2023-09-19 05:54:54', NULL),
(224, '60862139', 'CCRO', 'DISBURSEMENT VOUCHER', 'Voucher', 'MINERAL WATER', 'Done', 0, '2023-09-18', '2023-09-18 07:47:02', NULL),
(227, '88026502', 'LEGAL', 'Request for Certified True Copy ', 'Letter', 'Tax Declaration and Certificate of No Improvement', 'Ongoing', 0, '2023-09-18', '2023-09-18 08:20:41', NULL),
(226, '97522477', 'CTO', 'DISBURSEMENT VOUCHER', 'Voucher', 'CASH ADVANCE', 'Ongoing', 0, '2023-09-18', '2023-09-18 08:00:22', NULL),
(229, '20137660', 'PDAO', 'REQUEST', 'Letter', 'MEETING', 'Ongoing', 0, '2023-09-18', '2023-09-18 08:30:01', NULL),
(230, '73502949', 'PDAO', 'MEDICAL ASSISTANCE', 'Voucher', 'FOR BATCH 1 ', 'Ongoing', 0, '2023-09-18', '2023-09-18 08:34:07', NULL),
(233, '24968028', 'BAC', 'PURCHASE ORDER  RESO # 658', 'Voucher', 'TRU PR#2023-07-00156 /  7-31-23 =647,300', 'Ongoing', 0, '2023-09-19', '2023-09-19 06:55:34', NULL),
(252, '80211378', 'CSWDO', 'rice', 'Voucher', 'for shelter use', 'Ongoing', 0, '2023-09-20', '2023-09-19 23:59:36', NULL),
(258, '93816002', 'VMO', 'OFFICE EQUIPMENT (DESKTOP COMPUTER)', 'Voucher', ' PO# 2023-07-00051', 'Ongoing', 0, '2023-09-20', '2023-09-20 00:32:33', NULL),
(254, '59449081', 'CPDO', 'MO Land Reclass for SP Citihomes', 'Communications', 'Request for SP endorsement Reclassification of land Citihomes Builder and Dev\'t Inc.', 'Ongoing', 0, '2023-09-20', '2023-09-20 00:04:32', NULL),
(256, '10248875', 'SPO', 'PURCHASE REQUEST', 'Voucher', 'committe meeting on land utilization, zoning and housing/human settlements', 'Ongoing', 0, '2023-09-20', '2023-09-20 00:05:37', NULL),
(261, '33828944', 'VMO', ' AIRCON REPAIR AND MAINTENANCE  PLATE # P6H30', 'Voucher', 'PR# 2023-05-00130 PO# 2023-08-00061', 'Ongoing', 0, '2023-09-20', '2023-09-20 01:15:36', NULL),
(263, '48366221', 'LIBRARY', 'PURCHASE REQUEST', 'Voucher', 'OFFICE SUPPLIES ', 'Ongoing', 0, '2023-09-20', '2023-09-20 03:41:17', NULL),
(264, '40108736', 'BAC', 'PURCHASE ORDER  RESO # 262', 'Voucher', 'CDRRMO PR# 2023-04-00043/ 4-13-23 = 74,250', 'Ongoing', 0, '2023-09-20', '2023-09-20 03:45:37', NULL),
(265, '42387965', 'BAC', 'PURCHASE ORDER  / REIMBURSEMENT', 'Voucher', 'GSO PR# 2023-09-000024 / 9-13-23 =979.75', 'Ongoing', 0, '2023-09-20', '2023-09-20 03:49:28', NULL),
(266, '44086274', 'BAC', 'PURCHASE ORDER  RESO #773', 'Voucher', 'BJMP FEMALE DORM PR# 2023-04-00065 / 4-20-23 = 32,150', 'Ongoing', 0, '2023-09-20', '2023-09-20 03:51:04', NULL),
(267, '83206334', 'BAC', 'PURCHASE ORDER  RESO # 752', 'Voucher', 'TRU PR# 2023-08-00115 / 8-22-23 = 24,250', 'Ongoing', 0, '2023-09-20', '2023-09-20 04:05:53', NULL),
(268, '58834452', 'SKO', 'Data privacy consent form', 'Letter', 'Personal Data', 'Ongoing', 0, '2023-09-20', '2023-09-20 04:11:21', NULL),
(271, '70495227', 'BAC', 'CDRRMO PR# 2023-09-00052 9/20/23 = 349,932', 'Voucher', 'HOTEL ACCOMODATION TO CONDUCT TRAINING PROGRAM ON EMERGENCY OPERATION CENTER', 'Ongoing', 0, '2023-09-20', '2023-09-20 04:24:28', NULL),
(272, '84019074', 'GSO', 'ELEVATOR MANTRAP RESCUE TRAINING', 'Letter', 'SEPTEMBER 22, 2023', 'Done', 0, '2023-09-20', '2023-09-20 05:09:17', NULL),
(273, '12009107', 'LEDIPO', 'Request Letter', 'Letter', 'Request letter to use HR Training Room on October 11, 18 & 25, 2023', 'Ongoing', 0, '2023-09-20', '2023-09-20 05:27:51', NULL),
(308, '60974897', 'BUDGET', '5874 MERALCO', 'Voucher', 'Electricity - IVTS Livelihood Training Center', 'Ongoing', 0, '2023-09-21', '2023-09-21 00:16:00', NULL),
(280, '60117371', 'CSU', 'DTR OF BAHAYANG PAGASA', 'Communications', 'FOR THE MONTH AUGUST 1-31', 'Ongoing', 0, '2023-09-20', '2023-09-20 06:04:28', NULL),
(279, '14425016', 'CSU', 'DTR OF BAHAYANG PAGASA', 'Communications', 'FOR THE MONTH AUGUST 1-31', 'Ongoing', 0, '2023-09-20', '2023-09-20 06:03:58', NULL),
(307, '94055645', 'BUDGET', '5873 MERALCO', 'Voucher', 'Electricity - Cavite Dialysis Center', 'Ongoing', 0, '2023-09-21', '2023-09-21 00:05:13', NULL),
(285, '54388631', 'MAYOR', 'TRANSMITTALS', 'Communications', 'RESO TO OVM', 'Done', 1, '2023-09-20', '2023-09-20 06:28:36', NULL),
(306, '37478166', 'AGRICULTURE', 'PURCHASE ORDER', 'Voucher', 'FOR EMERGENCY PURCHASE OF  DIFFERENT MATERIALS TO BE USED AT THE CITY PLANT NURSERY', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:43:18', NULL),
(288, '48021145', 'CSU', 'DTR OF BAHAYANG PAGASA', 'Letter', 'FOR THE MONTH AUGUST 1-31', 'Ongoing', 0, '2023-09-20', '2023-09-20 06:46:25', NULL),
(289, '29141581', 'BAC', 'SP REPRESENTATION EXPENSES = 13,075', 'Voucher', 'MUFFY\'S KITCHENETTE ', 'Ongoing', 0, '2023-09-20', '2023-09-20 06:58:22', NULL),
(290, '65065439', 'BAC', 'SP REPRESENTATION EXPENSES = 5,960', 'Voucher', 'MUFFY\'S KITCHENETTE ', 'Ongoing', 0, '2023-09-20', '2023-09-20 06:59:11', NULL),
(291, '68069166', 'BAC', 'SP REPRESENTATION EXPENSES = 28,543', 'Voucher', 'MUFFY\'S KITCHENETTE ', 'Ongoing', 0, '2023-09-20', '2023-09-20 06:59:55', NULL),
(292, '40528439', 'BAC', 'SP REPRESENTATION EXPENSES = 16,920', 'Voucher', 'MUFFY\'S KITCHENETTE ', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:00:16', NULL),
(293, '72703107', 'BAC', 'SP REPRESENTATION EXPENSES = 14,580', 'Voucher', 'MUFFY\'S KITCHENETTE ', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:01:27', NULL),
(294, '83674894', 'BAC', 'SP REPRESENTATION EXPENSES = 5,599', 'Voucher', 'MUFFY\'S KITCHENETTE ', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:02:07', NULL),
(295, '76468981', 'BAC', 'SP REPRESENTATION EXPENSES = 14,760', 'Voucher', 'MUFFY\'S KITCHENETTE ', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:03:24', NULL),
(296, '13518167', 'MAYOR', 'TRANSMITTAL', 'Communications', 'RESO FOR OVM', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:09:33', NULL),
(297, '78660424', 'BAC', 'PURCHASE ORDER  RESO # 207', 'Voucher', 'CSWD PR# 2023-08-00107 / 8-17-23 =18,260', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:11:11', NULL),
(298, '88972137', 'GSO', 'REIMBURSEMENT', 'Voucher', 'PURCHASE OF WHEEL CAP AND BRAKE FLUID', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:12:35', NULL),
(299, '57201648', 'BAC', 'PURCHASE ORDER  RESO # 661', 'Voucher', 'PNP/GSO PR# 2023-08-00043/ 8-07-23= 50,200', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:13:09', NULL),
(300, '19160720', 'BAC', 'PURCHASE ORDER  RESO # 742', 'Voucher', 'CDRRMO PR# 2023-08-00133 / 8-31-23 = 20,300', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:14:57', NULL),
(301, '39627195', 'BAC', 'ADMIN/MO PR# 2023-09-00044 - 9/19/23 = 204,00', 'Voucher', 'PURCHASE OF ACRYLIC STAND FOR THE CITIZEN CHARTER HOLDER OF VARIOUS OFFICES', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:32:40', NULL),
(302, '47180281', 'CITRMU', 'TRANSMITTAL NO. 2023-09001', 'Communications', 'Individual Development Plans (IDP) of 11 CITRMU personnel', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:34:57', NULL),
(303, '24563608', 'VMO', 'OFFICE EQUIPMENT (2 CABINET)', 'Voucher', 'PR# 2023-08-00072 PO# 2023-09-00003', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:36:18', NULL),
(304, '85455030', 'BAC', 'GSO PR#2023-09-00032 9/13/23 = 34,870', 'Voucher', 'PARTS REPLACEMENT & CHANGE OIL FOR GOVERNMENT VEHICLE WITH PLATE # SKS133', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:36:26', NULL),
(305, '56805334', 'BAC', 'CHO PR# 2023-09-00018 / 9-11-23 =13,545', 'Voucher', 'PARTS REPLACEMENT & CHANGE OIL FOR GOVERNMENT VEHICLE WITH PLATE # SJD 292', 'Ongoing', 0, '2023-09-20', '2023-09-20 07:38:59', NULL),
(309, '89549305', 'BUDGET', '5875 MERALCO', 'Voucher', 'Electricity - Bahay Kalinga 2', 'Ongoing', 0, '2023-09-21', '2023-09-21 00:17:07', NULL),
(310, '91224439', 'BUDGET', '5876 MERALCO', 'Voucher', 'Bill Deposit - ONI Streetlights', 'Ongoing', 0, '2023-09-21', '2023-09-21 00:18:22', NULL),
(311, '80346380', 'BUDGET', '5877 MERALCO', 'Voucher', 'Bill Deposit - Rehabilitation Center Alapan 2B', 'Ongoing', 0, '2023-09-21', '2023-09-21 00:19:11', NULL),
(312, '48916537', 'BUDGET', '5878 MERALCO ', 'Voucher', 'Electricity - Diff Streetlights, Offices, and CCTVs', 'Ongoing', 0, '2023-09-21', '2023-09-21 00:20:17', NULL),
(313, '82309502', 'VMO', 'RENTAL AUTOREFRACTOMETER (JUNE- AUGUST 2023)', 'Voucher', 'PR# 2023-08-00026 PO#  2023-08-00094', 'Ongoing', 0, '2023-09-21', '2023-09-21 00:29:47', NULL),
(315, '98949374', 'BUDGET', '5880 MERALCO', 'Voucher', 'Electricity - WDC & CDC', 'Ongoing', 0, '2023-09-21', '2023-09-21 01:08:19', NULL),
(316, '90529209', 'BUDGET', '5881 MERALCO', 'Voucher', 'Electricity - Imus Market Streetlights', 'Ongoing', 0, '2023-09-21', '2023-09-21 01:08:56', NULL),
(317, '36389364', 'BUDGET', '5882 MERALCO', 'Voucher', 'Electricity - Different Streetlights', 'Ongoing', 0, '2023-09-21', '2023-09-21 01:09:36', NULL),
(318, '21890384', 'MAYOR', 'transmittals', 'Communications', 'reso to sp', 'Done', 1, '2023-09-21', '2023-09-21 01:44:34', NULL),
(319, '51025647', 'BUDGET', '5822 MERALCO', 'Voucher', 'Electricity- Day Care Centers', 'Ongoing', 0, '2023-09-21', '2023-09-21 02:20:17', NULL),
(320, '61388039', 'BPLO', 'Business Cease and Desist Letter', 'Letter', 'For signature of Atty. Leonard Martin E. Syjuco', 'Ongoing', 0, '2023-09-21', '2023-09-21 02:24:31', NULL),
(321, '64213921', 'VETERINARY', 'Repair /Replacement SKT 136 - Voucher', 'Voucher', 'For the repair and replacement of government vehicle (Animal Impounding Vehicle) assigned at the City Veterinary Services Office with plate number SKT 136.', 'Ongoing', 0, '2023-09-21', '2023-09-21 04:05:18', NULL),
(322, '30066461', 'TOURISM', 'MPRO AUDIO-TECH LIGHTS AND SOUND RENTAL', 'Voucher', 'RENTAL OF LIGHTS AND SOUND WITH LEDSCREEN AND BAND EQUIPMENT FOR BATTLE OF THE BAND AND VARIETY SHOW 2023', 'Ongoing', 0, '2023-09-21', '2023-09-21 04:51:06', NULL),
(323, '46651668', 'ADMIN', 'PURCHASE REQUEST', 'Voucher', 'PAPER SHREDDER', 'Ongoing', 0, '2023-09-21', '2023-09-21 05:11:54', NULL),
(324, '48119613', 'VMO', 'OFFICE SUPPLIES ( BROTHER INK)', 'Voucher', ' PR# 2023-06-00075 PO# 2023-07-00099', 'Ongoing', 0, '2023-09-21', '2023-09-21 05:19:06', NULL),
(325, '89697401', 'VMO', 'TIRE REPLACEMENT INNOVA P4Y925', 'Voucher', 'PR# 2023-07-00033 PO# 2023-08-00026', 'Ongoing', 0, '2023-09-21', '2023-09-21 05:34:33', NULL),
(326, '65831001', 'GAD', 'voucher', 'Voucher', 'subscription', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:05:31', NULL),
(327, '50866553', 'GAD', 'VOUCHER', 'Voucher', 'OFFICE FIXTURES', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:15:55', NULL),
(328, '62138385', 'BAC', 'PURCHASE ORDER  / REIMBURSEMENT', 'Voucher', 'CSWD PR# 2023-09-00067 9/21/23 = 1306', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:23:50', NULL),
(329, '11168409', 'BAC', 'PURCHASE ORDER  / REP ALLOWANCE', 'Voucher', 'SP PR# 2023-09-00064 9/20/23 = 6815', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:26:20', NULL),
(330, '11831931', 'BAC', 'PURCHASE ORDER  / REP ALLOWANCE', 'Voucher', 'SP PR# 2023-09-00062 9/20/23 = 19908', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:28:22', NULL),
(331, '30122174', 'BAC', 'PURCHASE ORDER  / REP ALLOWANCE', 'Voucher', 'SP PR# 2023-09-00063 9/20/23 = 3225', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:29:40', NULL),
(332, '71945185', 'BAC', 'PURCHASE ORDER  /  BIDDING', 'Voucher', 'DEPED PR# 2023-08-00049 8/8/23 = 19,714,315.60', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:31:13', NULL),
(333, '67009260', 'BAC', 'PURCHASE ORDER  / REIMBURSEMENT', 'Voucher', 'SIR LARRY VOUCHER CW HOME DEPOT', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:32:53', NULL),
(334, '26079221', 'BAC', 'PURCHASE ORDER ', 'Voucher', 'LIBRARY PR# 2023-09-00021 9/12/23 = 14,355', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:35:15', NULL),
(335, '64197994', 'BAC', 'PURCHASE ORDER  / SHOPPING', 'Voucher', 'ASSESSOR PR# 2023-09-00023 / 9-13-23 = 2595', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:38:01', NULL),
(336, '44730923', 'BAC', 'PURCHASE ORDER  / REIMBURSEMENT', 'Voucher', 'AGRI PR# 2023-09-00039 9/18/23 = 3,895', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:39:04', NULL),
(337, '28519269', 'VMO', 'PURCHASE OF OFFICE EQUIPMENT (BOLTLESS RACK) ', 'Voucher', 'PR for signature Budget Officer', 'Ongoing', 0, '2023-09-21', '2023-09-21 06:48:24', NULL),
(338, '22767425', 'AGRICULTURE', 'ENDORSEMENT OF RSBSA FIELD ASSISTANT', 'Communications', 'REQUEST LETTER FROM REGIONAL FIELD OFFICE IV-CALABARZON', 'Done', 0, '2023-09-21', '2023-09-21 06:52:14', NULL),
(339, '53038093', 'BAC', 'CHO PR# 2023-09-0004.3/ 9-19-23 = 70,000', 'Voucher', 'PURCHASE OF ESSENTIAL NEWBORN SCREENING KIT FOR IMUS BIRTHING HOME ( PHILHEALTH TRUST FUND)', 'Ongoing', 0, '2023-09-21', '2023-09-21 07:03:11', NULL),
(340, '53915826', 'BAC', 'ASSESOR PR#2023-09-00001 9/4/23 = 29,000', 'Voucher', 'COMPUTER SPECS TO BE USE IN ASSESSOR OFFICE', 'Ongoing', 0, '2023-09-21', '2023-09-21 07:06:44', NULL),
(341, '92052263', 'CTO', 'PURCHASE REQUEST', 'Voucher', 'Various supplies for BSK Election', 'Ongoing', 0, '2023-09-21', '2023-09-21 07:09:48', NULL),
(342, '34397263', 'CTO', 'PURCHASE REQUEST', 'Voucher', 'Accountable forms', 'Ongoing', 0, '2023-09-21', '2023-09-21 07:10:31', NULL),
(343, '28872976', 'OBO', 'purchase request', 'Voucher', 'reinbursment', 'Ongoing', 0, '2023-09-21', '2023-09-21 07:59:49', NULL),
(344, '73696935', 'SPORTS', 'Request Letter', 'Letter', 'Utilization of Facilities', 'Ongoing', 0, '2023-09-21', '2023-09-21 08:36:54', NULL),
(345, '50368174', 'SPORTS', 'Request Letter', 'Communications', 'cigto request', 'Ongoing', 0, '2023-09-21', '2023-09-21 08:38:20', NULL),
(346, '53531661', 'VMO', 'PURCHASE OF UTILITY SUPPLIES (PHP. 46,788.00)', 'Voucher', 'PR# 2023-08-00104 PO# 2023-09-00043', 'Ongoing', 0, '2023-09-22', '2023-09-22 00:25:45', NULL),
(347, '46767004', 'VMO', 'PURCHASE OF PANTRY SUPPLIES  (PHP. 77,425.00)', 'Voucher', 'PR# 2023-08-00105 PO# 2023-09-00036', 'Ongoing', 0, '2023-09-22', '2023-09-22 00:27:55', NULL),
(348, '74415460', 'GAD', 'voucher', 'Voucher', 'zoom subscription', 'Ongoing', 0, '2023-09-22', '2023-09-22 00:51:16', NULL),
(349, '89586189', 'CTO', 'PURCHASE REQUEST', 'Voucher', 'CHICHARON', 'Ongoing', 0, '2023-09-22', '2023-09-22 01:37:11', NULL),
(350, '26174509', 'CTO', 'PURCHASE REQUEST', 'Voucher', 'LONGGANISA', 'Ongoing', 0, '2023-09-22', '2023-09-22 01:43:38', NULL),
(351, '35674437', 'CITRMU', 'TRANSMITTAL NO. 2023-09002', 'Communications', 'Job Order Replacement - J. Sabado', 'Ongoing', 0, '2023-09-22', '2023-09-22 02:01:29', NULL),
(352, '67182971', 'CPDO', 'CENRO Response to Mr. Emmanuel Espinola', 'Communications', 'Response to the request of CENRO for the inspection report ', 'Ongoing', 0, '2023-09-22', '2023-09-22 02:09:35', NULL),
(353, '24278016', 'CTO', 'OBR-FOR AIR', 'Voucher', 'YELLOW METAL BOXES PAINT', 'Ongoing', 0, '2023-09-22', '2023-09-22 02:53:11', NULL),
(354, '39339867', 'MAYOR', 'transmittals', 'Communications', 'ocm-oc-2023-09-0286-A re-national mapping reosurce information authority', 'Done', 0, '2023-09-22', '2023-09-22 05:40:27', NULL),
(356, '12650940', 'BAC', 'PURCHASE ORDER/RESO NO: #586 -7/28/23', 'Voucher', 'VARIOUS OFFICES/ PR # 2023-07-00059/7-13-23 /=308,875.00', 'Ongoing', 0, '2023-09-22', '2023-09-22 07:04:08', NULL),
(357, '89013244', 'BAC', 'PURCHASE ORDER/REIMBURSEMENT ', 'Voucher', 'MAYORS OFFICE / PR NO. 2023-09-00030/ 9-14-23/=15,120', 'Ongoing', 0, '2023-09-22', '2023-09-22 07:05:36', NULL),
(358, '16064233', 'BAC', 'PURCHASE ORDER/REPRESENTATION ALLOWANCE', 'Voucher', 'SP OFFICE/ PR NO. 2023-07-00054/ 09-21-23/ 4,466.50', 'Ongoing', 0, '2023-09-22', '2023-09-22 07:07:29', NULL),
(359, '89578986', 'BAC', 'PURCHASE ORDER/REPRESENTATION ALLOWANCE', 'Voucher', 'SP OFFICE/PR NO. 2023-07-00055/ 09-21-23 = 14,940', 'Ongoing', 0, '2023-09-22', '2023-09-22 07:08:13', NULL),
(360, '71335649', 'BAC', 'PURCHASE ORDER/RESO NO: #518 -7/10/23', 'Voucher', 'VARIOUS OFFICES/ PR # 2023-05-00065/ 05-22-23/ 300,380.85', 'Ongoing', 0, '2023-09-22', '2023-09-22 07:17:00', NULL),
(361, '84807287', 'CITRMU', 'Purchase Request', 'Voucher', 'supplier', 'Ongoing', 0, '2023-09-22', '2023-09-22 07:31:05', NULL),
(362, '40688971', 'BAC', 'PURCHASE REQUEST 2023-09-00058 9/19/23 = 7,88', 'Voucher', 'PURCHASE OF MEDICAL EQUIPMENT , REAGENTS AND CONSUMABLES TO BE USED AT CLINICAL CHEMISTRY SECTION OF THE DIAGNOSTIC LABORATORY', 'Ongoing', 0, '2023-09-22', '2023-09-22 07:48:56', NULL);

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
  `remarks` text NOT NULL,
  `note` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `reference`, `type`, `sender`, `department`, `status`, `remarks`, `note`, `created`, `updated`) VALUES
(65, '46764187', 'Communications', 'CAPDO', 'CAPDO', 'Done', '', '', '2023-09-12 00:58:28', '2023-09-12 01:02:49'),
(66, '49268638', 'Voucher', 'YOUTH', 'CITRMU', 'Done', '', 'Dsa', '2023-09-12 02:01:29', '2023-09-12 02:01:49'),
(67, '46764187', 'Communications', 'CAPDO', 'BUDGET', 'Pending', '', '', '2023-09-12 02:04:32', NULL),
(68, '41428370', 'Voucher', 'CONGRESSMAN', 'CITRMU', 'Done', '', 'Sample', '2023-09-12 02:06:44', '2023-09-12 02:07:01'),
(69, '76823231', 'Letter', 'DILG', 'CITRMU', 'Done', '', 'Sfas', '2023-09-12 02:12:24', '2023-09-12 02:13:48'),
(70, '76823231', 'Letter', 'DILG', 'CITRMU', 'Done', '', 'Sfas', '2023-09-12 02:13:36', '2023-09-12 02:13:48'),
(71, '96710603', 'Memo', 'TRAFFIC', 'CITRMU', 'Done', '', '', '2023-09-12 02:26:53', '2023-09-12 02:26:53'),
(72, '74213499', 'Letter', 'TRAFFIC', 'CITRMU', 'Done', '', 'Adsg', '2023-09-12 02:28:47', '2023-09-12 02:29:00'),
(73, '27358616', 'Voucher', 'SPORTS', 'CITRMU', 'Done', '', 'Fash', '2023-09-12 02:38:18', '2023-09-12 02:38:42'),
(74, '30282637', 'Letter', 'SPORTS', 'CITRMU', 'Done', '', 'Dag', '2023-09-12 02:41:11', '2023-09-12 02:41:39'),
(75, '41045833', 'Voucher', 'CDRRMO', 'CITRMU', 'Done', '', 'Afeu', '2023-09-12 03:08:14', '2023-09-12 03:08:42'),
(76, '14490897', 'Voucher', 'TRAFFIC', 'ACCOUNTING', 'Done', '', 'ok', '2023-09-12 03:36:22', '2023-09-13 01:06:24'),
(77, '75873255', 'Memo', 'DILG', 'DILG', 'Done', '', '', '2023-09-12 05:50:23', '2023-09-12 05:50:23'),
(78, '69940441', 'Letter', 'CSO', 'CITRMU', 'Done', '', 'Done', '2023-09-12 06:00:15', '2023-09-12 06:03:01'),
(79, '64209990', 'Letter', 'POPS', 'CITRMU', 'Done', '', 'Done', '2023-09-12 06:17:34', '2023-09-12 06:17:56'),
(80, '20661065', 'Letter', 'POPS', 'POPS', 'Done', '', 'Halu', '2023-09-12 06:22:39', '2023-09-12 06:23:38'),
(81, '68176547', 'Letter', 'TOURISM', 'CITRMU', 'Done', '', 'Stag', '2023-09-12 06:42:11', '2023-09-12 06:43:48'),
(82, '60174955', 'Voucher', 'TOURISM', 'CITRMU', 'Done', '', 'Hajd', '2023-09-12 06:45:36', '2023-09-12 06:45:51'),
(83, '27511849', 'Voucher', 'CITRMU', 'SANITARY', 'Done', '', 'sdafas', '2023-09-12 07:08:16', '2023-09-12 07:08:41'),
(84, '20649626', 'Memo', 'PESO', 'CITRMU', 'Done', '', '', '2023-09-12 07:20:56', '2023-09-12 07:20:56'),
(85, '97522102', 'Voucher', 'CIO', 'CITRMU', 'Done', '', 'Ahei', '2023-09-12 07:24:01', '2023-09-12 07:24:48'),
(86, '14074041', 'Voucher', 'CPDO', 'CITRMU', 'Done', '', 'Ywiaf', '2023-09-12 07:40:25', '2023-09-12 07:40:48'),
(87, '57883441', 'Voucher', 'OBO', 'CITRMU', 'Done', '', 'Dhdch', '2023-09-12 07:55:09', '2023-09-12 07:55:36'),
(88, '71221628', 'Communications', 'POPDEV', 'ADMIN', 'Pending', '', '', '2023-09-12 08:09:09', NULL),
(89, '49167323', 'Voucher', 'CENRO', 'CITRMU', 'Done', '', 'Gwgrhs', '2023-09-13 00:18:39', '2023-09-13 00:19:12'),
(90, '69515279', 'Voucher', 'PESO', 'CITRMU', 'Done', '', 'Ha', '2023-09-13 00:40:46', '2023-09-13 00:41:16'),
(91, '89680920', 'Voucher', 'HEALTH', 'CITRMU', 'Done', '', 'Yafefq', '2023-09-13 00:51:36', '2023-09-13 00:52:09'),
(92, '35576846', 'Voucher', 'CENRO', 'ADMIN', 'Pending', '', '', '2023-09-13 00:53:09', NULL),
(93, '46651817', 'Voucher', 'DILG', 'DILG', 'Pending', '', '', '2023-09-13 01:00:26', NULL),
(94, '33870258', 'Communications', 'CPDO', 'ACCOUNTING', 'Done', '', 'ok', '2023-09-13 02:11:48', '2023-09-13 08:04:32'),
(95, '36403065', 'Voucher', 'DILG', 'ADMIN', 'Pending', '', '', '2023-09-13 05:01:55', NULL),
(96, '98091299', 'Voucher', 'DILG', 'ADMIN', 'Pending', '', '', '2023-09-13 05:02:57', NULL),
(97, '42640563', 'Communications', 'DILG', 'ADMIN', 'Done', '', 'DOCUMENT ALREADY SIGNED FOR RELEASE TO DILG\r\n', '2023-09-13 05:03:16', '2023-09-13 06:21:02'),
(98, '46651817', 'Voucher', 'DILG', 'GSO', 'Done', '', '', '2023-09-14 00:33:27', '2023-09-14 05:34:14'),
(99, '84604154', 'Voucher', 'CENRO', 'GSO', 'Done', '', '', '2023-09-14 00:34:22', '2023-09-14 05:08:58'),
(100, '31913643', 'Voucher', 'CITRMU', 'ADMIN', 'Done', '', '', '2023-09-14 01:46:52', '2023-09-14 01:48:26'),
(101, '31913643', 'Voucher', 'CITRMU', 'ACCOUNTING', 'Done', '', 'ok', '2023-09-14 01:54:59', '2023-09-14 03:07:05'),
(102, '63649343', 'Voucher', 'CICLEDO', 'BUDGET', 'Done', '', 'punch out', '2023-09-14 02:33:19', '2023-09-19 01:38:43'),
(103, '17639013', 'Voucher', 'CICLEDO', 'BUDGET', 'Done', '', 'punch out', '2023-09-14 02:33:58', '2023-09-19 01:38:24'),
(104, '43176566', 'Communications', 'CPDO', 'ACCOUNTING', 'Done', '', 'ok', '2023-09-14 03:48:22', '2023-09-14 07:20:03'),
(105, '85797198', 'Voucher', 'CENRO', 'GSO', 'Done', '', '', '2023-09-15 02:00:54', '2023-09-15 02:01:09'),
(106, '85065774', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number. returned to bac.', '2023-09-15 02:47:12', '2023-09-15 03:04:27'),
(107, '87351009', 'Voucher', 'CICLEDO', 'BUDGET', 'Done', '', 'Out c/o Ms. Luna', '2023-09-15 03:05:20', '2023-09-15 05:29:08'),
(108, '85065774', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR SIGNATURE OF ADMIN', '2023-09-15 03:07:03', '2023-09-15 03:11:19'),
(109, '87351009', 'Voucher', 'CICLEDO', 'ACCOUNTING', 'Done', '', 'ok', '2023-09-18 03:05:04', '2023-09-18 03:07:02'),
(110, '94875255', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with p.o number, to be return to bac', '2023-09-18 03:13:54', '2023-09-18 03:15:36'),
(111, '21335607', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be returned to bac', '2023-09-18 03:16:46', '2023-09-18 03:17:28'),
(112, '75485848', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be returned to bac', '2023-09-18 03:18:18', '2023-09-18 03:18:53'),
(113, '75485848', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO#2023-09-00052', '2023-09-18 03:23:10', '2023-09-18 07:56:57'),
(114, '94875255', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO#2023-09-00054', '2023-09-18 03:23:32', '2023-09-18 07:58:00'),
(115, '21335607', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO# 2023-09-00053 9/18/23', '2023-09-18 03:23:48', '2023-09-18 05:56:05'),
(116, '32700929', 'Voucher', 'VMO', 'CITRMU', 'Done', '', 'Done', '2023-09-18 03:32:36', '2023-09-18 03:33:24'),
(117, '98464754', 'Voucher', 'CENRO', 'VMO', 'Pending', '', '', '2023-09-18 04:00:15', NULL),
(118, '48589535', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:23:35', '2023-09-18 05:23:43'),
(119, '48792615', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:23:53', '2023-09-18 05:23:56'),
(120, '75485848', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:24:07', '2023-09-18 05:24:10'),
(121, '94875255', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:24:19', '2023-09-18 05:24:21'),
(122, '62491474', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:24:31', '2023-09-18 05:24:34'),
(123, '76951499', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:24:48', '2023-09-18 05:24:51'),
(124, '43813599', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:25:02', '2023-09-18 05:25:04'),
(125, '27905785', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:25:14', '2023-09-18 05:25:16'),
(126, '49084367', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:25:24', '2023-09-18 05:25:26'),
(127, '17285422', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-18 05:25:34', '2023-09-18 05:25:36'),
(128, '65158088', 'Voucher', 'CITRMU', 'GSO', 'Done', '', '', '2023-09-18 05:44:53', '2023-09-18 08:11:56'),
(129, '59338954', 'Voucher', 'ABC', 'CITRMU', 'Done', '', 'Dhxhdhdhd', '2023-09-18 05:58:24', '2023-09-18 05:58:59'),
(130, '78915860', 'Voucher', 'SPO', 'CITRMU', 'Done', '', '', '2023-09-18 06:06:36', '2023-09-18 06:07:11'),
(131, '24809251', 'Voucher', 'SPO', 'CITRMU', 'Done', '', 'Ydysuno', '2023-09-18 06:11:05', '2023-09-18 06:11:31'),
(132, '89530789', 'Voucher', 'ASSESSOR', 'CITRMU', 'Done', '', 'En76', '2023-09-18 06:34:08', '2023-09-18 06:34:27'),
(133, '22015799', 'Voucher', 'SKO', 'CITRMU', 'Done', '', 'Done', '2023-09-18 06:34:41', '2023-09-18 06:35:14'),
(134, '58550108', 'Letter', 'GAD', 'CITRMU', 'Done', '', 'Jrbeym', '2023-09-18 06:48:23', '2023-09-18 06:48:56'),
(135, '98820849', 'Letter', 'LEDIPO', 'CITRMU', 'Done', '', 'Done', '2023-09-18 07:00:56', '2023-09-18 07:01:58'),
(136, '72377883', 'Voucher', 'CTO', 'CITRMU', 'Done', '', 'Done', '2023-09-18 07:15:41', '2023-09-18 07:16:07'),
(137, '43813695', 'Voucher', 'CTO', 'CITRMU', 'Done', '', 'Done', '2023-09-18 07:25:59', '2023-09-18 07:26:23'),
(138, '88224716', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-18 07:43:18', '2023-09-18 08:37:50'),
(139, '42239115', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-18 07:43:37', '2023-09-18 08:39:02'),
(140, '26124068', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-18 07:44:01', '2023-09-18 08:38:49'),
(141, '64002015', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-18 07:44:24', '2023-09-18 08:38:34'),
(142, '36463376', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-18 07:44:38', '2023-09-18 08:55:01'),
(143, '87094704', 'Voucher', 'BPLO', 'BPLO', 'Done', '', 'DONE', '2023-09-18 07:44:50', '2023-09-18 07:45:02'),
(144, '60862139', 'Voucher', 'CCRO', 'CITRMU', 'Done', '', 'Done\r\n', '2023-09-18 07:50:21', '2023-09-18 07:50:37'),
(145, '48589535', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO#2023-08-000052', '2023-09-18 07:55:24', '2023-09-18 07:56:06'),
(146, '48792615', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO#2023-04-00046', '2023-09-18 07:56:17', '2023-09-18 07:56:32'),
(147, '62491474', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO#2023-09-00042', '2023-09-18 07:57:05', '2023-09-18 07:57:20'),
(148, '76951499', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO# 2023-09-00044', '2023-09-18 07:58:07', '2023-09-18 07:58:24'),
(149, '43813599', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO#2023-09-00045', '2023-09-18 07:58:31', '2023-09-18 07:58:48'),
(150, '27905785', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO LCPC - RICO', '2023-09-18 07:58:57', '2023-09-20 06:15:25'),
(151, '17285422', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO#2023-09-000050', '2023-09-18 07:59:22', '2023-09-18 07:59:37'),
(152, '49084367', 'Voucher', 'BAC', 'BAC', 'Done', '', 'FOR RELEASE PO#2023-09-000051', '2023-09-18 07:59:43', '2023-09-18 08:00:00'),
(153, '17344487', 'Voucher', 'AGRICULTURE', 'GSO', 'Done', '', 'Return to agriculture office w/ PR3 2023-09-00039 DATED 09-18-23.', '2023-09-18 08:20:00', '2023-09-19 05:22:38'),
(154, '88026502', 'Letter', 'LEGAL', 'LEGAL', 'Pending', '', '', '2023-09-18 08:22:57', NULL),
(155, '52901409', 'Voucher', 'PDAO', 'CITRMU', 'Done', '', 'Hina net', '2023-09-18 08:28:41', '2023-09-18 08:29:12'),
(156, '52901409', 'Voucher', 'PDAO', 'CITRMU', 'Done', '', 'Hina net', '2023-09-18 08:28:50', '2023-09-18 08:29:12'),
(157, '88224716', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO MAAM RIZA CPDO', '2023-09-18 08:43:46', '2023-09-21 07:38:11'),
(158, '64002015', 'Voucher', 'BAC', 'BAC', 'Done', '', 'SIGNED AND FOR RELEASE', '2023-09-18 08:44:13', '2023-09-19 07:55:59'),
(159, '26124068', 'Voucher', 'BAC', 'BAC', 'Done', '', 'SIGNED AND FOR RELEASE', '2023-09-18 08:44:41', '2023-09-19 07:53:53'),
(160, '42239115', 'Voucher', 'BAC', 'BAC', 'Done', '', 'Ate Anna Angkico received', '2023-09-18 08:45:03', '2023-09-20 03:08:09'),
(161, '36463376', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO CDRRMO ABBIE', '2023-09-18 08:56:53', '2023-09-21 06:12:56'),
(162, '36463376', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-19 01:42:59', '2023-09-19 05:48:40'),
(163, '88224716', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-19 01:43:43', '2023-09-19 05:48:27'),
(164, '64002015', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-19 01:44:39', '2023-09-19 05:48:19'),
(165, '26124068', 'Voucher', 'BAC', 'ADMIN', 'Done', '', '', '2023-09-19 01:44:53', '2023-09-19 05:48:07'),
(166, '65158088', 'Voucher', 'CITRMU', 'ACCOUNTING', 'Done', '', 'recheck remarks', '2023-09-19 02:26:31', '2023-09-19 07:09:16'),
(167, '17344487', 'Voucher', 'AGRICULTURE', 'ADMIN', 'Pending', '', '', '2023-09-19 05:31:24', NULL),
(168, '83355427', 'Voucher', 'PESO', 'GSO', 'Done', '', 'NAIBALIK NA SA DEPARTMENT SA PESO PR NO: 2023-09-00057 9/20/23\r\n', '2023-09-19 05:53:21', '2023-09-20 07:18:02'),
(169, '83355427', 'Voucher', 'PESO', 'GSO', 'Done', '', 'NAIBALIK NA SA DEPARTMENT SA PESO PR NO: 2023-09-00057 9/20/23\r\n', '2023-09-19 05:53:34', '2023-09-20 07:18:02'),
(170, '77158438', 'Voucher', 'AGRICULTURE', 'BUDGET', 'Pending', '', '', '2023-09-19 06:34:49', NULL),
(171, '26403837', 'Voucher', 'CSWDO', 'CITRMU', 'Done', '', 'Ok', '2023-09-19 07:00:15', '2023-09-19 07:01:35'),
(172, '26403837', 'Voucher', 'CSWDO', 'CITRMU', 'Done', '', 'Ok', '2023-09-19 07:00:17', '2023-09-19 07:01:35'),
(173, '26403837', 'Voucher', 'CSWDO', 'CITRMU', 'Done', '', 'Ok', '2023-09-19 07:00:17', '2023-09-19 07:01:35'),
(174, '26403837', 'Voucher', 'CSWDO', 'CITRMU', 'Done', '', 'Ok', '2023-09-19 07:00:17', '2023-09-19 07:01:35'),
(175, '76248596', 'Memo', 'CITRMU', 'CSWDO', 'Done', '', '', '2023-09-19 07:07:28', '2023-09-19 07:07:28'),
(176, '27511849', 'Voucher', 'CITRMU', 'OSCA', 'Pending', '', '', '2023-09-19 07:20:59', NULL),
(177, '30578891', 'Voucher', 'OSCA', 'CITRMU', 'Done', '', 'SIGNED', '2023-09-19 07:22:18', '2023-09-19 07:22:51'),
(178, '24968028', 'Voucher', 'BAC', 'ADMIN', 'Pending', '', '', '2023-09-19 08:28:53', NULL),
(179, '61211478', 'Voucher', 'LIBRARY', 'CITRMU', 'Done', '', 'SIGNED', '2023-09-19 08:30:39', '2023-09-19 08:30:55'),
(180, '76248596', 'Memo', 'CITRMU', 'LIBRARY', 'Done', '', '', '2023-09-19 08:32:02', '2023-09-19 08:32:02'),
(181, '60703588', 'Letter', 'LIBRARY', 'LIBRARY', 'Pending', '', '', '2023-09-20 00:09:56', NULL),
(182, '93816002', 'Voucher', 'VMO', 'ACCOUNTING', 'Done', '', 'pls arrange voucher according to checklist', '2023-09-20 00:39:06', '2023-09-20 00:42:09'),
(183, '66462355', 'Voucher', 'CITRMU', 'BUDGET', 'Pending', '', '', '2023-09-20 01:04:09', NULL),
(184, '33828944', 'Voucher', 'VMO', 'CTO', 'Pending', '', '', '2023-09-20 01:36:33', NULL),
(185, '32856793', 'Voucher', 'VMO', 'ACCOUNTING', 'Done', '', 'ok', '2023-09-20 01:52:31', '2023-09-20 05:40:22'),
(186, '93816002', 'Voucher', 'VMO', 'VMO', 'Done', '', 'FOR PO DATE REVISION.', '2023-09-20 01:58:30', '2023-09-20 08:11:38'),
(187, '93816002', 'Voucher', 'VMO', 'BAC', 'Pending', '', '', '2023-09-20 02:12:20', NULL),
(188, '10260164', 'Voucher', 'LIBRARY', 'LIBRARY', 'Pending', '', '', '2023-09-20 03:31:52', NULL),
(189, '84019074', 'Letter', 'GSO', 'GSO', 'Done', '', '', '2023-09-20 05:11:49', '2023-09-20 05:12:15'),
(190, '84019074', 'Letter', 'GSO', 'ENGINEERING', 'Done', '', 'NOTED.', '2023-09-20 05:20:39', '2023-09-20 05:21:19'),
(191, '84019074', 'Letter', 'GSO', 'CSU', 'Pending', '', '', '2023-09-20 05:28:39', NULL),
(192, '42387965', 'Voucher', 'BAC', 'GSO', 'Done', '', 'to be return to bac (no signature of supplier)', '2023-09-20 05:41:51', '2023-09-20 05:47:41'),
(193, '83206334', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 05:42:09', '2023-09-20 05:54:58'),
(194, '44086274', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 05:45:23', '2023-09-20 05:54:44'),
(195, '63649343', 'Voucher', 'CICLEDO', 'BAC', 'Pending', '', '', '2023-09-20 05:51:00', NULL),
(196, '17639013', 'Voucher', 'CICLEDO', 'BAC', 'Done', '', 'PULL OUT - INCOMPLETE REQUIREMENTS', '2023-09-20 05:51:22', '2023-09-20 07:11:49'),
(197, '44086274', 'Voucher', 'BAC', 'BAC', 'Done', '', 'out to bjmp female dorm', '2023-09-20 05:55:46', '2023-09-22 00:42:47'),
(198, '83206334', 'Voucher', 'BAC', 'BAC', 'Pending', '', '', '2023-09-20 06:00:12', NULL),
(199, '70185380', 'Communications', 'CITRMU', 'MAYOR', 'Done', '', '', '2023-09-20 06:04:53', '2023-09-20 06:10:10'),
(200, '37586007', 'Voucher', 'MAYOR', 'CITRMU', 'Done', '', 'Done', '2023-09-20 06:17:55', '2023-09-20 06:18:24'),
(201, '50289950', 'Communications', 'MAYOR', 'CITRMU', 'Done', '', 'Signed', '2023-09-20 06:23:00', '2023-09-20 06:23:28'),
(202, '54388631', 'Communications', 'MAYOR', 'CITRMU', 'Done', '', 'Signed', '2023-09-20 06:28:53', '2023-09-20 06:29:03'),
(203, '54388631', 'Communications', 'MAYOR', 'MAYOR', 'Pending', '', '', '2023-09-20 06:30:18', NULL),
(204, '78774925', 'Communications', 'CITRMU', 'MAYOR', 'Done', '', 'FOR PICK UP', '2023-09-20 06:40:00', '2023-09-20 06:40:39'),
(205, '50388993', 'Communications', 'CITRMU', 'MAYOR', 'Done', '', 'Lack requirements ', '2023-09-20 06:42:46', '2023-09-20 06:43:15'),
(206, '40108736', 'Voucher', 'BAC', 'BAC', 'Done', '', 'NO SUPPLIER SIGNATURE', '2023-09-20 07:34:32', '2023-09-20 07:34:58'),
(207, '88972137', 'Voucher', 'GSO', 'ADMIN', 'Done', '', '', '2023-09-20 07:55:07', '2023-09-21 00:54:03'),
(208, '32856793', 'Voucher', 'VMO', 'VMO', 'Done', '', 'For submission to Treasurer\'s Office.', '2023-09-20 07:57:36', '2023-09-20 08:07:02'),
(209, '47180281', 'Communications', 'CITRMU', 'HRMO', 'Pending', '', '', '2023-09-20 07:58:16', NULL),
(210, '24563608', 'Voucher', 'VMO', 'ACCOUNTING', 'Done', '', 'check remarks', '2023-09-20 08:01:02', '2023-09-20 08:08:57'),
(211, '37478166', 'Voucher', 'AGRICULTURE', 'BAC', 'Pending', '', '', '2023-09-20 08:03:51', NULL),
(212, '32856793', 'Voucher', 'VMO', 'CTO', 'Pending', '', '', '2023-09-20 08:11:57', NULL),
(213, '76468981', 'Voucher', 'BAC', 'GSO', 'Done', '', 'WITH PURCHASE ORDER NUMBER, TO  BE RETURN TO BAC', '2023-09-20 08:41:20', '2023-09-20 08:55:49'),
(214, '83674894', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 08:41:40', '2023-09-21 01:24:00'),
(215, '72703107', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 08:42:25', '2023-09-21 01:24:18'),
(216, '40528439', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 08:43:06', '2023-09-21 01:24:38'),
(217, '65065439', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 08:43:57', '2023-09-21 01:25:12'),
(218, '29141581', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 08:44:33', '2023-09-21 01:25:24'),
(219, '19160720', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 08:45:01', '2023-09-21 01:25:36'),
(220, '57201648', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 08:45:24', '2023-09-21 01:26:08'),
(221, '78660424', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-20 08:46:19', '2023-09-21 01:26:20'),
(222, '82309502', 'Voucher', 'VMO', 'ACCOUNTING', 'Done', '', 'recheck remarks', '2023-09-21 00:38:51', '2023-09-21 00:48:16'),
(223, '77158438', 'Voucher', 'AGRICULTURE', 'ADMIN', 'Pending', '', '', '2023-09-21 00:54:59', NULL),
(224, '89549305', 'Voucher', 'BUDGET', 'ADMIN', 'Done', '', '', '2023-09-21 00:55:17', '2023-09-21 06:31:26'),
(225, '94055645', 'Voucher', 'BUDGET', 'ADMIN', 'Done', '', '', '2023-09-21 00:55:43', '2023-09-21 06:31:41'),
(226, '60974897', 'Voucher', 'BUDGET', 'ADMIN', 'Done', '', '', '2023-09-21 00:56:00', '2023-09-21 06:31:51'),
(227, '68069166', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac ', '2023-09-21 01:24:49', '2023-09-21 01:24:56'),
(228, '21890384', 'Communications', 'MAYOR', 'ADMIN', 'Done', '', '', '2023-09-21 01:46:51', '2023-09-21 01:46:54'),
(229, '21890384', 'Communications', 'MAYOR', 'MAYOR', 'Pending', '', '', '2023-09-21 01:48:32', NULL),
(230, '83674894', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO KUYA TOPER ', '2023-09-21 02:01:17', '2023-09-21 03:38:55'),
(231, '72703107', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO KUYA TOPER ', '2023-09-21 02:01:51', '2023-09-21 03:37:52'),
(232, '40528439', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO KUYA TOPER ', '2023-09-21 02:02:24', '2023-09-21 03:38:04'),
(233, '68069166', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO KUYA TOPER ', '2023-09-21 02:02:50', '2023-09-21 03:38:17'),
(234, '65065439', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO KUYA TOPER \r\n', '2023-09-21 02:03:04', '2023-09-21 03:38:31'),
(235, '29141581', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO KUYA TOPER \r\n', '2023-09-21 02:03:21', '2023-09-21 03:38:44'),
(236, '19160720', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT 9/23\r\n', '2023-09-21 02:03:42', '2023-09-22 07:10:02'),
(237, '57201648', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT 9/22', '2023-09-21 02:17:28', '2023-09-22 07:38:37'),
(238, '78660424', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT 9/23', '2023-09-21 02:17:53', '2023-09-22 07:09:45'),
(239, '61388039', 'Letter', 'BPLO', 'LEGAL', 'Pending', '', '', '2023-09-21 02:45:18', NULL),
(240, '66462355', 'Voucher', 'CITRMU', 'ACCOUNTING', 'Done', '', 'ok', '2023-09-21 03:28:42', '2023-09-21 08:12:08'),
(241, '76468981', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT TO KUYA TOPER ', '2023-09-21 03:37:16', '2023-09-21 03:37:36'),
(242, '88972137', 'Voucher', 'GSO', 'GSO', 'Pending', '', '', '2023-09-21 05:24:15', NULL),
(243, '46651668', 'Voucher', 'ADMIN', 'GSO', 'Pending', '', '', '2023-09-21 05:24:33', NULL),
(244, '46651668', 'Voucher', 'ADMIN', 'GSO', 'Pending', '', '', '2023-09-21 05:24:56', NULL),
(245, '48119613', 'Voucher', 'VMO', 'CTO', 'Pending', '', '', '2023-09-21 05:26:39', NULL),
(246, '65831001', 'Voucher', 'GAD', 'BUDGET', 'Done', '', '', '2023-09-21 06:30:25', '2023-09-21 07:41:08'),
(247, '90529209', 'Voucher', 'BUDGET', 'ADMIN', 'Done', '', '', '2023-09-21 06:32:08', '2023-09-21 06:32:10'),
(248, '34397263', 'Voucher', 'CTO', 'GSO', 'Pending', '', '', '2023-09-21 07:15:04', NULL),
(249, '92052263', 'Voucher', 'CTO', 'GSO', 'Done', '', 'already given to end user w/ pr number 2023-09-00073', '2023-09-21 07:15:18', '2023-09-21 08:44:51'),
(250, '92052263', 'Voucher', 'CTO', 'GSO', 'Done', '', 'already given to end user w/ pr number 2023-09-00073', '2023-09-21 07:15:22', '2023-09-21 08:44:51'),
(251, '88224716', 'Voucher', 'BAC', 'CPDO', 'Pending', '', '', '2023-09-21 07:43:43', NULL),
(252, '74415460', 'Voucher', 'GAD', 'BUDGET', 'Pending', '', '', '2023-09-22 00:57:27', NULL),
(253, '92052263', 'Voucher', 'CTO', 'ADMIN', 'Done', '', '', '2023-09-22 01:14:44', '2023-09-22 02:38:32'),
(254, '34397263', 'Voucher', 'CTO', 'ADMIN', 'Done', '', '', '2023-09-22 01:15:00', '2023-09-22 02:38:19'),
(255, '26174509', 'Voucher', 'CTO', 'GSO', 'Done', '', 'naibalik na sa cto office ang pr done ', '2023-09-22 01:49:11', '2023-09-22 05:57:25'),
(256, '89586189', 'Voucher', 'CTO', 'GSO', 'Done', '', 'naibalik na sa cto office ang pr done', '2023-09-22 01:49:27', '2023-09-22 05:56:54'),
(257, '89586189', 'Voucher', 'CTO', 'GSO', 'Done', '', 'naibalik na sa cto office ang pr done', '2023-09-22 01:49:29', '2023-09-22 05:56:54'),
(258, '93816002', 'Voucher', 'VMO', 'GSO', 'Done', '', 'with purchase order no., to be return to bac', '2023-09-22 01:57:08', '2023-09-22 02:07:22'),
(259, '40108736', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 01:57:42', '2023-09-22 02:44:54'),
(260, '44730923', 'Voucher', 'BAC', 'GSO', 'Done', '', 'to be return to bac', '2023-09-22 01:57:58', '2023-09-22 02:43:10'),
(261, '64197994', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 01:58:49', '2023-09-22 03:56:03'),
(262, '26079221', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 01:59:08', '2023-09-22 04:33:53'),
(263, '67009260', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 01:59:26', '2023-09-22 03:55:44'),
(264, '71945185', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 01:59:43', '2023-09-22 02:45:17'),
(265, '71945185', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 01:59:50', '2023-09-22 02:45:17'),
(266, '30122174', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 02:00:37', '2023-09-22 03:55:31'),
(267, '30122174', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 02:01:09', '2023-09-22 03:55:31'),
(268, '11831931', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 02:01:21', '2023-09-22 03:55:05'),
(269, '11168409', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 02:01:46', '2023-09-22 06:32:55'),
(270, '62138385', 'Voucher', 'BAC', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 02:02:03', '2023-09-22 02:44:27'),
(271, '89697401', 'Voucher', 'VMO', 'ACCOUNTING', 'Done', '', 'OK', '2023-09-22 02:27:59', '2023-09-22 05:55:13'),
(272, '37478166', 'Voucher', 'AGRICULTURE', 'GSO', 'Done', '', 'with purchase order number, to be return to bac', '2023-09-22 02:43:29', '2023-09-22 02:44:42'),
(273, '39339867', 'Communications', 'MAYOR', 'CPDO', 'Pending', '', '', '2023-09-22 05:49:32', NULL),
(274, '21335607', 'Voucher', 'BAC', 'ACCOUNTING', 'Pending', '', '', '2023-09-22 06:27:47', NULL),
(275, '88972137', 'Voucher', 'GSO', 'BAC', 'Pending', '', '', '2023-09-22 06:42:08', NULL),
(276, '28519269', 'Voucher', 'VMO', 'BUDGET', 'Pending', '', '', '2023-09-22 06:53:17', NULL),
(277, '53531661', 'Voucher', 'VMO', 'BUDGET', 'Pending', '', '', '2023-09-22 06:53:42', NULL),
(278, '46767004', 'Voucher', 'VMO', 'BUDGET', 'Pending', '', '', '2023-09-22 06:53:57', NULL),
(279, '24278016', 'Voucher', 'CTO', 'GSO', 'Pending', '', '', '2023-09-22 07:06:07', NULL),
(280, '92052263', 'Voucher', 'CTO', 'BAC', 'Pending', '', '', '2023-09-22 07:14:20', NULL),
(281, '34397263', 'Voucher', 'CTO', 'BAC', 'Pending', '', '', '2023-09-22 07:14:41', NULL),
(282, '30122174', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT 9/22', '2023-09-22 07:35:42', '2023-09-22 07:35:51'),
(283, '11831931', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT 9/22', '2023-09-22 07:36:25', '2023-09-22 07:36:33'),
(284, '11168409', 'Voucher', 'BAC', 'BAC', 'Done', '', 'OUT 9/22\r\n', '2023-09-22 07:37:10', '2023-09-22 07:37:21'),
(285, '89578986', 'Voucher', 'BAC', 'GSO', 'Pending', '', '', '2023-09-22 07:45:08', NULL),
(286, '16064233', 'Voucher', 'BAC', 'GSO', 'Pending', '', '', '2023-09-22 07:45:21', NULL),
(287, '12650940', 'Voucher', 'BAC', 'GSO', 'Pending', '', '', '2023-09-22 07:45:39', NULL),
(288, '89013244', 'Voucher', 'BAC', 'GSO', 'Pending', '', '', '2023-09-22 07:45:54', NULL),
(289, '71335649', 'Voucher', 'BAC', 'GSO', 'Pending', '', '', '2023-09-22 07:46:22', NULL);

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
(1, 'admin', '$2a$12$ua0E7Z6AT1QdHc/q2YbfUOy5BEvWLtRhBOh8BgpYlHc3j/NscgNfe', '', '2023-08-15 16:00:38', NULL),
(6, 'test', '$2y$10$RT2UovCq.7Vtav1ReyKxheSiQ9YZqHUU8bwxMpCdTO2jLekk/wPxC', '', '2023-08-27 07:55:03', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
