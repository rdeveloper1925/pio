-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 09:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oip_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `access_time` datetime NOT NULL,
  `user_id` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_actions`
--

CREATE TABLE `account_actions` (
  `id` int(11) NOT NULL,
  `action` text NOT NULL,
  `account_id` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `maker` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `datetime_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_actions`
--

INSERT INTO `account_actions` (`id`, `action`, `account_id`, `maker`, `datetime_modified`) VALUES
(1, 'User Modify: AUDITTESTER', 'AUDITTESTER', 'SUPERADMIN', '2020-02-08 10:42:43'),
(2, 'Account Unlock: AUDITTESTER', 'AUDITTESTER', 'SUPERADMIN', '2020-02-08 10:42:53'),
(3, 'Account Unlock: MATHIASR', 'MATHIASR', 'SUPERADMIN', '2020-02-09 12:50:30'),
(4, 'Password Reset: MATHIASR', 'MATHIASR', 'SUPERADMIN', '2020-02-09 12:50:30'),
(5, 'Account Unlock: ASABAO', 'ASABAO', 'MATHIASR', '2020-03-06 11:16:06'),
(6, 'Password Reset: ASABAO', 'ASABAO', 'MATHIASR', '2020-03-06 11:16:06'),
(7, 'User Created: KISAKYEE', 'KISAKYEE', 'MATHIASR', '2020-03-06 11:22:47'),
(8, 'Account Unlock: ASABAO', 'ASABAO', 'MATHIASR', '2020-03-11 17:35:17'),
(9, 'Password Reset: ASABAO', 'ASABAO', 'MATHIASR', '2020-03-11 17:35:17'),
(10, 'User Created: KASSAGAS', 'KASSAGAS', 'MATHIASR', '2020-03-11 17:47:05'),
(11, 'Account Lock: SUPERADMIN', 'SUPERADMIN', 'MATHIASR', '2020-03-26 10:54:50'),
(12, 'User Created: DONUSN', 'DONUSN', 'MATHIASR', '2020-04-23 12:16:01'),
(13, 'Account Unlock: ASABAO', 'ASABAO', 'MATHIASR', '2020-04-23 12:19:43'),
(14, 'Password Reset: ASABAO', 'ASABAO', 'MATHIASR', '2020-04-23 12:19:43'),
(15, 'User Created: MUGIRAE', 'MUGIRAE', 'MATHIASR', '2020-05-07 12:49:17'),
(16, 'Account Unlock: MUGIRAE', 'MUGIRAE', 'MATHIASR', '2020-05-07 12:52:12'),
(17, 'User Created: VIRALS', 'VIRALS', 'MATHIASR', '2020-05-07 12:53:37'),
(18, 'User Created: MUSAASIZI', 'MUSAASIZI', 'MATHIASR', '2020-05-07 14:55:57'),
(19, 'Account Unlock: MUSAASIZI', 'MUSAASIZI', 'MATHIASR', '2020-05-07 14:58:12'),
(20, 'Account Unlock: KASSAGAS', 'KASSAGAS', 'MATHIASR', '2020-05-14 08:26:13'),
(21, 'Password Reset: KASSAGAS', 'KASSAGAS', 'MATHIASR', '2020-05-14 08:26:13'),
(22, 'Account Unlock: KISAKYEE', 'KISAKYEE', 'MATHIASR', '2020-05-14 08:27:17'),
(23, 'Password Reset: KISAKYEE', 'KISAKYEE', 'MATHIASR', '2020-05-14 08:27:17'),
(24, 'Account Unlock: VIRALS', 'VIRALS', 'MATHIASR', '2020-05-14 12:24:22'),
(25, 'Account Unlock: VIRALS', 'VIRALS', 'MATHIASR', '2020-05-15 10:55:47'),
(26, 'Password Reset: VIRALS', 'VIRALS', 'MATHIASR', '2020-05-15 10:55:47'),
(27, 'Account Unlock: KISAKYEE', 'KISAKYEE', 'MATHIASR', '2020-05-18 09:55:21'),
(28, 'Account Unlock: KISAKYEE', 'KISAKYEE', 'MATHIASR', '2020-05-18 09:55:33'),
(29, 'User Created: TEST123', 'TEST123', 'MATHIASR', '2020-05-28 19:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `differal`
--

CREATE TABLE `differal` (
  `id` tinyint(4) DEFAULT NULL,
  `branch_code` varchar(100) DEFAULT NULL,
  `creation_date` varchar(100) DEFAULT NULL,
  `sales_person` varchar(100) DEFAULT NULL,
  `authorizer` varchar(100) DEFAULT NULL,
  `account_no` double DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_contact` double DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `errors_identified` varchar(100) DEFAULT NULL,
  `Resolution_Status` varchar(100) DEFAULT NULL,
  `deferral_authorizer` varchar(100) DEFAULT NULL,
  `closure_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `differal`
--

INSERT INTO `differal` (`id`, `branch_code`, `creation_date`, `sales_person`, `authorizer`, `account_no`, `customer_name`, `customer_contact`, `product`, `errors_identified`, `Resolution_Status`, `deferral_authorizer`, `closure_date`) VALUES
(NULL, '001-Kampala Main', '12-Dec-18', '858 - Ibrahim Kato', 'Justus Opar', 44964002010501, 'AFRICAN MEDICAL TECHNOLOGIES U LTD', 772748798, 'New Account', '\"Trading licence', ' IDs and proof of residence for Barigye George William and Senene Esther (Industrial Hemp Uganda)', ' Proof of residence for Anthony Craig Wales (Viking)  and Booysen Hendrick Christoffel  (Africa Medi', 'Pankaj Sharma /'),
(NULL, '002-Jinja Town', '8-Nov-18', '856 - Lubinga Geofrey', 'Rajul Hardik Shah', 44802702010101, 'FUTURE HOLDINGS COMPANY', 772744546, 'New Account', '\"Trading licence', ' Tin certificate', ' \"', 'Agaba Andrew'),
(NULL, '004-Nkrumah Road', '12-Nov-18', '856 - Lubinga Geofrey', 'Justus Opar', 44809702010101, 'MAMUN IMPEX LIMITED', 757770786, 'New Account', 'Trading licence ', 'Fully resolved', 'Agaba Andrew', '6-Dec-18'),
(NULL, '005 - William Street', '6-Dec-18', '694 - Rhina Mwima Ganghis', 'Justus Opar', 44917202010101, 'RELWORX LIMITED', 792557676, 'New Account', 'Trading licence ', 'Fully resolved', 'Pankaj Sharma', '23-Dec-18'),
(NULL, '007 - Entebbe Airport', '21-Dec-18', '856 - Lubinga Geofrey', 'Feta Agnes', 45069202010101, 'UGACHIN CONSTRUCTION LIMITED', 772456034, 'New Account', '\"Trading licence', ' Tin certificate', ' Proof of residence for Wang Zhihong\"', 'Pankaj Sharma'),
(NULL, '008-Kawempe', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46625459010105, 'MANANU BENSON', 781400467, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '009-Mbale', '21-Dec-18', '865 - Gloria Tumwebaze', 'Justus Opar', 44918602010101, 'EURO TRIP SAFARIS LIMITED', 393208257, 'New Account', 'Trading licence', 'Fully resolved', 'Pankaj Sharma', '4-Jan-18'),
(NULL, '010 - Gulu', '21-Dec-18', '856 - Lubinga Geofrey', 'Justus Opar', 45013202010101, 'POKI BROTHERS LIMITED', 754273797, 'New Account', '\"Tin certificate', 'Trade licence\"', 'Fully resolved', '14-Dec-18'),
(NULL, '011-Kololo', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46806959010105, 'LUKANGA ASHIRAF', 753268741, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '013-Garden city', '15-Feb-19', '701 - Teddy Kayesu', 'Rajul Hardik Shah', 45262402010101, 'MUILT CONSULT DESIGN LTD', 792220077, 'New Account', '\"TRADING LICENCE ', ' PROOF OF RESIDENCE FOR NOORANI\"', 'Fully resolved', '11/2/19'),
(NULL, '014 - Kabalagala', '4-Mar-19', '795 - Joanita Nabbaale', 'Muzaaki Jill', 45435801010101, 'KAMANYIRE MWESIGWA GOEFREY', 702605724, 'New Account', 'NATIONAL ID', 'Fully resolved', 'DARSHNA BHATIA', '27-Mar-19'),
(NULL, '015 - Arua', '5-Mar-19', '', 'Narendra Malani', 45436234010112, 'KRISHNIYAR PARTNERS', 702909270, 'New Account', 'TRADING LICENCE', 'Fully resolved', '', '4-Apr-19'),
(NULL, '016 - Kisekka', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46524059010105, 'MERIDA AKUKU', 706028736, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '017-Ntinda', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46831859010105, 'MEDIRI JAMES', 775544440, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '018 - Bweyale', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46628259010105, 'MUDEMUKI YUSUF MUSA', 772777775, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '019 - Kikuubo', '4-Mar-19', '701 - Teddy Kayesu', 'Justus Opar', 45481823010101, 'SUN QITANG', 775509859, 'New Account', 'PROOF OF RESIDENCE', 'Fully resolved', 'PRADYUT SYKULA', '30-03-2019'),
(NULL, '021 - Katwe', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46297759010105, 'MBUSA KYEYA', 787624421, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '022-Makerere', '4-Mar-19', '701 - Teddy Kayesu', 'Rajul Hardik Shah', 45481423010101, 'LI JIANFU', 700159163, 'New Account', 'PROOF OF RESIDENCE', 'Fully resolved', 'PRADYUT SYKULA', '30-3-2019'),
(NULL, '023 - Acacia Mall', '5-Jun-19', '', '', 16550441010501, 'NAMUBIRU DIANAH ESTHER', 757476812, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '15-09-2019'),
(NULL, '024 - Ben Kiwanuka', '1-Apr-19', '', 'Rajul Hardik Shah', 45878241010501, 'DEEPAK DASWANI SHAMDAS', 752733001, 'New Account', 'NATIONAL ID', 'Fully resolved', 'DARSHNA BHATIA', '27/04/2019'),
(NULL, '025-Bweyogerere', '5-Jul-19', '892-Ateenyi Victoria', '', 46957459010101, 'NAKIMULI CHRISTINE', 789432599, 'New Account', '\"KFD', 'NATIONAL ID ', 'PROOF OF RESIDENCE\"', 'HENRY KASUJJA'),
(NULL, '026 - Mbarara', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46295459010105, 'MIGADE NASSER', 754534841, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '027 - Nakivubo', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46436159010105, 'MUMBERE SILIVE', 780867618, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '8-Jul-19', '928-Ellaine Mbabazi', 'Namutebi Brenda Jane', 46650159010108, 'TUNDIWEGI JADRES', 776725749, 'New Account', 'KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '849-Diana Hanghujja', '', 46947404010111, 'LONDON HEARTS EAST AFRICA LTD', 788245161, 'New Account', 'PEP FORMS', 'Fully resolved', 'KENNETH KISAMBIRA', '27-07-2019'),
(NULL, '', '12-Jan-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 45226802010108, 'S N MEALS', 781591378, 'New Account', 'Trading license', 'Fully resolved', 'Agaba Andrew', '2-Feb-19'),
(NULL, '', '30-Apr-19', '', 'Mohammed Younus', 46007908010101, 'ASIIWE DERRICK', 755411704, 'New Account', 'NATIONAL ID', 'No action yet', 'KASUJJA HENRY', '20-05-19'),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', 'Alow Irene', 46551259010105, 'NUWAGABA MOSES', 783701361, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '16-Apr-19', '701 - Teddy Kayesu', 'Rajul Hardik Shah', 45901904010101, 'ISHA DEVELOPERS LTD', 755533534, 'New Account', ' TRADING LICENCE ', 'Partially addressed', 'Agaba Andrew', '30-06-19'),
(NULL, '', '8-Jul-19', '779 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46956259010108, 'KOLUO IVAN', 755305091, 'New Account', 'KFD', 'No action yet', 'HENRY KASUJJA', '28-09-2019'),
(NULL, '\"  \"', '2-Jul-19', '889-Mariam Othieno', 'Alow Irene', 46547159010105, 'KIGOZI CHARLES', 701665686, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '778 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46459559010108, 'AGUMIRIZE', 702490333, 'New Account', 'WRONG KFD', 'Fully resolved', 'No action yet', ''),
(NULL, '', '28-03-2019', '801 - Yvonne Nambasa', 'Rajul Hardik Shah', 45779202010101, 'SAYONAM CONSTRUCTION (U) SMC LTD', 754615855, 'New Account', 'TRADING LICENCE ', 'Fully resolved', 'AGABA ANDREW', '22-04-2019'),
(NULL, '', '13-Nov-18', '849 - Hanghujja Diana', 'Kabengano Barbara', 44753002010111, 'KIMERELA GROUP LIMITED', 712455555, 'New Account', '\"Tin certificate', 'Trade licence\"', 'Fully resolved', '25-Oct-18'),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', 'Alow Irene', 46576759010105, 'NABULYA CAROLINE', 703009954, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '29-Apr-19', '516 - Joan Ajuna', 'Mohammed Younus', 46053402010101, 'HRP SERVICES LIMITED', 704009400, 'New Account', '\"TIN CERTIFICATE ', ' TRADING LICENCE \"', 'Fully resolved', '12/4/19'),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', 'Alow Irene', 46508559010105, 'OMODING JOHN', 784687706, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '5-Jun-19', '780 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 20836005010118, 'OMUNYINI JAMES', 788789484, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '15-09-2019'),
(NULL, '', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46507559010105, 'KIWANUKA EDWARD', 759170949, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '15-Jan-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 45234702010108, 'E ON CARBONS LIMITED', 752722000, 'New Account', 'Trading licence', 'Fully resolved', 'Agaba Andrew', '2-Sep-19'),
(NULL, '', '4-Jul-19', '849-Diana Hanghujja', '', 46958304010111, 'EAST AFRICA MEDICAL STORES LTD', 759484479, 'New Account', 'TRADING LICENCE', 'Fully resolved', 'KENNETH KISAMBIRA', '15-08-2019'),
(NULL, '', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46651359010105, 'MUHINDO JOCKIM', 774038194, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '12-Dec-18', '01SMEQ - Henry Ogwal', 'Kabengano Barbara', 44972102010111, 'ALPINE GENERAL SUPPLIES LTD', 752692286, 'New Account', '\"Tin certificate', 'Trade licence\"', 'Fully resolved', '28-Nov-18'),
(NULL, 'Barbara Kabengano', '28-Feb-19', '', 'Kagoro Suzan', 45469702010111, 'SUN MAKER ENERGY U LTD', 788061001, 'New Account', '\"PROOF OF RESIDENCE OF DIRECTORS (MA BO ', 'LYU JIAN & DUAN XIAOFEI)', 'CERTIFIED RESOLUTION ', 'MABO'),
(NULL, '', '6-Mar-19', '660 - Joy Kemigisha', '', 45520402010111, 'HASHEM TRADING CO-SMC LIMITED', 792808888, 'New Account', 'TRADING LICENCE', 'Fully resolved', 'CLOSED', '4-Apr-19'),
(NULL, '', '15-03-2019', '01CORG - Drakeson Mumpe', '', 45438302010111, 'GAMA PHARMACEUTICALS U LTD', 750080004, 'New Account', '\"', 'ENTRY PERMIT FOR AMAL\"', 'Fully resolved', '11/3/19'),
(NULL, '', '17-Apr-19', '01CORG - Drakeson Mumpe', 'Kabengano Barbara', 45571902010111, 'VELTEC SERVICES LTD', 772594446, 'New Account', 'PROOF OF RESIDENCE FOR RAMANJEET &JASWINDER', 'Fully resolved', 'KENNETH KISAMBIRA', '26-Jul-19'),
(NULL, '', '25/6/2019', '', 'Kabengano Barbara', 46053002010511, 'TIAN TANG GROUP LIMITED', 706915529, 'New Account', '\"PROOF OF RESIDENCE (ZHANG ZIHCHAN', 'WANG WENTONG', 'ZHANG ZHIGANG', 'PEP FORM'),
(NULL, '', '28-Jun-19', '764-Shahir Nasimu', '', 46835202010124, 'LUXOR IMPEX - SMC LIMITED', 797277566, 'New Account', 'TRADING LICENCE', 'Fully resolved', 'Agaba Andrew', '7-Dec-19'),
(NULL, '', '28-Jun-19', '865-Gloria Tumwebaze', '', 46826802010101, 'MAVID PHARMCEUTICALS INDUSTRIES LTD', 701792475, 'New Account', '\"NATIONAL ID ', 'NAMESCREEN ', 'PROOF OF RESIDENCE\"', 'KENNETH KISAMBIRA'),
(NULL, '', '25-Jun-19', '889-Mariam Athieno', 'Alow Irene', 46554759010105, 'MULIISA FREDRICK', 757638509, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '5-Jul-19', '892-Ateenyi Victoria', '', 46960259010101, 'NANNOZI FLORENCE', 759635432, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '29-09-2019'),
(NULL, '', '25/06/2019', '', '', 46408502010511, 'COTIA BRASCA UGANDA LIMITED', 258847587613, 'New Account', '\"CERTIFIED FORM 7/20/8', ' CERTIFIED RESOLUTION', 'CERTIFIED CERTIFICATE OF INCORPORATION', 'TRADING LICENCE'),
(NULL, '', '29-May-19', '', '', 46355502010511, 'MENTE ENGINEERING LIMITED', 778707897, 'New Account', 'PROOF OF RESIDENCE FOR MENTE ABDURRAHIM', 'Fully resolved', 'KENNETH KISAMBIRA', '15-06-19'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46827259010117, 'OTIKA AGNES', 783599276, 'New Account', 'NATIONAL ID', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46723859010117, 'ALI MUHAMMED', 702338308, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46731559010117, 'KOBUGABE PENLOPE', 704633338, 'New Account', 'NATIONAL ID', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46718459010117, 'SSEMAKULA ISAH RIVERS', 700511594, 'New Account', 'NATIONAL ID', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46734659010117, 'AKULEUT EVERLINE SYLIVIA', 785925472, 'New Account', 'NATIONAL ID ', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46735759010117, 'NABUKENYA SARAH', 753604593, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46785059010117, 'ODUR BENARD', 759812363, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46797059010117, 'KAGGWA SIMON', 700620848, 'New Account', '', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46723459010117, 'OWORI DAVID', 784605121, 'New Account', 'NATIONAL ID', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46798159010117, 'EMEJJE PIUS', 706290581, 'New Account', ' NATIONAL ID', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46744559010117, 'OMONGIN PAUL', 779395015, 'New Account', '\"KFD ', 'NATIONAL ID\"', 'No action yet', '26-06-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46736659010117, 'AYOO LUCY', 789946134, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46939459010117, 'KADENGE CHRISPO UMARU', 789553734, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46786559010117, 'ABIA GODWILL', 787519469, 'New Account', 'NATIONAL ID', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46734459010117, 'OKUNE IVAN', 777944315, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46734859010117, 'MALIMBE MICHEAL', 778258331, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46730459010117, 'NAKATE AISHA', 758282815, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46723359010117, 'OMAR SHAMIM', 752895599, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46729459010117, 'INGANGA REHEMA WELIMO', 785372621, 'New Account', 'NATIONAL ID', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46788159010117, 'NAKAWOOYA OLIVER', 708473023, 'New Account', 'NATIONAL ID', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46728859010117, 'ANDAMA ALIKEZENDA', 786313984, 'New Account', 'NATIONAL ID', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46804859010117, 'BIR BAHADUR THAPA', 702577677, 'New Account', 'PROOF OF RESIDENCE', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46827659010117, 'AKELLO BABARA HOPE', 774019412, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46738459010117, 'NASSAKA ROSE', 782185982, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46723559010117, 'MUWANGA THOMAS KINTU', 777009034, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46735959010117, 'KIBWIKA PAUL PATRICK', 774556130, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46729059010117, 'NAKAZIBWE RACHAEL', 703648836, 'New Account', 'NATIONAL ID', 'No action yet', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46734559010117, 'MUYANJA FAUSTINE', 750098953, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46734059010117, 'WABUYA JOHN', 777936837, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46729759010117, 'SETARAYA EMILY', 779065325, 'New Account', 'NATIONAL ID', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46789759010117, 'KIFUKO MIRIAM', 773326140, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46738559010117, 'NAKATE MADINAH', 708162908, 'New Account', '\"', 'NATIONAL ID\"', 'Fully resolved', '26-06-2019'),
(NULL, '', '26-Jun-19', '928-Ellaine Mbabazi', '', 46788559010117, 'AINOMUGISHA KENETH', 782877854, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46880959010117, 'ARINAITWE BOB', 701905032, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46880659010117, 'SSEWANKYA JAVIIRA', 774425757, 'New Account', 'NATIONAL ID', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46844859010117, 'EKELOT JOREM', 700942011, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46785359010117, 'NANFUGO ROBINAH', 789516760, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46730159010117, 'KANSIIME EMMANUEL', 702053247, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46798059010117, 'ARIHO CRISPUS ISAAC', 781085541, 'New Account', 'NATIONAL ID ', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46723659010117, 'LUBEGA DANIEL', 775527765, 'New Account', 'NATIONAL ID', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46729859010117, 'OSIKEI JOSEPH', 774930869, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46736559010117, 'ASIO LOYCE', 783273106, 'New Account', 'NATIONAL ID', 'Partially addressed', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46785559010117, 'BASHIR RAJAB', 701746501, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '28-Jun-19', '928-Ellaine Mbabazi', '', 46938959010117, 'FRED SSENYONJO', 772374099, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46604659010119, 'NAMUKWAYA ROSE', 7783255550, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46599559010119, 'KOKAS IKURET', 789716949, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46602359010119, 'DRONYI KENETA DAVID', 702711276, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46621059010119, 'MUNGUJAKISA CHARLES', 785010065, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46559859010119, 'WALUSIMBI EMMANUEL', 706297374, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46554659010119, 'OKELLO DANNIEL', 787389861, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46546159010119, 'AWORI SCOVIA', 703859538, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46623359010119, 'MAWANDA JOSEPH', 778838766, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46596659010119, 'DRILEYO SUNDAY JOB', 783666373, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46562659010119, 'SEMU GABO PETER', 752711035, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46549059010119, 'LWABI ARNOLD PAUL', 752651252, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46594459010119, 'DAMBA ANTHONY', 750097419, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46596259010119, 'AKULO ANNA', 771844451, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46624259010119, 'ABBO VICTORIOUS AGULASI MEDRINE', 751957339, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46615159010119, 'AYIKO FRANCIS', 780318709, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '907-Evelyn Nampala', 'Natukunda Immaculate', 46560159010119, 'ALUMA INNOCENT RASHUL', 773503926, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '28-Jun-19', '905-Christine Nannyonjo', '', 46788059010121, 'ASIO POLLINE FAITH', 789717961, 'New Account', '\"ACCOUNT NAME NOT INDICATED IN SYSTEM AND ON PAPER ', ' KFD\"', 'Fully resolved', '26-06-2019'),
(NULL, '', '28-Jun-19', '905-Christine Nannyonjo', '', 46802259010121, 'KULE MOSES', 773741331, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '26-9-2019'),
(NULL, '', '11-Feb-19', '808 - Eve Nanziri', 'Feta Agnes', 45262702010122, 'GEMS CHEMICAL CENTER LIMITED', 786404699, 'New Account', '\"TRADING LICENCE ', 'TIN CERTIFICATE\"', 'Fully resolved', '4/2/19'),
(NULL, '', '17-Apr-19', '', '', 45953202010123, 'AD INLY', 776444226, 'New Account', 'NATIONAL ID FOR ARTHUR MUKEMBO & DEBORAH MUKEMBO', 'No action yet', 'TARSHIN', '16-May-19'),
(NULL, '', '18-Apr-19', '', '', 45953502010523, 'MARCOPOLO IMPORT-EXPORT LTD', 786572427, 'New Account', 'TRADE  LICENCE', 'Fully resolved', 'TARSHIN', '30-04-2019'),
(NULL, '', '21-Dec-18', '764 - Nasimu Shahir', 'Simbwa Jerome', 44961502010124, 'KILIMUTTU RETAIL AND WHOLESALE LIMITED', 7754409201, 'New Account', 'Trading licence', 'Fully resolved', 'Agaba Andrew', '22-Dec-18'),
(NULL, '', '6-Nov-18', '810 - Daniel Kalungi', 'Byaruhanga James', 42862334010126, 'SAZE INVESTMENTS LIMITED', 704520045, 'New Account', 'Entry permit/Work permit for Savani Riyakat K', 'Fully resolved', 'Agaba Andrew', '10-Dec-18'),
(NULL, '', '18-Jan-19', '859 - Mugerwa Charles', 'Kisakye Zam', 45231702010127, 'CORNERSTONE DAYCARE AND KINDERGARTEN', 702884211, 'New Account', 'Operating licence from ministry of eductaion', 'Fully resolved', 'Pankaj Sharma', '10-Feb-19'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46266959010108, 'NAJJUMA ESTHER', 772633693, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46526359010105, 'NAVVUBYA ALLEN', 704318117, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46267059010108, 'BAKAHIKA ANDREW', 752186143, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46570159010105, 'NOWAWE ROSE', 755232784, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46403359010108, 'NALWEYISO BRIDGET', 779423592, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46577459010105, 'GAITA MARY GORRET', 752575828, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46265959010108, 'KATUSABE ANNITA', 705784320, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46286259010105, 'KUULE JOCKIM', 785380161, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46266159010108, 'MWANIKA GEORGE', 752612381, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46595559010105, 'WANDERA BENARD', 783313683, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46265459010108, 'NINSIIMA COLLINS ARYATWETA', 705064427, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46460359010105, 'SSENTONGO CHARLES', 772400300, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46354959010108, 'KABAKAMA STELLA MAKAZIMAKAZI', 772574398, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46459959010105, 'NANONO ESEZA', 704948718, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46459159010108, 'MPAMI EZRA', 781582988, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46619509010112, 'WERE ERIYA', 756487244, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46448859010108, 'NABUNYA CISSY JUSTINE', 782813862, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46599259010105, 'AKELLE CHARITY', 773705867, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46455959010108, 'NAMATOVU ROSE', 704266718, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46435659010105, 'KHABUYA  BRENDA', 702233573, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46263559010108, 'OLOBO RICHARD', 787169607, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46571059010108, 'MUTUMBA JULIET', 782317424, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46459859010108, 'KAMULEGEYA NABUNNYA JALIAH', 772609826, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '301 - Singh Jaswinder', 'Muziru Abdul', 46456759010108, 'TWESIGYE CAROLINE', 785991052, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46266859010108, 'MUSONI JOSEPH', 772647132, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46454259010108, 'JUNGU PAUL', 755072964, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46505459010108, 'DRICIRU JUSTINE', 792493173, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46458759010108, 'BABIRYE GLORIA', 772349940, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46506659010108, 'TASIKE JOB', 782551005, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46510459010105, 'ENDROKIA BETTY', 784248878, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46408859010105, 'KASAIJA EVELYNE AKUGIZIBWE', 774500447, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46530359010105, 'KEKIRUNGA PENLOPE', 701136792, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '776 - Rebeccah Ajuna Kabuye', 'Muziru Abdul', 46403459010108, 'KYAMULESIRE ANGELINA', 782595955, '', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '2-Jul-19', '889-Mariam Othieno', '', 46576459010105, 'MARAHI JOSTUS', 704885077, 'New Account', 'KFD', 'Fully resolved', 'HENRY KASUJJA', '30-09-2019'),
(NULL, '', '19-Jun-19', '727 - Beena Rajesh Raaychura', 'Malani Narendra', 4627559020512, 'SUMIN G C', 759296466, 'New Account', 'WRONG KFD ', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '727 - Beena Rajesh Raaychura', 'Malani Narendra', 46428959010112, 'PRADEEP SINGH', 751259051, 'New Account', 'WRONG KFD', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '727 - Beena Rajesh Raaychura', 'Malani Narendra', 46428059010112, 'PATEL KEYURKUMAR CHANDRAKAVIBHAI', 759711748, 'New Account', '\"WRONG KFD ', 'PROOF OF RESIDENCE\"', 'Fully resolved', ''),
(NULL, '', '19-Jun-19', '727 - Beena Rajesh Raaychura', 'Malani Narendra', 46283959010112, 'NAYEE CHANDRAKANI TULSIBHAI', 759767179, 'New Account', 'WRONG KFD ', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '727 - Beena Rajesh Raaychura', 'Malani Narendra', 46428550010112, 'ANANDAN MANIKANDAN', 706367684, 'New Account', 'WRONG KFD ', 'Fully resolved', '', ''),
(NULL, '', '19-Jun-19', '727 - Beena Rajesh Raaychura', 'Malani Narendra', 46290959020512, 'KATWAL  NARAYAN', 706496219, 'New Account', 'WRONG KFD', 'Partially addressed', '', ''),
(NULL, '', '19-Jun-19', '727 - Beena Rajesh Raaychura', 'Malani Narendra', 46278359020512, 'AGATH NAGAJAN GANGA', 753931283, 'New Account', 'WRONG KFD', 'No action yet', '', ''),
(NULL, '', '11-Jul-19', '', 'a', 46968105010127, 'BWAMBALE JULIUS AND NTEGEKA GODFREY', 705113913, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '5-Sep-19'),
(NULL, '', '16-Jul-19', '', 'n', 46649959010116, 'APIO BEATRICE', 779027482, 'New Account', 'NATIONAL ID', 'Fully resolved', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '928-Ellaine Mbabazi', '', 46803559010117, 'OKUMU JEFF', 782441777, 'New Account', 'SIGNATURE INDEMNITY', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '', '', 46654059010116, 'MWASE FAROUK ', 701787590, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '', '', 46667459010116, 'DRICIRU RASIL CISSY', 786598516, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '', '', 46654559010116, 'NAMAKOYE JUSTINE', 703279069, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '928-Ellaine Mbabazi', '', 46733759010117, 'MAUKA ALEX', 775173923, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '928-Ellaine Mbabazi', '', 46727659010117, 'MAKWANA YOGESH KUMAR DENJI', 758555554, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '928-Ellaine Mbabazi', '', 46737259010117, 'APOK DILLISH', 782274016, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '', '', 46670959010116, 'NATURINDA EMILY', 772064907, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '', '', 46654359010116, 'NAMBOOZO ANNET', 758677617, 'New Account', '\"NATIONAL ID', 'SIGNATURE INDEMNITY\"', 'No action yet', '1/6/19'),
(NULL, '', '16-Jul-19', '', '', 46655059010116, 'MASANKA DENIS', 781454567, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '', '', 46690359010116, 'OCAYA CHARLES', 780311754, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '16-Jul-19', '', '', 46645159010116, 'WANYANA RITAH', 782956647, 'New Account', '\"NATIONAL ID', 'SIGNATURE INDEMNITY\"', 'No action yet', '1/6/19'),
(NULL, '', '16-Jul-19', '', '', 46651459010116, 'NAMUTOSI ROSEMARY', 703611084, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46787759010117, 'BITATURE THOMSOM', 756126759, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46736459010117, 'MUTUWA HASIFAH', 708162718, 'New Account', 'NATIONAL ID', 'Fully resolved', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46737959010117, 'FAIDA SHAMIM', 755621503, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46787059010117, 'KIZITO BONNY', 784258770, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46733959010117, 'WAMBANISHA SHAMIM', 788229191, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46730059010117, 'TUKWATANISE EPHRAIM', 701274096, 'New Account', 'NATIONAL ID', 'Fully resolved', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '899-Racheal Nahwera', '', 46970405010101, 'ANDEBO MUSEMA', 785255009, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '5-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46736759010117, 'WALUKANO ISSA', 786665124, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46743759010117, 'NAKIYINGI NASHIM', 758354765, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46796759010117, 'AMAN TOPISTA', 779725619, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46723159010117, 'SSEKITTO MARTIN', 754347516, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46796359010117, 'ADUMA JOEL', 774654758, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46784159010117, 'NALUNKUUMA NULU', 782696464, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46786359010117, 'KISAKYE EVE', 704051334, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '17-Jul-19', '928-Ellaine Mbabazi', '', 46744459010117, 'OKOLIMONG ALOYSIUS', 773264317, 'New Account', '\"NATIONAL ID', 'PROOF OF RESIDENCE & SIGNATURE INDEMNITY\"', 'No action yet', '7/6/19'),
(NULL, '', '18-07-19', '928-Ellaine Mbabazi', '', 46948159010117, 'OBULUKU PAUL', 774620324, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '26-09-19'),
(NULL, '', '18-07-19', '928-Ellaine Mbabazi', '', 46789959010117, 'ANYANGO DINA', 708316060, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '20-07-2019', '764-Shahir Nasimu', '', 46664659010114, 'NELIMA ROVISA ROSE', 757698726, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '22-08-2019'),
(NULL, '', '20-07-2019', '', '', 46286059010122, 'KANYUNYUZI BRENDA', 755819335, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '27-08-2019'),
(NULL, '', '20-07-2019', '', '', 46441859010122, 'KAKUUKU SAMSON', 753887617, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '14-08-2019'),
(NULL, '', '23-07-2019', '849-Diana Hanghujja', 'Barbara Kabengano', 46775859010111, 'ODONGO AMOS', 704718299, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-8-2019'),
(NULL, '', '5-Aug-19', '889-Mariam Athieno', '', 46952559010105, 'DRANI ZUBEIR', 785788280, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '18-9-2019'),
(NULL, '', '5-Aug-19', '889-Mariam Athieno', '', 46623859010105, 'OMARIA MICHEAL', 784614396, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '5-Aug-19', '889-Mariam Athieno', '', 46724459010105, 'MOOLI MORISI', 789051244, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '22-09-19'),
(NULL, '', '5-Aug-19', '889-Mariam Athieno', '', 46832459010105, 'SSEKANDI ABIASALI', 701707415, 'New Account', 'NATIONAL ID', 'Fully resolved', 'Agaba Andrew', '9-Oct-19'),
(NULL, '', '5-Aug-19', '889-Mariam Athieno', '', 46797759010105, 'OTIM EDWARD ODONGKARA', 778131087, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '5-Aug-19', '889-Mariam Athieno', '', 46742759010105, 'CANDIGA MOSES', 752758188, 'New Account', 'NATIONAL ID', 'Fully resolved', 'Agaba Andrew', '1-Sep-19'),
(NULL, '', '5-Aug-19', '889-Mariam Athieno', '', 46601459010105, 'KOWA CHRISTOPHER', 772068291, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '14-09-19'),
(NULL, '', '5-Aug-19', '889-Mariam Athieno', '', 46724359010105, 'NANTAAYI RESTY', 774965003, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '21-09-2019'),
(NULL, '', '5-Aug-19', '', '', 46453859010121, 'MUMBERE ROGERS', 783608636, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '9-May-19'),
(NULL, '', '5-Aug-19', '776-Ajuna Rebeccah K', '', 46807559010108, 'KIIZA FAIZO', 708467339, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '11-Sep-19'),
(NULL, '', '5-Aug-19', '776-Ajuna Rebeccah K', '', 46833259010108, 'NABIRYE JACQUELINE ', 754398988, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '11-Sep-19'),
(NULL, '', '5-Aug-19', '776-Ajuna Rebeccah K', '', 46829759010108, 'NAKAMI SUZAN', 774375734, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '11-Sep-19'),
(NULL, '', '5-Aug-19', '776-Ajuna Rebeccah K', '', 46828859010108, 'WESONGA BRIAN', 788899903, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '11-Sep-19'),
(NULL, '', '5-Aug-19', '776-Ajuna Rebeccah K', '', 46831059010108, 'ODOI VICENT', 778935423, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '21-Sep-19'),
(NULL, '', '7-Aug-19', '795-Joanita Nabbale', '', 46804359010101, 'NALUNGA CLEMENTINE MARTHA', 705269245, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '11-Sep-19'),
(NULL, '', '7-Aug-19', '899-Racheal Nahwera', '', 46947159010101, 'KULE KOCKONUS', 701943891, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '24-Sep-19'),
(NULL, '', '8-Aug-19', '861-Linda Mbabazi', '', 46776059010101, 'MARAHI ZIRIBABERI', 793426355, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '5-Sep-19'),
(NULL, '', '8-Aug-19', '861-Linda Mbabazi', '', 46824659010101, 'AINEBYOONA ELIZABETH', 706321676, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '6-Sep-19'),
(NULL, '', '8-Aug-19', '899-Racheal Nahwera', '', 46944159010101, 'MUTWEMBOLYA STEPHEN', 705834080, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '24-Sep-19'),
(NULL, '', '8-Aug-19', '899-Racheal Nahwera', '', 46944059010101, 'KIDDE GODFREY COLLINS', 774783702, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '24-Sep-19'),
(NULL, '', '8-Aug-19', '861-Linda Mbabazi', '', 46970759010101, 'AVAGA BENARD', 753025204, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '8-Aug-19', '892-Ateenyi Victoria', '', 46798559010101, 'NAMBUSI MILLY', 782176083, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Oct-19'),
(NULL, '', '8-Aug-19', '861-Linda Mbabazi', '', 46801159010101, 'NYANGOMA SHARON', 787406355, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '8-Sep-19'),
(NULL, '', '8-Aug-19', '892-Ateenyi Victoria', '', 46798459010101, 'OWOR SAMUEL', 780791839, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '8-Aug-19', '861-Linda Mbabazi', '', 46840459010101, 'MUSINGUZI WILFRED', 702095883, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '6-Sep-19'),
(NULL, '', '9-Aug-19', '795-Joanita Nabbale', 'Mohammed Younus', 46792859010101, 'NAMUDDU SHAMIM', 782689161, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '10-Sep-19'),
(NULL, '', '9-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46805159010101, 'NAKABUYE VIOLA', 758782726, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '11-Sep-19'),
(NULL, '', '9-Aug-19', '892-Ateenyi Victoria', 'Mohammed Younus', 46798759010101, 'NAMBATYA CLAIRE', 706193297, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '8-Sep-19'),
(NULL, '', '9-Aug-19', '892-Ateenyi Victoria', 'Mohammed Younus', 46633759010101, 'OGWANG JOHN AISU', 780627809, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '12-Aug-19', '808-Eve Nanziri', 'Feta Agnes', 46567059010122, 'OLAUN RICHARD', 703995102, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '17-Sep-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46779959010108, 'NAKATO JOSEPHINE', 752248348, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '9-Oct-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46777559010108, 'EGETU JAMES', 703437281, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '09-31-2019'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46778459010108, 'OPUS EMMANUEL', 783013818, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '21-Oct-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46777359010108, 'SAADA ABDALLAH', 773614150, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '20-Oct-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46779459010108, 'MUTONYI IRENE', 78074589, 'New Account', 'NATIONAL ID', 'Fully resolved', 'Agaba Andrew', '17-Oct-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46776459010108, 'NABUKENYA STELLA', 706318766, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '9-Oct-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46726859010108, 'PULE DESIDERIO', 788732039, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '09-31-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46732459010108, 'OWACHA AGNES', 705379977, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '18-Oct-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46781959010108, 'ANWANGKANI JAMES', 784743974, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '18-Oct-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46776959010108, 'NAMATA PHIONAH', 757413083, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '18-Oct-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46777659010108, 'NAMBOOZO HARRIET', 785884200, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '17-Oct-19'),
(NULL, '', '16-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46631259010108, 'NAKALULE BERINDA', 700650831, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '3-Oct-19'),
(NULL, '', '19-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46776659010108, 'NABWIRE DIANAH', 705013594, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '12-Sep-19'),
(NULL, '', '19-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46592259010108, 'OTIM ALLAN', 702103108, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '26-Sep-19'),
(NULL, '', '19-Aug-19', '889-Mariam Athieno', 'Alow Irene', 46945559010105, 'FRED SEMAFUMU', 714976362, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '14-Sep-19'),
(NULL, '', '19-Aug-19', '889-Mariam Athieno', 'Alow Irene', 46797859010105, 'KIIZA PATRICK', 708136174, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '22-Sep-19'),
(NULL, '', '19-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46782259010108, 'NAMUSOKE JOAN', 704294061, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '12-Sep-19'),
(NULL, '', '19-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46613059010108, 'NAKIZIBA SYLVIA', 780166759, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '4-Oct-19'),
(NULL, '', '19-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46612459010108, 'NDAULA FELIX', 757238252, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '3-Oct-19'),
(NULL, '', '19-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46781659010108, 'NALUYIMA CATE', 754585877, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '16-Oct-19'),
(NULL, '', '19-Aug-19', '901-Stuart Sserwanja', 'Mohammed Younus', 46796159010101, 'ONENRWOTH FRED', 774787271, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '19-Aug-19', '901-Stuart Sserwanja', 'Mohammed Younus', 46794259010101, 'NAKITENDE MARGRET', 770827111, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '19-Aug-19', '901-Stuart Sserwanja', 'Mohammed Younus', 46796459010101, 'EYOTARU LILLIAN', 776005595, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '29-Sep-19'),
(NULL, '', '19-Aug-19', '901-Stuart Sserwanja', 'Mohammed Younus', 46792159010101, 'NYAKAUMA INEAH', 781184666, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '19-Aug-19', '901-Stuart Sserwanja', 'Mohammed Younus', 46791659010101, 'NSEREKO IBRAHIM', 772067345, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '19-Aug-19', '764-Shahir Nasimu', 'Wavamunno John', 46717859010124, 'KASEREKA LEVI', 789328001, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '19-Aug-19', '892-Ateenyi Victoria', 'Mohammed Younus', 46841259010101, 'KATENDE FRANCIS', 758851027, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '18-Sep-19'),
(NULL, '', '19-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46774759010101, 'KUHANDA JOCKUS', 701768967, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '29-Sep-19'),
(NULL, '', '19-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46607259010101, 'KYEWALYANGA JAFARI', 700131776, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '29-Sep-19'),
(NULL, '', '19-Aug-19', '901-Stuart Sserwanja', 'Mohammed Younus', 46793059010101, 'ERIKU ALFRED', 704615371, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '19-Aug-19', '901-Stuart Sserwanja', 'Mohammed Younus', 46793759010101, 'ANDAMA GEOFREY', 792615469, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '19-Aug-19', '764-Shahir Nasimu', 'Wavamunno John', 46715159010124, 'MUHINDO ISAAC', 774451338, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '19-Aug-19', '861-Linda Mbabazi', 'Malani Narendra', 46775059010101, 'GAMOSHI DEO', 759095418, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '19-Aug-19', '899-Racheal Nahwera', 'Mohammed Younus', 46843759010101, 'OJEDE FELIX', 773283971, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '19-Sep-19'),
(NULL, '', '19-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46874759010101, 'MUSIITWA WILLIAM', 754742246, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '14-Sep-19'),
(NULL, '', '19-Aug-19', '901-Stuart Sserwanja', 'Mohammed Younus', 46794459010101, 'MANANO MILTON', 778591271, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '30-Sep-19'),
(NULL, '', '19-Aug-19', '901-Stuart Sserwanja', 'Mohammed Younus', 46794959010101, 'GWALI BERIS', 775228140, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '19-Aug-19', '899-Racheal Nahwera', 'Mohammed Younus', 46801359010101, 'KASULE OSCAR', 793080588, 'New Account', 'NATIONALID', 'No action yet', 'Agaba Andrew', '11-Sep-19'),
(NULL, '', '19-Aug-19', '899-Racheal Nahwera', 'Mohammed Younus', 46801459010101, 'OJUKA MOSES', 794966504, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '11-Sep-19'),
(NULL, '', '19-Aug-19', '795-Joanita Nabbale', 'Mohammed Younus', 46801859010101, 'NAKANADE FARIDAH', 752208365, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '10-Sep-19'),
(NULL, '', '19-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46803659010101, 'KATENDE MARK FRED', 704555143, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '11-Sep-19'),
(NULL, '', '19-Aug-19', '795-Joanita Nabbale', 'Mohammed Younus', 46825059010101, 'KIZZA ASSA', 706514110, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '10-Sep-19'),
(NULL, '', '20-Aug-19', '849-Diana Hanghujja', 'Barbara Kabengano', 46833859010111, 'NSUBUGA SADI EDWIN', 752479082, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '20-Aug-19', '849-Diana Hanghujja', 'Barbara Kabengano', 46809859010111, 'ATUKUNDA GRACE', 706756056, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '14-Sep-19'),
(NULL, '', '20-Aug-19', '795-Joanita Nabbale', 'Mohammed Younus', 46825759010101, 'ADDULGHANI ABDULRHIM', 792419036, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '19-Sep-19'),
(NULL, '', '20-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46790459010101, 'MIREMBE PAUL', 777848831, 'New Account', 'NATIONAL ID & KFD', 'No action yet', 'Agaba Andrew', '7-Sep-19'),
(NULL, '', '20-Aug-19', '795-Joanita Nabbale', 'Mohammed Younus', 46825859010101, 'KAMUGISHA AMBROSE', 755045591, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '10-Sep-19'),
(NULL, '', '20-Aug-19', '899-Racheal Nahwera', 'Mohammed Younus', 46947359010101, 'KARUNGI SHARON', 785791828, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '26-Sep-19'),
(NULL, '', '20-Aug-19', '795-Joanita Nabbale', 'Mohammed Younus', 46793359010101, 'KAMIZA PAUL', 702998068, 'New Account', 'NATIONAAL ID', 'No action yet', 'Agaba Andrew', '6-Sep-19');
INSERT INTO `differal` (`id`, `branch_code`, `creation_date`, `sales_person`, `authorizer`, `account_no`, `customer_name`, `customer_contact`, `product`, `errors_identified`, `Resolution_Status`, `deferral_authorizer`, `closure_date`) VALUES
(NULL, '', '20-Aug-19', '795-Joanita Nabbale', 'Mohammed Younus', 46732959010101, 'SEBAMBULIDDE MUSOKE', 707007770, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '6-Sep-19'),
(NULL, '', '20-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46725659010101, 'OCHAN PATRICK', 755200693, 'New Account', '\"NATIONAL ID ', 'NO STAMP ON DEFFERAL COPY\"', 'No action yet', '5/6/19'),
(NULL, '', '20-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46725959010101, 'OLARA SAM', 776700615, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', '5-Sep-19'),
(NULL, '', '23-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46778259010108, 'NAYIGGA MARY', 701160889, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '23-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46776759010108, 'ASHEPET STELLA', 46776759010108, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '23-Aug-19', '735-Stella Natushemeza', 'Muziru Abdul', 46776859010108, 'WAFULA ISAAC', 46776859010108, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '23-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46725759010101, 'IRISO NOAH', 46725759010101, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '28-Aug-19', '188 - Dinah Mwebaza', 'Jerome Simbwa', 46628759010106, 'NFAAKI ALEX', 46628759010106, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '28-Aug-19', '188 - Dinah Mwebaza', 'Jerome Simbwa', 46626559010106, 'Mukyaala Christine', 46626559010106, 'New Account', 'NATIONAL ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46740759010101, 'Muhindo Alex', 46740759010101, 'New Account', 'NATIIONAL ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46714659010101, 'Nakayi Roy', 756715522, 'New Account', 'signature Ideminity', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46687259010101, 'Kasadha Ibrahim', 754462164, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46688959010101, 'Adiko Gilbert', 774783321, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46740859010101, 'Kabugho Jane', 705646624, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46724559010101, 'Bwambale Joward', 753253336, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 46774859010101, 'Oboi Sam', 777856570, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '861-Linda Mbabazi', 'Mohammed Younus', 47106009010101, 'Kahama Dickson', 702661379, 'New Account', 'signature Ideminity', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '764-Shahir Nasimu', 'Wavamunno John', 46690559010124, 'Lukyamuzi Daniel', 759043988, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '764-Shahir Nasimu', 'Wavamunno John', 46715959010124, 'Masereka Brian', 782160322, 'New Account', 'signature Ideminity', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '764-Shahir Nasimu', 'Wavamunno John', 46715859010124, 'Asiimwe Lawrence', 784172615, 'New Account', 'signature Ideminity', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '764-Shahir Nasimu', 'Wavamunno John', 46719059010124, 'Akoth Caroline', 77523731, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '30-Aug-19', '776-Ajuna Rebeccah K', 'Muziru Abdul', 46419059010108, 'Thakkar Manish Kumar Pravin Chandra', 708000033, 'New Account', 'signature Ideminity', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '31-Aug-19', '', 'Wavamunno John', 4698895010124, 'Adonyo Jolly Emily', 708237180, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '31-Aug-19', '889-Mariam Athieno', 'Alow Irene', 46724259010105, 'Ledra Rapheal', 782975721, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '31-Aug-19', '892-Ateenyi Victoria', 'Muzaaki Jill', 46741959010101, 'Nansibirwa Hafisa', 708434284, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '31-Aug-19', '', 'Wavamunno John', 46722759010124, 'Twinomugabe Hakeem', 789181750, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '849-Diana Hanghujja', 'Kabengano Barbara', 47063259010111, 'Nanziri Angel', 751658574, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '764-Shahir Nasimu', 'Wavamunno John', 46719559010124, 'Baluku Yohazi', 778003637, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '764-Shahir Nasimu', 'Wavamunno John', 46718659010124, 'Mulondo Nelson', 778795994, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muzamiru Abdul', 46829459010108, 'Waniaye Gerald', 786604408, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '693-Maria Namugulwa Peruth', 'Anango Sarah', 46882659010124, 'Atimango Shamirah', 775181532, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46779259010108, 'Nakato Prossy ', 778631706, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46668859010108, 'Nakimera Prossy', 757628432, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46591759010108, 'Kituno Isaac', 789455838, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46626659010108, 'Namyalo Stella', 780481923, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46649259010108, 'Welikhe Brian', 778558301, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46611859010108, 'Akot Grace', 778856293, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46777959010108, 'Mutonyi Juliet', 781172433, 'New Account', 'National ID', 'Fully resolved', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46780259010108, 'Naggayi Ruth', 755469977, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46782459010108, 'Tusabe Rose', 752005802, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '776-Ajuna Rebeccah K', 'Muziru Abdul', 46563459010108, 'Khaitsa Irene', 772045715, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46607159010108, 'Nabudde Roy', 775198945, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46645559010108, 'Busuulwa Mohammed', 700820830, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46649659010108, 'Nakidde Oliver', 751277821, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '4-Sep-19', '735-Stella Natushemeza', 'Muziru Abdul', 46782159010108, 'Naiban Sharif', 777827020, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '889-Mariam Athieno', 'Alow Irene', 46411259010105, 'Namutebi Angella', 772444401, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '889-Mariam Athieno', 'Alow Irene', 46790259010105, 'Ahmad Hanifah', 703983732, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '794 - Florence Nabunya', 'Kisakye Zam', 47042659010127, 'Otingole Nasan', 778221359, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '899-Racheal Nahwera', 'Mohammed Younus', 46791459010101, 'Asiimwe Stella Magara', 772848406, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '899-Racheal Nahwera', 'Mohammed Younus', 46795959010101, 'Naiku Edward', 756645534, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '795-Joanita Nabbale', 'Mohammed Younus', 46950059010101, 'Nandutu Betty', 786071387, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '861-Linda Mbabazi', 'Mohammed Younus', 46726159010101, 'Sserumaga Patrick', 705450166, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '727-Beena Rajesh Raaychora', 'Malani Narendra', 46463459010112, 'Masereka Innocent ', 783990064, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '861-Linda Mbabazi', 'Mohammed Younus', 46606559010101, 'Teremerwa Immaculate', 782330052, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '808-Eve Nanziri', 'Feta Agnes', 46589459010122, 'Nampiima Irene Joan', 778731619, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '808-Eve Nanziri', 'Feta Agnes', 46548659010122, 'Noel Nsubuga', 774304466, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '808-Eve Nanziri', 'Feta Agnes', 46591359010122, 'Nabakooza Maria', 701469208, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '808-Eve Nanziri', 'Feta Agnes', 46548759010122, 'Okoyo Jonathan', 754580760, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '5-Sep-19', '808-Eve Nanziri', 'Feta Agnes', 46552359010122, 'Nkonge Brian', 700765130, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '12-Sep-19', '849-Diana Hanghujja', 'Kabengano Barbara', 47063902010111, 'Alternate Technical Company ltd', 414662962, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46635759010107, 'Athieno Patricia Mercy', 788622675, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46639159010107, 'Nabuuma Grace', 776769840, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46636459010107, 'Khasebe Sharon', 777342135, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46664859010107, 'Sserunjogi David', 702541841, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46618859010107, 'Ochom Isaac', 787667138, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46618259010107, 'Nangobi Agnes', 759155047, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46625959010107, 'Kampi Catherine', 751723125, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46618459010107, 'Wamono Wyclyf', 787624298, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46597959010107, 'Nanyonga Lilian', 704209101, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46618159010107, 'Kayesu Jesca', 705669296, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46559759010107, 'Anite Leah', 706292551, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46618559010107, 'Arambo Joyce', 700814958, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46561959010107, 'Kakande Denis', 708233795, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46617859010107, 'Kyewanula David', 775143916, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46640159010107, 'Masereka Jimmy', 777006626, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46664059010107, 'Kutosi Martin Busiku', 786839778, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46664759010107, 'Nakhosi Lauben', 783751661, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46608559010107, 'Odyek Daniel', 772467970, 'New Account', 'National ID', 'Fully resolved', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46634159010107, 'Walakira Kato Jackson', 708428535, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46637059010107, 'Ishimwe Wilson', 701982115, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46621559010107, 'Aliao Bena', 780637213, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46638159010107, 'Nazziwa Ritah', 755590709, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46617659010107, 'Nabasumba Grace', 783331169, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46605159010107, 'Namboozo Aidah', 788811907, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46618959010107, 'Makhosi Julius', 788444898, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46664959010107, 'Kisambira Henry', 773368208, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46641759010107, 'Kakulu Derick', 781496860, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46612259010107, 'Wiwo Margret', 777267796, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46613159010107, 'Thembo Solomon', 774767676, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46639859010107, 'Nabiryo Jenifer', 708425808, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46613359010107, 'Aketch Agnes', 779816744, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46619059010107, 'Bwambale Mileki Black', 787208274, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46561559010107, 'Opama Samuel', 786948313, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46639359010107, 'Naghwa Justine', 703212505, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46605259010107, 'Nalwoga Harriet', 750368484, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46638759010107, 'Wamama Derrick', 778960075, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46598559010107, 'Abenakyo Moureen', 757498200, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46560859010107, 'Nankwanga Jesca', 786097171, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46670659010107, 'Natocho Sylivia', 781771873, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46640759010107, 'Muyiyi Brain', 781684151, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46603059010107, 'Kaweesi Ivan', 757240091, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46636659010107, 'Katalo Derrick', 701812067, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46637659010107, 'Abindu Silvio', 771944373, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46665959010107, 'Poyela Andrew', 781684151, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46622059010107, 'Omara Ambrose', 785488575, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46612759010107, 'Namukuve Miria', 777867002, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46636959010107, 'Nangira Zalika', 779270406, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46605459010107, 'Mubangizi Kenneth', 702474064, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '13-Sep-19', '850-Christine Nakato', 'Namuwaya Edith', 46641759010107, 'Kakulu Derick', 781496860, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46789259010123, 'Lekuru Jeska', 793538907, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46789559010123, 'Nuwareba Grace', 701614675, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46738359010123, 'Ssenfuka Joshua', 708507477, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46883959010123, 'Wathum Quintino', 784883537, 'New Account', 'NATional ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46945059010123, 'Abbo Caroline', 788860872, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46802159010123, 'Ssemuli Ronald', 700406958, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 47245559010123, 'Nikristo Alfred', 778429480, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46946759010123, 'Nalyanya Henry', 779083734, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46790059010123, 'Seera Esther', 708497908, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46789459010123, 'Namwanje Haiauya', 780578171, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '870-Sonia Matovu', 'Nabukalu Diana', 46738659010123, 'Akongo Beatrice', 786063115, 'New Account', 'national ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '16-Sep-19', '701-Kayesu Teddy', 'Feta Agnes', 19028641020501, 'Els Hendrika A De Temmerman', 772787776, 'New Account', 'Proof of residence', 'No action yet', 'Agaba Andrew', '30-09-2019'),
(NULL, '', '20-Sep-19', '845-Christalbel Tushabe', 'Asako Angella', 46633459010113, 'Niwabiine Prossy', 705495361, 'New Account', 'National ID', 'No action yet', 'Agaba Andrew', ''),
(NULL, '', '20-Sep-19', '01CORG - Drakeson Mumpe', 'Kagoro Suzan', 47447302010111, 'Shopping Union Investment Group', 704556189, 'New Account', 'Trading Licence', 'No action yet', 'KENNETH KISAMBIRA', '10-Feb-19'),
(NULL, '', '20-Sep-19', '852-Alimansi Muhawa', 'James Byaruhanga', 47242848010126, 'Banyankole Kweterana Cooperative Union', 772966123, 'New Account', '\"passport photos and signatures of Antambiire Esther', 'Beingana L Jeoffrey ', ' Kakuba Isaiah\"', 'KENNETH KISAMBIRA'),
(NULL, '', '20-Sep-19', '865-Gloria Tumwebaze', 'Kabengano Barbara', 47102302010511, 'Gazelle Safari Company LTD', 772465023, 'New Account', 'National ID for Tusuubira Mathew and ann Kalembe', 'Fully resolved', 'KENNETH KISAMBIRA', '19-10-2019');

-- --------------------------------------------------------

--
-- Table structure for table `differal_prod`
--

CREATE TABLE `differal_prod` (
  `id` int(11) NOT NULL,
  `branch_code` varchar(100) NOT NULL,
  `creation_date` date NOT NULL,
  `sales_person` varchar(100) NOT NULL,
  `account_no` double NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_contact` text NOT NULL,
  `product` varchar(100) NOT NULL,
  `errors_identified` text NOT NULL,
  `expected_closure` date NOT NULL,
  `deferral_authorizer` varchar(100) NOT NULL,
  `closure_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `differal_prod`
--

INSERT INTO `differal_prod` (`id`, `branch_code`, `creation_date`, `sales_person`, `account_no`, `customer_name`, `customer_contact`, `product`, `errors_identified`, `expected_closure`, `deferral_authorizer`, `closure_date`) VALUES
(1, '012-Jinja Town', '2020-02-21', 'sdfsdf', 323423, 'dfsf', 'sdfsdf', 'sdfsd', 'sdf', '0000-00-00', 'sdfsdf', '2020-02-21'),
(2, '001-Main Branch', '2020-02-22', 'sdfsdfsdf', 234234234234, 'sdfsdfg', 'sdfw', 'sdfsfsdfssdf', 'sdfsfdfsdfsd', '2020-02-21', 'sdfsdfsdfdsf', NULL),
(3, '001-Main Branch', '2020-02-06', 'sdfsd', 42342, 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', '2020-02-08', 'sdfsdfsdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `differed`
--

CREATE TABLE `differed` (
  `id` int(11) NOT NULL,
  `accNo` int(11) NOT NULL,
  `cif` int(11) NOT NULL,
  `approvedBy` text NOT NULL,
  `fileName` text NOT NULL,
  `uploadDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `differed`
--

INSERT INTO `differed` (`id`, `accNo`, `cif`, `approvedBy`, `fileName`, `uploadDate`) VALUES
(1, 2147483647, 22352, 'ED', 'My_workplan.xlsx', '2020-02-03'),
(2, 2147483647, 22352, 'ED', 'User_interfaces.png', '2020-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `fName` text CHARACTER SET latin1 NOT NULL,
  `lName` text CHARACTER SET latin1 NOT NULL,
  `password` varchar(10000) CHARACTER SET latin1 NOT NULL DEFAULT '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae',
  `level` int(11) NOT NULL DEFAULT 1,
  `mustChangePwd` int(11) NOT NULL DEFAULT 1,
  `failedAttempts` int(11) NOT NULL DEFAULT 0,
  `locked` int(11) NOT NULL DEFAULT 0,
  `maker` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `id` int(11) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `pwd_set` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `fName`, `lName`, `password`, `level`, `mustChangePwd`, `failedAttempts`, `locked`, `maker`, `id`, `last_login`, `pwd_set`) VALUES
(' KABAKAMAE', 'Esther', 'Kabakama', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 203, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('01BARBARAK', 'Kabengano', 'Barbara', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 202, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ABRAHAMO', 'Abraham', 'Okia', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 211, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ADAKUNR', 'Adakun', 'Ruth', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 6, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('AKATUYAMBAS', 'Akatuyamba', 'Sharon', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 7, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('AKENAN', 'Akena', 'Naphlim', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 8, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('AKINYIJ', 'Akinyi', 'Jackline', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 9, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ALICEL', 'Lwantale', 'Alice', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 200, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('AMAIC', 'Catherine', 'Amai', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 10, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ANNETTEY', 'Annette', 'Yossa', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 11, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ANYAITF', 'Anyait', 'Faith', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 198, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ARINDAR', 'Arinda', 'Ronnie', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 12, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ARITAH', 'Ritah', 'Ayesigye', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 13, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ARYAHEBWAJ', 'Janet', 'Aryahebwa', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 14, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ASABAO', 'Olivia', 'Asaba', '71114ff66582a2228239bda6801974c24fcbf47e85a07c6bcccc55da9bbaca4f6f6822c395ae007c00c46d39ab41be6c67b3751e0f5d078586ae8192610e93af', 1, 0, 0, 0, 'MATHIASR', 216, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ASAKOA', 'Angela', 'Asako', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 15, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ASHANALU', 'Asha', 'Nalukenge', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 16, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ASIIMWEA', 'Asiimwe', 'Albert', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 163, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ASIIMWEF', 'Fred', 'Asiimwe', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 17, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ASINGURAK', 'Kenneth', 'Asingura', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 18, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ASIOFIONA', 'Asio', 'Fiona Martha', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 19, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ATEENYIV', 'Victoria', 'Ateenyi', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 193, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ATHIENOM', 'Athieno', 'Mariam', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 20, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('AUDITTESTER', 'Auditer', 'Tester', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 2, 0, 0, 0, 'SUPERADMIN', 4, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('AYEBAZIBWEC', 'Christine', 'Ayebazibwe', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 21, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('AYEROD', 'Ayero', 'Edna', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 22, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('AYESIGAJ', 'Ayesiga', 'Josephat', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 23, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('AYWEKP', 'Aywek', ' Patricia', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 24, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BAGUMAR', 'Baguma', 'Ronald', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 165, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BALAYOP', 'Balayo', 'Josephine Patricia', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 25, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BALONDEMUF', 'Balondemu', 'Flavia', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 26, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BANIAA', 'Asher', 'Bani', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 27, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BARAMK', 'Baram', 'Kamugisha', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 28, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BARBRAN', 'Barbra', 'Namuddu ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 175, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BARUNGIS', 'Barungi', 'Sherinah', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 29, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BASIIMEM', 'Basiime', 'Moreen', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 30, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BAZAALAKIC', 'Bazaalaki', 'Chrisper', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 31, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BCAROL', 'Buyambi', 'Carol', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 32, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BEENAR', 'Beena', 'R Raaychura', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 33, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BEINOMUGISHA', 'Christine', 'Beinomugisha', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 34, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BERNAN', 'Nalukenge', 'Bernadette', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 35, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BHATIAD', 'Darshana', 'Bhatia', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 36, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BINGAI', 'Ivan', 'Binga', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 2, 1, 0, 0, 'SUPERADMIN', 3, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BRENDAHN', 'Brendah', 'Nakamya', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 201, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BRIDGETA', 'Bridget', 'Ainomugisha', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 160, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BUKOSELAB', 'Bukosela', 'Barbara', '29ce134413b942c429939b799c180b4dfd329101adbe62879b206b00525e635355a9f4577bb1883454b441ab32e996bc71fb225b347a719a4e26808cf45a47df', 1, 0, 0, 0, 'MATHIASR', 37, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BWANIKAB', 'Bwanika', 'Brian', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 177, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BYARUHANGAL', 'Byaruhanga', 'James', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 170, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('BYILINGIROC', 'Byilingiro', 'Clement', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 190, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('CATHERINEL', 'Catherine', 'Lule', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 38, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('CHRISTINEB', 'Christine', 'Byomuhangi', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 39, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('CLEMENTO', 'Otim', 'Clement Achilla', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 40, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('DANIELK', 'Daniel', 'Kalungi', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 41, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('DERRICKA', 'Derrick', 'Asiimwe', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 215, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('DONUSN', 'Donus', 'Ndyomugyenyi', '9100fe8e4cccca1a2c0da49adbd010232e6b5710a0c0dc0124ec64380cb898a59a200050edd89439d3046906424a906c1c92c3470311ab71581a9fde9fac43a7', 1, 0, 0, 0, 'MATHIASR', 224, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('EGWETJ', 'Juliet', 'Egwet', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 42, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('EKUDOI', 'Isaac', 'Phillip Ekudo', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 43, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('EZERAHM', 'Ezerah', 'Musoke', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 44, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('FARIDAHN', 'Faridah', 'Namaato', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 187, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('FETAAAG', 'Fetaa', 'Agnes', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 45, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('GOPIK', 'Gopi', 'Krishna', '0a10f4b64a02d7d4ebb2dc60b98ab969e2bfd2c7c91c2a85eda07af7400c02d882c0fdca1beebd4b324b7c3f262d63ce0074dfca6ef803611e43374181a2465f', 1, 0, 0, 0, 'MATHIASR', 189, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('HANGHUJJA', 'Hanghujja', 'Diana', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 46, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('HARPREETK', 'Harpreet', 'Kaur B', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 47, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('HARRISONM', 'Mukamaniwarinda', 'Harrison', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 48, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('HOPEF', 'Hope', 'Fokushabe', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 159, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('HOSIANAI', 'Ignatius', 'Hosiana', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 49, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('IMELDAH', 'Imeldah', 'Namutebi', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 210, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ISAACK', 'Isaac', 'Kazibwe', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 196, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('JAMILAT', 'Jamila', 'Tiko', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 50, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('JKAKEETO', 'Julius', 'Kakeeto', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 51, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KABONGEI', 'Isaac', 'Kabonge', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 206, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KAGOROS', 'Kagoro', 'Susan', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 52, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KAMUKAMAD', 'Kamukama', 'D', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 53, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KANYAGOA', 'Angel', 'Kanyago', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 54, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KANYIMAB', 'Kanyima', 'Boaz', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 166, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KARAMAGIO', 'Karamagi', 'Oscar', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 55, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KASOBOYAB', 'Kasoboya', 'Bosco', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 0, 0, 0, 'MATHIASR', 179, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KASSAGAS', 'Shamirah', 'Kassaga', 'bd3910d6f39d55d7778594963ee934d840eeb9f31ea825723e3894b2aa0cc65811cbbff66a3fbfeab4162b5ba824ece2d0676df93c667e4338f23effb47b993f', 1, 0, 0, 0, 'MATHIASR', 223, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KASUJJAH', 'Kasujja', 'Henry', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 56, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KASULEU', 'Umaru', 'Kasule', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 220, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KATALEMWA', 'Katalemwa', 'Simon', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 192, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KATEGAYAE', 'Edgar', 'Kategaya', '198107f8dc3292c19619ec322e3b184f3d1d81c61e18174b6eb821b460c92c55b5e6e75b89baac2b7a72c0bb0351fbf3b40ae4846b449ba2a775f7e215a1a6dc', 1, 0, 0, 0, 'MATHIASR', 57, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KATEMEB', 'Barbra', 'Kateme ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 58, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KAWALYAS', 'Kawalya', 'Steven', '1be3963abd9cceb668bc9317315b5e1552ae309b26b9fb5482e05bac43f9640c3d4a099794abd52d3e766ce357f45027cfd4853e4871af5bcffc38324022bf8a', 1, 0, 0, 0, 'MATHIASR', 171, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KAWUMAS', 'Stella', 'Kawuma ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 59, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KAZIBWES', 'Shafic', 'Kazibwe', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 60, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KEMIGISHAJ', 'Kemigisha', 'Joy', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 61, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KIBIRANGOJ', 'Joseph', 'Kibirango', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 213, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KISAKYEE', 'ESTHER', 'KISAKYE', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 0, 0, 0, 'MATHIASR', 222, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KISAKYEZ', 'Kisakye', 'Zam', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 62, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KKISAMBIRA', 'Kisambira', 'Kenneth', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 63, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KUMAR1', '', 'Umar', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 64, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KWESIGAI', 'Kwesiga', 'Ivan', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 173, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('KYOMUGISHAP', 'Kyomugisha', 'Pertua', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 65, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('LINDAM', 'Linda', 'Mbabazi ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 157, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('LOSELAH', 'Wanyenze', 'Loselah', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 66, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('LUBOWANIC', 'Lubowa', 'Nicholas', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 67, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('LUKWAGOS', 'Stella', 'Lukwago', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 68, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('LUSIBAM', 'Muhammad', 'Lusiba', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 69, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('LUWAGGAM', 'Luwaga', 'Mark', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 70, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('LUYIMAI', 'Ivan', 'Luyima', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 212, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MALIB', 'Brian', 'Mali', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 214, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MANGENIJ', 'Joyce', 'Mangeni', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 71, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MATHIASR', 'Rodney', 'Mathias', '9d4bd45055f78f07747c3e191610e740ab0119ba4386852cfecc30aa91e282c62ca9748fa8027a080fe8d4acb55992217854f6a5bb6e4d33afd0b002720bc6c7', 3, 0, 0, 0, 'SYSTEM', 2, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MATOVUS', 'Matovu', 'Sonia', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 72, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MATSIKOD', 'Matsiko', 'Didan', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 73, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MBABAZIE', 'Mbabazi', 'Ellaine ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 74, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MBABAZIL', 'Linda', 'Mbabazi', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 204, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MBALUJ', 'Mbalu', 'Jane', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 75, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MBEKEKAJ', 'Josephine', 'Mbekeka Harriet', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 76, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MEDWARD', 'Edward', 'Musiime', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 77, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MERCYK', 'Mercy', 'Kanshabemukama', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 78, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MICHAELN', 'Michael', 'Nsereko', 'd36bf48af6f1303c7beb98f6e79ae114298d01aeddebf49b3a2056511229d4b889a3bea4459b254673da0b611bd6b9b6afcc4920201b6d8e870b4e86ef54dc61', 1, 0, 0, 0, 'MATHIASR', 79, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MITANDAS', 'Stephanie', 'Mitanda ', '0dc448c1164023e537b4956d2360e673ba3957112948993fa675c4645046dfae2ebc2e9c524ca471d543285129d85a91436da71caf404d6036a2142d6c11e347', 1, 0, 0, 0, 'MATHIASR', 80, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MPUMWIRE', 'Elizabeth', 'Mpumwire', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 174, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MUGALAM', 'Mugala', 'Maureen', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 207, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MUGIRAE', 'Esther', 'Mugira', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 0, 0, 0, 'MATHIASR', 225, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MUKASAP', 'Patricia', 'Mukasa', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 81, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MURUNGID', 'Dan', 'Murungi', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 82, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MUSAASIZI', 'Majid', 'Musaasizi', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 0, 0, 0, 'MATHIASR', 227, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MUSISIR', 'Musisi', 'Racheal', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 83, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MUSOKEA', 'Anitta', 'Musoke', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 194, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MUTESIH', 'Hajara', 'Mutesi', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 185, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MUTISOE', 'Mutiso', 'Elaine', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 84, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('MUTONOB', 'Jimmy', 'Mutono', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 208, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NABATANZIG', 'Nabatanzi', 'Gloria', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 85, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NABBAALEJ', 'Joanita', 'Nabbaale', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 86, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NABIMANYAR', 'Racheal', 'Nabimanya', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 182, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NABIRYEM', 'Nabirye', 'Mariam', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 87, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NABIRYER', 'Ritah', 'Nabirye', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 88, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NABIWEMBAJ', 'Nabiwemba', 'Josephine', 'e01741896ee4631dae55a3631f0f0d4298b95a91e23e3ea9a85e42eb0083cc2c9718fa95c3a71238f369017efe5c1477692f917de7b71b9f311c2570a70fee44', 1, 0, 0, 0, 'MATHIASR', 89, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NABUKALUD', 'Diana', 'Mary Nabukalu', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 90, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NABUNYAF', 'Florence', 'Nabunya', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 91, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NABUNYAJ', 'Joweria', 'Nabunya', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 209, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAFULAS', 'Nafula', 'Shamusa', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 92, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAFUNAM', 'Nafuna', 'Moreen', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 93, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAGASHAD', 'Donam', 'Nagasha', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 199, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAHURIRAE', 'Nahurira', 'Evas', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 94, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAHWERAA', 'Nahwera', 'Racheal', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 95, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKATOC', 'Christine', 'Nakato', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 96, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKAWUNDEC', 'Christine', 'Nakawunde', 'bb15397a196357e6ed3830962766a6b1cca0ea59177eb89b198c7b2215328977ab3bc6e711f6bcd1cc03ba3c6dcb1f9d3bbada33f91ad64bc3e33c2f3e413cc2', 1, 0, 0, 0, 'MATHIASR', 97, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKAYENGAG', 'Geraldine', 'Nakayenga', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 98, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKAZIGEJ', 'Nakazige', 'Joanither', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 172, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKIGUDDE', 'Nakigudde', 'Annette', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 99, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKIWOLOW', 'Winifred', 'Nakiwolo', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 161, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKIYINGIH', 'Nakiyingi', 'Hadijjah', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 100, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKKUC', 'Nakku', 'Caroline', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 101, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKUYAI', 'Nakuya', 'Irene', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 168, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAKYEJWEM', 'Maria', 'Nakyejwe', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 205, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NALUGGWA', 'Teddy', 'Naluggwa', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 158, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NALUMANSIN', 'Nuru', 'Nalumansi', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 102, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NALUMUA', 'Allen', 'Nalumu', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 103, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NALUYIMAC', 'Carol', 'Naluyima', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 104, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMAGEMBES', 'Namagembe', 'Shillah', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 105, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMALEL', 'Lillian', 'Namale ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 106, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMANYAI', 'Namanya', 'Ivan', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 162, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMANYAJ', 'Namanya', 'Joason', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 107, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMARAJ', 'Jonathan', 'Namara', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 108, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMBASAYJ', 'Nambasa', 'Yvonne Joyce', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 109, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMBIA', 'Agnes', 'Nambi Mutto', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 110, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMONOZ', 'Namono', 'Zubeda', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 111, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMPALAE', 'Nampala', 'Evelyne', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 112, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMPEWO', 'Nampewo', 'Irene', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 176, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMUGULWAP', 'Maria', 'Namugulwa', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 195, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMULINDAP', 'Philista', 'Namulinda', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 113, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMUTEBIJ', 'Namutebi', 'Jane Brenda', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 114, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAMUWAYA', 'Namuwaya', ' Edith Sharon', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 115, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NANKYAM', 'Mary', 'Nankya', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 116, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NANSAMBAS', 'Sarah', 'Nansamba', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 117, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NANTONGOC', 'Nantongo', 'Catherine', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 118, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NANYONJOC', 'Nanyonjo', 'Christine ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 119, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NANZIRIE', 'Nanziri', 'Eve', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 120, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NASIMUS', 'Nasimu', 'Shahir', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 164, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NASSEJJEH', 'Hamiirah', 'Nassejje', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 121, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NATUKUNDAI', 'Natukunda', 'Immaculate', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 191, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NATUSHEMEZA', 'Stella', 'Natushemeza', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 122, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NAVVUGAJ', 'Navvuga', 'Jesca', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 123, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NDAGIRES', 'Ndagire', 'Shillah', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 124, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NDIKUWERAE', 'Ndikuwera', 'Eva ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 125, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NIWASASIRA', 'Saviour', 'Niwasasira', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 218, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NJUKIE', 'Emmanuel', 'Njuki', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 184, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NMALANI', 'Narendra', 'Malani', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 126, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('NYABURAC', 'Charity', 'Nyabura ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 186, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ODOCHG', 'Godfrey', 'Odoch', '1eff194dc35cabffd7a371b83bb434c8f638564e39d3ad65a6bc8073526ef1825bbfca4a49b83b749c7f46a6c49cf3a21295b457bca5c68008787a2b04e253a6', 1, 0, 0, 0, 'MATHIASR', 188, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('OKAKAJ', 'Okaka', 'Joshua Matovu', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 127, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('ONYANGOC', 'Onyango', 'Christopher', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 128, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('OTHIENOC', 'Othieno', 'Catherine Rona', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 129, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('OWOKUNDA', 'Gerald', 'Owokunda', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 130, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('OWORIV ', 'Victor', 'Owori', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 197, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('PANKAJS', 'Pankaj', 'Kumar Sharma', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 131, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('PBUGOYE', 'Paul', 'Bugoye', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 132, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('PETERK', 'Kateregga', 'Peter', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 133, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('PRISCAW', 'Prisca', 'Win', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 5, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('RAJULS', 'Rajul', 'Shah', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 134, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('RONNIEZ', 'Zalwango', 'Ronnie', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 135, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('RUKUNDOR', 'Ritah', 'Rukundo', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 217, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('RWEGOI', 'Ivan', 'Rwego', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 221, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SADAMUK', 'Sadamu', 'Kiremye', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 136, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SALEHM', 'Saleh', 'Kirunda ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 137, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SANDRAN', 'Nalumansi', 'Sandra', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 138, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SIMBWAJ', 'Simbwa', 'Jerome', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 178, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SINGHJ', 'Singh', 'Jaswinder', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 139, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SSEKIMPI', 'Ssekimpi', 'Ivan', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 180, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SSEMPIJJAL', 'Lawrence', 'Ssempijja', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 140, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SSENGENDOC', 'Ssengendo', 'Christopher', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 167, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SSENYONJOM', 'Ssenyonjo', 'Musa', 'efa9c2a39abf4174f4cdad6a86c080d9c74a90daf19bf6889d406683b2b871c8538330d69ef6dc7729e4a180124dfc3721dfba6fc44bf0811cb0e9eb889e892e', 1, 0, 0, 0, 'MATHIASR', 141, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SSEREMBAA', 'Allan', 'Sseremba ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 142, '2020-05-28 19:00:19', '2020-05-28 19:06:53');
INSERT INTO `users` (`username`, `fName`, `lName`, `password`, `level`, `mustChangePwd`, `failedAttempts`, `locked`, `maker`, `id`, `last_login`, `pwd_set`) VALUES
('SSERWANJAE', 'Stuart', 'Sserwanja', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 143, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('SUPERADMIN', 'Super', 'Admin', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 3, 0, 0, 1, 'SYSTEM', 1, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('TASHINKM', 'Tashin', 'K Morjaria', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 144, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('TEDDYK', 'Teddy', 'Kayesu', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 145, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('TESTTEST', 'test', 'test', '9d4bd45055f78f07747c3e191610e740ab0119ba4386852cfecc30aa91e282c62ca9748fa8027a080fe8d4acb55992217854f6a5bb6e4d33afd0b002720bc6c7', 1, 0, 0, 0, 'MATHIASR', 228, '2020-05-01 19:05:50', '2020-05-28 19:05:50'),
('TUMWEBAZEG', 'Tumwebaze', 'Gloria', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 146, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('TUMWEBAZEP', 'Pauline', 'Tumwebaze', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 147, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('TUSHABEC', 'Tushabe', 'Christable', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 148, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('UWINYANAM', 'Uwinyana', 'Mary Gorret', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 149, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('VIRALS', 'VIRAL', 'SHARMA', 'e1514e65d6df87a106a09c60c852ba7b937450d722fab036eee607e485f5b639eb947a172be7def61724baf8781f913a93843eca0078d4da7f3a8a73ef53d32a', 1, 0, 0, 0, 'MATHIASR', 226, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('WAFULAG', 'Grace', 'Wafula', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 150, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('WAKHATAJ', 'Joshua', 'Wakhata', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 151, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('WALUGEMBEA', 'Akisam', 'Walugembe', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 219, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('WALUSANSAG', 'George', 'Williams Walusansa', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 183, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('WAMALAB', 'Wamala', 'Bazirio', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 169, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('WAMAYIM', 'Wamayi', 'Morris', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 152, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('WANDAA', 'Agnes', 'Wanda', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 153, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('WAVAMUNNOJ', 'Wavamunno', 'John ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 154, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('YADAVA', 'Yadav', 'Avdhesh', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 181, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('YADAVALLIR', 'Yadavalli', 'Raja ', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 155, '2020-05-28 19:00:19', '2020-05-28 19:06:53'),
('YOUNUSMO', 'Younus', 'Mohamed', '74dfc2b27acfa364da55f93a5caee29ccad3557247eda238831b3e9bd931b01d77fe994e4f12b9d4cfa92a124461d2065197d8cf7f33fc88566da2db2a4d6eae', 1, 1, 0, 0, 'MATHIASR', 156, '2020-05-28 19:00:19', '2020-05-28 19:06:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `account_actions`
--
ALTER TABLE `account_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`maker`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `differal_prod`
--
ALTER TABLE `differal_prod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `differed`
--
ALTER TABLE `differed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_actions`
--
ALTER TABLE `account_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `differal_prod`
--
ALTER TABLE `differal_prod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `differed`
--
ALTER TABLE `differed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`username`);

--
-- Constraints for table `account_actions`
--
ALTER TABLE `account_actions`
  ADD CONSTRAINT `account_actions_ibfk_1` FOREIGN KEY (`maker`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
