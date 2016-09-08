-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2015 at 08:27 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `denso`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternator_parts`
--

CREATE TABLE IF NOT EXISTS `alternator_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `car_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `engine_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `part_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `car_maker_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start` date DEFAULT NULL,
  `finish` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table stores information of parts of injector' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `alternator_parts`
--

INSERT INTO `alternator_parts` (`id`, `part_code`, `maker_id`, `car_model`, `engine_model`, `part_name`, `car_maker_PN`, `exchange_PN`, `start`, `finish`) VALUES
(1, 'TAA', '001', 'VIOS ', 'NCP93R', 'VIOS NCP 93R', 'TG104210-9082', 'SD104210-9082', '0000-00-00', '0000-00-00'),
(2, 'TAB', '001', 'YARIS', 'NCP91R', 'YARIS NCP 91R', 'TG104210-9082', 'SD104210-9082', '0000-00-00', '0000-00-00'),
(3, 'TAC', '001', 'ALTIS (1.6/1.8L)', 'ZZE141/142R', 'ALTIS(1.6/1.8L) ZZE141/142R', 'TG104210-9202', 'SD104210-9202', '0000-00-00', '0000-00-00'),
(4, 'TAD', '001', 'VIGO (Diesel)', 'KUN15/16R 25/26R', 'VIGO(Diesel) KUN15/16R 25/26R', 'TG104210-9341', 'SD104210-9341', '0000-00-00', '0000-00-00'),
(5, 'TAE', '001', 'VIGO (Gasoline)', 'TGN16/26R', 'VIGO (Gasoline) TGN16/26R', 'TG104210-9360', 'SD104210-9360', '0000-00-00', '0000-00-00'),
(6, 'TAF', '001', 'FORTUNER (Diesel)', 'KUN51R', 'FORTUNER (Diesel) KUN51R', 'TG104210-9341', 'SD104210-9341', '0000-00-00', '0000-00-00'),
(7, 'TAG', '001', 'FORTUNER (Gasoline)', 'TGN51R', 'FORTUNER (Gasoline) TGN51R', 'TG104210-9360', 'SD104210-9360', '0000-00-00', '0000-00-00'),
(8, 'TAH', '001', 'CAMRY (2.0/2.4L)', 'ACV40/41/51R', 'CAMRY (2.0/2.4L) ACV40/41/51R', 'TG104210-9481', 'SD104210-9481', '0000-00-00', '0000-00-00'),
(9, 'TAI', '001', 'ALTIS (1.6/1.8/2.0L)', 'ZRE141/142/143R', 'ALTIS (1.6/1.8/2.0L) ZRE141/142/143R', 'TG104210-9770', 'SD104210-9770', '0000-00-00', '0000-00-00'),
(10, 'TAJ', '001', 'CAMRY (2.5L)', 'ASV 50R', 'CAMRY (2.5L) ASV 50R', 'TG104210-9452', 'SD104210-9452', '0000-00-00', '0000-00-00'),
(11, 'TAK', '001', 'ALTIS (1.6/1.8L)', 'ZRE171/172R', 'ALTIS (1.6/1.8L) ZRE171/172R', 'TG104210-9800', 'SD104210-9800', '0000-00-00', '0000-00-00'),
(12, 'TAL', '001', 'VIOS ', 'NCP150R', 'VIOS NCP150R', 'TG104210-9670', 'SD104210-9670', '0000-00-00', '0000-00-00'),
(13, 'TAM', '001', 'YARIS', 'NCP151R (NR 1.2L)', 'YARIS NCP151R (NR 1.2L)', 'TG104210-9691', 'SD104210-9691', '0000-00-00', '0000-00-00'),
(14, 'TAN', '001', 'NEW REVO 2015 (Diesel)', '1GD/2GD', 'NEW REVO 2015 (Diesel) 1GD/2GD', 'TG104211-2120', 'SD104211-2120', '0000-00-00', '0000-00-00'),
(15, 'TAO', '001', 'NEW REVO 2015 (Gasoline)', 'TGN', 'NEW REVO 2015 (Gasoline) TGN', 'TG104211-2071', 'SD104211-2071', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `car_makers`
--

CREATE TABLE IF NOT EXISTS `car_makers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maker_th` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `maker_en` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maker_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ID for the car makers.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maker_id` (`maker_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `car_makers`
--

INSERT INTO `car_makers` (`id`, `maker_th`, `maker_en`, `maker_id`) VALUES
(1, 'โตโยต้า', 'TOYOTA', '001'),
(3, 'มิตซูบิชิ', 'MITSUBISHI', '002');

-- --------------------------------------------------------

--
-- Table structure for table `car_problems`
--

CREATE TABLE IF NOT EXISTS `car_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_th` text COLLATE utf8_unicode_ci NOT NULL,
  `problems_en` text COLLATE utf8_unicode_ci,
  `part_id` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `car_problems`
--

INSERT INTO `car_problems` (`id`, `problems_th`, `problems_en`, `part_id`) VALUES
(1, 'เครื่องยนต์สตาร์ทไม่ติด', 'Engine cannot Start', '0001'),
(2, 'เครื่องยนต์สตาร์ทติดยาก', 'Difficult to start Engine', '0001'),
(3, 'รอบเดินเบาไม่เรียบ', 'Poor Idling', '0001'),
(4, 'เครื่องยนต์ไม่มีกำลัง', 'Poor Drivability', '0001'),
(5, 'ควันดำ', 'Black Smoke', '0001'),
(6, 'ควันขาว', 'White Smoke', '0001'),
(7, 'น้ำมันรั่ว (ปั๊มเชื้อเพลิง)', 'Fuel leakage (Pump)', '0001'),
(8, 'น้ำมันรั่ว (หัวฉีด)', 'Fuel leakage (Injector)', '0001'),
(9, 'เครื่องยนต์ไม่ดับ', 'Engine is not stop', '0001'),
(10, 'อื่นๆ', 'Others', '0001'),
(11, 'เครื่องยนต์สตาร์ทไม่ติด', 'Engine cannot Start', '0002'),
(12, 'เครื่องยนต์สตาร์ทติดยาก', 'Difficult to start Engine', '0002'),
(13, 'รอบเดินเบาไม่เรียบ', 'Poor Idling', '0002'),
(14, 'เครื่องยนต์ไม่มีกำลัง', 'Poor Drivability', '0002'),
(15, 'ควันดำ', 'Black Smoke', '0002'),
(16, 'ควันขาว', 'White Smoke', '0002'),
(17, 'น้ำมันรั่ว (ปั๊มเชื้อเพลิง)', 'Fuel leakage (Pump)', '0002'),
(18, 'น้ำมันรั่ว (หัวฉีด)', 'Fuel leakage (Injector)', '0002'),
(19, 'เครื่องยนต์ไม่ดับ', 'Engine is not stop', '0002'),
(20, 'อื่นๆ', 'Others', '0002'),
(26, 'ชุดคลัชท์ดัง', 'Clutch Noise', '0003'),
(27, 'คลัชท์เสีย', 'Clutch NG', '0003'),
(28, 'ภายในคอมเพรสเซอร์ดัง', 'Comp. Noise', '0003'),
(29, 'ไม่มีแรงดูด-อัด', 'No Pressure', '0003'),
(30, 'รั่ว', 'Leak', '0003'),
(31, 'อื่น ๆ', 'Other', '0003'),
(32, 'ชุดพูลเล่ย์ดัง', 'Noise pulley', '0004'),
(33, 'ภายในดัง', 'Noise', '0004'),
(34, 'ไม่ชาร์จ', 'No-Charge', '0004'),
(35, 'กระแสไฟออกน้อย', 'Lack of output', '0004'),
(36, 'ไฟรูปแบตโชว์', 'Show Lamp', '0004'),
(37, 'อื่น ๆ', 'Other', '0004');

-- --------------------------------------------------------

--
-- Table structure for table `compressor_parts`
--

CREATE TABLE IF NOT EXISTS `compressor_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `car_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `engine_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `part_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `car_maker_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start` date DEFAULT NULL,
  `finish` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table stores information of parts of injector' AUTO_INCREMENT=19 ;

--
-- Dumping data for table `compressor_parts`
--

INSERT INTO `compressor_parts` (`id`, `part_code`, `maker_id`, `car_model`, `engine_model`, `part_name`, `car_maker_PN`, `exchange_PN`, `start`, `finish`) VALUES
(1, 'TCA', '000', 'VIOS', 'NCP93R', 'VIOS NCP93R', 'TG447160-1761', 'SD447160-1761', '0000-00-00', '0000-00-00'),
(2, 'TCB', '000', 'YARIS', 'NCP91R', 'YARIS NCP91R', 'TG447160-1762', 'SD447160-1762', NULL, NULL),
(3, 'TCC', '000', 'ALTIS (1.6/1.8L)', 'ZZE141/142R', 'ALTIS (1.6/1.8L) ZZE141/142R', 'TG447190-9901', 'SD447190-9901', NULL, NULL),
(4, 'TCD', '000', 'VIGO (Diesel)', 'KUN ทุกรุ่น', 'VIGO (Diesel) KUN ทุกรุ่น', 'TG447160-1960', 'SD447160-1960', NULL, NULL),
(5, 'TCE', '000', 'VIGO (Gasoline)', 'TGN ทุกรุ่น', 'VIGO (Gasoline) TGN ทุกรุ่น', 'TG447160-1990', 'SD447160-1990', NULL, NULL),
(6, 'TCF', '000', 'FORTUNER (Diesel)', 'KUN ทุกรุ่น', 'FORTUNER (Diesel) KUN ทุกรุ่น', 'TG447180-8293', 'SD447180-8293', NULL, NULL),
(7, 'TCG', '000', 'FORTUNER (Gasoline)', 'TGN ทุกรุ่น', 'FORTUNER (Gasoline) TGN ทุกรุ่น', 'TG447180-8314', 'SD447180-8314', NULL, NULL),
(8, 'TCH', '000', 'CAMRY (2.4)', 'ACV40R', 'CAMRY (2.4) ACV40R', 'TG447190-5321', 'SD447190-5321', NULL, NULL),
(9, 'TCI', '000', 'CAMRY (2.0)', 'ACV41R', 'CAMRY (2.0) ACV41R', 'TG447190-7290', 'SD447190-7290', NULL, NULL),
(10, 'TCJ', '000', 'CAMRY HYBRID', 'AHV40R', 'CAMRY HYBRID AHV40R', '042200-0111', 'SD042200-0111', NULL, NULL),
(11, 'TCK', '000', 'PRIUS HYBRID', 'ZVW30R', 'PRIUS HYBRID ZVW30R', '042200-1030', 'SD042200-1030', NULL, NULL),
(12, 'TCL', '000', 'ALTIS (1.6/1.8/2.0L)', 'ZRE141/142/143R', 'ALTIS (1.6/1.8/2.0L) ZRE141/142/143R', '447150-4840', 'SD447150-4840', NULL, NULL),
(13, 'TCM', '000', 'CAMRY (2.5L)', 'ASV50R', 'CAMRY (2.5L) ASV50R', '447150-4880', 'SD447150-4880', NULL, NULL),
(14, 'TCN', '000', 'CAMRY (2.0L)', 'ACV51R', 'CAMRY (2.0L) ACV51R', '447150-4900', 'SD447150-4900', NULL, NULL),
(15, 'TCO', '000', 'CAMRY HYBRID', 'AVV50R', 'CAMRY HYBRID AVV50R', '042200-0460', 'SD042200-0460', NULL, NULL),
(16, 'TCP', '001', 'NEW REVO 2015 (Diesel)', '1GD/2GD', 'NEW REVO 2015 (Diesel) 1GD/2GD', 'XI447160-8531', 'SD447160-8531', NULL, NULL),
(17, 'TCQ', '001', 'NEW REVO 2015 (Gasoline)', 'TGN', 'NEW REVO 2015 (Gasoline) TGN', 'XI447160-8551', 'SD447160-8551', NULL, NULL),
(18, 'TCZ', '001', 'TEST', 'TEST 1GD', 'TEST TEST 1GD', 'XXXXX-XXXXX', 'AAAAAA-AAAAAB', '1970-01-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compressor_problem`
--

CREATE TABLE IF NOT EXISTS `compressor_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compressor_problem_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_eng` text COLLATE utf8_unicode_ci,
  `name_th` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compressor_problem_id` (`compressor_problem_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `compressor_problem`
--

INSERT INTO `compressor_problem` (`id`, `compressor_problem_id`, `name_eng`, `name_th`) VALUES
(1, 'CP001', '1', '1'),
(2, 'CP002', '2', '2'),
(3, 'CP003', '3', '3'),
(4, 'CP004', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `compressor_repair`
--

CREATE TABLE IF NOT EXISTS `compressor_repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compressor_repair_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name_eng` text COLLATE utf8_unicode_ci,
  `name_th` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compressor_repair_id` (`compressor_repair_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `compressor_repair`
--

INSERT INTO `compressor_repair` (`id`, `compressor_repair_id`, `name_eng`, `name_th`) VALUES
(1, 'C0001', 'Dhonsiri', 'บริษัท ธนศิริดีเซล จำกัด'),
(2, 'C0002', 'Thong Thai', 'ร้านทองไทย ออโต้ แอร์ แอนด์ เซอร์วิส'),
(3, 'C0003', 'U-Domthana', 'ร้านอุดมธนะแอร์'),
(4, 'C0004', 'Boonsong', 'ร้านบุญส่งกิจการแอร์');

-- --------------------------------------------------------

--
-- Table structure for table `compressor_status`
--

CREATE TABLE IF NOT EXISTS `compressor_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compressor_status_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_eng` text COLLATE utf8_unicode_ci,
  `name_th` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compressor_status_id` (`compressor_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `compressor_status`
--

INSERT INTO `compressor_status` (`id`, `compressor_status_id`, `name_eng`, `name_th`) VALUES
(1, 'CS001', 'New', 'New'),
(2, 'CS002', 'Repaired', 'Repaired');

-- --------------------------------------------------------

--
-- Table structure for table `compressor_type`
--

CREATE TABLE IF NOT EXISTS `compressor_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compressor_type_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_eng` text COLLATE utf8_unicode_ci,
  `name_th` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compressor_type_id` (`compressor_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `compressor_type`
--

INSERT INTO `compressor_type` (`id`, `compressor_type_id`, `name_eng`, `name_th`) VALUES
(1, 'CT001', '10SRE11C', '10SRE11C'),
(2, 'CT002', '10SRE15C', '10SRE15C');

-- --------------------------------------------------------

--
-- Table structure for table `compressor_type_backup`
--

CREATE TABLE IF NOT EXISTS `compressor_type_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compressor_type_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_eng` text COLLATE utf8_unicode_ci,
  `name_th` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compressor_type_id` (`compressor_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `compressor_type_backup`
--

INSERT INTO `compressor_type_backup` (`id`, `compressor_type_id`, `name_eng`, `name_th`) VALUES
(1, 'CT001', '10S11C', '10S11C'),
(2, 'CT002', '10S15C', '10S15C'),
(3, 'CT003', '10S15L', '10S15L'),
(4, 'CT004', 'TSE14C', 'TSE14C'),
(5, 'CT005', 'TSE17C', 'TSE17C'),
(6, 'CT006', '6SEU16C', '6SEU16C'),
(7, 'CT007', 'ES14C', 'ES14C'),
(8, 'CT008', 'ES27C', 'ES27C');

-- --------------------------------------------------------

--
-- Table structure for table `customer_category`
--

CREATE TABLE IF NOT EXISTS `customer_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto generated incremented Primary key of the table.',
  `customer_category_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Unique ID assigned to each category.',
  `name_eng` text COLLATE utf8_unicode_ci,
  `name_th` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_category_id` (`customer_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Customer Categories.' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer_category`
--

INSERT INTO `customer_category` (`id`, `customer_category_id`, `name_eng`, `name_th`) VALUES
(1, 'CC001', 'End User', 'ลูกค้าทั่วไป/หน้าร้าน'),
(2, 'CC002', 'SD', 'ศูนย์บริการเด็นโซ่'),
(3, 'CC003', 'Toyota DLR', 'ศูนย์บริการรถยนต์');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE IF NOT EXISTS `dealer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto generated key of the table.',
  `dealer_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Alphanumeric key assigned to each dealer.',
  `name_eng` text COLLATE utf8_unicode_ci COMMENT 'Name of the dealer.',
  `name_th` text COLLATE utf8_unicode_ci COMMENT 'Name of the dealer in Thai.',
  `maker_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ID of the car maker from car_makers table',
  `location_en` text COLLATE utf8_unicode_ci COMMENT 'Location of the dealer.',
  `location_th` text COLLATE utf8_unicode_ci COMMENT 'Location of the dealer in Thai.',
  `region` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Region of the dealer',
  `address` text COLLATE utf8_unicode_ci,
  `primary_phone` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `dealer_id` (`dealer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table consisting the list of all the dealers.' AUTO_INCREMENT=844 ;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`ID`, `dealer_id`, `name_eng`, `name_th`, `maker_id`, `location_en`, `location_th`, `region`, `address`, `primary_phone`, `phone`, `fax`) VALUES
(1, '100001', 'K.MOTORS (EAKKACHAI)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (เอกชัย)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(2, '100002', 'SONGKHLA (30M)', 'บริษัท โตโยต้า สงขลา ผู้จำหน่ายโตโยต้า จำกัด ', '001', 'SONGKHLA', 'สงขลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(3, '100003', 'PITHANPANICH (HEAD OFFICE)', 'บริษัท พิธานพาณิชย์ จำกัด (ยะลา)', '001', 'YALA', 'ยะลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(4, '100004', 'KORAT 1988 (HEAD OFFICE)', 'ห้างหุ้นส่วนจำกัด โตโยต้าโคราช 1988 (สนง. ใหญ่)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(5, '100005', 'PITSANULONK (HEAD OFFICE)', 'บริษัท โตโยต้าพิษณุโลก ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'PITSANULOKE', 'พิษณุโลก', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(6, '100006', 'PEARL (HEAD OFFICE)', 'บริษัท โตโยต้าเพิร์ล ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'PHUKET', 'ภูเก็ต', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(7, '100007', 'BANGNA (HEAD OFFICE)', 'BANGNA (HEAD OFFICE)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(8, '100008', 'INTERYONT (HEAD OFFICE)', 'บริษัท โตโยต้า อินเตอร์ยนต์ชลบุรี (1999) จำกัด (สนง. ใหญ่)', '001', 'CHONBURI', 'ชลบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(9, '100009', 'PATTAYA 1998 (BANGSAN)', 'บริษัท โตโยต้าพัทยา (1998) จำกัด (บางแสน)', '001', 'CHONBURI', 'ชลบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(10, '100010', 'AT UNITED (POOCHAO)', 'บริษัท โตโยต้าแอท ยูไนเต็ด จำกัด (ปู่เจ้าสมิงพราย)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(11, '100011', 'UTHAITHANI (HEAD OFFICE)', 'บริษัท โตโยต้าอุทัยธานี ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'UTHAITHANI', 'อุทัยธานี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(12, '100012', 'PETRA (HEAD OFFICE)', 'บริษัท โตโยต้า เภตรา จำกัด (สนง. ใหญ่)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(13, '100013', 'PEARL (RASADA)', 'บริษัท โตโยต้าเพิร์ล ผู้จำหน่ายโตโยต้า จำกัด (ตำบลรัษฎา)', '001', 'PHUKET', 'ภูเก็ต', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(14, '100014', 'PITHANPANICH (HADYAI)', 'บริษัท พิธานพาณิชย์ จำกัด (สาขาหาดใหญ่)', '001', 'SONGKHLA', 'สงขลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(15, '100015', 'K.MOTORS (RAMKHAMHANG)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (รามคำแหง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(16, '100016', 'PRACHUABKHIRIKHAN (PRANBURI)', 'บริษัท โตโยต้าประจวบคีรีขันธ์ จำกัด (ปราณบุรี)', '001', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(17, '100017', 'WORAJAKYONT (PETBURITADMAI)', 'บริษัท วรจักร์ยนต์ จำกัด (เพชรบุรีตัดใหม่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(18, '100018', 'PATHUMTHANI (KLONGLUANG)', 'บริษัท โตโยต้าปทุมธานี ผู้จำหน่ายโตโยต้า จำกัด (คลองหลวง)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(19, '100019', 'PAVINLIAN (HEAD OFFICE)', 'บริษัท โตโยต้า พาวิลเลี่ยน ระยอง (2005) จำกัด', '001', 'RAYONG', 'ระยอง', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(20, '100020', 'PRACHEENBURI (HEAD OFFICE)', 'บริษัท โตโยต้าปราจีนบุรี (1993) ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'PRACHEENBURI', 'ปราจีนบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(21, '100021', 'SUMMIT (SRINAKHARIN)', 'บริษัท โตโยต้า ซัมมิท จำกัด (ศรีนครินทร์)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(23, '100023', 'LOPBURI (LAMNARAI)', 'บริษัท โตโยต้าลพบุรีอุดมชัย ผู้จำหน่ายโตโยต้า จำกัด (ลำนาราย)', '001', 'LOPBURI', 'ลพบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(24, '100024', 'UTTARADIT (HEAD OFFICE)', 'บริษัท โตโยต้าอุตรดิตถ์ ผู้จำหน่ายโตโยต้า จำกัด', '001', 'UTTARADIT', 'อุตรดิตถ์', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(25, '100025', 'PITHANPANICH (SONGKHLA)', 'บริษัท พิธานพาณิชย์ จำกัด (สงขลา)', '001', 'SONGKHLA', 'สงขลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(26, '100026', 'MUANGTAK(MAESOD)', 'บริษัท โตโยต้าเมืองตาก จำกัด (แม่สอด)', '001', 'TAK', 'ตาก', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(27, '100027', 'MUANGNON', 'MUANGNON', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(28, '100028', 'KAMPHAENGPHET (HEAD OFFICE)', 'บริษัท โตโยต้ากำแพงเพชร ผู้จำหน่ายโตโยต้า (1988) จำกัด (สนง.ใหญ่)', '001', 'KAMPHAENGPHET', 'กำแพงเพชร', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(29, '100029', 'BANGKOK(DONMUANG)', 'บริษัท โตโยต้า บางกอก จำกัด (ดอนเมือง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(30, '100030', 'WORAJAKYONT (THONBURI)', 'บริษัท วรจักร์ยนต์ จำกัด (ธนบุรี)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(31, '100031', 'SUWANNAPOOM (HEAD OFFICE)', 'บริษัท โตโยต้า สุวรรณภูมิ จำกัด (สนง. ใหญ่)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(32, '100032', 'CHACHOENGSAO (BANGPAKONG)', 'บริษัท โตโยต้าฉะเชิงเทรา ผู้จำหน่ายโตโยต้า จำกัด (บางปะกง)', '001', 'CHACHOENGSAO', 'ฉะเชิงเทรา', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(33, '100033', 'BUZZ(HEAD OFFICE)', 'บริษัท โตโยต้า บัสส์ จำกัด (สนง. ใหญ่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(34, '100034', 'PATTAYA 1998 (HEAD OFFICE)', 'บริษัท โตโยต้าพัทยา (1998) จำกัด (สนง.ใหญ่)', '001', 'CHONBURI', 'ชลบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(35, '100035', 'SRAKAEW (HEAD OFFICE)', 'บริษัท โตโยต้าสระแก้ว ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'SRAKAEW', 'สระแก้ว', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(36, '100036', 'CHIANGMAI (LAMPOON)', 'บริษัท โตโยต้า เชียงใหม่ จำกัด (ลำพูน)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(37, '100037', 'SURATTHANI (HEAD OFFICE)', 'บริษัท โตโยต้าสุราษฎร์ธานี ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'SURATTHANI', 'สุราษฏ์ธานี', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(38, '100038', 'THONBURI (PETCHBURITADMAI)', 'บริษัท โตโยต้า ธนบุรี จำกัด (เพชรบุรีตัดใหม่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(39, '100039', 'LOEY (HEAD OFFICE)', 'บริษัท โตโยต้าเมืองเลย จำกัด', '001', 'LOEY', 'เลย', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(40, '100040', 'SUMMIT (ONNUCH)', 'บริษัท โตโยต้า ซัมมิท จำกัด (อ่อนนุช)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(41, '100041', 'CHUMPORN (HEAD OFFICE)', 'บริษัท โตโยต้าชุมพร ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'CHUMPORN', 'ชุมพร', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(44, '100044', 'KANCHANABURI (HEAD OFFICE)', 'บริษัท โตโยต้ากาญจนบุรี 1995  ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'KANCHANABURI', 'กาญจนบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(45, '100045', 'NAKHONSRITHAMMARAT (HEAD OFFICE)', 'บริษัท โตโยต้านครศรีธรรมราช จำกัด (สนง. ใหญ่)', '001', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(46, '100046', 'CHAITHONG (HEAD OFFICE)', 'บริษัท โตโยต้าชัยทองชัยนาท จำกัด', '001', 'CHAINAT', 'ชัยนาท', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(47, '100047', 'RAYONG (KLANG)', 'บริษัท โตโยต้าระยอง ผู้จำหน่ายโตโยต้า จำกัด (แกลง)', '001', 'RAYONG', 'ระยอง', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(48, '100048', 'CHAROENKHA (POTHARAM)', 'บริษัท โตโยต้าเจริญค้า ราชบุรี(1961) จำกัด (โพธาราม)', '001', 'RATCHBURI', 'ราชบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(50, '100050', 'PITHANPANICH (LOPBURIRAMATE)', 'บริษัท พิธานพาณิชย์ จำกัด สาขาหาดใหญ่ (ลพบุรีราเมศวร์)', '001', 'SONGKHLA', 'สงขลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(51, '100051', 'SAMUTSAKHON (KRATUMBAN)', 'บริษัท โตโยต้าสมุทรสาคร จำกัด (กระทุ่มแบน)', '001', 'SAMUTSAKHON', 'สมุทรสาคร', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(52, '100052', 'BODY SERVICE (HEAD OFFICE)', 'BODY SERVICE (HEAD OFFICE)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(53, '100053', 'BODY SERVICE (SRINAKHARIN)', 'BODY SERVICE (SRINAKHARIN)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(54, '100054', 'AYUTTHAYA (SENA)', 'บริษัท โตโยต้าอยุธยา จำกัด (เสนา)', '001', 'AYUTTHAYA', 'อยุธยา', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(55, '100055', 'SURATTHANI (KOWSAMUI)', 'บริษัท โตโยต้าสุราษฎร์ธานี ผู้จำหน่ายโตโยต้า จำกัด (เกาะสมุย)', '001', 'SURATTHANI', 'สุราษฏ์ธานี', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(57, '100057', 'S.P.I. (TEPARAK)', 'บริษัท เอส.พี.อินเตอร์แนชั่นแนล จำกัด (เทพารักษ์)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(58, '100058', 'CHACHOENGSAO (PANOMSARAKHAM)', 'บริษัท โตโยต้าฉะเชิงเทรา ผู้จำหน่ายโตโยต้า จำกัด (พนมสารคาม)', '001', 'CHACHOENGSAO', 'ฉะเชิงเทรา', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(59, '100059', 'SAMUTSAKHON (MUENGMAI)', 'บริษัท โตโยต้าสมุทรสาคร จำกัด (เมืองใหม่)', '001', 'SAMUTSAKHON', 'สมุทรสาคร', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(60, '100060', 'PARAGON (HEAD OFFICE)', 'บริษัท โตโยต้า พาราก้อน มอเตอร์ จำกัด (สนง. ใหญ่)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(61, '100061', 'TRANG (HEAD OFFICE)', 'บริษัท โตโยต้าเมืองตรัง ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'TRUNG', 'ตรัง', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(62, '100062', 'CHAIYAPOOM(HEAD OFFICE)', 'ห้างหุ้นส่วนจำกัด โตโยต้าชัยภูมิ ผู้จำหน่ายโตโยต้า จำกัด ', '001', 'CHAIYAPOOM', 'ชัยภูมิ', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(63, '100063', 'NAKHONRATCHSIMA (THAIYEN)', 'บริษัท โตโยต้าไทยเย็น จำกัด (เมือง)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(64, '100064', 'YASOTHON (HEAD OFFICE)', 'บริษัท โตโยต้ายโสธร จำกัด (สนง.ใหญ่)', '001', 'YASOTHON', 'ยโสธร', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(65, '100065', 'CHUMPORN (LANG-SUAN)', 'บริษัท โตโยต้าชุมพร ผู้จำหน่ายโตโยต้า จำกัด (หลังสวน)', '001', 'CHUMPORN', 'ชุมพร', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(66, '100066', 'CHAROENTHAI (PAHONYOTHIN)', 'บริษัท เจริญไทยมอเตอร์ เซลส์ จำกัด (พหลโยธิน)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(68, '100068', 'ALEENKITSIAM (HEAD OFFICE)', 'บริษัท อลีนกิจสยาม จำกัด (สนง.ใหญ่)', '001', 'PIJIT', 'พิจิตร', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(69, '100069', 'MUANGNON(TIWANON)', 'MUANGNON(TIWANON)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(70, '100070', 'BODY SERVICE (BANGNA)', 'BODY SERVICE (BANGNA)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(71, '100071', 'MAHANAKHON (TEPARAK)', 'บริษัท โตโยต้ามหานคร จำกัด (เทพารักษ์)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(72, '100072', 'NAKHONPATHOM (OMYAI)', 'บริษัท โตโยต้านครปฐม ผู้จำหน่ายโตโยต้า จำกัด (อ้อมใหญ่)', '001', 'NAKHONPATHOM', 'นครปฐม', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(73, '100073', 'P.S.ENTERPRISE(HEAD OFFICE)', 'บริษัท โตโยต้า พี.เอส. เอ็นเตอร์ไพรซ์  จำกัด (สนง.ใหญ่ ธัญบุรี)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(74, '100074', 'CHACHOENGSAO (MUANG)', 'บริษัท โตโยต้าฉะเชิงเทรา ผู้จำหน่ายโตโยต้า จำกัด', '001', 'CHACHOENGSAO', 'ฉะเชิงเทรา', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(75, '100075', 'CHIANGRAI (HEAD OFFICE)', 'บริษัท โตโยต้าเชียงราย จำกัด (สนง. ใหญ่)', '001', 'CHIANGRAI', 'เชียงราย', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(76, '100076', 'SISAKET (HEAD OFFICE)', 'บริษัท โตโยต้าศรีสะเกษ (1993) ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'SISAKET', 'ศรีสะเกษ', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(78, '100078', 'MAHANAKHON (WONGWAEN)', 'บริษัท โตโยต้ามหานคร จำกัด (วงแหวนรอบนอก)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(80, '100080', 'PITHANPANICH (SU-NGAIKOLOK)', 'บริษัท พิธานพาณิชย์ จำกัด สาขานราธิวาส (สุไหงโก-ลก)', '001', 'NARATHIWAT', 'นราธิวาส', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(81, '100081', 'THEERACHAIRATCHABURI (WUNGMANAW)', 'บริษัท โตโยต้าธีรชัยราชบุรี ผู้จำหน่ายโตโยต้า จำกัด (วังมะนาว)', '001', 'RATCHBURI', 'ราชบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(82, '100082', 'K.MOTORS (SUKHAPHIBAN 1)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (สุขาภิบาล1)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(83, '100083', 'CHUMPORN(MUANG)', 'บริษัท โตโยต้าชุมพร ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'CHUMPORN', 'ชุมพร', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(84, '100084', 'NAKHONRATCHASIMA (THAIYEN)', 'NAKHONRATCHASIMA (THAIYEN)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(85, '100085', 'THONBURI (RAMA 2)', 'บริษัท โตโยต้า ธนบุรี จำกัด (พระราม 2)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(86, '100086', 'LIBRA (KASATE-NAWAMIN)', 'บริษัท โตโยต้า ลิบรา จำกัด (เกษตร-นวมินทร์)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(87, '100087', 'NORTHERN (LAMPANG)', 'บริษัท โตโยต้า นอร์ทเทิร์น (ลำปาง) จำกัด (ลำปาง)', '001', 'LAMPANG', 'ลำปาง', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(88, '100088', 'SURIN 1991 (HEAD OFFICE)', 'บริษัท โตโยต้าสุรินทร์ (1991) จำกัด (สนง. ใหญ่)', '001', 'SURIN', 'สุรินทร์', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(89, '100089', 'S.P.I. (HUAMARK)', 'บริษัท เอส.พี.อินเตอร์แนชั่นแนล จำกัด (หัวหมาก)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(90, '100090', 'SRAKAEW (MUANG)', 'บริษัท โตโยต้าสระแก้ว ผู้จำหน่ายโตโยต้า จำกัด (เมือง)', '001', 'SRAKAEW', 'สระแก้ว', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(91, '100091', 'PITHANPANICH (HEAD OFFICE)', 'บริษัท พิธานพาณิชย์ จำกัด (สงขลา)', '001', 'SONGKHLA', 'สงขลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(92, '100092', 'CHIANGMAI (HEAD OFFICE)', 'บริษัท โตโยต้า เชียงใหม่ จำกัด (สนง. ใหญ่)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(95, '100095', 'S.P.I. (BANGKAE)', 'บริษัท เอส.พี.อินเตอร์แนชั่นแนล จำกัด (บางแค)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(96, '100096', 'NAKHONRATCHASIMA (BUA YAI)', 'NAKHONRATCHASIMA (BUA YAI)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(97, '100097', 'PETCHBOON (HEAD OFFICE)', 'บริษัท โตโยต้าเพชรบูรณ์ ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'PETCHBOON', 'เพชรบูรณ์', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(98, '100098', 'NAKHONPATHOM (HEAD OFFICE)', 'บริษัท โตโยต้านครปฐม ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'NAKHONPATHOM', 'นครปฐม', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(99, '100099', 'K.MOTORS (SAPHAN MAI)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (สะพานใหม่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(100, '100100', 'NANGRONG (HEAD OFFICE)', 'บริษัท โตโยต้านางรอง ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'BURIRUM', 'บุรีรัมย์', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(102, '100102', 'KRUNGTHAI (HEAD OFFICE)', 'บริษัท โตโยต้า กรุงไทย จำกัด (สนง. ใหญ่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(105, '100105', 'ANDAMAN KRABI (HEAD OFFICE)', 'บริษัท โตโยต้า อันดามัน กระบี่ จำกัด (สนง.ใหญ่)', '001', 'KRABI', 'กระบี่', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(106, '100106', 'WORAJAKYONT (PAHONYOTHIN)', 'บริษัท วรจักร์ยนต์ จำกัด (พหลโยธิน)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(107, '100107', 'P.S.ENTERPRISE (LAMLOOKKA)', 'บริษัท โตโยต้า พี.เอส. เอ็นเตอร์ไพรซ์  จำกัด (ลำลูกกา)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(108, '100108', 'CHIANGMAI (MAHIDOL)', 'บริษัท โตโยต้า เชียงใหม่ จำกัด (มหิดล)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(109, '100109', 'MAHANAHON(LADPRAO)', 'บริษัท โตโยต้ามหานคร จำกัด (ลาดพร้าว)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(110, '100110', 'BURIRUM (HEAD OFFICE)', 'บริษัท โตโยต้าบุรีรัมย์ จำกัด (สนง.ใหญ่)', '001', 'BURIRUM', 'บุรีรัมย์', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(111, '100111', 'SARABURI (HEAD OFFICE)', 'บริษัท โตโยต้าสระบุรี จำกัด (สนง. ใหญ่)', '001', 'SARABURI', 'สระบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(112, '100112', 'THAIYONT (CHONBURI)', 'บริษัท ไทยยนต์ชลบุรี ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'CHONBURI', 'ชลบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(113, '100113', 'CHAROENTHAI (SRINAKHARIN)', 'บริษัท เจริญไทยมอเตอร์ เซลส์ จำกัด (พัฒนาการ)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(114, '100114', 'SINGBURI(HEAD OFFICE)', 'บริษัท โตโยต้าสิงห์บุรี จำกัด', '001', 'SINGBURI', 'สิงห์บุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(118, '100118', 'WORAJAKYONT (SRINAKHARIN)', 'บริษัท วรจักร์ยนต์ จำกัด (ศรีนครินทร์)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(119, '100119', 'THONBURI(JARUNSANITWONG)', 'บริษัท โตโยต้า ธนบุรี จำกัด (จรัลสนิทวงศ์)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(120, '100120', 'WORAJAKYONT (SAMUTPRAKARN)', 'บริษัท วรจักร์ยนต์ จำกัด (lสมุทรปราการ ปากน้ำ)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(121, '100121', 'PARAWINSOR (WONGSAWANG)', 'บริษัท พาราวินเซอร์ จำกัด (วงศ์สว่าง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(122, '100122', 'NAKHONNAYOK (HEAD OFFICE)', 'บริษัท โตโยต้านครนายก จำกัด (สนง. ใหญ่)', '001', 'NAKHONNAYOK', 'นครนายก', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(123, '100123', 'PITHANPANICH (YALA)', 'บริษัท พิธานพาณิชย์ จำกัด (สาขายะลา)', '001', 'YALA', 'ยะลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(126, '100126', 'PARAWINSOR (BANGSON)', 'บริษัท พาราวินเซอร์ จำกัด (BANGSON)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(129, '100129', 'PANG-NGA (HEAD OFFICE)', 'ห้างหุ้นส่วนจำกัด โตโยต้าพังงา ผู้จำหน่ายโตโยต้า (สนง.ใหญ่)', '001', 'PANG-NGA', 'พังงา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(130, '100130', 'NARATHIWAT (HEAD OFFICE)', 'บริษัท พิธานพาณิชย์ จำกัด (สาขานราธิวาส)', '001', 'NARATHIWAT', 'นราธิวาส', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(131, '100131', 'AT UNITED (HEAD OFFICE)', 'บริษัท โตโยต้าแอท ยูไนเต็ด จำกัด (สนง.ใหญ่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(132, '100132', 'PEARL (BAYPASS)', 'บริษัท โตโยต้าเพิร์ล ผู้จำหน่ายโตโยต้า จำกัด  (บายพาส)', '001', 'PHUKET', 'ภูเก็ต', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(133, '100133', 'METROPOLITAN (BANGNA)', 'METROPOLITAN (BANGNA)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(134, '100134', 'PITHANPANICH (PETBURI TADMAI)', 'บริษัท พิธานพาณิชย์ จำกัด (เพชรบุรีตัดใหม่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(136, '100136', 'PITHANPANICH (SURAWONG)', 'บริษัท พิธานพาณิชย์ จำกัด สาขากรุงเทพมหานคร (สนง.ใหญ่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(137, '100137', 'SUKHOTHAI (HAED OFFICE)', 'บริษัท โตโยต้าสุโขทัย ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'SUKHOTHAI', 'สุโขทัย', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(138, '100138', 'MAHANAKHON (BANGNA)', 'บริษัท โตโยต้ามหานคร จำกัด (บางนา)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(139, '100139', 'KORAT 1988 (MUANG)', 'ห้างหุ้นส่วนจำกัด โตโยต้าโคราช 1988 (สนง. ใหญ่)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(140, '100140', 'THAIYONT (HEAD OFFICE)', 'บริษัท ไทยยนต์ชลบุรี ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'CHONBURI', 'ชลบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(141, '100141', 'RAYONG (MABTAPUD)', 'บริษัท โตโยต้าระยอง ผู้จำหน่ายโตโยต้า จำกัด (มาบตาพุด)', '001', 'RAYONG', 'ระยอง', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(142, '100142', 'NONGKHAI (HEAD OFFICE)', 'บริษัท โตโยต้าหนองคาย ผู้จำหน่ายโตโยต้า จำกัด', '001', 'NONGKHAI', 'หนองคาย', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(144, '100144', 'NAKHONTHON (HEAD OFFICE)', 'บริษัท โตโยต้านครธน จำกัด (สนง.ใหญ่', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(145, '100145', 'PITSANULOKE (NAIMUENG)', 'บริษัท โตโยต้าพิษณุโลก ผู้จำหน่ายโตโยต้า จำกัด (ในเมือง)', '001', 'PITSANULOKE', 'พิษณุโลก', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(146, '100146', 'MAHANAKHON (PAHONYOTHIN)', 'บริษัท โตโยต้ามหานคร จำกัด (พหลโยธิน)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(148, '100148', 'S.P.I. (CHIANGKONG)', 'บริษัท เอส.พี.อินเตอร์แนชั่นแนล จำกัด (เซียงกง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(151, '100151', 'SUMMIT (BANGNA)', 'บริษัท โตโยต้า ซัมมิท จำกัด (สนง. ใหญ่ บางนา)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(153, '100153', 'MAHASARAKRAM (MAHASARAKAM)', 'บริษัท โตโยต้ามหาสารคาม (1992) ผู้จำหน่ายโตโยต้า จำกัด (มหาสารคาม)', '001', 'MAHASARAKAM', 'มหาสารคาม', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(154, '100154', 'WORAJAKYONT (HEAD OFFICE)', 'บริษัท วรจักร์ยนต์ จำกัด (สมุทรปราการ ปากน้ำ)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(155, '100155', 'SURATTHANI (THATHONG)', 'บริษัท โตโยต้าสุราษฎร์ธานี ผู้จำหน่ายโตโยต้า จำกัด (ท่าทอง)', '001', 'SURATTHANI', 'สุราษฏ์ธานี', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(156, '100156', 'CHIANGMAI(HEAD OFFICE)', 'บริษัท โตโยต้า เชียงใหม่ จำกัด (สนง. ใหญ่)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(157, '100157', 'SAMUTSONGKHAM (HEAD OFFICE)', 'บริษัท โตโยต้าสมุทรสงคราม ผู้จำหน่ายโตโยต้า จำกัด', '001', 'SAMUTSONGKHAM', 'สมุทรสงคราม', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(158, '100158', 'NAKHONSAWAN (HEAD OFFICE)', 'บริษัท โตโยต้านครสวรรค์ 1981 จำกัด (สนง.ใหญ่)', '001', 'NAKHONSAWAN', 'นครสวรรค์', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(159, '100159', 'MAHANAKHON (BANGNA)', 'บริษัท โตโยต้ามหานคร จำกัด (บางนา)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(161, '100161', 'CHAROENKHA (JOMBUENG)', 'บริษัท โตโยต้าเจริญค้า ราชบุรี(1961) จำกัด (จอมบึง)', '001', 'RATCHBURI', 'ราชบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(163, '100163', 'UDONTHANI(NHONGBUALHAMPHU)', 'บริษัท  โตโยต้าหนองบัวลำภู  จำกัด', '001', 'NHONGBUALHAMPHU', 'หนองบัวลำภู ', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(164, '100164', 'SARABURI (MUAK-LEK)', 'บริษัท โตโยต้าสระบุรี จำกัด (มวกเหล็ก)', '001', 'SARABURI', 'สระบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(165, '100165', 'THONBURI (CHARANSANITWONG)', 'บริษัท โตโยต้า ธนบุรี จำกัด (จรัลสนิทวงศ์)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(166, '100166', 'KANCHANATHEP (HEAD OFFICE)', 'บริษัท โตโยต้ากาญจนเทพ จำกัด', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(167, '100167', 'THAIYONT (PATTAYA)', 'บริษัท ไทยยนต์ชลบุรี ผู้จำหน่ายโตโยต้า จำกัด (พัทยา)', '001', 'CHONBURI', 'ชลบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(168, '100168', 'SUPHANBURI (AUTHONG)', 'บริษัท โตโยต้าสุพรรณบุรี ผู้จำหน่ายโตโยต้า จำกัด (อู่ทอง)', '001', 'SUPHANBURI', 'สุพรรณบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(169, '100169', 'PARAWINSOR (SRINAKHARIN)', 'บริษัท พาราวินเซอร์ จำกัด (ศรีนครินทร์)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(170, '100170', 'AT UNITED (BANGPOO)', 'บริษัท โตโยต้าแอท ยูไนเต็ด จำกัด (บางปู)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(171, '100171', 'NARUMIT (HEAD OFFICE)', 'บริษัท โตโยต้านฤมิต จำกัด', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(172, '100172', 'SUWANNAPOOM (TEPARAK)', 'บริษัท โตโยต้า สุวรรณภูมิ จำกัด (เทพารักษ์)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(173, '100173', 'KANCHANABURI (THAMAKA)', 'บริษัท โตโยต้ากาญจนบุรี 1995  ผู้จำหน่ายโตโยต้า จำกัด (ท่ามะกา)', '001', 'KANCHANABURI', 'กาญจนบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(174, '100174', 'SONGKHLA (HADYAINAI)', 'SONGKHLA (HADYAINAI)', '001', 'SONGKHLA', 'สงขลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(175, '100175', 'PRACHUABKHIRIKHAN (HEAD OFFICE)', 'บริษัท โตโยต้าประจวบคีรีขันธ์ จำกัด (สนง.ใหญ่)', '001', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(177, '100177', 'CHAROENKHA(HEAD OFFICE)', 'บริษัท โตโยต้าเจริญค้า ราชบุรี(1961) จำกัด (สนง.ใหญ่ บ้านโป่ง) ', '001', 'RATCHBURI', 'ราชบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(178, '100178', 'BANGKOK (HEAD OFFICE)', 'บริษัท โตโยต้า บางกอก จำกัด (สนง.ใหญ่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(179, '100179', 'K.MOTORS (PHRAPRADAENG)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (พระประแดง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(180, '100180', 'PITSANULOKE (TATONG)', 'บริษัท โตโยต้าพิษณุโลก ผู้จำหน่ายโตโยต้า จำกัด (ท่าทอง)', '001', 'PITSANULOKE', 'พิษณุโลก', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(181, '100181', 'ROIET (MUANG)', 'บริษัท โตโยต้าร้อยเอ็ด ผู้จำหน่ายโตโยต้า จำกัด', '001', 'ROIET', 'ร้อยเอ็ด', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(184, '100184', 'SONGKHLA (SATUL)', 'บริษัท โตโยต้าสงขลา ผู้จำหน่ายโตโยต้า จำกัด (สตูล)', '001', 'SATUL', 'สตูล', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(187, '100187', 'PRACHUABKHIRIKHAN (MUANG)', 'บริษัท โตโยต้าประจวบคีรีขันธ์ จำกัด (เมือง)', '001', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(190, '100190', 'WORAJAKYONT (RAMA 2)', 'บริษัท วรจักร์ยนต์ จำกัด (พระราม 2)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(191, '100191', 'UDONTHANI(HEAD OFFICE)', 'บริษัท โตโยต้าอุดรธานี ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'UDONTHANI', 'อุดรธานี', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(192, '100192', 'J.D.CARS (HEAD OFFICE)', 'บริษัท โตโยต้า เจดี คาร์ส จำกัด', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(193, '100193', 'PATHUMTHANI (RANGSIT)', 'บริษัท โตโยต้าปทุมธานี ผู้จำหน่ายโตโยต้า จำกัด (รังสิต)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(195, '100195', 'THONBURI (LADPRAO138)', 'บริษัท โตโยต้า ธนบุรี จำกัด (ลาดพร้าว 138)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(198, '100198', 'THONBURI (PRADITMANUTHAM)', 'บริษัท โตโยต้า ธนบุรี จำกัด (ประดิษฐ์มนูธรรม)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(200, '100200', 'CHIANGMAI(SANPATONG)', 'บริษัท โตโยต้า เชียงใหม่ จำกัด (สันป่าตอง)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(203, '100203', 'THACHEEN (HEAD OFFICE)', 'บริษัท โตโยต้าท่าจีน ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'NAKHONPATHOM', 'นครปฐม', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(204, '100204', 'EMPIRES (HEAD OFFICE)', 'บริษัท โตโยต้า เอ็มไพร์ส จำกัด', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(205, '100205', 'THACHEEN (SAMPAN)', 'บริษัท โตโยต้าท่าจีน ผู้จำหน่ายโตโยต้า จำกัด (สามพราน)', '001', 'NAKHONPATHOM', 'นครปฐม', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(207, '100207', 'NAN (HEAD OFFICE)', 'ห้างหุ้นส่วนจำกัด โตโยต้าน่าน ผู้จำหน่ายโตโยต้า', '001', 'NAN', 'น่าน', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(210, '100210', 'SAMUTSONGKHAM (HEAD OFFICE)', 'บริษัท โตโยต้าสมุทรสงคราม ผู้จำหน่ายโตโยต้า จำกัด', '001', 'SAMUTSONGKHAM', 'สมุทรสงคราม', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(211, '100211', 'PRATUNAMPRAIN (HEAD OFFICE)', 'บริษัท โตโยต้าประตูน้ำพระอินทร์ จำกัด (สนง.ใหญ่)', '001', 'AYUTTHAYA', 'อยุธยา', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(212, '100212', 'PARAWINSOR (LADKABANG)', 'บริษัท พาราวินเซอร์ จำกัด (ลาดกระบัง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(213, '100213', 'WORAJAKYONT (PAKNAM)', 'บริษัท วรจักร์ยนต์ จำกัด (สมุทรปราการ ปากน้ำ)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(214, '100214', 'PITHANPANICH (RAMINTRA)', 'บริษัท พิธานพาณิชย์ จำกัด (รามอินทรา)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(215, '100215', 'SUPHANBURI (HEAD OFFICE)', 'บริษัท โตโยต้าสุพรรณบุรี ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'SUPHANBURI', 'สุพรรณบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(216, '100216', 'ROIET (HEAD OFFICE)', 'บริษัท โตโยต้าร้อยเอ็ด ผู้จำหน่ายโตโยต้า จำกัด', '001', 'ROIET', 'ร้อยเอ็ด', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(220, '100220', 'MAHASARAKRAM (MUANG)', 'บริษัท โตโยต้ามหาสารคาม (1992) ผู้จำหน่ายโตโยต้า จำกัด (เมือง)', '001', 'MAHASARAKAM', 'มหาสารคาม', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(223, '100223', 'THONBURI (WONGSAWANG)', 'บริษัท โตโยต้า ธนบุรี จำกัด (วงศ์สว่าง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(231, '100231', 'SAMUTSAKHON (NAIMUENG)', 'บริษัท โตโยต้าสมุทรสาคร จำกัด (ในเมือง)', '001', 'SAMUTSAKHON', 'สมุทรสาคร', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(232, '100232', 'KORAT 1988  (HEAD OFFICE)', 'ห้างหุ้นส่วนจำกัด โตโยต้าโคราช 1988 (สนง. ใหญ่)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(234, '100234', 'SRAKAEW (WANGNAMYAN)', 'บริษัท โตโยต้าสระแก้ว ผู้จำหน่ายโตโยต้า จำกัด (วังน้ำเย็น)', '001', 'SRAKAEW', 'สระแก้ว', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(235, '100235', 'THEERACHAIRATCHABURI (DAMNERNSADUAK)', 'บริษัท โตโยต้าธีรชัยราชบุรี ผู้จำหน่ายโตโยต้า จำกัด (ดำเนินสะดวก)', '001', 'RATCHBURI', 'ราชบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(237, '100237', 'SAKHONNAKHON (SAWANGDANDIN)', 'บริษัท โตโยต้าสกลนคร (1992) ผู้จำหน่ายโตโยต้า จำกัด (สว่างแดนดิน)', '001', 'SAKHONNAKHON', 'สกลนคร', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(238, '100238', 'K.MOTORS (SUKHUMVIT 43)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (สุขุมวิท 43)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(244, '100244', 'NONTHABURI (BANGYAI)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด (บางใหญ่)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(245, '100245', 'KRUNGTHEPYONT(RAMA 9)', 'บริษัท โตโยต้ากรุงเทพยนต์ ผู้จำหน่ายโตโยต้า จำกัด (พระราม 9)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(246, '100246', 'KALASIN (HEAD OFFICE)', 'บริษัท โตโยต้ากาฬสินธุ์ ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'KALASIN', 'กาฬสินธ์', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(247, '100247', 'K.MOTOR(LADPRAO)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (ลาดพร้าว)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(248, '100248', 'K.MOTORS (PETCHKASEM)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (เพชรเกษม)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(249, '100249', 'K.MOTORS (BANGKHO)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (บางโคล่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(251, '100251', 'AYUTTHAYA (SAI-ASIA)', 'บริษัท โตโยต้าอยุธยา จำกัด (สายเอเชีย)', '001', 'AYUTTHAYA', 'อยุธยา', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(252, '100252', 'KRUNGTHEPYONT (PRACHAUTIT)', 'บริษัท โตโยต้ากรุงเทพยนต์ ผู้จำหน่ายโตโยต้า จำกัด (ประชาอุทิศ)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(253, '100253', 'LOPBURI (KONGSUMRONG)', 'บริษัท โตโยต้าลพบุรีอุดมชัย ผู้จำหน่ายโตโยต้า จำกัด (โคกสำโรง)', '001', 'LOPBURI', 'ลพบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(255, '100255', 'CHIANGMAI (FANG)', 'บริษัท โตโยต้า เชียงใหม่ จำกัด (ฝาง)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(256, '100256', 'PATHUMTHANI (MUANG)', 'บริษัท โตโยต้าปทุมธานี ผู้จำหน่ายโตโยต้า จำกัด (เมือง)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(257, '100257', 'PRACHUABKHIRIKHAN (HUAHIN)', 'บริษัท โตโยต้าประจวบคีรีขันธ์ จำกัด (หัวหิน)', '001', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(258, '100258', 'SUKHOTHAI (SAWANKALONG)', 'บริษัท โตโยต้าสุโขทัย ผู้จำหน่ายโตโยต้า จำกัด (สวรรคโลก)', '001', 'SUKHOTHAI', 'สุโขทัย', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(259, '100259', 'CHAIRATCHAKARN (HEAD OFFICE)', 'บริษัท โตโยต้าชัยรัชการ จำกัด', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(260, '100260', 'NAKHONNAYOK (ONGCHARAK)', 'บริษัท โตโยต้านครนายก จำกัด (องครักษ์)', '001', 'NAKHONNAYOK', 'นครนายก', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(261, '100261', 'LOPBURI (HEAD OFFICE)', 'บริษัท โตโยต้าลพบุรีอุดมชัย ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'LOPBURI', 'ลพบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL');
INSERT INTO `dealer` (`ID`, `dealer_id`, `name_eng`, `name_th`, `maker_id`, `location_en`, `location_th`, `region`, `address`, `primary_phone`, `phone`, `fax`) VALUES
(262, '100262', 'POOMPATTANA (HEAD OFFICE)', 'บริษัท โตโยต้าภูมิพัฒนา จำกัด (สนง.ใหญ่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(263, '100263', 'K.MOTORS (PRACHAUTIT)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (ประชาอุทิศ)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(264, '100264', 'THONBURI (TAPRA)', 'บริษัท โตโยต้า ธนบุรี จำกัด (ท่าพระ)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(265, '100265', 'AMNATCHAROEN (HEAD OFFICE)', 'บริษัท โตโยต้าอำนาจเจริญ จำกัด', '001', 'AMNATCHAROEN', 'อำนาจเจริญ', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(266, '100266', 'S.P.I. (LADPRAO)', 'บริษัท เอส.พี.อินเตอร์แนชั่นแนล จำกัด (ลาดพร้าว)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(267, '100267', 'INTERYONT (AOWAUDOM)', 'บริษัท โตโยต้า อินเตอร์ยนต์ชลบุรี (1999) จำกัด (อ่าวอุดม)', '001', 'CHONBURI', 'ชลบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(269, '100269', 'PRACHUABKHIRIKHAN (BANGSAPAN)', 'บริษัท โตโยต้าประจวบคีรีขันธ์ จำกัด (บางสะพาน)', '001', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(270, '100270', 'NONTHABURI (BANGBUATHONG)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด (บางบัวทอง)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(271, '100271', 'BODY SERVICE (SUKHUMVIT 37)', 'BODY SERVICE (SUKHUMVIT 37)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(273, '100273', 'NONTHABURI (PACHACHUEN)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด (ประชาชื่น)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(274, '100274', 'MUANG TRUNG(YANTAKHAW)', 'บริษัท โตโยต้าเมืองตรัง ผู้จำหน่ายโตโยต้า จำกัด (ย่านตาขาว)', '001', 'TRUNG', 'ตรัง', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(276, '100276', 'FRENDSHIP (HEAD OFFICE)', 'บริษัท โตโยต้าเฟรนส์ชิบ จำกัด (สนง.ใหญ่)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(277, '100277', 'MAHANAKHON (SRIAYUTTHAYA)', 'บริษัท โตโยต้ามหานคร จำกัด (ศรีอยุธยา)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(278, '100278', 'NONTHABURI (RAMA 5)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด (พระราม 5)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(283, '100283', 'RANONG (HEAD OFFICE)', 'บริษัท โตโยต้าระนอง ผู้จำหน่ายโตโยต้า จำกัด', '001', 'RANONG', 'ระนอง', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(284, '100284', 'MAHANAKHON (RATBURANA)', 'บริษัท โตโยต้ามหานคร จำกัด (ราษฎร์บูรณะ)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(286, '100286', 'NAKHONRATCHASIMA (JOR-HOR)', 'NAKHONRATCHASIMA (JOR-HOR)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(287, '100287', 'PARAWINSOR (RAMA 4)', 'บริษัท พาราวินเซอร์ จำกัด (พระราม 4)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(288, '100288', 'NAKHONRATCHASIMA (HEAD OFFICE)', 'NAKHONRATCHASIMA (HEAD OFFICE)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(289, '100289', 'KHONKAEN (CHUMPAE)', 'บริษัท โตโยต้าขอนแก่น ผู้จำหน่ายโตโยต้า จำกัด (ชุมแพ)', '001', 'KHONKAEN', 'ขอนแก่น', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(290, '100290', 'KHONKAEN (HEAD OFFICE)', 'บริษัท โตโยต้าขอนแก่น ผู้จำหน่ายโตโยต้า จำกัด', '001', 'KHONKAEN', 'ขอนแก่น', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(291, '100291', 'SURATTHANI (WIANGSOUY)', 'บริษัท โตโยต้าสุราษฎร์ธานี ผู้จำหน่ายโตโยต้า จำกัด (เวียงสระ)', '001', 'SURATTHANI', 'สุราษฏ์ธานี', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(292, '100292', 'K.MOTORS (RAMA 3)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (พระราม 3)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(295, '100295', 'TOYOTA MOTERS', 'TOYOTA MOTERS', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(298, '100298', 'THEERACHAIRATCHABURI (HEAD OFFICE)', 'บริษัท โตโยต้าธีรชัยราชบุรี ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'RATCHBURI', 'ราชบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(301, '100301', 'WORAJAKYONT (WISUTKASAT)', 'บริษัท วรจักร์ยนต์ จำกัด (วิสุทธิกษัตริย์)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(302, '100302', 'LAMPANG (HEAD OFFICE)', 'ห้างหุ้นส่วนจำกัด โตโยต้าลำปาง ผู้จำหน่ายโตโยต้า (สนง. ใหญ่)', '001', 'LAMPANG', 'ลำปาง', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(303, '100303', 'PITHANPANICH (HEAD OFFICE)', 'บริษัท พิธานพาณิชย์ จำกัด (ปัตตานี)', '001', 'PATTANI', 'ปัตตานี', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(306, '100306', 'RAYONG (HEAD OFFICE)', 'บริษัท โตโยต้าระยอง ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'RAYONG', 'ระยอง', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(307, '100307', 'KHOSIT ANGTHONG (HEAD OFFICE)', 'บริษัท โตโยต้าโฆสิตอ่างทอง ผู้จำหน่ายโตโยต้า จำกัด', '001', 'ANGTHONG', 'อ่างทอง', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(309, '100309', 'MAHASARAKRAM (PHAKKHA  PHUM PHISAI)', 'บริษัท โตโยต้ามหาสารคาม (1992) ผู้จำหน่ายโตโยต้า จำกัด (พยัคภูมิพิสัย)', '001', 'MAHASARAKAM', 'มหาสารคาม', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(310, '100310', 'PATTAYA 1998 (SRIRACHA)', 'บริษัท โตโยต้าพัทยา (1998) จำกัด (ศรีราชา)', '001', 'CHONBURI', 'ชลบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(311, '100311', 'PAYAO 1994 (HEAD OFFICE)', 'บริษัท โตโยต้าพะเยา (1994) ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'PAYAO', 'พะเยา', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(320, '100320', 'SUMMIT (RADCHADAPISAK)', 'บริษัท โตโยต้า ซัมมิท จำกัด (รัชดาภิเษก)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(324, '100324', 'MUANG TRUNG(RATSADA)', 'บริษัท โตโยต้าเมืองตรัง ผู้จำหน่ายโตโยต้า จำกัด (รัษฎา)', '001', 'TRUNG', 'ตรัง', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(327, '100327', 'NONTHABURI (CHEANGWATTHANA)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด (แจ้งวัฒนะ)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(328, '100328', 'NAKHONPATHOM (BANGLEN)', 'บริษัท โตโยต้านครปฐม ผู้จำหน่ายโตโยต้า จำกัด (บางเลน)', '001', 'NAKHONPATHOM', 'นครปฐม', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(329, '100329', 'K.MOTORS (THANONCHAN)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (ถนนจันทร์)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(330, '100330', 'THONBURI(ROMKLAW)', 'บริษัท โตโยต้า ธนบุรี จำกัด (ร่มเกล้า)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(334, '100334', 'CHAUSUWANNAPOOM (KINGKAEW)', 'CHAUSUWANNAPOOM (KINGKAEW)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(340, '100340', 'RAYONG (MUANG)', 'บริษัท โตโยต้าระยอง ผู้จำหน่ายโตโยต้า จำกัด (เมือง)', '001', 'RAYONG', 'ระยอง', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(341, '100341', 'NAKHONPATHOM (KAMPANGSAN)', 'บริษัท โตโยต้านครปฐม ผู้จำหน่ายโตโยต้า จำกัด (กำแพงแสน)', '001', 'NAKHONPATHOM', 'นครปฐม', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(344, '100344', 'MUANGTAK(HEAD OFFICE)', 'บริษัท โตโยต้าเมืองตาก จำกัด (สนง.ใหญ่)', '001', 'TAK', 'ตาก', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(346, '100346', 'K.MOTORS (RAM INTHRA)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (รามอินทรา)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(347, '100347', 'BANGKOK (RAMA 3)', 'บริษัท โตโยต้า บางกอก จำกัด (พระราม 3)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(353, '100353', 'CHAROENTHAI (PATTANAKARN)', 'บริษัท เจริญไทยมอเตอร์ เซลส์ จำกัด (พัฒนาการ)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(356, '100356', 'NONTHABURI (TIVANON)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด (ติวานนท์)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(357, '100357', 'MUKDAHAN(HEAD OFFICE)', 'บริษัท โตโยต้ามุกดาหาร (1993) ผู้จำหน่ายโตโยต้า จำกัด', '001', 'MUKDAHAN', 'มุกดาหาร', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(358, '100358', 'VISION(HEAD OFFICE)', 'บริษัท โตโยต้า วิชั่น จำกัด', '001', 'RAYONG', 'ระยอง', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(359, '100359', 'PETCHBOON (LOMSAK)', 'บริษัท โตโยต้าเพชรบูรณ์ ผู้จำหน่ายโตโยต้า จำกัด (หล่มสัก)', '001', 'PETCHBOON', 'เพชรบูรณ์', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(360, '100360', 'SARABURI (NHONGKAE)', 'บริษัท โตโยต้าสระบุรี จำกัด (หนองแค)', '001', 'SARABURI', 'สระบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(361, '100361', 'MAHANAKHON (RAMA 9)', 'บริษัท โตโยต้ามหานคร จำกัด (พระราม 9)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(362, '100362', 'ALEENKITSIAM (MUANG)', 'บริษัท อลีนกิจสยาม จำกัด (ในเมือง)', '001', 'PIJIT', 'พิจิตร', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(363, '100363', 'PARAWINSOR (AUCHUALIENG)', ' บริษัท พาราวินเซอร์ จำกัด (อื้อจือเหลียง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(370, '100370', 'CHACHOENGSAO (HEAD OFFICE)', 'บริษัท โตโยต้าฉะเชิงเทรา ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'CHACHOENGSAO', 'ฉะเชิงเทรา', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(373, '100373', 'SAKHONNAKHON (OUNGKHON)', 'บริษัท โตโยต้าสกลนคร (1992) ผู้จำหน่ายโตโยต้า จำกัด (พังโคน)', '001', 'SAKHONNAKHON', 'สกลนคร', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(378, '100378', 'BODY SERVICE (SUKHUMVIT 43)', 'BODY SERVICE (SUKHUMVIT 43)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(379, '100379', 'SAKHONNAKHON (PANGKHON)', 'บริษัท โตโยต้าสกลนคร (1992) ผู้จำหน่ายโตโยต้า จำกัด (พังโคน)', '001', 'SAKHONNAKHON', 'สกลนคร', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(380, '100380', 'PITHANPANICH (SATUL)', 'บริษัท พิธานพาณิชย์ จำกัด สาขาหาดใหญ่ (สตูล)', '001', 'SATUL', 'สตูล', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(386, '100386', 'UBONRATCHATHANI (HEAD OFFICE)', 'ห้างหุ้นส่วนจำกัด โตโยต้าอุบลราชธานี ผู้จำหน่ายโตโยต้า (สนง.ใหญ่)', '001', 'UBONRATCHATHANI', 'อุบลราชธานี', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(387, '100387', 'EAKNIMITTHAI (HAED OFFICE)', 'บริษัท โตโยต้า เอกนิมิตไทย จำกัด (สนง. ใหญ่)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(388, '100388', 'CHIANGMAI (NAKHORN PHING)', 'บริษัท โตโยต้า เชียงใหม่ จำกัด (นครพิงค์)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(390, '100390', 'SURATTHANI (DONSAK)', 'บริษัท โตโยต้าสุราษฎร์ธานี ผู้จำหน่ายโตโยต้า จำกัด (ดอนสัก)', '001', 'SURATTHANI', 'สุราษฏ์ธานี', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(397, '100397', 'NONTHABURI (RATTANATHIBET)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด (รัตนาธิเบศท์)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(400, '100400', 'NAKHONRATCHASIMA (PAKCHONG)', 'NAKHONRATCHASIMA (PAKCHONG)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(403, '100403', 'THONBURI (ONNUCH)', 'บริษัท โตโยต้า ธนบุรี จำกัด (อ่อนนุช)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(405, '100405', 'MUANGKHON (HAED OFFICE)', 'บริษัท โตโยต้า เมืองคอน จำกัด (สนง.ใหญ่)', '001', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(406, '100406', 'CHAROENTHAI (SUKHUMVIT 71)', 'บริษัท เจริญไทยมอเตอร์ เซลส์ จำกัด (สุขุมวิท 71)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(408, '100408', 'DEEYIAM (HEAD OFFICE)', 'บริษัท โตโยต้าดีเยี่ยม จำกัด', '001', 'UBONRATCHATHANI', 'อุบลราชธานี', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(410, '100410', 'PETCHBURI (HEAD OFFICE)', 'ห้างหุ้นส่วนจำกัด โตโยต้าเพชรบุรี ผู้จำหน่ายโตโยต้า (สนง.ใหญ่)', '001', 'PETCHBURI', 'เพชรบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(411, '100411', 'SISAKET (KANTHOARALAK)', 'บริษัท โตโยต้าศรีสะเกษ (1993) ผู้จำหน่ายโตโยต้า จำกัด (กันทรลักษ์)', '001', 'SISAKET', 'ศรีสะเกษ', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(412, '100412', 'SUPHANBURI (DANCHANG)', 'บริษัท โตโยต้าสุพรรณบุรี ผู้จำหน่ายโตโยต้า จำกัด (ด่านช้าง)', '001', 'SUPHANBURI', 'สุพรรณบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(416, '100416', 'TAKHLI(HEAD OFFICE)', 'BANGNA (SUWANNAPOOM-ONNUCH)', '001', 'NAKHONSAWAN', 'นครสวรรค์', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(417, '100417', 'SAKHONNAKHON (HEAD OFFICE)', 'บริษัท โตโยต้าสกลนคร (1992) ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'SAKHONNAKHON', 'สกลนคร', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(418, '100418', 'PITHANPANICH (NATHAWEE)', 'บริษัท พิธานพาณิชย์ จำกัด สาขาหาดใหญ่ (นาทวี)', '001', 'NARATHIWAT', 'นราธิวาส', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(419, '100419', 'PRACHUABKHIRIKHAN ( (MUANG)', 'บริษัท โตโยต้าประจวบคีรีขันธ์ จำกัด (เมือง)', '001', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(421, '100421', 'NAKHONSRITHAMMARAT (TUNGSONG)', 'บริษัท โตโยต้านครศรีธรรมราช จำกัด (ทุ่งสง)', '001', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(422, '100422', 'NONTHABURI (MUANG)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(423, '100423', 'S.P.I. (PAKNAM)', 'บริษัท เอส.พี.อินเตอร์แนชั่นแนล จำกัด (ปากน้ำ)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(424, '100424', 'SAMUTSAKHON (HEAD OFFICE)', 'บริษัท โตโยต้าสมุทรสาคร จำกัด (สนง. ใหญ่)', '001', 'SAMUTSAKHON', 'สมุทรสาคร', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(425, '100425', 'KIJCHAROEN KARNPUMP', 'KIJCHAROEN KARNPUMP', '001', 'YALA', 'ยะลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(426, '100426', 'SIAM AUTO SALON (BANGKHAE)', 'บริษัท โตโยต้า สยามออโต้ ซาลอน จำกัด (บางแค)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(427, '100427', 'PITHANPANICH (NARATHIWAT)', 'บริษัท พิธานพาณิชย์ จำกัด (สาขานราธิวาส)', '001', 'NARATHIWAT', 'นราธิวาส', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(428, '100428', 'MAHANAKHON (DONMUANG)', 'บริษัท โตโยต้ามหานคร จำกัด (ดอนเมือง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(429, '100429', 'AMATA(HEAD OFFICE)', 'บริษัท โตโยต้า อมตะ จำกัด (สนง.ใหญ่)', '001', 'KHONKAEN', 'ขอนแก่น', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(430, '100430', 'NAKHONRATCHASIMA (SI KHIW)', 'NAKHONRATCHASIMA (SI KHIW)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(431, '100431', 'SUWANNAPOOM (KHINGKHAEW)', 'บริษัท โตโยต้า สุวรรณภูมิ จำกัด (กิ่งแก้ว)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(432, '100432', 'SARABURI (PRAPUTTHABAT)', 'บริษัท โตโยต้าสระบุรี จำกัด (พระพุทธบาท)', '001', 'SARABURI', 'สระบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(434, '100434', 'KORAT 1988  (DANKHUNTHOT)', 'ห้างหุ้นส่วนจำกัด โตโยต้าโคราช 1988 (ด่านขุนทด)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(435, '100435', 'BUZZ (SUKHAPHIBAN 1)', 'บริษัท โตโยต้า บัสส์ จำกัด (สุขาภิบาล 1)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(437, '100437', 'PHRAE LOTRAKUN (HEAD OFFICE)', 'บริษัท โตโยต้าแพร่หล่อตระกูล ผู้จำหน่ายโตโยต้า จำกัด', '001', 'PHRAE', 'แพร่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(438, '100438', 'SARABURI (KAENGKHOY)', 'บริษัท โตโยต้าสระบุรี จำกัด (แก่งคอย)', '001', 'SARABURI', 'สระบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(439, '100439', 'CHIANGMAI (RATCHADAMNOEN)', 'บริษัท โตโยต้า เชียงใหม่ จำกัด (ราชดำเนิน)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(441, '100441', 'NANGRONG (LAMPHAYMAT)', 'บริษัท โตโยต้านางรอง ผู้จำหน่ายโตโยต้า จำกัด (ลำปลายมาศ)', '001', 'BURIRUM', 'บุรีรัมย์', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(443, '100443', 'KAMPHAENGPHET (SALOKBAT)', 'บริษัท โตโยต้ากำแพงเพชร ผู้จำหน่ายโตโยต้า (1988) จำกัด (สลกบาตร)', '001', 'KAMPHAENGPHET', 'กำแพงเพชร', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(444, '100444', 'NONTHABURI (PHUNSIMENT)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด (ปูนซีเมนต์)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(446, '100446', 'PETCHBURI (CHA-AM)', 'ห้างหุ้นส่วนจำกัด โตโยต้าเพชรบุรี ผู้จำหน่ายโตโยต้า (ชะอำ)', '001', 'PETCHBURI', 'เพชรบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(447, '100447', 'KORAT 1988 (CHOKCHAI)', 'ห้างหุ้นส่วนจำกัด โตโยต้าโคราช 1988 (โชคชัย)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(450, '100450', 'THAIYEN (SI KHIW)', 'บริษัท โตโยต้าไทยเย็น จำกัด (สีคิ้ว)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(457, '100457', 'BUZZ (SERI THAI)', 'บริษัท โตโยต้า บัสส์ จำกัด (เสรีไทย)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(458, '100458', 'B-QUIK  (NORTH  SATHORN)', 'B-QUIK  (NORTH  SATHORN)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(459, '100459', 'KHONKAEN (BODINDAENG)', 'บริษัท โตโยต้าขอนแก่น ผู้จำหน่ายโตโยต้า จำกัด (มอดินแดง)', '001', 'KHONKAEN', 'ขอนแก่น', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(461, '100461', 'S.P.I. (RATCHAPUK)', 'บริษัท เอส.พี.อินเตอร์แนชั่นแนล จำกัด (ราชพฤกษ์)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(463, '100463', 'CHUMPORN(YAEKPHATOMPORN)', 'บริษัท โตโยต้าชุมพร ผู้จำหน่ายโตโยต้า จำกัด (แยกปฐมพร)', '001', 'CHUMPORN', 'ชุมพร', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(464, '100464', 'KORAT 1988  (PIMAI)', 'ห้างหุ้นส่วนจำกัด โตโยต้าโคราช 1988 (พิมาย)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(465, '100465', 'AU AMNART SERVICE', 'AU AMNART SERVICE', '001', 'NAKHONSAWAN', 'นครสวรรค์', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(466, '100466', 'SIAM AUTO SALON (HEAD OFFICE)', 'บริษัท โตโยต้า สยามออโต้ ซาลอน จำกัด (สนง.ใหญ่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(468, '100468', 'MAHANAKHON (WANG-HIN)', 'บริษัท โตโยต้ามหานคร จำกัด (วังหิน)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(469, '100469', 'KORAT 1988  (KHOKUAD)', 'ห้างหุ้นส่วนจำกัด โตโยต้าโคราช 1988 (โคกกรวด)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(471, '100471', 'THONBURI (SUKHAPIBAN 3)', 'บริษัท โตโยต้า ธนบุรี จำกัด (สุขาภิบาล 3)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(472, '100472', 'NAKHONTHON (THAPARAK)', 'บริษัท โตโยต้านครธน จำกัด (เทพารักษ์)', '001', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(473, '100473', 'THAIYEN (PAKCHONG)', 'บริษัท โตโยต้าไทยเย็น จำกัด (ปากช่อง)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(474, '100474', 'SUPHANBURI (SONGPEENONG)', 'บริษัท โตโยต้าสุพรรณบุรี ผู้จำหน่ายโตโยต้า จำกัด (สองพี่น้อง)', '001', 'SUPHANBURI', 'สุพรรณบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(475, '100475', 'SONGKHLA (RANOD)', 'SONGKHLA (RANOD)', '001', 'SONGKHLA', 'สงขลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(476, '100476', 'CHUMPORN(THA SAE)', 'บริษัท โตโยต้าชุมพร ผู้จำหน่ายโตโยต้า จำกัด (ท่าแซะ)', '001', 'CHUMPORN', 'ชุมพร', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(477, '100477', 'PRACHEENBURI (KABINBURI)', 'บริษัท โตโยต้าปราจีนบุรี (1993) ผู้จำหน่ายโตโยต้า จำกัด (กบินทร์บุรี)', '001', 'PRACHEENBURI', 'ปราจีนบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(479, '100479', 'PITHANPANICH(SATUL)', 'บริษัท พิธานพาณิชย์ จำกัด สาขาหาดใหญ่ (สตูล)', '001', 'SATUL', 'สตูล', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(480, '100480', 'NAKHONSAWAN (RIMPHING)', 'บริษัท โตโยต้านครสวรรค์ 1981 จำกัด (ริมปิง)', '001', 'NAKHONSAWAN', 'นครสวรรค์', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(481, '100481', 'NONTHABURI (RATCHAPHRUEK)', 'บริษัท โตโยต้านนทบุรี ผู้จำหน่ายโตโยต้า จำกัด (ราชพฤกษ์)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(482, '100482', 'MAHANAKHON (SAI MAI)', 'บริษัท โตโยต้ามหานคร จำกัด (สายไหม)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(484, '100484', 'CHAOPRAYA  NAKHONSAWAN', 'บริษัท โตโยต้า เจ้าพระยา นครสวรรค์ จำกัด', '001', 'NAKHONSAWAN', 'นครสวรรค์', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(485, '100485', 'MAHANAKHON (PRACHACHUEN)', 'บริษัท โตโยต้ามหานคร จำกัด (ประชาชื่น)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(486, '100486', 'LANNA (LAMPOON)', 'บริษัท โตโยต้า ล้านนา จำกัด (ลำพูน)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(487, '100487', 'CHAROENKHA (JOMBUENG)', 'บริษัท โตโยต้าเจริญค้า ราชบุรี(1961) จำกัด (จอมบึง)', '001', 'RATCHBURI', 'ราชบุรี', 'W', 'NULL', 'NULL', 'NULL', 'NULL'),
(488, '100488', 'THAIYEN (BUA YAI)', 'บริษัท โตโยต้าไทยเย็น จำกัด (บัวใหญ่)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(489, '100489', 'LANNA (HEAD OFFICE)', 'บริษัท โตโยต้า ล้านนา จำกัด (สนง. ใหญ่)', '001', 'CHIANGMAI', 'เชียงใหม่', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(490, '100490', 'LANNA (MAEHONGSORN)', 'บริษัท โตโยต้า ล้านนา จำกัด (แม่ฮ่องสอน)', '001', 'MAEHONGSORN', 'แม่ฮ่องสอน', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(491, '100491', 'KHONKAEN (POL)', 'บริษัท โตโยต้าขอนแก่น ผู้จำหน่ายโตโยต้า จำกัด (พล)', '001', 'KHONKAEN', 'ขอนแก่น', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(492, '100492', 'CHIANGRAI (MAESAI)', 'บริษัท โตโยต้าเชียงราย จำกัด (แม่สาย)', '001', 'CHIANGRAI', 'เชียงราย', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(493, '100493', 'K.MOTORS (BANGJAK)', 'บริษัท โตโยต้า เค.มอเตอร์ส ผู้จำหน่ายโตโยต้า จำกัด (บางจาก)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(495, '100495', 'AU BOONSONGSERM SERVICE', 'AU BOONSONGSERM SERVICE', '001', 'NAKHONSAWAN', 'นครสวรรค์', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(498, '100498', 'KAENNAKHON (HEAD OFFICE)', 'บริษัท โตโยต้าแก่นนคร จำกัด (สนง.ใหญ่)', '001', 'KHONKAEN', 'ขอนแก่น', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(499, '100499', 'NAKHONSAWAN (NONGBUA)', 'บริษัท โตโยต้านครสวรรค์ 1981 จำกัด (หนองบัว)', '001', 'NAKHONSAWAN', 'นครสวรรค์', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(500, '100500', 'EAKNIMITTHAI (MUANGTHONG)', 'บริษัท โตโยต้า เอกนิมิตไทย จำกัด (เมืองทอง)', '001', 'NONTHABURI', 'นนทบุรี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(501, '100501', 'THONBURI (RAMKHAMHAENG)', 'บริษัท โตโยต้า ธนบุรี จำกัด (รามคำแหง)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(502, '100502', 'SONGKHLA (HEAD OFFICE)', 'SONGKHLA (HEAD OFFICE)', '001', 'SONGKHLA', 'สงขลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(503, '100503', 'SURIN 1991 (SANGKHA)', 'บริษัท โตโยต้าสุรินทร์ (1991) จำกัด (สังขละ)', '001', 'SURIN', 'สุรินทร์', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(504, '100504', 'BANGNA (SUWANNAPOOM-ONNUCH)', 'BANGNA (SUWANNAPOOM-ONNUCH)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(505, '100505', 'PARAWINSOR (RADKRABANG) ', 'BANGNA (SUWANNAPOOM-ONNUCH)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(506, '100506', 'MAHANAKHON (LAKSI)', 'บริษัท โตโยต้ามหานคร จำกัด (หลักสี่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(507, '100507', 'PETRA (RANGSIT)', 'บริษัท โตโยต้า เภตรา จำกัด (รังสิต)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(508, '100508', 'THAIYEN (HEAD OFFICE)', 'บริษัท โตโยต้าไทยเย็น จำกัด (สนง. ใหญ่)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(509, '100509', 'TOYOTA BURIRUM (NANGRONG)', 'TOYOTA BURIRUM (NANGRONG)', '001', 'BURIRUM', 'บุรีรัมย์', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(510, '100510', 'MAHASARAKRAM  (HEAD OFFICE)', 'บริษัท โตโยต้ามหาสารคาม (1992) ผู้จำหน่ายโตโยต้า จำกัด (สนง.ใหญ่)', '001', 'MAHASARAKAM', 'มหาสารคาม', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(511, '100511', 'KP.SERVICE ', 'KP.SERVICE ', '001', 'LAO', 'ลาว', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(513, '100513', 'LIBRA (WATCHARAPON)', 'บริษัท โตโยต้า ลิบรา จำกัด (วัชรพล)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(514, '100514', 'SONGKHLA (HADYAI)', 'SONGKHLA (HADYAI)', '001', 'SONGKHLA', 'สงขลา', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(516, '100516', 'NAKHONSRITHAMMARAT (SICHON)', 'บริษัท โตโยต้านครศรีธรรมราช จำกัด (สิชล)', '001', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(517, '100517', 'KORAT 1988  (MUANG)', 'ห้างหุ้นส่วนจำกัด โตโยต้าโคราช 1988 (สนง. ใหญ่)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(518, '100518', 'CHAROENYONTCHONBURI (SRIRACHA)', 'บริษัท โตโยต้า เจริญยนต์ชลบุรี จำกัด (ศรีราชา)', '001', 'CHONBURI', 'ชลบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(520, '100520', 'BANGKOK (KANJANAPISAK)', 'บริษัท โตโยต้า บางกอก จำกัด (กาญจนาภิเษก)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(521, '100521', 'THONGRUAYSIMA (JOHO)', 'บริษัท  โตโยต้า ทองรวยสีมา  จำกัด (จอหอ)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(522, '100522', 'T B S. (BANGNA)', 'บริษัท โตโยต้า ที บี เอ็น จำกัด (บางนา)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(524, '100524', 'LAMPOON (HEAD OFFICE)', 'LAMPOON (HEAD OFFICE)', '001', 'LAMPOON', 'ลำพูน', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(526, '100526', 'NAKHONPATHOM (SAI 5)', 'บริษัท โตโยต้านครปฐม ผู้จำหน่ายโตโยต้า จำกัด (สาย 5)', '001', 'NAKHONPATHOM', 'นครปฐม', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(527, '100527', 'LIBRA (HEAD OFFICE)', 'บริษัท โตโยต้า ลิบรา จำกัด (สนง. ใหญ่)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(528, '100528', 'PARAGON (TALAADTHA)', 'บริษัท โตโยต้า พาราก้อน มอเตอร์ จำกัด (ตลาดไท)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(530, '100530', 'PATHUMTHANI  (HEAD OFFICE)', 'บริษัท โตโยต้าปทุมธานี ผู้จำหน่ายโตโยต้า จำกัด (สนง. ใหญ่)', '001', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(531, '100531', 'KHONKAEN (BANPHAI)', 'บริษัท โตโยต้าขอนแก่น ผู้จำหน่ายโตโยต้า จำกัด (บ้านไผ่)', '001', 'KHONKAEN', 'ขอนแก่น', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(532, '100532', 'THAIYEN (JOHO)', 'บริษัท โตโยต้าไทยเย็น จำกัด (จอหอ)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(533, '100533', 'MAHANAKHON (PINKLAO)', 'บริษัท โตโยต้ามหานคร จำกัด (ปิ่นเกล้า)', '001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'NULL', 'NULL', 'NULL', 'NULL'),
(534, '100534', 'PETCHBOON (BUENGSAMPHAN)', 'บริษัท โตโยต้าเพชรบูรณ์ ผู้จำหน่ายโตโยต้า จำกัด (บึงสามพราน)', '001', 'PETCHBOON', 'เพชรบูรณ์', 'N', 'NULL', 'NULL', 'NULL', 'NULL'),
(535, '100535', 'PRACHEENBURI (SIMAHAPHOT)', 'บริษัท โตโยต้าปราจีนบุรี (1993) ผู้จำหน่ายโตโยต้า จำกัด (ศรีมหาโพธิ)', '001', 'PRACHEENBURI', 'ปราจีนบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(537, '100537', 'PATTALUNG (HEAD OFFICE)', 'บริษัท โตโยต้าพัทลุง (1988) ผู้จำหน่ายโตโยต้า จำกัด', '001', 'PATTALUNG', 'พัทลุง', 'S', 'NULL', 'NULL', 'NULL', 'NULL'),
(538, '100538', 'CHANTHABURI (HEAD OFFICE)', 'CHANTHABURI (HEAD OFFICE)', '001', 'CHANTHABURI', 'จันทบุรี', 'E', 'NULL', 'NULL', 'NULL', 'NULL'),
(540, '100540', 'THONGRUAYSIMA (HEAD OFFICE)', 'บริษัท  โตโยต้า ทองรวยสีมา  จำกัด (สนง.ใหญ่)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(542, '100542', 'KORAT 1988 (BYPASS)', 'ห้างหุ้นส่วนจำกัด โตโยต้าโคราช 1988 (บายพาส)', '001', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', 'NULL', 'NULL', 'NULL', 'NULL'),
(543, '200001', 'Terminal Isuzu Co., Ltd. (HQ)', 'บริษัท เทอร์มิแนล อีซูซุ จำกัด (สนง. ใหญ่)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '399 หมู่ 3 ต. บางโฉลง อ.บางพลี สมุทรปราการ 10540', ' 0-2312-5940-4', 'NULL', ' 0-2312-5955'),
(544, '200002', 'Thai Sanguan Isuzu Sales Co., Ltd. (Rangsit)', 'บริษัท ไทยสงวนอีซูซุเซลส์ จำกัด (รังสิต)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '1/4 หมู่ที่ 1 ถนนพหลโยธิน ต.คลองหนึ่ง อ.คลองหลวง ปทุมธานี 12120', ' 0-29014-443-4', 'NULL', 'NULL'),
(545, '200003', 'Isuzu King''s Yont Service Co., Ltd. (Suwinthawong)', 'บริษัท คิงส์ยนต์เซอร์วิส จำกัด (สุวินทวงศ์)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '48/2-4 ถนนสุวินทวงศ์ แขวงลำผักชี เขตหนองจอก กรุงเทพฯ 10530', ' 0-2989-7703-9', 'NULL', ' 0-2989-7899'),
(546, '200004', 'Tri Petch Isuzu Service Co., Ltd. (Chatuchak)', 'บริษัท ตรีเพชรอีซูซุบริการ จำกัด (จตุจักร)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '1088 ถนนวิภาวดี-รังสิต แขวงจตุจักร เขตจตุจักร  กรุงเทพ  10900', ' 0-2966-2000-9', 'NULL', ' 0-2966-2022'),
(547, '200005', 'Auto Technic (Thailand) Co., Ltd. (Bangna)', 'บริษัท ออโต้เทคนิค (ประเทศไทย) จำกัด (บางนา)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '26/11 หมู่ 7 ถนนบางนา-ตราด ต.บางแก้ว อ.บางพลี สมุทรปราการ 10540', ' 0-2751-7087', 'NULL', ' 0-2751-7204'),
(548, '200006', 'Saeng Fah Isuzu Sales Co., Ltd. (Sainoi)', 'บริษัท อีซูซุแสงฟ้าอีซูซุเซลล์ จำกัด (ไทรน้อย)', '002', 'NONTHABURI', 'นนทบุรี', 'BKK', '60 หมู่ 10 ถนนไทรน้อย-ลาดบัวหลวง ต.คลองขวาง อ.ไทรน้อย จ.นนทบุรี 11150', ' 0-2921-9676', 'NULL', 'NULL'),
(549, '200007', 'Isuzu Chaicharoenkij Motors Co., Ltd. (Nongkham)', 'บริษัท อีซูซุชัยเจริญกิจมอเตอร์ส จำกัด (หนองแขม)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '40/5 หมู่ 12 ถนนเพชรเกษม แขวงหนองค้างพลู เขตหนองแขม กรุงเทพฯ 10160', ' 0-2807-4851-8', 'NULL', ' 0-2444-2028'),
(550, '200008', 'Isuzu Nakornluang Motor Co., Ltd. (Rattanathibeth)', 'บริษัท อีซูซุนครหลวงมอเตอร์ จำกัด (รัตนาธิเบศร์)', '002', 'NONTHABURI', 'นนทบุรี', 'BKK', '122 หมู่ที่ 3 ถนนรัตนาธิเบศร์ ต.ไทรม้า อ.เมือง นนทบุรี 11000', ' 0-2921-8650-5', 'NULL', ' 0-2595-1657'),
(551, '200009', 'Isuzu Sanguanthai Krungthep Co., Ltd. (Samutsakorn)', 'บริษัท อีซูซุสงวนไทยกรุงเทพ จำกัด (สมุทรสาคร)', '002', 'SAMUTSAKHON', 'สมุทรสาคร', 'BKK', '118 หมู่ 1 ถนนพระราม 2 ต.บางน้ำจืด อ.เมือง สมุทรสาคร 74000', ' 0-2415-4193-7', 'NULL', ' 0-2416-0324'),
(552, '200010', 'Isuzu Suvarnabhumi Motor Co.,Ltd (Paknam)', 'บริษัท อีซูซุสุวรรณภูมิมอเตอร์ จำกัด (ปากน้ำ)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '32/1 ถนนสุขุมวิท ต.บางด้วน อ.เมือง สมุทรปราการ 10270', ' 0-2756-4614-9', 'NULL', ' 0-2756-4610'),
(553, '200011', 'Isuzu Ung Nguan Tai Bangkok Co., Ltd. (Talingchan)', 'บริษัท อีซูซุอึ้งง่วนไต๋กรุงเทพ จำกัด (ตลิ่งชัน)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '58/10 หมู่ 7 ถนนบรมราชชนนี แขวงตลิ่งชัน เขตตลิ่งชัน กรุงเทพฯ 10170', ' 0-2435-6900-1', 'NULL', ' 0-2435-6240'),
(554, '200012', 'Hiab Nguan Motor L.P. (Petchkasem 108)', 'ห.จ.ก. เฮียบหงวนมอเตอร์ (เพชรเกษม 108)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '34/5 หมู่ที่ 7 ถนนเพชรเกษม แขวงหนองค้างพลู เขตหนองแขม กรุงเทพฯ 10160', ' 0-2445-4494-9', 'NULL', ' 0-2445-4857'),
(555, '200013', 'Kow Yoo Hah Isuzu Sales Co., Ltd. (Romkraw)', 'บริษัท โค้วยู่ฮะอีซูซุเซลส์ จำกัด (ร่มเกล้า)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '302  ถนนร่มเกล้า แขวงมีนบุรี เขตมีนบุรี กรุงเทพฯ 10510', ' 0-2915-3311-5', 'NULL', ' 0-2915-3098'),
(556, '200014', 'Kow Yoo Hah Isuzu Sales Co., Ltd. (Ratchada)', 'บริษัท โค้วยู่ฮะอีซูซุเซลส์ จำกัด (พระราม 9)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '55-55/1 ถนนวัฒนธรรม แขวงห้วยขวาง เขตห้วยขวาง กรุงเทพฯ 10310', ' 0-2620-1234', 'NULL', ' 0-2620-1235'),
(557, '200015', 'Kow Yoo Hah Isuzu Sales Co., Ltd. (Rangsit-N''nayok)', 'บริษัท โค้วยู่ฮะอีซูซุเซลส์ จำกัด (รังสิต-นครนายก)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '49 หมู่ 2 ต.บึงยี่โถ อ.ธัญบุรี ปทุมธานี 12130', ' 0-2549-9161-4', 'NULL', ' 0-2549-9165'),
(558, '200016', 'Kow Yoo Hah Isuzu Sales Co., Ltd. (Phahon Yothin km.34)', 'บริษัท โค้วยู่ฮะอีซูซุเซลส์ จำกัด  (พหลโยธิน กม. 34)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '26/19 หมู่ 1 ถนนพหลโยธิน ต.คลองหนึ่ง อ.คลองหลวง ปทุมธานี 12120', ' 0-2901-2091-9', 'NULL', ' 0-2901-2090'),
(559, '200017', 'Kow Yoo Hah Isuzu Sales Co., Ltd. (Buddhamonthon Sai 3)', 'บริษัท โค้วยู่ฮะอีซูซุเซลส์ จำกัดพุทธมณฑล สาย 3)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '29/1 หมู่ 6 แขวงศาลาธรรมสพน์ เขตทวีวัฒนา กรุงเทพฯ 10170', ' 0-2889-6962-5', 'NULL', ' 0-2889-6990'),
(560, '200018', 'Kow Yoo Hah Isuzu Sales Co., Ltd. (Lumlukka)', 'บริษัท โค้วยู่ฮะอีซูซุเซลส์ จำกัด (ลำลูกกา)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '80 หมู่ 5  ต.บึงคำพร้อย อ.ลำลูกกา ปทุมธานี 12150', ' 0-2987-8833', 'NULL', ' 0-2889-6990'),
(561, '200019', 'Isuzu King''s Yont Service Co., Ltd. (Ram-Indra)', 'บริษัท คิงส์ยนต์เซอร์วิส จำกัด (รามอินทรา)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '5/29 หมู่ 4 ถนนรามอินทรา กม.2 แขวงอนุสาวรีย์ เขตบางเขน กรุงเทพฯ 10220', ' 0-2552-8865-9', 'NULL', ' 0-2551-0999'),
(562, '200020', 'Isuzu King''s Yont Service Co., Ltd. (Bangpoon)', 'บริษัท คิงส์ยนต์เซอร์วิส จำกัด (บางพูน)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '419 หมู่ 6 ถนนรังสิต-ปทุมธานี ต.บางพูน อ.เมือง ปทุมธานี 12000', ' 0-2958-7855', 'NULL', ' 0-2958-7555');
INSERT INTO `dealer` (`ID`, `dealer_id`, `name_eng`, `name_th`, `maker_id`, `location_en`, `location_th`, `region`, `address`, `primary_phone`, `phone`, `fax`) VALUES
(563, '200021', 'Mahanakorn Service Co., Ltd. (Samutsakhon)', 'บริษัท มหานครเซอร์วิส จำกัด (สมุทรสาคร)', '002', 'SAMUTSAKHON', 'สมุทรสาคร', 'BKK', '1/1 หมู่ 1 ต.ท่าจีน อ.เมือง สมุทรสาคร 74000', ' 0-3481-6151-2', 'NULL', ' 0-3481-6148'),
(564, '200022', 'Mahanakorn Service Co., Ltd. (Petchburitadmai)', 'บริษัท มหานครเซอร์วิส จำกัด (เพชรบุรีตัดใหม่)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '3206 ถนนเพชรบุรีตัดใหม่ แขวงบางกะปิ เขตห้วยขวาง กรุงเทพฯ 10320', ' 0-2718-2222-9', 'NULL', ' 0-2718-2063-4'),
(565, '200023', 'Mahanakorn Service Co., Ltd. (Om-Noi)', 'บริษัท มหานครเซอร์วิส จำกัด (อ้อมน้อย)', '002', 'SAMUTSAKHON', 'สมุทรสาคร', 'BKK', '10/2 หมู่ 12 ถนนเพชรเกษม ต.อ้อมน้อย อ.กระทุ่มแบน จ.สมุทรสาคร 75000', ' 0-2810-3311-6', 'NULL', ' 0-2810-3310'),
(566, '200024', 'Mahanakorn Service Co., Ltd. (Pinklao)', 'บริษัท มหานครเซอร์วิส จำกัด (ปิ่นเกล้า)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '85/20-21 ถนนอรุณอมรินทร์ แขวงอรุณอมรินทร์ เขตบางกอกน้อย กรุงเทพฯ 10700', ' 0-2433-2255', 'NULL', ' 0-2433-1555'),
(567, '200025', 'Mahanakorn Service Co., Ltd. (Srinakarin)', 'บริษัท มหานครเซอร์วิส จำกัด (ศรีนครินทร์)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '6 ถนนศรีนครินทร์ แขวงหนองบอน เขตประเวศ กรุงเทพฯ 10250', ' 0-2322-9922-31', 'NULL', ' 0-2322-9928'),
(568, '200026', 'Mahanakorn Service Co., Ltd. (Tiwanon)', 'บริษัท มหานครเซอร์วิส จำกัด (ติวานนท์)', '002', 'NONTHABURI', 'นนทบุรี', 'BKK', '10/5 หมู่ที่ 2 ต.บ้านใหม่ อ.ปากเกร็ด นนทบุรี 11120', ' 0-2961-5445', 'NULL', ' 0-2961-5511'),
(569, '200027', 'Isuzu Metro Co., Ltd. (Ngamwongwan)', 'บริษัท อีซูซุเมโทร จำกัด (สนง. ใหญ่)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '128/13 หมู่ 6 ถนนงามวงศ์วาน แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพฯ 10210', ' 0-2954-1900-7', 'NULL', ' 0-2954-1188'),
(570, '200028', 'Isuzu Metro Co., Ltd. (Hualampong)', 'บริษัท อีซูซุเมโทร จำกัด (หัวลำโพง)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '111 ถนนเจริญเมือง แขวงรองเมือง เขตปทุมวัน กรุงเทพฯ 10330', ' 0-2611-8611', 'NULL', ' 0-2611-8600'),
(571, '200029', 'Isuzu Metro Co., Ltd. (Ratchapluk)', 'บริษัท อีซูซุเมโทร จำกัด (ราชพฤกษ์)', '002', 'NONTHABURI', 'นนทบุรี', 'BKK', '55 หมู่ 1 ถนนราชพฤกษ์ ต.บางขุนกอง อ.บางกรวย นนทบุรี 11130', ' 0-2422-5222', 'NULL', 'NULL'),
(572, '200030', 'Isuzu Saeng Fah Co., Ltd. (Bangbuathong)', 'บริษัท อีซูซุแสงฟ้า จำกัด (บางบัวทอง)', '002', 'NONTHABURI', 'นนทบุรี', 'BKK', '175 หมู่ 3 ถนนตลิ่งชัน-สุพรรณบุรี ต.พิมลราช อ.บางบัวทอง นนทบุรี 11110', ' 0-2923-6001-9', 'NULL', ' 0-2923-6017'),
(573, '200031', 'Isuzu Saeng Fah Co., Ltd. (Samranraj)', 'บริษัท อีซูซุแสงฟ้า จำกัด (สำราญราษฎร์)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '445/1 ถนนมหาไชย แขวงสำราญราษฎร์ เขตพระนคร กรุงเทพฯ 10200', ' 0-2226-0242-7', 'NULL', ' 0-2226-1713'),
(574, '200032', 'Isuzu Saenghong Bangkok Co., Ltd. (Prapadaeng)', 'บริษัท อีซูซุแสงหงส์บางกอก จำกัด (พระประแดง)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '67/5 หมู่ 5 ต.บางครุ อ.พระประแดง จ.สมุทรปราการ 10130', ' 0-2819-0290-8', 'NULL', ' 0-2463-3810'),
(575, '200033', 'Isuzu Saenghong Bangkok Co., Ltd. (Lardpraw)', 'บริษัท อีซูซุแสงหงส์บางกอก จำกัด (ลาดพร้าว)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '2641 ซอยลาดพร้าว แขวงวังทองหลาง เขตบางกะปิ กรุงเทพฯ 10240', ' 0-2932-2831-5', 'NULL', ' 0-2542-0437'),
(576, '200034', 'Isuzu Saenghong Bangkok Co., Ltd. (Chareonnakorn))', 'บริษัท อีซูซุแสงหงส์บางกอก จำกัด (เจริญนคร)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '281/1 ถนนเจริญนคร แขวงบุคคโล เขตธนบุรี กรุงเทพฯ 10600', ' 0-2877-9471-9', 'NULL', ' 0-2877-9470'),
(577, '200035', 'Isuzu Saenghong Bangkok Co., Ltd. (Praditmanootham)', 'บริษัท อีซูซุแสงหงส์บางกอก จำกัด (ประดิษฐ์มนูธรรม)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '14/14 หมู่ 8  แขวงลาดพร้าว เขตลาดพร้าว กรุงเทพฯ 10310', ' 0-2514-0774', 'NULL', 'NULL'),
(578, '200036', 'Isuzu Saenghong Bangkok Co., Ltd. (Prachautit)', 'บริษัท อีซูซุแสงหงส์บางกอก จำกัด (ประชาอุทิศ)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '924/10 ถนนประชาอุทิศ แขวงบางมด เขตทุ่งครุ กรุงเทพฯ 10410', ' 0-2428-9191', 'NULL', 'NULL'),
(579, '200037', 'Isuzu Krungthep Service Co., Ltd. (Srinakarin)', 'บริษัท อีซูซุกรุงเทพบริการ จำกัด (ศรีนครินทร์)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '43/1 หมู่ 6 ถนนสุขสวัสดิ์ ต.บางเมืองใหม่ อ.เมือง จ.สมุทรปราการ 10270', ' 0-2759-8741-4', 'NULL', ' 0-2759-8744'),
(580, '200038', 'Isuzu Krungthep Service Co., Ltd. (Bangjark)', 'บริษัท อีซูซุกรุงเทพบริการ จำกัด (บางจาก)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '1928/1 ถนนสุขุมวิท แขวงบางจาก เขตพระโขนง กรุงเทพฯ 10250', ' 0-2741-5591-4', 'NULL', ' 0-2741-7085'),
(581, '200039', 'Isuzu Krungthep Service Co., Ltd. (Bangna-Trad)', 'บริษัท อีซูซุกรุงเทพบริการ จำกัด (บางนา-ตราด)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '102 ม.13 ถนนบางนา-ตราด ต.บางพลีใหญ่ อ.บางพลี สมุทรปราการ 10540', ' 0-2316-6621', 'NULL', ' 0-2316-1488'),
(582, '200040', 'Isuzu Krungthep Service Co., Ltd. (Ratchayothin)', 'บริษัท อีซูซุกรุงเทพบริการ จำกัด (รัชโยธิน)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '1845/1 ถนนพหลโยธิน แขวงลาดยาว เขตจตุจักร กรุงเทพฯ 10900', ' 0-2512-0128-30', 'NULL', 'NULL'),
(583, '200041', 'Isuzu Nakornluang Co., Ltd. (Eakachai)', 'บริษัท อีซูซุนครหลวง จำกัด (เอกชัย)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '119/48 ม.4 ถนนเอกชัย แขวงบางบอน เขตบางบอน กรุงเทพฯ 10150', ' 0-2895-3480-4', 'NULL', ' 0-2895-4466'),
(584, '200042', 'Isuzu Nakornluang Co., Ltd. (Udomsuk)', 'บริษัท อีซูซุนครหลวง จำกัด (อุดมสุข)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '884 ถนนอุดมสุข 103 แขวงบางนา เขตบางนา กรุงเทพฯ 10260', ' 0-2748-8080', 'NULL', ' 0-2746-6436'),
(585, '200043', 'Isuzu Nakornluang Co., Ltd. (Charan Sanitwong)', 'บริษัท อีซูซุนครหลวง จำกัด (จรัญสนิทวงศ์)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '33 ถนนจรัญสนิทวงศ์ แขวงบางอ้อ เขตบางพลัด กรุงเทพฯ 10170', ' 0-2885-5506', 'NULL', ' 0-2885-5507'),
(586, '200044', 'Isuzu Nakornluang Co., Ltd. (Rama 2)', 'บริษัท อีซูซุนครหลวง จำกัด (พระราม 2)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '32/3 หมู่ 6 ถนนพระราม 2  แขวงบางมด เขตจอมทอง กรุงเทพฯ 10150', ' 0-2428-0036', 'NULL', 'NULL'),
(587, '200045', 'Isuzu Nakornluang Co., Ltd. (Tanyaburi)', 'บริษัท อีซูซุนครหลวง จำกัด (ธัญบุรี)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '54/10 หมู่ 2 ถนนรังสิต-นครนายก ต.ลำผักกูด อ.ธัญบุรี ปทุมธานี 12110', ' 0-2 957-2800', 'NULL', 'NULL'),
(588, '200046', 'Isuzu Nakornluang Co., Ltd. (Jaengwattana)', 'บริษัท อีซูซุนครหลวง จำกัด (แจ้งวัฒนะ)', '002', 'NONTHABURI', 'นนทบุรี', 'BKK', '220/2 หมู่ 4 ถนนแจ้งวัฒนะ ต.ปากเกร็ด อ.ปากเกร็ด จ.นนทบุรี 11120', ' 0-2583-0088', 'NULL', ' 0-2583-4466'),
(589, '200047', 'Isuzu Phranakorn Co., Ltd. (Pathumthani)', 'บริษัท อีซูซุพระนคร จำกัด (ปทุมธานี)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '82 หมู่ 5 ถนนกรุงเทพ-ปทุมธานี ต.บางเดื่อ อ.เมือง ปทุมธานี 12000', ' 0-2581-4561-4', 'NULL', ' 0-2581-4565'),
(590, '200048', 'Isuzu Phranakorn Co., Ltd. (Klongluang)', 'บริษัท อีซูซุพระนคร จำกัด (คลองหลวง)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '44/16 หมู่ 4 ต.คลองหนึ่ง อ.คลองหลวง ปทุมธานี 12120', ' 0-2902-0681-9', 'NULL', ' 0-2902-0690'),
(591, '200049', 'Isuzu Phranakorn Co., Ltd. (Ram-Intra)', 'บริษัท อีซูซุพระนคร จำกัด (รามอินทรา)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '459 ถนนรามอินทรา แขวงคันนายาว เขตคันนายาว กรุงเทพฯ 10230', ' 0-2943-2041-5', 'NULL', ' 0-2943-2047'),
(592, '200050', 'Isuzu Phranakorn Co., Ltd. (Phahol Yothin)', 'บริษัท อีซูซุพระนคร จำกัด (พหลโยธิน)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '1269/1 ถนนพหลโยธิน แขวงสามเสนใน เขตพญาไท กรุงเทพฯ 10400', ' 0-2271-2247-8', 'NULL', ' 0-2271-2228'),
(593, '200051', 'Isuzu Phranakorn Co., Ltd. (Bangkae)', 'บริษัท อีซูซุพระนคร จำกัด (บางแค)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '110/1 หมู่ 10 ถนนเพชรเกษม แขวงบางแค เขตบางแค กรุงเทพฯ 10160', ' 0-2801-3236-9', 'NULL', ' 0-2455-3783'),
(594, '200052', 'Isuzu Phranakorn Co., Ltd. (Taparak))', 'บริษัท อีซูซุพระนคร จำกัด (เทพารักษ์)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '15/10 หมู่ที่ 10 ถนนเทพารักษ์ ต.บางปลา อ.บางพลี สมุทรปราการ 10540', ' 0-2312-1234-7', 'NULL', ' 0-2312-9393'),
(595, '200053', 'Isuzu Phranakorn Co., Ltd. (Minburi)', 'บริษัท อีซูซุพระนคร จำกัด (มีนบุรี)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '79 ถนนเสรีไทย แขวงมีนบุรี เขตมีนบุรี กรุงเทพฯ 10510', ' 0-2517-0999', 'NULL', ' 0-25170079'),
(596, '200054', 'Isuzu Phranakorn Co., Ltd. (Bangsue)', 'บริษัท อีซูซุพระนคร จำกัด (บางซื่อ)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '666 ถนนประชาราษฎร์ 2  แขวงบางซื่อ เขตบางซื่อ กรุงเทพฯ 10800', ' 0-2556-0999', 'NULL', ' 0-2556-1189'),
(597, '200055', 'Isuzu Phranakorn Co., Ltd. (Tarad Thai)', 'บริษัท อีซูซุพระนคร จำกัด (ตลาดไท)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '32/388 หมู่ 9 ต.คลองหนึ่ง อ.คลองหลวง ปทุมธานี 12120', ' 0-2520-4555', 'NULL', ' 0-2908-2435'),
(598, '200056', 'Isuzu Phranakorn Co., Ltd. (Bangpoo)', 'บริษัท อีซูซุพระนคร จำกัด (บางปู)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '444 หมู่ 1 ต.บางปูใหม่ อ.เมือง สมุทรปราการ 10280', ' 0-2323-2000', 'NULL', 'NULL'),
(599, '200057', 'Isuzu Siam City Co., Ltd. (Donmuang)', 'บริษัท อีซูซุสยามซิตี้ จำกัด (ดอนเมือง)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '174/46-49 ซอยวิภาวดี-รังสิต ถนนวิภาวดี-รังสิต แขวงสีกัน เขตดอนเมือง กรุงเทพฯ 10210', ' 0-2996-7500-9', 'NULL', ' 0-2533-6518-9'),
(600, '200058', 'Isuzu Siam City Co., Ltd. (Bangyai)', 'บริษัท อีซูซุสยามซิตี้ จำกัด (บางใหญ่)', '002', 'NONTHABURI', 'นนทบุรี', 'BKK', '22 หมู่ 18 ถนนตลิ่งชัน-สุพรรณบุรี อ.บางใหญ่ นนทบุรี 11140', ' 0-2926-3131-9', 'NULL', ' 0-2926-3153'),
(601, '200059', 'Isuzu Siam City Co., Ltd. (Lumlukka)', 'บริษัท อีซูซุสยามซิตี้ จำกัด (ลำลูกกา)', '002', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', '9/9 หมู่ 7 ถนนลำลูกกา ต.ลาดสวาย อ.ลำลูกกา ปทุมธานี 12150', ' 0-2994-5610-9', 'NULL', ' 0-2994-5762'),
(602, '200060', 'Isuzu Siam City Co., Ltd. (Samrong)', 'บริษัท อีซูซุสยามซิตี้ จำกัด (สำโรง)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '599/1 หมู่ 4 ถนนเทพารักษ์ ต.เทพารักษ์ อ.เมือง สมุทรปราการ 10270', ' 0-2758-4961', 'NULL', ' 0-2758-3962'),
(603, '200061', 'Isuzu Siam City Co., Ltd. (Ladprao)', 'บริษัท อีซูซุสยามซิตี้ จำกัด (ลาดพร้าว)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '2 ซอยลาดพร้าว 21 แขวงจอมพล เขตจตุจักร กรุงเทพฯ 10900', ' 0-2792-1111', 'NULL', ' 0-2938-3234'),
(604, '200062', 'Isuzu Siam City Co., Ltd. (N''ratchanakarin)', 'บริษัท อีซูซุสยามซิตี้ จำกัด (นราธิวาสราชนครินทร์)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '78 ถนนนราธิวาสราชนครินทร์ แขวงทุ่งมหาเมฆ เขตสาทร กรุงเทพฯ 10120', ' 0-2629-6600', 'NULL', ' 0-2629-6611'),
(605, '200063', 'Isuzu Siam City Co., Ltd. (Kasetnawamin)', 'บริษัท อีซูซุสยามซิตี้ จำกัด (เกษตรนวมินทร์)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '11/11 ถนนประเสริฐมนูกิจ แขวงนวลจันทร์ เขตบึงกุ่ม กรุงเทพฯ 10240', ' 0-27628800-9', 'NULL', ' 0-2762-8811'),
(606, '200064', 'Isuzu Suvarnabhumi Co., Ltd. (On-Nuch)', 'บริษัท อีซูซุสุวรรณภูมิ จำกัด (อ่อนนุช)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '721 ถนนลาดกระบัง แขวงลาดกระบัง เขตลาดกระบัง กรุงเทพ 10520', ' 0-2737-1136-40', 'NULL', 'NULL'),
(607, '200065', 'Isuzu Auto Center Co., Ltd. (Sukhapibarn 3)', 'บริษัท อีซูซุออโต้เซ็นเตอร์ จำกัด (สุขาภิบาล 3)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '647/12 ถนนรามคำแหง แขวงหัวหมาก เขตบางกะปิ กรุงเทพฯ 10240', ' 0-2370-0379-99', 'NULL', ' 0-2370-0379-9'),
(608, '200066', 'Isuzu Auto Center Co., Ltd. (Pattanakarn)', 'บริษัท อีซูซุออโต้เซ็นเตอร์ จำกัด (พัฒนาการ)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '11/102 หมู่ 14 ถนนพัฒนาการ แขวงสวนหลวง เขตสวนหลวง กรุงเทพฯ 10250', ' 0-2717-9041-7', 'NULL', ' 0-2717-9048'),
(609, '200067', 'Isuzu Auto Center Co., Ltd. (Nontaburi)', 'บริษัท อีซูซุออโต้เซ็นเตอร์ จำกัด (ติวานนท์)', '002', 'NONTHABURI', 'นนทบุรี', 'BKK', '72/23 หมู่ 1 ถนนติวานนท์ ต.ตลาดขวัญ อ.เมือง จ.นนทบุรี 11000', ' 0-2965-9464-8', 'NULL', ' 0-2965-9464'),
(610, '200068', 'Isuzu Ung Nguan Tai Auto Sales Co., Ltd. (Sirinthon)', 'บริษัท อีซูซุอึ้งง่วนไต๋ออโตเซลส์ จำกัด (สิรินทร)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '458 ถนนสิรินธร แขวงบางพลัด เขตบางพลัด กรุงเทพฯ 10700', ' 0-2434-6882-5', 'NULL', ' 0-2434-5603'),
(611, '200069', 'Isuzu Ung Nguan Tai Auto Sales Co., Ltd. (Srinakarin)', 'บริษัท อีซูซุอึ้งง่วนไต๋ออโตเซลส์ จำกัด (ศรีนครินทร์)', '002', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', '405/2 หมู่ 5 ถนนศรีนครินทร์ ต.สำโรงเหนือ อ.เมือง จ.สมุทรปราการ 10270', ' 0-2758-5400-6', 'NULL', ' 0-2385-7228'),
(612, '200070', 'Isuzu Ung Nguan Tai Auto Sales Co., Ltd. (Tapra)', 'บริษัท อีซูซุอึ้งง่วนไต๋ออโตเซลส์ จำกัด (ท่าพระ)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '458 ถนนสิรินธร แขวงบางพลัด เขตบางพลัด กรุงเทพฯ 10700', ' 0-2868-1047-8', 'NULL', ' 0-2868-1047'),
(613, '200071', 'Isuzu Ung Nguan Tai Auto Sales Co., Ltd. (Rama 2)', 'บริษัท อีซูซุอึ้งง่วนไต๋ออโตเซลส์ จำกัด (พระราม 2)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '222 หมู่ 6 ถนนพระราม 2 แขวงแสมดำ เขตบางขุนเทียน กรุงเทพฯ 10150', ' 0-2415-5550', 'NULL', ' 0-2415-7733'),
(614, '200072', 'Isuzu Ung Nguan Tai Auto Sales Co., Ltd. (Kalapraplerk)', 'บริษัท อีซูซุอึ้งง่วนไต๋ออโตเซลส์ จำกัด (กัลปพฤกษ์)', '002', 'BANGKOK', 'กรุงเทพฯ', 'BKK', '13/12 หมู่ 6 ถนนกัลปพฤกษ์ แขวงบางขุนเทียน เขตจอมทอง กรุงเทพฯ 10150', ' 0-2455-4888', 'NULL', ' 0-2455-4888'),
(615, '200073', 'Isuzu Ung Nguan Tai Auto Sales Co., Ltd. (Jangwatana)', 'บริษัท อีซูซุอึ้งง่วนไต๋ออโตเซลส์ จำกัด (แจ้งวัฒนะ)', '002', 'NONTHABURI', 'นนทบุรี', 'BKK', '23/23 หมู่ 1 ถนนแจ้งวัฒนะ ต.คลองเกลือ อ.ปากเกร็ด นนทบุรี 11120', ' 0-2575-3388', 'NULL', 'NULL'),
(616, '200074', 'Tri Petch Isuzu Service Co., Ltd. (Bhudamonthon)', 'บริษัท ตรีเพชรอีซูซุบริการ จำกัด (พุทธมณฑล)', '002', 'NAKHONPATHOM', 'นครปฐม', 'BKK', '99 ถนนบรมราชชนนี ต.บางเตย อ.สามพราน นครปฐม 73110', ' 0-2482-1701-10', 'NULL', ' 0-2482-1712'),
(617, '200075', 'Prakit Motor Sales Co., Ltd. (Ratchaburi HQ)', 'บริษัท ประกิตมอเตอร์เซลส์ จำกัด (ราชบุรี)', '002', 'RATCHBURI', 'เพชรบุรี', 'W', '328/42 ถนนเพชรเกษม  ต.หน้าเมือง อ.เมือง ราชบุรี 70000', '0-3231-3106-7', 'NULL', '0-3532-3739'),
(618, '200076', 'Prakit Motor Sales Co., Ltd. (Potaram)', 'บริษัท ประกิตมอเตอร์เซลส์ จำกัด (โพธาราม)', '002', 'RATCHBURI', 'เพชรบุรี', 'W', '188 หมู่ 8   ต.บ้านเลือก อ.โพธาราม ราชบุรี 70120', '0-3223-2901-8', 'NULL', 'NULL'),
(619, '200077', 'Isuzu Karnchanaburi Co., Ltd. (Tarua)', 'บริษัท อีซูซุกาญจนบุรี จำกัด (ท่าเรือ)', '002', 'KANCHANABURI', 'กาญจนบุรี', 'W', '131/3 ถนนแสงชูโตสายใหม่ ต.ตะคร้ำเอน อ.ท่ามะกา กาญจนบุรี 71130', '0-3456-1753', 'NULL', '0-3456-1600'),
(620, '200078', 'Isuzu Karnchanaburi Co., Ltd. (Karnchanaburi HQ)', 'บริษัท อีซูซุกาญจนบุรี จำกัด (สนง. ใหญ่)', '002', 'KANCHANABURI', 'กาญจนบุรี', 'W', '318/1 ถนนแสงชูโตเหนือ ต.ท่ามะขาม อ.เมือง กาญจนบุรี 71000', '0-3451-3680-2', 'NULL', '0-3451-3679'),
(621, '200079', 'Isuzu Karnchanaburi Co., Ltd. (Tongpapoom)', 'บริษัท อีซูซุกาญจนบุรี จำกัด (ทองผาภูมิ)', '002', 'KANCHANABURI', 'กาญจนบุรี', 'W', '55/5 หมู่ที่ 1 ต.ท่าขนุน อ.ทองผาภูมิ กาญจนบุรี 71180', '0-3459-9800', 'NULL', '0-3459-9616'),
(622, '200080', 'Isuzu Pathomyonttrakarn Co., Ltd. (Nakornpathom)', 'บริษัท อีซูซุปฐมยนตรกาญจน์ จำกัด (นครปฐม)', '002', 'NAKHONPATHOM', 'นครปฐม', 'BKK', '173 ถนนเพชรเกษม ต.พระประโทน อ.เมือง นครปฐม 73000', '0-3425-8246', 'NULL', '0-3425-8247'),
(623, '200081', 'Isuzu Prakit Motor Banpong Co., Ltd. (Banpong HQ)', 'บริษัท อีซูซุประกิตมอเตอร์บ้านโป่ง จำกัด (บ้านโป่ง)', '002', 'RATCHBURI', 'ราชบุรี', 'W', '65 หมู่ 2 ต.หนองอ้อ อ.บ้านโป่ง จ.ราชบุรี 70110', '0-3234-2490-2', 'NULL', '0-3234-2490-2'),
(624, '200082', 'Isuzu Sanguanthai Motor Sales Co., Ltd. (S''Songkram)', 'บริษัท อีซูซุสงวนไทยมอเตอร์เซลส์ จำกัด (สมุทรสงคราม)', '002', 'SAMUTSONGKHAM', 'สมุทรสงคราม', 'W', '74/5 ซอยบางจะเกร็ง 4 ถนนธนบุรี-ปากท่อ ต.แม่กลอง อ.เมือง สมุทรสงคราม 75000', '0-3471-3401-12', 'NULL', '0-3471-2118'),
(625, '200083', 'Isuzu Sanguanthai Motor Sales Co., Ltd. (Bangkhem)', 'บริษัท อีซูซุสงวนไทยมอเตอร์เซลส์ จำกัด (บางเค็ม)', '002', 'PETCHBURI', 'เพชรบุรี', 'W', '22 หมู่ 1 ต.หนองชุมพลเหนือ อ.เขาย้อย เพชรบุรี 76140', '0-3244-7777', 'NULL', '0-3244-7575'),
(626, '200084', 'Isuzu Sahaphan Auto Sales Co., Ltd. (Karnchanaburi)', 'บริษัท อีซูซุสหภัณฑ์ ออโต้เซลส์ จำกัด (กาญจนบุรี)', '002', 'KANCHANABURI', 'กาญจนบุรี', 'W', '167 ถนนแสงชูโต ต.ปากแพรก อ.เมือง กาญจนบุรี 71000', '0-3451-1645', 'NULL', '0-3451-1406'),
(627, '200085', 'Isuzu Ung Nguan Tai Nakorn Pathom Co., Ltd. (N''Pathom HQ)', 'บริษัท อีซูซุอึ้งง่วนไต๋นครปฐม จำกัด (นครปฐม)', '002', 'NAKHONPATHOM', 'นครปฐม', 'BKK', '239 หมู่ 5 ถนนเพชรเกษม ต.ธรรมศาลา อ.เมือง นครปฐม 73000', '0-3439-5074-9', 'NULL', '0-3428-9893'),
(628, '200086', 'Isuzu Ung Nguan Tai Nakorn Pathom Co., Ltd. (Sampran)', 'บริษัท อีซูซุอึ้งง่วนไต๋นครปฐม จำกัด (สามพราน)', '002', 'NAKHONPATHOM', 'นครปฐม', 'BKK', '62/13 หมู่ 1 ถนนเพชรเกษม ต.ท่าตลาด อ.สามพราน นครปฐม 73110', '0-3432-4151', 'NULL', '0-3432-4104'),
(629, '200087', 'Isuzu Ung Nguan Tai Suphan Co., Ltd. (Suphanburi)', 'บริษัท อีซูซุอึ้งง่วนไต๋สุพรรณ จำกัด (สนง. ใหญ่)', '002', 'SUPHANBURI', 'สุพรรณบุรี', 'W', '381 หมู่ 5 ถนนสุพรรณบุรี-บางบัวทอง ต. ท่าระหัด อ.เมือง สุพรรณบุรี 72000', '0-3552-2980-3', 'NULL', '0-3552-2456'),
(630, '200088', 'Isuzu Ung Nguan Tai Suphan Co., Ltd. (U-Thong)', 'บริษัท อีซูซุอึ้งง่วนไต๋สุพรรณ จำกัด (อู่ทอง)', '002', 'SUPHANBURI', 'สุพรรณบุรี', 'W', '239 หมู่ 8 ถนนมาลัยแมน ต.อู่ทอง อ.อู่ทอง สุพรรณบุรี 72160', '0-3550-5953-4', 'NULL', '0-3550-5953'),
(631, '200089', 'Isuzu Ung Nguan Tai Suphan Co., Ltd. (Sam-Chuk)', 'บริษัท อีซูซุอึ้งง่วนไต๋สุพรรณ จำกัด (สามชุก)', '002', 'SUPHANBURI', 'สุพรรณบุรี', 'W', '141 หมู่ 1 ถนนกรุงเทพฯ-ชัยนาท ต.สามชุก อ.สามชุก สุพรรณบุรี 72130', '0-3557-2822-5', 'NULL', 'NULL'),
(632, '200090', 'Isuzu Ung Nguan Tai Suphan Co., Ltd. (Dan Chang)', 'บริษัท อีซูซุอึ้งง่วนไต๋สุพรรณ จำกัด (ด่านช้าง)', '002', 'SUPHANBURI', 'สุพรรณบุรี', 'W', '888 หมู่ 12  ต.หนองมะค่าโมง อ.ด่านช้าง สุพรรณบุรี 72180', '0-3559-5254-5', 'NULL', '0-3559-5666'),
(633, '200091', 'Isuzu Ung Nguan Tai Suphan Co., Ltd. (Song-Phi-Nong)', 'บริษัท อีซูซุอึ้งง่วนไต๋สุพรรณ จำกัด (สองพี่น้อง)', '002', 'SUPHANBURI', 'สุพรรณบุรี', 'W', '555 หมู่ 11 ต.ทุ่งคอก อ.สองพี่น้อง จ.สุพรรณบุรี 72190', '0-3558-9991-3', 'NULL', '0-3558-9939'),
(634, '200092', 'Ung Nguan Tai Isuzu Sales Co., Ltd. (Petchburi HQ)', 'บริษัท อึ้งง่วนไต๋อีซูซุเซลส์ จำกัด (เพชรบุรี)', '002', 'PETCHBURI', 'เพชรบุรี', 'W', '110 หมู่ 4 ถนนเพชรเกษม ต.ไร่ส้ม อ.เมือง เพชรบุรี 76000', '0-3242-7311-4', 'NULL', '0-3241-3400'),
(635, '200093', 'Ung Nguan Tai Isuzu Sales Co., Ltd. (Pranburi)', 'บริษัท อึ้งง่วนไต๋อีซูซุเซลส์ จำกัด (ปราณบุรี)', '002', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'W', '23 หมู่ 7 ถนนเพชรเกษม ต.เขาน้อย อ.ปราณบุรี ประจวบคีรีขันธ์ 77120', '0-3262-2192', 'NULL', '0-3254-2279'),
(636, '200094', 'Ung Nguan Tai Isuzu Sales Co., Ltd. (Cha-Am)', 'บริษัท อึ้งง่วนไต๋อีซูซุเซลส์ จำกัด (ชะอำ)', '002', 'PETCHBURI', 'เพชรบุรี', 'W', '1315/24 ถนนเพชรเกษม ต.ชะอำ อ.ชะอำ เพชรบุรี 76120', '0-3244-2201-5', 'NULL', '0-3244-2205'),
(637, '200095', 'Ung Nguan Tai Isuzu Sales Co., Ltd. (Prachub)', 'บริษัท อึ้งง่วนไต๋อีซูซุเซลส์ จำกัด (ประจวบคีรีขันธ์)', '002', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'W', '92/3 ถนนเพชรเกษม ต.อ่าวน้อย อ.เมือง ประจวบคีรีขันธ์ 77210', '0-3255-0515-9', 'NULL', 'NULL'),
(638, '200096', 'Ung Nguan Tai Isuzu Sales Co., Ltd. (Bangsaphan)', 'บริษัท อึ้งง่วนไต๋อีซูซุเซลส์ จำกัด (บางสะพาน)', '002', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'W', '255 หมู่ 4 ต.ร่อนทอง อ.บางสะพาน ประจวบคีรีขันธ์ 77230 ', '0-3255-7352-8', 'NULL', 'NULL'),
(639, '200097', 'Ung Nguan Tai Isuzu Sales Co., Ltd. (Banlamp)', 'บริษัท อึ้งง่วนไต๋อีซูซุเซลส์ จำกัด (บ้านแหลม)', '002', 'PETCHBURI', 'เพชรบุรี', 'W', '91/3 ถนนเพชรบุรี-บ้านแหลม ฝั่งตะวันตก ต.บ้านแหลม อ.บ้านแหลม เพชรบุรี 76110', '0-3245-0340-2', 'NULL', 'NULL'),
(640, '200098', 'Tang Sia Huat (1985) L.P. (Sakratiem)', 'ห.จ.ก. ตั้งเซียฮวด(1985) (สระกระเทียม)', '002', 'NAKHONPATHOM', 'นครปฐม', 'BKK', '76 หมู่ 1 ถนนเพชรเกษม ต.สระกระเทียม อ.เมือง นครปฐม 73000', '0-3420-0182-6', 'NULL', '0-3425-5931'),
(641, '200099', 'Tang Sia Huat (1985) L.P. (Banglane)', 'ห.จ.ก. ตั้งเซียฮวด(1985) (บางเลน)', '002', 'NAKHONPATHOM', 'นครปฐม', 'BKK', '47 หมู่ 11 ต.บางเลน อ.บางเลน นครปฐม 73130', '0-3423-4182-5', 'NULL', '0-3439-1952'),
(642, '200100', 'Tang Sia Huat (1985) L.P. (Tang Sia Huat Plaza)', 'ห.จ.ก. ตั้งเซียฮวด(1985) (ศูนย์การค้าตั้งเซียฮวด)', '002', 'NAKHONPATHOM', 'นครปฐม', 'BKK', '225 ถนนทวาราวดี ต.ห้วยจรเข้ อ.เมือง นครปฐม 73000', '0-3421-2899', 'NULL', '0-3421-2898'),
(643, '200101', 'Tang Sia Huat (1985) L.P. (Kampangsaen)', 'ห.จ.ก. ตั้งเซียฮวด(1985) (กำแพงแสน)', '002', 'NAKHONPATHOM', 'นครปฐม', 'BKK', '49 หมู่ 10 ต.วังน้ำเขียว อ.กำแพงแสน นครปฐม 73140', '0-3420-4797-8', 'NULL', 'NULL'),
(644, '200102', 'Chueng Kong Heng Isuzu Co., Ltd. (Saraburi HQ)', 'บริษัท จึงกงเฮงอีซูซุ จำกัด (สระบุรี)', '002', 'SARABURI', 'สระบุรี', 'W', '11 ถนนพหลโยธิน ต.ปากเพรียว อ.เมือง สระบุรี 18000', '0-3622-0238-43', 'NULL', '0-3622-1909'),
(645, '200103', 'Chueng Kong Heng Isuzu Co., Ltd. (Kang Koi)', 'บริษัท จึงกงเฮงอีซูซุ จำกัด (แก่งคอย)', '002', 'SARABURI', 'สระบุรี', 'W', '181/2 หมู่ 9 ถนนมิตรภาพ ต.บ้านป่า อ.แก่งคอย จ.สระบุรี 18110', '0-3625-2001-4', 'NULL', '0-3625-2005'),
(646, '200104', 'Cholburi Isuzu Sales Co., Ltd. (Bang saen HQ)', 'บริษัท ชลบุรีอีซูซุเซลส์ จำกัด (บางแสน)', '002', 'CHONBURI', 'ชลบุรี', 'E', '46/2 หมู่ 7 ถนนสุขุมวิท ต.เสม็ด อ.เมือง จ.ชลบุรี 20130', '0-3838-6691-710', 'NULL', '0-3838-2024'),
(647, '200105', 'Cholburi Isuzu Sales Co., Ltd. (Pattaya)', 'บริษัท ชลบุรีอีซูซุเซลส์ จำกัด (พัทยา)', '002', 'CHONBURI', 'ชลบุรี', 'E', '329/2 หมู่ 9 ถนนพัทยาสาย 2 ต.หนองปรือ อ.บางละมุง ชลบุรี 20260', '0-3842-5593', 'NULL', '0-3842-3379'),
(648, '200106', 'Cholburi Isuzu Sales Co., Ltd. (Banglamung)', 'บริษัท ชลบุรีอีซูซุเซลส์ จำกัด (บางละมุง)', '002', 'CHONBURI', 'ชลบุรี', 'E', '46 หมู่ 8 ต.หนองปลาไหล อ.บางละมุง ชลบุรี 20150', '0-3822-1414-5', 'NULL', '0-3822-1413'),
(649, '200107', 'Cholburi Isuzu Sales Co., Ltd. (Bang Sai)', 'บริษัท ชลบุรีอีซูซุเซลส์ จำกัด (บางทราย)', '002', 'CHONBURI', 'ชลบุรี', 'E', '70/6 หมู่ 4 ถนนสุขุมวิท ต.บางทราย อ.เมือง จ.ชลบุรี 20000', '0-3879-4077-9', 'NULL', '0-3828-6243'),
(650, '200108', 'Cholburi Isuzu Sales Co., Ltd. (Banbueng)', 'บริษัท ชลบุรีอีซูซุเซลส์ จำกัด (บ้านบึง)', '002', 'CHONBURI', 'ชลบุรี', 'E', '846/1 หมู่ 1 ต.บ้านบึง อ.บ้านบึง ชลบุรี 20170', '0-3875-2598-9', 'NULL', '0-3875-2597'),
(651, '200109', 'Cholburi Isuzu Sales Co., Ltd. (Amatanakorn)', 'บริษัท ชลบุรีอีซูซุเซลส์ จำกัด (อมตะนคร)', '002', 'CHONBURI', 'ชลบุรี', 'E', '132 หมู่ 1 ต.คลองตำหรุ อ.เมือง ชลบุรี 20000', '0-3845-7270-6', 'NULL', 'NULL'),
(652, '200110', 'Cholburi Isuzu Sales Co., Ltd. (Sattahip)', 'บริษัท ชลบุรีอีซูซุเซลส์ จำกัด (สัตหีบ)', '002', 'CHONBURI', 'ชลบุรี', 'E', '109 หมู่ 3  ต.สัตหีบ อ.สัตหีบ ชลบุรี 20180', '0-3807-0170-9', 'NULL', 'NULL'),
(653, '200111', 'Isuzu Sor Saeng Mongkol  Ayutthaya Co., Ltd. (Ayutthaya HQ)', 'บริษัท อีซูซุ ซ. แสงมงคล อยุธยา จำกัด (อยุธยา)', '002', 'AYUTTHAYA', 'อยุธยา', 'W', '59 หมู่ 5 ถนนเอเซีย ต.บ้านกรด อ.บางปะอิน พระนครศรีอยุธยา 13160', '0-3534-6334-7', 'NULL', '0-3534-6338'),
(654, '200112', 'Nakornnayok Isuzu Service Co., Ltd. (A.Muang HQ)', 'บริษัท นครนายกอีซูซุบริการ จำกัด (สนง. ใหญ่)', '002', 'NAKHONNAYOK', 'นครนายก', 'N-E', '65 หมู่ 10 ถนนสุวรรณศร ต.พรหมณี อ.เมือง นครนายก 26000', '0-3731-2748-9', 'NULL', '0-3731-1038'),
(655, '200113', 'Nakornnayok Isuzu Service Co., Ltd. (A.Ongkarak)', 'บริษัท นครนายกอีซูซุบริการ จำกัด (องครักษ์)', '002', 'NAKHONNAYOK', 'นครนายก', 'N-E', '151 หมู่ 10 ต.ทรายมูล อ.องครักษ์ นครนายก 26120', '0-3732-2536-9', 'NULL', '0-3732-2536'),
(656, '200114', 'Prachakij Motor Sales Co., Ltd. (Nayaiarm)', 'บริษัท ประชากิจมอเตอร์เซลส์ จำกัด (นายายอาม)', '002', 'CHANTHABURI', 'จันทบุรี', 'E', '119/2 หมู่ 1 ต.นายายอาม กิ่งอำเภอนายายอาม จันทบุรี 22160', '0-3935-8066-70', 'NULL', '0-3935-8070'),
(657, '200115', 'Prachakij Motor Sales Co., Ltd. (Soi Dao)', 'บริษัท ประชากิจมอเตอร์เซลส์ จำกัด (สอยดาว)', '002', 'CHANTHABURI', 'จันทบุรี', 'E', '138/4 หมู่ 1  ต.ปะตง อ.สอยดาว จันทบุรี 22180', '0-3942-1115-6', 'NULL', 'NULL'),
(658, '200116', 'Prachakij Motor Sales Co., Ltd. (Chanthaburi)', 'บริษัท ประชากิจมอเตอร์เซลส์ จำกัด (สนง. ใหญ่)', '002', 'CHANTHABURI', 'จันทบุรี', 'E', '50/11 หมู่ที่ 2 ถนนสุขุมวิท ต.ท่าช้าง อ.เมือง จันทบุรี 22000', '0-3933-6084-8', 'NULL', '0-3933-6093'),
(659, '200117', 'Prachakij Motor Sales Co., Ltd. (Khlung)', 'บริษัท ประชากิจมอเตอร์เซลส์ จำกัด (ขลุง)', '002', 'CHANTHABURI', 'จันทบุรี', 'E', '50/8 หมู่ 1  ต.ขลุง อ.ขลุง จ.จันทบุรี 22110', '0-3944-2400', 'NULL', 'NULL'),
(660, '200118', 'Phancharoen Co., Ltd. (Lopburi HQ)', 'บริษัท พันธุ์เจริญ จำกัด (ลพบุรี)', '002', 'LOPBURI', 'ลพบุรี', 'W', '29/9 ถนนพหลโยธิน ต.ท่าศาลา อ.เมือง ลพบุรี 15000', '0-3642-5191-3', 'NULL', '0-3642-5193'),
(661, '200119', 'Rayong Isuzu Sales Co., Ltd. (Rayong)', 'บริษัท ระยองอีซูซุเซลส์ จำกัด (ระยอง)', '002', 'RAYONG', 'ระยอง', 'E', '54/3 หมู่ 3 ต.ทับมา อ.เมือง ระยอง 21000', '0-3862-3862', 'NULL', 'NULL'),
(662, '200120', 'Singburi Isuzu Sales Co., Ltd. (Singburi)', 'บริษัท สิงห์บุรีอีซูซุเซลส์ จำกัด (สิงห์บุรี)', '002', 'SINGBURI', 'สิงห์บุรี', 'W', '69 หมู่ 11 ถนนบางระจันตัดใหม่ ต.ต้นโพธิ์ อ.เมือง สิงห์บุรี16000', '0-3652-4392', 'NULL', '0-3651-2386'),
(663, '200121', 'Ayutthaya Isuzu Sales Co.,Lyd. (Ayutthaya)', 'บริษัท อยุธยาอีซูซุเซลส์ จำกัด (อยุธยา)', '002', 'AYUTTHAYA', 'อยุธยา', 'W', '79 หมู่ 4 ต.คลองจิก อ.บางปะอิน พระนครศรีอยุธยา 13160', '0-3574-2333', 'NULL', '0-3574-2321-2'),
(664, '200122', 'Ayutthaya Isuzu Sales Co.,Lyd. (Sena)', 'บริษัท อยุธยาอีซูซุเซลส์ จำกัด (เสนา)', '002', 'AYUTTHAYA', 'อยุธยา', 'W', '68/83 หมู่ 2 ต.สามกอ อ.เสนา พระนครศรีอยุธยา 13110', '0-3520-2487', 'NULL', '0-3520-2678'),
(665, '200123', 'AutoTechnic (Thailand) Co., Ltd. (Bangpakong)', 'บริษัท ออโตเทคนิค (ประเทศไทย) จำกัด (บางประกง)', '002', 'CHACHOENGSAO', 'ฉะเชิงเทรา', 'BKK', '59/9 หมู่ 12 ถนนบางนา-ตราด อ.บางปะกง ฉะเชิงเทรา 24130', '0-3853-2900-7', 'NULL', '0-3853-2909'),
(666, '200124', 'Isuzu Saeng Hong Leasing Co., Ltd. (ChaChengsao HQ)', 'บริษัท อีซูซุแสงหงส์ลิซซิ่ง จำกัด (ฉะเชิงเทรา)', '002', 'CHACHOENGSAO', 'ฉะเชิงเทรา', 'BKK', '106 ถนนสุขประยูร ต.ในเมือง อ.เมือง ฉะเชิงเทรา 24000', '0-3882-4054-62', 'NULL', '0-3851-1971'),
(667, '200125', 'Isuzu Saeng Hong Leasing Co., Ltd. (Panomsarakarm)', 'บริษัท อีซูซุแสงหงส์ลิซซิ่ง จำกัด (พนมสารคาม)', '002', 'CHACHOENGSAO', 'ฉะเชิงเทรา', 'BKK', '534 หมู่ 4 ต.ท่าถ่าน อ.พนมสารคาม ฉะเชิงเทรา 24120', '0-3883-6346-7', 'NULL', '0-3883-6349'),
(668, '200126', 'Isuzu Saeng Hong Leasing Co., Ltd. (Bangpakong)', 'บริษัท อีซูซุแสงหงส์ลิซซิ่ง จำกัด (บางประกง)', '002', 'CHACHOENGSAO', 'ฉะเชิงเทรา', 'BKK', '89/1 หมู่ 1 ต.บางวัว อ.บางปะกง ฉะเชิงเทรา 74300', '0-3883-0523-7', 'NULL', '0-3883-0527'),
(669, '200127', 'Isuzu Eastern Cholburi Co.Ltd. (Sriracha)', 'บริษัท อีซูซุตะวันออกชลบุรี จำกัด (ศรีราชา)', '002', 'CHONBURI', 'ชลบุรี', 'E', '15/219 หมู่ 4 ต.สุรศักดิ์ อ.ศรีราชา ชลบุรี 20110', '0-3831-4253-4', 'NULL', '0-3831-4257'),
(670, '200128', 'Isuzu Eastern Cholburi Co.Ltd. (Borwin)', 'บริษัท อีซูซุตะวันออกชลบุรี จำกัด (บ่อวิน)', '002', 'CHONBURI', 'ชลบุรี', 'E', '355 หมู่ 6  ต.บ่อวิน อ.ศรีราชา ชลบุรี 20230', '0-3834-6508-12', 'NULL', '0-3834-6513'),
(671, '200129', 'Isuzu Eastern Motor Works Co.Ltd. (Rayong HQ)', 'บริษัท อีซูซุตะวันออกมอเตอร์เวอร์ค จำกัด (ระยอง)', '002', 'RAYONG', 'ระยอง', 'E', '550 ถนนสุขุมวิท ต.เนินพระ อ.เมือง ระยอง 21000', '0-3880-8228-33', 'NULL', '0-3861-4743'),
(672, '200130', 'Isuzu Eastern Motor Works Co.Ltd. (Klaeng)', 'บริษัท อีซูซุตะวันออกมอเตอร์เวอร์ค จำกัด (แกลง)', '002', 'RAYONG', 'ระยอง', 'E', '206 ถนนบ้านบึง-แกลง ต.ทางเกวียน อ.แกลง ระยอง 21110', '0-3867-2147', 'NULL', '0-3867-7932'),
(673, '200131', 'Isuzu Eastern Motor Works Co.Ltd. (Bang Chang)', 'บริษัท อีซูซุตะวันออกมอเตอร์เวอร์ค จำกัด (บ้านฉาง)', '002', 'RAYONG', 'ระยอง', 'E', '34/9 หมู่ 6 ต.บ้านฉาง อ.บ้านฉาง ระยอง 21130', '0-3860-5404-5', 'NULL', '0-3860-3906'),
(674, '200132', 'Isuzu Eastern Motor Works Co.Ltd. (Phanthong)', 'บริษัท อีซูซุตะวันออกมอเตอร์เวอร์ค จำกัด (พานทอง)', '002', 'CHONBURI', 'ชลบุรี', 'E', '111  ม.2 ต.หนองกะขะ อ.พานทอง  จ.ชลบุรี 20160', '0-3815-4123', 'NULL', '0-3815-4191'),
(675, '200133', 'Isuzu Burapha Co., Ltd. (HQ)', 'บริษัท อีซูซุบูรพา จำกัด (สนง. ใหญ่)', '002', 'PRACHEENBURI', 'ปราจีนบุรี', 'E', '432 หมู่ 17 ถนนสายฉะเชิงเทรา-นครราชสีมา ต.เมืองเก่า อ.กบินทร์บุรี ปราจีนบุรี 25240', '0-3728-1619-20', 'NULL', '0-3728-1688'),
(676, '200134', 'Isuzu Prachinburi Motor Sales Co., Ltd. (Prachinburi HQ)', 'บริษัท อีซูซุปราจีนบุรีมอเตอร์เซลส์ จำกัด (สนง. ใหญ่)', '002', 'PRACHEENBURI', 'ปราจีนบุรี', 'E', '432 ถนนเทศบาลดำริ ต.หน้าเมือง อ.เมือง ปราจีนบุรี 25000', '0-3721-4570-4', 'NULL', '0-3721-4403'),
(677, '200135', 'Isuzu Prachinburi Motor Sales Co., Ltd. (Srimahaphot)', 'บริษัท อีซูซุปราจีนบุรีมอเตอร์เซลส์ จำกัด (ศรีมหาโพธิ์)', '002', 'PRACHEENBURI', 'ปราจีนบุรี', 'E', '212 หมู่4 ต.กรอกสมบูรณ์ อ.ศรีมหาโพธิ ปราจีนบุรี 25140', '0-3757-2477-8', 'NULL', '0-3757-2479'),
(678, '200136', 'Isuzu Lopburi Co., Ltd. (Lopburi HQ)', 'บริษัท อีซูซุลพบุรี จำกัด (ลพบุรี)', '002', 'LOPBURI', 'ลพบุรี', 'W', '91/11 หมู่ 4 ถนนพหลโยธิน ต.เขาสามยอด อ.เมือง ลพบุรี 15000', '0-3642-2141', 'NULL', '0-3662-0219'),
(679, '200137', 'Isuzu Lopburi Co., Ltd. (Lamnarai)', 'บริษัท อีซูซุลพบุรี จำกัด (ลำนารายณ์)', '002', 'LOPBURI', 'ลพบุรี', 'W', '111 /1 หมู่ 2 ต.นิคมลำนารายณ์ อ.ชัยบาดาล จ.ลพบุรี 15130', '0-3663-2245-6', 'NULL', '0-3663-2247'),
(680, '200138', 'Isuzu Sanguanthai Saraburi Co., Ltd. (Saraburi)', 'บริษัท อีซูซุสงวนไทยสระบุรี จำกัด (สระบุรี)', '002', 'SARABURI', 'สระบุรี', 'W', '55 หมู่ 8  ต.ไผ่ต่ำ อ.หนองแค สระบุรี 18140', '0-3632-6333', 'NULL', 'NULL'),
(681, '200139', 'Isuzu Sanguanthai Saraburi Co., Ltd. (Chalermprakiat)', 'บริษัท อีซูซุสงวนไทยสระบุรี จำกัด (เฉลิมพระเกียรติ)', '002', 'SARABURI', 'สระบุรี', 'W', '99 หมู่ 9 ต.ห้วยบง อ.เฉลิมพระเกียรติ สระบุรี 18240', '0-3636-9333', 'NULL', '0-3636-9445'),
(682, '200140', 'Isuzu Sakaew Co., Ltd. (HQ)', 'บริษัท อีซูซุสระแก้ว จำกัด (สนง. ใหญ่)', '002', 'SRAKAEW', 'สระแก้ว', 'E', '511/4 ถนนสุวรรณศร ต.สระแก้ว อ.เมือง จ.สระแก้ว 27000', '0-3724-1639-41', 'NULL', '0-3724-1570'),
(683, '200141', 'Isuzu Sakaew Co., Ltd. (Aranyaprathet)', 'บริษัท อีซูซุสระแก้ว จำกัด (อรัญประเทศ)', '002', 'SRAKAEW', 'สระแก้ว', 'E', '19 หมู่ 7 ถนนธนะวิถี ต.บ้านใหม่หนองไทร อ.อรัญประเทศ จ.สระแก้ว 27120', '0-3722-3468-71', 'NULL', '0-3723-2563');
INSERT INTO `dealer` (`ID`, `dealer_id`, `name_eng`, `name_th`, `maker_id`, `location_en`, `location_th`, `region`, `address`, `primary_phone`, `phone`, `fax`) VALUES
(684, '200142', 'Isuzu Sakaew Co., Ltd. (Wang Nam Yen)', 'บริษัท อีซูซุสระแก้ว จำกัด(วังน้ำเย็น)', '002', 'SRAKAEW', 'สระแก้ว', 'E', '225 หมู่ 10 ต.วังน้ำเย็น อ.วังน้ำเย็น สระแก้ว 27210', '0-3725-2319-20', 'NULL', 'NULL'),
(685, '200143', 'Isuzu Angthong Asia Co., Ltd. (Angthong HQ)', 'บริษัท อีซูซุอ่างทองเอเซีย จำกัด (สนง. ใหญ่)', '002', 'ANGTHONG', 'อ่างทอง', 'W', '45 หมู่ 9 ต.บ้านอิฐ อ.เมือง อ่างทอง 14000', '0-3567-2678', 'NULL', '0-3567-2681'),
(686, '200144', 'Isuzu Trad Sales L.P. (Trad HQ)', 'ห.จ.ก. อีซูซุตราดเซลส์ (ตราด)', '002', 'TRAD', 'ตราด', 'E', '250/1 หมู่ 2 ถนนสุขุมวิท ต.วังกระแจะ อ.เมือง จ.ตราด 23000', '0-3952-2758-9', 'NULL', '0-3952-0673'),
(687, '200145', 'Isuzu Hua Chiang Chan Co., Ltd. (By Pass)', 'บริษัท อีซูซุฮั่วเชียงจั่น จำกัด (บายพาส)', '002', 'CHONBURI', 'ชลบุรี', 'E', '21 หมู่ 11 ถนนบายพาส ต.นาป่า อ.เมือง ชลบุรี 20000', '0-3821-3771-2', 'NULL', 'NULL'),
(688, '200146', 'Hiab Nguan Isuzu sales Co., Ltd. (Udorn HQ)', 'บริษัท เฮียบหงวนอีซูซุเซลส์ จำกัด (สนง. ใหญ่)', '002', 'UDONTHANI', 'อุดรธานี', 'N-E', '444/4 หมู่ 4 ถนนมิตรภาพ ต.บ้านจั่น อ.เมือง อุดรธานี 41000', '0-4221-1888', 'NULL', '0-4221-1555'),
(689, '200147', 'Kow Yoo Hah Muangphol Co., Ltd. (Muangphol HQ)', 'บริษัท โค้วยู่ฮะเมืองพล จำกัด (พล)', '002', 'KHONKAEN', 'ขอนแก่น', 'N-E', '333 ถนนมิตรภาพ ต.เมืองพล อ.พล ขอนแก่น 40120', '0-4341-4005', 'NULL', '0-4341-4663'),
(690, '200148', 'Kow Yoo Hah Motor Co., Ltd. (Khonkaen HQ)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (ขอนแก่น)', '002', 'KHONKAEN', 'ขอนแก่น', 'N-E', '359/2 หมู่ 17 ถนนมิตรภาพ ต.ในเมือง อ.เมือง ขอนแก่น 40000', '0-4322-5700-11', 'NULL', '0-4322-2209'),
(691, '200149', 'Kow Yoo Hah Motor Co., Ltd. (Mahasarakham)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (มหาสารคาม)', '002', 'MAHASARAKAM', 'มหาสารคาม', 'N-E', '204 ถนนผดุงวิถี ต.ตลาด อ.เมือง มหาสารคาม 44000', '0-4371-1322', 'NULL', '0-4372-2411'),
(692, '200150', 'Kow Yoo Hah Motor Co., Ltd. (Roi-Ed)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (ร้อยเอ็ด)', '002', 'ROIET', 'ร้อยเอ็ด', 'N-E', '266 หมู่ 16 บ้านโนนเมือง ต.เหนือเมือง อ.เมือง ร้อยเอ็ด 45000', '0-4351-4033', 'NULL', '0-4351-2618'),
(693, '200151', 'Kow Yoo Hah Motor Co., Ltd. (Loei)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (เลย)', '002', 'LOEY', 'เลย', 'N-E', '82/4 ถนนมลิวรรณ ต.กุดป่อง อ.เมือง เลย 42000', '0-4283-3391-6', 'NULL', '0-4283-3759'),
(694, '200152', 'Kow Yoo Hah Motor Co., Ltd. (Banpai)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (บ้านไผ่)', '002', 'KHONKAEN', 'ขอนแก่น', 'N-E', '23 หมู่ 22 ถนนมิตรภาพ ต.บ้านไผ่ อ.บ้านไผ่ ขอนแก่น 40110', '0-4327-3401-3', 'NULL', '0-4327-3400'),
(695, '200153', 'Kow Yoo Hah Motor Co., Ltd. (Kranuan)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (กระนวน)', '002', 'KHONKAEN', 'ขอนแก่น', 'N-E', '499 หมู่ 1 ต.หนองโน อ.กระนวน จ.ขอนแก่น 40170', '0-4392-3111-3', 'NULL', '0-4392-3111-3'),
(696, '200154', 'Kow Yoo Hah Motor Co., Ltd. (P''Phisai)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (พยัคภูมิพิสัย)', '002', 'MAHASARAKAM', 'มหาสารคาม', 'N-E', '159 หมู่ 1 ต.ลานสะแก อ.พยัคฆภูมิพิสัย มหาสารคาม 44110', '0-4379-1361-3', 'NULL', '0-4379-1116'),
(697, '200155', 'Kow Yoo Hah Motor Co., Ltd. (Nong Rua)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (หนองเรือ)', '002', 'KHONKAEN', 'ขอนแก่น', 'N-E', '403 หมู่ 13 ต.หนองเรือ อ.หนองเรือ ขอนแก่น 40210', '0-4329-4997-9', 'NULL', '0-4329-4997'),
(698, '200156', 'Kow Yoo Hah Motor Co., Ltd. (W''Saphung)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (วังสะพุง)', '002', 'LOEY', 'เลย', 'N-E', '222 หมู่ 4 ถนนมะลิวัลย์ ต.ศรีสงคราม อ. วังสะพุง เลย 42130', '0-4284-1841-4', 'NULL', '0-4284-1843'),
(699, '200157', 'Kow Yoo Hah Motor Co., Ltd. (Phonthong)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (โพนทอง)', '002', 'ROIET', 'ร้อยเอ็ด', 'N-E', '22 หมู่ 12 ต.สระนกแก้ว อ.โพนทอง ร้อยเอ็ด 45110', '0-4357-1453-4', 'NULL', '0-4357-1015'),
(700, '200158', 'Kow Yoo Hah Motor Co., Ltd. (Kosumpisai)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (โกสุมพิสัย)', '002', 'MAHASARAKAM', 'มหาสารคาม', 'N-E', '291 หมู่ 10 ต.หัวขวาง อ.โกสุมพิสัย มหาสารคาม 44140', '0-4376-2022', 'NULL', '0-4376-2050'),
(701, '200159', 'Kow Yoo Hah Motor Co., Ltd. (Suvarnbhumi)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (สุวรรณภูมิ)', '002', 'ROIET', 'ร้อยเอ็ด', 'N-E', '532 หมู่ 5 ต.สระคู อ.สุวรรณภูมิ ร้อยเอ็ด 45130', '0-4358-0774-5', 'NULL', '0-4358-0277'),
(702, '200160', 'Kow Yoo Hah Motor Co., Ltd. (Chiangyurn)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (เชียงยืน)', '002', 'MAHASARAKAM', 'มหาสารคาม', 'N-E', '682 หมู่ 5  ต.เชียงยืน อ.เชียงยืน มหาสารคาม 44160', '0-4378-1913', 'NULL', '0-4378-1988'),
(703, '200161', 'Kow Yoo Hah Motor Co., Ltd. (Nampong)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (น้ำพอง)', '002', 'KHONKAEN', 'ขอนแก่น', 'N-E', '164 หมู่ 5 ถนนมิตรภาพ ต.น้ำพอง อ.น้ำพอง ขอนแก่น 40310', '0-4344-1020', 'NULL', '0-4344-1852'),
(704, '200162', 'Kow Yoo Hah Motor Co., Ltd. (Khonkaen U.)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (มหาวิทยาลัยขอนแก่น)', '002', 'KHONKAEN', 'ขอนแก่น', 'N-E', '3/21 หมู่ที่ 14 ถนนมิตรภาพ ต.ในเมือง อ.เมือง ขอนแก่น 40000', '0-4324-5857-8', 'NULL', '0-4324-3700'),
(705, '200163', 'Kow Yoo Hah Motor Co., Ltd. (Srijan)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (ศรีจันทร์)', '002', 'KHONKAEN', 'ขอนแก่น', 'N-E', '175/10 หมู่ที่ 6 ถนนศรีจันทร์ ต.ในเมือง อ.เมือง ขอนแก่น 40000', '0-4327-1333', 'NULL', '0-4322-6974'),
(706, '200164', 'Kow Yoo Hah Motor Co., Ltd. (Dansai)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (ด่านซ้าย)', '002', 'LOEY', 'เลย', 'N-E', ' 341/11 ม.3 ถ.ด่านซ้ายโคกงาม  ต.ด่านซ้าย  อ.ด่านซ้าย จ.เลย 42120', '0-4289-2001-3', 'NULL', '0-42 89-2004'),
(707, '200165', 'Kow Yoo Hah Motor Co., Ltd. (Selaphum)', 'บริษัท โค้วยู่ฮะมอเตอร์ จำกัด (เสลภูมิ)', '002', 'ROIET', 'ร้อยเอ็ด', 'N-E', '217 หมู่ 6 ต.กลาง  อ.เสลภูมิ ร้อยเอ็ด  45120', '0-4355-0556-7', 'NULL', '0-4355-0558'),
(708, '200166', 'Cheewin Isuzu Co., Ltd. (Chumpae)', 'บริษัท ชีวินอีซูซุ จำกัด (ชุมแพ)', '002', 'KHONKAEN', 'ขอนแก่น', 'N-E', '333 หมู่ 10 ต.ไชยสอ อ.ชุมแพ ขอนแก่น 40130', '0-4331-2955', 'NULL', '0-4331-1095'),
(709, '200167', 'Tang Park Korat Co., Ltd. (Nakornrajsrima HQ)', 'บริษัท ตังปักโคราช จำกัด (สนง. ใหญ่)', '002', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', '695/2 ถนนมิตรภาพ อ.เมือง นครราชสีมา 30000', '0-4423-0881-4', 'NULL', '0-4426-1806'),
(710, '200168', 'Tang Park Korat Co., Ltd. (Chaiyaphum)', 'บริษัท ตังปักโคราช จำกัด (ชัยภูมิ)', '002', 'CHAIYAPOOM', 'ชัยภูมิ', 'N-E', '318 หมู่ 1 ถนนชัยภูมิ-สีคิ้ว ต.บุ่งคล้า อ.เมือง จ.ชัยภูมิ 36000', '0-4483-6881-4', 'NULL', '0-4482-1489'),
(711, '200169', 'Tang Park Korat Co., Ltd. (Chock Chai)', 'บริษัท ตังปักโคราช จำกัด (โชคชัย)', '002', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', '8 หมู่ 13 ถนนโชคชัย-ปักธงชัย ต.โชคชัย อ.โชคชัย นครราชสีมา 30190', '0-4449-1881-4', 'NULL', '0-4449-1885'),
(712, '200170', 'Tang Park Korat Co., Ltd. (Si Khiu)', 'บริษัท ตังปักโคราช จำกัด (สีคิ้ว)', '002', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', '181 หมู่ 6 ถนนมิตรภาพ ต.ลาดบัวขาว อ.สีคิ้ว นครราชสีมา 30340', '0-4498-4581-4', 'NULL', '0-4498-4585'),
(713, '200171', 'Tang Park Korat Co., Ltd. (Dankuntod)', 'บริษัท ตังปักโคราช จำกัด (ด่านขุนทด)', '002', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', '388 หมู่ 4 ต.ด่านขุนทด อ.ด่านขุนทด จ.นครราชสีมา 30210', '0-4400-9881-4', 'NULL', '0-4400-9885'),
(714, '200172', 'Isuzu Tang Park Service Co., Ltd. (Warin Chamrap)', 'บริษัท อีซูซุตังปักบริการ จำกัด (วารินชำราบ)', '002', 'UBONRATCHATHANI', 'อุบลราชธานี', 'N-E', '189 หมู่ 2 ถนนเลี่ยงเมือง ต.แสนสุข อ.วารินชำราบ อุบลราชธานี 34190', '0-4532-3226-8', 'NULL', '0-4532-3230'),
(715, '200173', 'Isuzu Tang Park Service Co., Ltd. (Dejudom)', 'บริษัท อีซูซุตังปักบริการ จำกัด (เดชอุดม)', '002', 'UBONRATCHATHANI', 'อุบลราชธานี', 'N-E', '179 หมู่ 11 ถนนเดชอุดม-นาห่อม ต.เมืองเดช อ.เดชอุดม อุบลราชธานี 34160', '0-4536-2501-4', 'NULL', '0-4536-2050'),
(716, '200174', 'Isuzu Tang Park Service Co., Ltd. (Nam-Yeun)', 'บริษัท อีซูซุตังปักบริการ จำกัด (น้ำยืน)', '002', 'UBONRATCHATHANI', 'อุบลราชธานี', 'N-E', '108 หมู่ 15  บ้านโนนเจริญศึกษา ต.ศรีวิชัย  อ.น้ำยืน  จ.อุบลราชธานี  34260', '0-4537-1474', 'NULL', '0-4531-3370'),
(717, '200175', 'Tang Park L.P. (Phibun Mungsahan)', 'บริษัท อีซูซุตังปักบริการ จำกัด (พิบูลมังสาหาร)', '002', 'UBONRATCHATHANI', 'อุบลราชธานี', 'N-E', '181 หมู่ 16 ต.โพธิ์ไทร อ.พิบูลมังสาหาร อุบลราชธานี 34110', '0-4544-1567', 'NULL', '0-4544-1568'),
(718, '200176', 'Isuzu Tang Park Srisaket Co., Ltd. (Srisaket)', 'บริษัท อีซูซุตังปักศรีสะเกษ จำกัด (สนง. ใหญ่)', '002', 'SISAKET', 'ศรีสะเกษ', 'N-E', '2/15 หมู่ 6 ถนนศรีสะเกษ-กันทรลักษ์ ต.หนองครก อ.เมือง ศรีสะเกษ 33000', '0-4561-1501', 'NULL', '0-4561-2046'),
(719, '200177', 'Isuzu Tang Park Srisaket Co., Ltd. (Kantharalak)', 'บริษัท อีซูซุตังปักศรีสะเกษ จำกัด (กันทรลักษ์)', '002', 'SISAKET', 'ศรีสะเกษ', 'N-E', '9 หมู่ 4 ถนนศรีษะเกษ-กันทรลักษ์ ต.หนองหญ้าลาด อ.กันทรลักษ์ ศรีสะเกษ 33110', '0-4566-3315', 'NULL', '0-4566-3319'),
(720, '200178', 'Isuzu Nakornpanom Co., Ltd. (Nakornpanom)', 'บริษัท อีซูซุนครพนม จำกัด (นครพนม)', '002', 'NAKORNPANOM', 'นครพนม', 'N-E', '383 ถนนนิตโย ต.หนองญาติ อ.เมือง นครพนม 48000', '0-4251-3834', 'NULL', '0-4251-3835'),
(721, '200179', 'Isuzu Nakornpanom Co., Ltd. (Thatpanom)', 'บริษัท อีซูซุนครพนม จำกัด (ธาตุพนม)', '002', 'NAKORNPANOM', 'นครพนม', 'N-E', '336 หมู่ 13  ต.ธาตุพนม อ.ธาตุพนม นครพนม 48000', '0-4254-0823', 'NULL', '0-4254-0685'),
(722, '200180', 'Isuzu Nongbualamphu Co., Ltd. (HQ)', 'บริษัท อีซูซุหนองบัวลำภู จำกัด (สนง. ใหญ่)', '002', 'NHONGBUALHAMPHU', 'หนองบัวลำภู', 'N-E', '338 หมู่ 10 ถนนอุดร-เลย ต.ลำภู อ.เมือง หนองบัวลำภู 39000', '0-4231-1113', 'NULL', '0-4231-2500'),
(723, '200181', 'Isuzu Nongbualamphu Co., Ltd. (Sri Boonrueng)', 'บริษัท อีซูซุหนองบัวลำภู จำกัด (ศรีบุญเรือง)', '002', 'NHONGBUALHAMPHU', 'หนองบัวลำภู', 'N-E', '149 หมู่ 1  ต.ศรีบุญเรือง อ.ศรีบุญเรือง หนองบัวลำภู 39180 ', '0-4235-3637', 'NULL', '0-4235-3637'),
(724, '200182', 'Hiab Nguan Miller L.P. (Sakolnakorn)', 'ห.จ.ก. เฮียบหงวนมิลเลอร์ (สกลนคร)', '002', 'SAKHONNAKHON', 'สกลนคร', 'N-E', '222 ถนนรัฐพัฒนา ต.ธาตุเชิงชุม อ.เมือง สกลนคร 47000', '0-4271-1702', 'NULL', '0-4271-3073'),
(725, '200183', 'Hiab Nguan Miller L.P. (Karasin)', 'ห.จ.ก. เฮียบหงวนมิลเลอร์ (กาฬสินธุ์)', '002', 'KALASIN', 'กาฬสินธุ์', 'N-E', '99  ถนนบายพาสสงเปลือย ต.กาฬสินธุ์ อ.เมือง กาฬสินธ์ุ 46000', '0-4381-2777', 'NULL', '0-4381-2999'),
(726, '200184', 'Hiab Nguan Miller L.P. (Nongkai)', 'ห.จ.ก. เฮียบหงวนมิลเลอร์ (หนองคาย)', '002', 'NONGKHAI', 'หนองคาย', 'N-E', '111-111/1 ถนนมิตรภาพ ต.โพธิ์ชัย อ.เมือง หนองคาย 43000', '0-4242-3535', 'NULL', '0-4246-4997'),
(727, '200185', 'Hiab Nguan Miller L.P. (Sawangdandin)', 'ห.จ.ก. เฮียบหงวนมิลเลอร์ (สว่างแดนดิน)', '002', 'SAKHONNAKHON', 'สกลนคร', 'N-E', '269 หมู่ 13 บ้านดงสวรรค์ ต.สว่างแดนดิน อ.สว่างแดนดิน สกลนคร 47110', '0-4272-2555', 'NULL', '0-4272-2577'),
(728, '200186', 'Hiab Nguan Miller L.P.(Kumpawapee)', 'ห.จ.ก. เฮียบหงวนมิลเลอร์ (กุมภวาปี)', '002', 'UDONTHANI', 'อุดรธานี', 'N-E', '11 หมู่ 4 ถนนมิตรภาพ ต.ฟันดอน  อ.กุมภวาปี จ.อุดรธานี 41370', '0-4233-1999', 'NULL', '0-4233-1212'),
(729, '200187', 'Hiab Nguan Miller L.P. (Kuchinarai)', 'ห.จ.ก. เฮียบหงวนมิลเลอร์ (กุฉินารายณ์)', '002', 'KALASIN', 'กาฬสินธุ์', 'N-E', '345 หมู่ 1 ต.บัวขาว อ.กุฉินารายณ์ จ.กาฬสินธุ์ 46110', '0-4385-1886', 'NULL', '0-4385-1889'),
(730, '200188', 'King''s Yont L.P. (Nakornrajsrima HQ)', 'ห.จ.ก. คิงส์ยนต์ (สนง. ใหญ่)', '002', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', '976 ถนนมิตรภาพ ต.ในเมือง อ.เมือง นครราชสีมา 30000', '0-4423-0527', 'NULL', '0-4425-2583'),
(731, '200189', 'King''s Yont L.P. (Burirum)', 'ห.จ.ก. คิงส์ยนต์ (บุรีรีมย์)', '002', 'BURIRUM', 'บุรีรัมย์', 'N-E', '35/13-14 ถนนธานี ต.ในเมือง อ.เมือง บุรีรัมย์ 31000', '0-4461-1239', 'NULL', '0-4461-2777'),
(732, '200190', 'King''s Yont L.P. (Park Chong)', 'ห.จ.ก. คิงส์ยนต์ (ปากช่อง)', '002', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', '99/9 ถนนมิตรภาพ ต.ปากช่อง อ.ปากช่อง นครราชสีมา 30130', '0-4431-5112-3', 'NULL', '0-4431-3278'),
(733, '200191', 'King''s Yont L.P. (Nang Rong)', 'ห.จ.ก. คิงส์ยนต์ (นางรอง)', '002', 'BURIRUM', 'บุรีรีมย์', 'N-E', '837/1,2 ถนนโชคชัย-เดชอุดม ต.นางรอง อ.นางรอง บุรีรัมย์ 31110', '0-4462-4306-8', 'NULL', '0-4462-4309'),
(734, '200192', 'King''s Yont L.P. (Sida)', 'ห.จ.ก. คิงส์ยนต์ (สีดา)', '002', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', '239 หมู่ 1 ต.โพนทอง กิ่งอำเภอสีดา จ.นครราชสีมา 30430', '0-4432-9395-7', 'NULL', '0-4430-3222'),
(735, '200193', 'King''s Yont L.P. (Phimai)', 'ห.จ.ก. คิงส์ยนต์ (พิมาย)', '002', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', '105 หมู่ 4 ต.ในเมือง อ.พิมาย นครราชสีมา 30110', '0-4447-1471', 'NULL', '0-4492-8116'),
(736, '200194', 'King''s Yont L.P. (Sam Yak Pak)', 'ห.จ.ก. คิงส์ยนต์(สามแยกปักธงชัย)', '002', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'N-E', '2842/12 ถ.มิตรภาพ  ต.ในเมือง อ.เมือง จ.นครราชสีมา 30000', '0-44 35-1951', 'NULL', '0-4435-1934'),
(737, '200195', 'Bamroong Yont L.P. (Surin HQ)', 'ห.จ.ก. บำรุงยนต์ (สุรินทร์)', '002', 'SURIN', 'สุรินทร์', 'N-E', '262 หมู่ที่ 1 ถนนปัทมานนท์ ต.แกใหญ่ อ.เมือง จ. สุรินทร์ 32000', '0-4471-3883-7', 'NULL', '0-4471-3889'),
(738, '200196', 'Bamroong Yont L.P. (Prasart)', 'ห.จ.ก. บำรุงยนต์ (ปราสาท)', '002', 'SURIN', 'สุรินทร์', 'N-E', '181 หมู่ 2 ถนนโชคชัย-เดชอุดม ต.กังแอน อ.ปราสาท จ.สุรินทร์ 32140', '0-4455-1700-3', 'NULL', '0-4455-1319'),
(739, '200197', 'Tang Park L.P. (Ubon HQ)', 'ห.จ.ก. ภาคอิสาณอุบล (ตังปัก) (สนง. ใหญ่)', '002', 'UBONRATCHATHANI', 'อุบลราชธานี', 'N-E', '464 ถนนชยางกูร อ.เมือง อุบลราชธานี 34000', '0-4531-3377-9', 'NULL', '0-4531-3380'),
(740, '200198', 'Tang Park L.P. (Yasothorn)', 'ห.จ.ก. ภาคอิสาณอุบล (ตังปัก) (ยโสธร)', '002', 'YASOTHON', 'ยโสธร', 'N-E', '241-242 หมู่ 7 ถนนแจ้งสนิท ต.ตาดทอง อ.เมือง ยโสธร 35000', '0-4571-2088', 'NULL', '0-4572-2044'),
(741, '200199', 'Tang Park L.P. (Mukdahan)', 'ห.จ.ก. ภาคอิสาณอุบล (ตังปัก) (มุกดาหาร)', '002', 'MUKDAHAN', 'มุกดาหาร', 'N-E', '66/1 ถนนชยางกูร อ.เมือง มุกดาหาร 49000', '0-4261-2678', 'NULL', '0-4263-1606'),
(742, '200200', 'Tang Park L.P. (Amnatcharoen)', 'ห.จ.ก. ภาคอิสาณอุบล (ตังปัก) (อำนาจเจริญ)', '002', 'AMNATCHAROEN', 'อำนาจเจริญ', 'N-E', '728 หมู่ 8 ถนนชยางกูร ต.บุ่ง อ.เมือง อำนาจเจริญ 37000', '0-4551-1134', 'NULL', '0-4551-1134'),
(743, '200201', 'Tang Park L.P. (Trakarnpudpol)', 'ห.จ.ก. ภาคอิสาณอุบล (ตังปัก) (ตระการพืชผล)', '002', 'UBONRATCHATHANI', 'อุบลราชธานี', 'N-E', '388 หมู่ 4  ต.ขุหลุ อ.ตระการพืชผล อุบลราชธานี 34130', '0-4548-1822-4', 'NULL', '0-4548-1825'),
(744, '200202', 'Isuzu Sieng Phai San Co., Ltd. (Nakornsawan HQ)', 'บริษัท เสียงไพศาล จำกัด (สนง. ใหญ่)', '002', 'NAKHONSAWAN', 'นครสวรรค์', 'N', '310/1 ถนนสวรรค์วิถี ตลาดปากน้ำโพ อ.เมือง นครสวรรค์ 60000', '0-5622-1326', 'NULL', '0-5622-4838'),
(745, '200203', 'Kow Yoo Hah Lampang Co., Ltd. (Thern)', 'บริษัท โค้วยู่ฮะลำปาง จำกัด (เถิน)', '002', 'LAMPANG', 'ลำปาง', 'N', '154 หมู่ 7 ต.ล้อมแรด อ.เถิน จ.ลำปาง 52160', '0-5429-1681-2', 'NULL', '0-5429-1680'),
(746, '200204', 'Kow Yoo Hah Lampang Co., Ltd. (Lampang HQ)', 'บริษัท โค้วยู่ฮะลำปาง จำกัด (ลำปาง)', '002', 'LAMPANG', 'ลำปาง', 'N', '65/1 ถนนไฮเวย์ลำปาง-งาว ต.สบตุ๋ย อ.เมือง ลำปาง 52000', '0-5423-1600', 'NULL', '0-54227680'),
(747, '200205', 'Tara & Co., Ltd. (Charoenmuang)', 'บริษัท ธารา จำกัด (ศูนย์บริการอีซูซุ)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '464/1 ถนนเจริญเมือง ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000', '0-5324-2995', 'NULL', '0-5324-2611'),
(748, '200206', 'Tara & Co., Ltd. (Fang)', 'บริษัท ธารา จำกัด (ฝาง)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '313 หมู่ 9 ต.เวียง อ.ฝาง เชียงใหม่ 50110', '0-5345-3223', 'NULL', '0-5338-2693'),
(749, '200207', 'Tara & Co., Ltd. (Maehongsorn)', 'บริษัท ธารา จำกัด (แม่ฮองสอน)', '002', 'MAEHONGSORN', 'แม่ฮ่องสอน', 'N', '133/1 ถนนขุนลุมประพาส ต.จองคำ อ.เมือง แม่ฮ่องสอน  50800', '0-5362-0173-6', 'NULL', '0-5362-0174'),
(750, '200208', 'Tara & Co., Ltd. (Airport)', 'บริษัท ธารา จำกัด (สนามบิน)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '126 หมู่ 7 ถนนเชียงใหม่-หางดง ต.สุเทพ อ.เมือง จ.เชียงใหม่ 50200', '0-5320-3623-7', 'NULL', '0-5328-5318'),
(751, '200209', 'Tara & Co., Ltd. (Mae-Tang)', 'บริษัท ธารา จำกัด (แม่แตง)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '241 หมู่ที่ 3 ถนนเชียงใหม่-ฝาง ต.ขี้เหล็ก อ.แม่แตง เชียงใหม่ 50150', '0-5347-0717', 'NULL', '0-5347-0718'),
(752, '200210', 'Tara & Co., Ltd. (Chiangdao)', 'บริษัท ธารา จำกัด (เชียงดาว)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '454 หมู่ที่ 8 ต.เชียงดาว อ.เชียงดาว เชียงใหม่ 50170', '0-5345-5209', 'NULL', '0-5345-5208'),
(753, '200211', 'Tara & Co., Ltd. (Doi Sakat HQ)', 'บริษัท ธารา จำกัด (ดอยสะเก็ด)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '99/10 หมู่ 5 ถนนเชียงใหม่-ดอยสะเก็ต ต.หนองป่าครั่ง อ.เมือง เชียงใหม่ 50000', '0-5324-4671-7', 'NULL', '0-5324-4564'),
(754, '200212', 'Tara Lampoon Isuzu Sales Co., Ltd. (Lampoon HQ)', 'บริษัท ธาราลำพูนอีซูซุเซลส์ จำกัด (ลำพูน)', '002', 'LAMPOON', 'ลำพูน', 'N', '118 หมู่ 13 ถนนเชียงใหม่-ลำปาง ต.มะเขือแจ้ อ.เมือง จ.ลำพูน 51000', '0-5355-2436-8', 'NULL', '0-5355-2434'),
(755, '200213', 'Isuzu Santi Petchchabun Co., Ltd. (Petchchabun HQ)', 'บริษัท สันติอีซูซุเพชรบูรณ์ จำกัด (สนง. ใหญ่)', '002', 'PETCHBOON', 'เพชรบูรณ์', 'N', '102 ถนนนิกรบำรุง ต.ในเมือง อ.เมือง เพชรบูรณ์', '0-5671-1281', 'NULL', '0-5674-8072'),
(756, '200214', 'Isuzu Santi Petchchabun Co., Ltd. (Lom Sak)', 'บริษัท สันติอีซูซุเพชรบูรณ์ จำกัด (หล่มสัก)', '002', 'PETCHBOON', 'เพชรบูรณ์', 'N', '71/1 หมู่ที่ 2 ต.หนองไขว่ อ.หล่มสัก เพชรบูรณ์ 67110', '0-5670-4891', 'NULL', '0-5670-4894'),
(757, '200215', 'Isuzu Santi Petchchabun Co., Ltd. (Bueng Sam phun)', 'บริษัท สันติอีซูซุเพชรบูรณ์ จำกัด (บึงสามพัน)', '002', 'PETCHBOON', 'เพชรบูรณ์', 'N', '9 หมู่ที่ 3 ต.บึงสามพัน อ.บึงสามพัน เพชรบูรณ์ 67160', '0-5673-1551', 'NULL', '0-5673-1787'),
(758, '200216', 'Sukhothai Hock An Tueng (1978) Co., Ltd. (Sukhothai HQ)', 'บริษัท สุโขทัยฮกอันตึ๊งอะไหล่ และบริการ จำกัด (สุโขทัย)', '002', 'SUKHOTHAI', 'สุโขทัย', 'N', '206/4-8 ถนนจรดวิถีถ่อง อ.เมือง สุโขทัย 64000', '0-5561-1130', 'NULL', '0-5561-1071'),
(759, '200217', 'Sukhothai Hock An Tueng (1978) Co., Ltd. (Sawankalok)', 'บริษัท สุโขทัยฮกอันตึ๊งอะไหล่ และบริการ จำกัด (สวรรคโลก)', '002', 'SUKHOTHAI', 'สุโขทัย', 'N', '79/15 หมู่ที่ 1 ต.ในเมือง อ.สวรรคโลก สุโขทัย 64110', '0-5562-3499', 'NULL', 'NULL'),
(760, '200218', 'Isuzu Chiangmai Sales Co., Ltd. (Chiangmai HQ)', 'บริษัท อีซูซุเชียงใหม่เซลส์ จำกัด (ดอนจั่น)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '302 หมู่ 2 ต.หนองผึ้ง อ.สารภี เชียงใหม่ 50140', '0-5324-9710-2', 'NULL', '0-5385-1001'),
(761, '200219', 'Isuzu Chiangkhong Service Co.,Ltd (Chaingkhong)', 'บริษัท อีซูซุเชียงของบริการ จำกัด (เชียงของ)', '002', 'CHIANGRAI', 'เชียงราย', 'N', '123 หมู่ 7 ต.สถาน อ.เชียงของ เชียงราย 57140', '0-5371-9599', 'NULL', '0-5371-9770'),
(762, '200220', 'Isuzu Chiangrai Service (2002) Co., Ltd. (Chiangrai HQ)', 'บริษัท อีซูซุเชียงรายบริการ (2002) จำกัด (เชียงราย)', '002', 'CHIANGRAI', 'เชียงราย', 'N', '145/1 หมู่ที่ 11 ถนนซุปเปอร์ไฮเวย์ ต.รอบเวียง อ.เมือง เชียงราย 57000', '0-5371-1605', 'NULL', '0-5371-3765'),
(763, '200221', 'Isz. Wiangpapao Service Co.,Ltd (Wiangpapao)', 'บริษัท อีซูซุเวียงป่าเป้าบริการ  จำกัด (เวียงป่าเป้า)', '002', 'CHIANGRAI', 'เชียงราย', 'N', '214 หมู่ 1 ต.แม่เจดีย์ อ.เวียงป่าเป้า เชียงราย ', '0-5378-9007', 'NULL', '0-5378-9006'),
(764, '200222', 'Isuzu Thoeng Service Co.,Ltd (Thoeng)', 'บริษัท อีซูซุเทิงบริการ จำกัด (เทิง)', '002', 'CHIANGRAI', 'เชียงราย', 'N', '232 หมู่ที่ 2 ต.เวียง อ.เทิง เชียงราย 57160', '0-5366-9911', 'NULL', '0-5379-5230'),
(765, '200223', 'Isuzu Seniyont Nakornsawan Co., Ltd. (Intown)', 'บริษัท อีซูซุเสนียนต์นครสวรรค์ จำกัด (สะพานเดชา)', '002', 'NAKHONSAWAN', 'นครสวรรค์', 'N', '318/14 ถนนสวรรค์วิถี ต.ปากน้ำโพ อ.เมือง นครสวรรค์ 60000', '0-5622-1163', 'NULL', '0-5622-4208'),
(766, '200224', 'Isuzu Seniyont Nakornsawan Co., Ltd. (Pichit)', 'บริษัท อีซูซุเสนียนต์นครสวรรค์ จำกัด (พิจิตร)', '002', 'PIJIT', 'พิจิตร', 'N', '22/36 ถนนคลองคะเชนทร์ ต.ในเมือง อ.เมือง พิจิตร 66000', '0-5661-2466-7', 'NULL', '0-5661-2677'),
(767, '200225', 'Isuzu Seniyont Nakornsawan Co., Ltd. (Nakornsawan HQ)', 'บริษัท อีซูซุเสนียนต์นครสวรรค์ จำกัด (สนง. ใหญ่)', '002', 'NAKHONSAWAN', 'นครสวรรค์', 'N', '1/9 หมู่ 9 ถนนนครสวรรค์-พิษณุโลก ต.บางม่วง อ.เมือง นครสวรรค์ 60000', '0-5622-8522-5', 'NULL', '0-5622-8526'),
(768, '200226', 'Isuzu Seniyont Nakornsawan Co., Ltd. (Kampaengpetch)', 'บริษัท อีซูซุเสนียนต์นครสวรรค์ จำกัด (กำแพงเพชร)', '002', 'KAMPHAENGPHET', 'กำแพงเพชร', 'N', '129/9 หมู่ 9 ต.นครชุม อ.เมือง กำแพงเพชร 62000', '0-5573-8571-3', 'NULL', '0-5573-8574'),
(769, '200227', 'Isuzu Seniyont Nakornsawan Co., Ltd. (Takee)', 'บริษัท อีซูซุเสนียนต์นครสวรรค์ จำกัด (ตาคลี)', '002', 'NAKHONSAWAN', 'นครสวรรค์', 'N', '55/5 หมู่ 4 ต.ตาคลี อ.ตาคลี นครสวรรค์ 60140', '0-5689-3301-3', 'NULL', 'NULL'),
(770, '200228', 'Isuzu Sieng Phai San Kampaengpetch Co., Ltd.  (Kampaengpetch)', 'บริษัท อีซูซุเสียงไพศาลกำแพงเพชร จำกัด (กำแพงเพชร)', '002', 'KAMPHAENGPHET', 'กำแพงเพชร', 'N', '613 ถนนเจริญสุข ต.ในเมือง อ.เมือง กำแพงเพชร 62000', '0-5571-1637', 'NULL', '0-5571-1046'),
(771, '200229', 'Isuzu Sieng Phai San Kampaengpetch Co., Ltd.  (Salokbat)', 'บริษัท อีซูซุเสียงไพศาลกำแพงเพชร จำกัด (สลกบาตร)', '002', 'KAMPHAENGPHET', 'กำแพงเพชร', 'N', '342 หมู่ 5  ต.สลกบาตร อ.ขาณุวรลักษบุรี กำแพงเพชร 62140', '0-5577-2239-42', 'NULL', 'NULL'),
(772, '200230', 'Isuzu Phrae Co., Ltd. (Phrae)', 'บริษัท อีซูซุแพร่ จำกัด (แพร่)', '002', 'PHRAE', 'แพร่', 'N', '158 หมู่ 7 ถนนยันตรกิจโกศล ต.ป่าแมต อ.เมือง แพร่ 54000', '0-5462-8035-6', 'NULL', '0-5453-4359'),
(773, '200231', 'Isuzu Chainat Co., Ltd. (Chainat HQ)', 'บริษัท อีซูซุชัยนาท จำกัด (ชัยนาท)', '002', 'CHAINAT', 'ชัยนาท', 'N', '358 หมู่ 5 ถนนทางหลวง 340 ต.บ้านกล้วย อ.เมือง ชัยนาท 17000', '0-5641-2174-5', 'NULL', '0-5641-2900'),
(774, '200232', 'Isuzu Chainat Co., Ltd. (Hanka)', 'บริษัท อีซูซุชัยนาท จำกัด (หันคา)', '002', 'CHAINAT', 'ชัยนาท', 'N', '224 หมู่ที่ 5  ต.วังไก่เถือน อ.หันคา ชัยนาท 17130', '0-5643-7231-3', 'NULL', '0-5643-7234'),
(775, '200233', 'Isuzu Tak Hock An Tueng Co., Ltd. (Tak HQ)', 'บริษัท อีซูซุตากฮกอันตึ๊ง จำกัด (ตาก)', '002', 'TAK', 'ตาก', 'N', '127 หมู่ 1 ถนนพหลโยธิน ต.แม่ท้อ อ.เมืองตาก ตาก 63000', '0-5555-8497-5', 'NULL', '0-5555-8292'),
(776, '200234', 'Isuzu Tak Hock An Tueng Co., Ltd. (Mae Sod)', 'บริษัท อีซูซุตากฮกอันตึ๊ง จำกัด (แม่สอด)', '002', 'TAK', 'ตาก', 'N', '16/12 ถนนสายเอเซีย ต.แม่สอด อ.แม่สอด ตาก 63110', '0-5554-6828-9', 'NULL', 'NULL'),
(777, '200235', 'Isuzu Pitsanulok Service Co., Ltd. (Pitsanulok HQ)', 'บริษัท อีซูซุพิษณุโลกเซอร์วิส จำกัด (พิษณุโลก)', '002', 'PITSANULOKE', 'พิษณุโลก', 'N', '19/1 หมู่ 4 ถนนสิงหวัฒน์ ต.บ้านคลอง อ.เมือง พิษณุโลก 65000', '0-5524-4671-2', 'NULL', '0-5524-4673'),
(778, '200236', 'Isuzu Pitsanulok Service Co., Ltd. (Indochina Junction)', 'บริษัท อีซูซุพิษณุโลกเซอร์วิส จำกัด (สี่แยกอินโดจีน)', '002', 'PITSANULOKE', 'พิษณุโลก', 'N', '168 หมู่ 1 ถนนพิษณุโลกขหล่มสัก ต.สมอแข อ.เมือง จ.พิษณุโลก', '0-5500-0698-9', 'NULL', 'NULL'),
(779, '200237', 'Isuzu Sanguanthai Chiangrai Co., Ltd. (Chiangrai HQ)', 'บริษัท อีซูซุสงวนไทยเชียงราย จำกัด (เชียงราย)', '002', 'CHIANGRAI', 'เชียงราย', 'N', '222 หมู่ 2 ถนนพหลโยธิน ต.บ้านดู่ อ.เมือง จ.เชียงราย 57100', '0-5370-2665-9', 'NULL', '0-5370-2670'),
(780, '200238', 'Isuzu Sanguanthai Chiangrai Co., Ltd. (Phan)', 'บริษัท อีซูซุสงวนไทยเชียงราย จำกัด (พาน)', '002', 'CHIANGRAI', 'เชียงราย', 'N', '227 หมู่ที่ 17  ถนนพหลโยธิน ต.สันกลาง อ.พาน เชียงราย 57120', '0-5372-2999', 'NULL', '0-5372-1600'),
(781, '200239', 'Isuzu Sanguanthai Chiangrai Co., Ltd. (Maesai)', 'บริษัท อีซูซุสงวนไทยเชียงราย จำกัด (แม่สาย)', '002', 'CHIANGRAI', 'เชียงราย', 'N', '419 หมู่ 11 ต.ห้วยไคร้ อ.แม่สาย จ.เชียงราย 57220', '08-8290-9155', 'NULL', 'NULL'),
(782, '200240', 'Isuzu Uttradit Hock An Tueng Co., Ltd. (Uttradit HQ)', 'บริษัท อีซูซุอุตรดิตถ์ฮกอันตึ๊ง จำกัด (อุตรดิตถ์)', '002', 'UTTARADIT', 'อุตรดิตถ์', 'N', '180 หมู่ 5 ถนนพิษณุโลก-เด่นชัย ต.ป่าเซ่า อ.เมือง อุตรดิตถ์ 53000', '0-5544-1090-4', 'NULL', '0-5541-2634'),
(783, '200241', 'Isuzu Uthaithani Co., Ltd. (Uthaithani HQ)', 'บริษัท อีซูซุอุทัยธานี จำกัด (สนง. ใหญ่)', '002', 'UTHAITHANI', 'อุทัยธานี', 'N', '24 ถนนพหลโยธิน ต.อุทัยใหม่ อ.เมือง จ.อุทัยธานี 61000', '0-5651-2838-9', 'NULL', '0-5651-2900'),
(784, '200242', 'Isuzu Uthaithani Co., Ltd. (Banrai)', 'บริษัท อีซูซุอุทัยธานี จำกัด (บ้านไร่)', '002', 'UTHAITHANI', 'อุทัยธานี', 'N', '195 หมู่ 1 ต.บ้านบึง อ.บ้านไร่ จังหวัดอุทัยธานี 61140', '0-5654-6305', 'NULL', '0-5654-6350'),
(785, '200243', 'Lampang Sirichai L.P. (Intown HQ)', 'ห.จ.ก. ลำปางศิริชัย (ลำปาง)', '002', 'LAMPANG', 'ลำปาง', 'N', '282/7-9 ถนนฉัตรไชย ต.สบตุ๋ย อ.เมือง จ.ลำปาง 52100', '0-5422-2881-2', 'NULL', '0-5431-8595'),
(786, '200244', 'Lampang Sirichai L.P. (Payao)', 'ห.จ.ก. ลำปางศิริชัย (พะเยา)', '002', 'PAYAO', 'พะเยา', 'N', '1/18 ถนนซุปเปอร์ไฮเวย์ ต.เวียง อ.เมือง พะเยา 56000', '0-5443-1075', 'NULL', '0-5443-1696'),
(787, '200245', 'Lampang Sirichai L.P. (Chiangkam)', 'ห.จ.ก. ลำปางศิริชัย (เชียงคำ)', '002', 'PAYAO', 'พะเยา', 'N', '114 หมู่ 7 ต.หย่วน อ.เชียงคำ พะเยา 56110', '0-5445-4222-3', 'NULL', '0-5445-4224'),
(788, '200246', 'Lampang Sirichai L.P. (Ngao)', 'ห.จ.ก. ลำปางศิริชัย (งาว)', '002', 'LAMPANG', 'ลำปาง', 'N', '83 ม.1 ต.นาแก อ.งาว จ.ลำปาง 52110', '0-5432-9621', 'NULL', '0-5432-9623'),
(789, '200247', 'Isuzu Sala Faster Chiangmai L.P. (ICG HQ)', 'ห.จ.ก. อีซูซุ ศาลาฟาสเตอร์เชียงใหม่ (สนง. ใหญ่)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '114 ถนนแก้วนวรัฐ ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000', '0-5324-4757', 'NULL', '0-5324-3504'),
(790, '200248', 'Isuzu Sala Faster Chiengmai L.P. (Sanpatong)', 'ห.จ.ก. อีซูซุ ศาลาฟาสเตอร์เชียงใหม่ (สันป่าตอง)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '99/1 หมู่ที่ 1 ถนนเชียงใหม่-ฮอด ต.สันกลาง อ.สันป่าตอง เชียงใหม่ 50120', '0-5331-1064', 'NULL', '0-5331-1827'),
(791, '200249', 'Isuzu Sala Faster Chiengmai L.P. (Jomthong)', 'ห.จ.ก. อีซูซุ ศาลาฟาสเตอร์เชียงใหม่ (จอมทอง)', '002', 'CHIANGMAI', 'เชียงใหม่', 'N', '99 หมู่ 9 ต.ข่วงเปา  อ.จอมทอง เชียงใหม่ 50160', '0-5334-1899', 'NULL', '0-5334-1804'),
(792, '200250', 'Isuzu Nan (1989) L.P. (Nan HQ)', 'ห.จ.ก. อีซูซุน่าน (1989) (น่าน)', '002', 'NAN', 'น่าน', 'N', '1/7 ถนนมหาวงศ์ ต.ในเวียง อ.เมือง น่าน 55000', '0-5471-0664', 'NULL', '0-5477-2715'),
(793, '200251', 'Lampang Sirichai L.P. (Banta-Highway)', 'ห.จ.ก. อีซูซุลำปาง (บ้านต้า)', '002', 'LAMPANG', 'ลำปาง', 'N', '559 หมู่ 10 ต.ชมพู อ.เมือง ลำปาง 52100', '0-5432-5099', 'NULL', '0-5422-7699'),
(794, '200252', 'Pattani Charoen Trading (1972) Co., Ltd. (Pattani HQ)', 'บริษัท ปัตตานีเจริญเทรดดิ้ง (1972) จำกัด (ปัตตานี)', '002', 'PATTANI', 'ปัตตานี', 'S', '23 ถนนหนองจิก ต.สะบารัง อ.เมือง ปัตตานี 94000', '0-7333-5110-4', 'NULL', '0-7333-5110-4'),
(795, '200253', 'Pattani Charoen Trading (1972) Co., Ltd. (Narathiwat)', 'บริษัท ปัตตานีเจริญเทรดดิ้ง (1972) จำกัด (นราธิวาส)', '002', 'NARATHIWAT', 'นราธิวาส', 'S', '148-150 ถนนสุริยะประดิษฐ์ ต.บางนาค อ.เมือง นราธิวาส 96000', '0-7353-2243-6', 'NULL', '0-7353-2246'),
(796, '200254', 'Pattani Charoen Trading (1972) Co., Ltd. (Yala)', 'บริษัท ปัตตานีเจริญเทรดดิ้ง (1972) จำกัด (ยะลา)', '002', 'YALA', 'ยะลา', 'S', '33 ถนนเทศบาล 1 ต.สะเตง อ.เมือง ยะลา 95000', '0-7324-4567-9', 'NULL', '0-7321-5533'),
(797, '200255', 'Pattani Charoen Trading (1972) Co., Ltd. (Sungaikolok)', 'บริษัท ปัตตานีเจริญเทรดดิ้ง (1972) จำกัด (สุไหงโกลก)', '002', 'NARATHIWAT', 'นราธิวาส', 'S', '259 หมู่ 5 ต.ปาเสมัส อ.สุไหงโก-ลก นราธิวาส 96120', '0-7361-2861-4', 'NULL', '0-73615536-7'),
(798, '200256', 'Haadyai United Motor Co., Ltd. (Nakorn Haadyai)', 'บริษัท หาดใหญ่สหมอเตอร์ จำกัด (นครหาดใหญ่)', '002', 'SONGKHLA', 'สงขลา', 'S', '456/3 ถนนเพชรเกษม ต.หาดใหญ่ อ.หาดใหญ่  สงขลา 90110', '0-7423-8206-7', 'NULL', '0-7423-9927'),
(799, '200257', 'Haadyai United Motor Co., Ltd. (Lampai)', 'บริษัท หาดใหญ่สหมอเตอร์ จำกัด (ลำไพล)', '002', 'SONGKHLA', 'สงขลา', 'S', '179 ม.1 ต.ลำไพล อ.เทพา สงขลา 90260', '0-7447-8117-8', 'NULL', '0-7447-8551'),
(800, '200258', 'Haadyai United Motor Co., Ltd. (Lopburi-Rames HQ)', 'บริษัท หาดใหญ่สหมอเตอร์ จำกัด (ลพบุรีราเมศวร์)', '002', 'SONGKHLA', 'สงขลา', 'S', '289 หมู่ 7 ถนนลพบุรีราเมศวร์ ต.ท่าช้าง อ.บางกล่ำ จ.สงขลา 90110', '0-7445-7710-4', 'NULL', '0-7445-7440'),
(801, '200259', 'Haadyai United Motor Co., Ltd. (Singhanakorn)', 'บริษัท หาดใหญ่สหมอเตอร์ จำกัด (สิงหนคร)', '002', 'SONGKHLA', 'สงขลา', 'S', '33/8 หมู่ 2 ต.ชิงโค อ.สิงหนคร สงขลา 90280', '0-7448-3700-3', 'NULL', '0-7448-3709'),
(802, '200260', 'Haadyai United Motor Co., Ltd. (Rattaphum)', 'บริษัท หาดใหญ่สหมอเตอร์ จำกัด (รัตภูมิ)', '002', 'SONGKHLA', 'สงขลา', 'S', '190 หมู่ 8 ต.กำแพงร อ.รัตภูมิ จ.สงขลา 90180', '0-7443-0424', 'NULL', '0-7443-0422'),
(803, '200261', 'Isuzu Nakorn Motor Sales Co., Ltd. (Hua-It HQ)', 'บริษัท อีซูซุนครมอเตอร์เซลส์ (1991) จำกัด (สนง. ใหญ่)', '002', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', '60/4 หมู่ 1 ถนนกะโรม ต.โพธิ์เสด็จ อ.เมือง นครศรีธรรมราช 80000', '0-7534-3186', 'NULL', '0-7534-4200'),
(804, '200262', 'Isuzu Nakorn Motor Sales Co., Ltd. (Sichol)', 'บริษัท อีซูซุนครมอเตอร์เซลส์ (1991) จำกัด (สิชล)', '002', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', '207/16 หมู่ 1 ต.สิชล อ.สิชล นครศรีธรรมราช 80120', '0-7533-5100-3', 'NULL', '0-7533-5100'),
(805, '200263', 'Isuzu Nakorn Motor Sales Co., Ltd. (Omkhai)', 'บริษัท อีซูซุนครมอเตอร์เซลส์ (1991) จำกัด (อ้อมค่าย)', '002', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', '69 ถนนอ้อมค่ายวชิราวุธ ต.ท่าวัง อ.เมือง นครศรีธรรมราช 80000', '0-7531-3002-5', 'NULL', '0-7531-3006'),
(806, '200264', 'Isuzu Nakorn Motor Sales Co., Ltd. (Jundee)', 'บริษัท อีซูซุนครมอเตอร์เซลส์ (1991) จำกัด (จันดี)', '002', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', '298 หมู่ 3  ต.จันดี อ.ฉวาง นครศรีธรรมราช 80150', '0-7536-4499 - 500', 'NULL', '0-7548-6280'),
(807, '200265', 'Isuzu Nakorn Motor Sales Co., Ltd. (Thasala)', 'บริษัท อีซูซุนครมอเตอร์เซลส์ (1991) จำกัด (ท่าศาลา)', '002', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', '366 หมู่ 1 ต.ท่าศาลา อ.ท่าศาลา นครศรีธรรมราช  ', '0-7552-1108', 'NULL', 'NULL'),
(808, '200266', 'Isuzu Nakorn Motor Sales Co., Ltd. (Cha-Uad)', 'บริษัท อีซูซุนครมอเตอร์เซลส์ (1991) จำกัด (ชะอวด)', '002', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', '292/8 หมู่ 3 ต.ท่าประจะ อ.ชะอวด จ.นครศรีธรรมราช 80180', '0-7538-0244-6', 'NULL', '0-7538-0247'),
(809, '200267', 'Bovorn Motor Co., Ltd. (Bovorn Motor HQ)', 'บริษัท บวรมอเตอร์ จำกัด (สนง. ใหญ่)', '002', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', '376/4 หมู่ 5 ถนนอ้อมค่ายฯ ต.ปากพูน อ.เมือง นครศรีธรรมราช 80000', '0-7531-3084-5', 'NULL', '0-7531-3466'),
(810, '200268', 'Isuzu Ranong Co., Ltd. (Ranong HQ)', 'บริษัท อีซูซุระนอง จำกัด (สนง. ใหญ่)', '002', 'RANONG', 'ระนอง', 'S', '6/49 หมู่ 1 ต.บางริ้น อ.เมือง ระนอง 85000', '0-7782-1648-9', 'NULL', '0-7782-1650'),
(811, '200269', 'Chumporn Auto Service Co., Ltd. (Chumporn Auto)', 'บริษัท ชุมพรออโต้เซอร์วิส จำกัด (ชุมพรออโต้)', '002', 'CHUMPORN', 'ชุมพร', 'S', '22/1 หมู่ 11 ถนนเพชรเกษม ต.บางหมาก อ.เมือง ชุมพร 86000', '0-7751-1245', 'NULL', '0-7750-2101'),
(812, '200270', 'Isuzu Supornphan Chumporn Co., Ltd. (Chumporn HQ)', 'บริษัท อีซูซุสุพรภัณฑ์ชุมพร จำกัด (สนง. ใหญ่)', '002', 'CHUMPORN', 'ชุมพร', 'S', '42/1 หมู่ 1 ถนนเพชรเกษม ต.บ้านนา อ.เมือง ชุมพร 86190', '0-7757-6057-8', 'NULL', '0-7757-6059');
INSERT INTO `dealer` (`ID`, `dealer_id`, `name_eng`, `name_th`, `maker_id`, `location_en`, `location_th`, `region`, `address`, `primary_phone`, `phone`, `fax`) VALUES
(813, '200271', 'Isuzu Supornphan Chumporn Co., Ltd. (Langsuan)', 'บริษัท อีซูซุสุพรภัณฑ์ชุมพร จำกัด (หลังสวน)', '002', 'CHUMPORN', 'ชุมพร', 'S', '153 ม.11 ถนนเพชรเกษม ต.วังตะกอ อ.หลังสวน  จ.ชุมพร  86110', '0-7758-2589-90', 'NULL', '0-7757-6059'),
(814, '200272', 'Isuzu Supornphan Chumporn Co., Ltd. (Tasae)', 'บริษัท อีซูซุสุพรภัณฑ์ชุมพร จำกัด (ท่าแซะ)', '002', 'CHUMPORN', 'ชุมพร', 'S', '178/2 หมู่ 16 ถนนเพชรเกษม ต.ท่าแซะ อ.ท่าแซะ ชุมพร 86140', '0-7758-4332', 'NULL', '0-7758-4330'),
(815, '200273', 'Isuzu Supornphan Chumporn Co., Ltd. (Sawee)', 'บริษัท อีซูซุสุพรภัณฑ์ชุมพร จำกัด (สวี)', '002', 'CHUMPORN', 'ชุมพร', 'S', '5/10 หมู่ 4 ต.นาโพธิ์ อ.สวี อ.เมือง ชุมพร 86130', '0-7751-2444-5', 'NULL', 'NULL'),
(816, '200274', 'Isuzu Suratthani Co., Ltd. (Bandon)', 'บริษัท อีซูซุสุราษฎร์ธานี จำกัด (บ้านดอน)', '002', 'SURATTHANI', 'สุราษฎร์ธานี', 'S', '297/4 ถนนตลาดใหม่ ต.ตลาดใหม่ อ.เมือง สุราษฎร์ธานี 84000', '0-7728-6890-3', 'NULL', '0-7728-6218'),
(817, '200275', 'Isuzu Suratthani Co., Ltd. (K.M. 5 HQ)', 'บริษัท อีซูซุสุราษฎร์ธานี จำกัด (สนง. ใหญ่)', '002', 'SURATTHANI', 'สุราษฎร์ธานี', 'S', '28/3 หมู่ 3 ถนนสุราษฎร์-พูนพิน ต.วัดประดู่ อ.เมือง สุราษฎร์ธานี 84000', '0-7720-0125-6', 'NULL', '0-7720-0120'),
(818, '200276', 'Isuzu Suratthani Co., Ltd. (Samui)', 'บริษัท อีซูซุสุราษฎร์ธานี จำกัด (เกาะสมุย)', '002', 'SURATTHANI', 'สุราษฎร์ธานี', 'S', '57/48 หมู่ 4 ต.ลิปะน้อย อ.เกาะสมุย สุราษฎร์ธานี 84140', '0-7723-4334-5', 'NULL', '0-7741-5306'),
(819, '200277', 'Isuzu Suratthani Co., Ltd. (Wiang sra)', 'บริษัท อีซูซุสุราษฎร์ธานี จำกัด (เวียงสระ)', '002', 'SURATTHANI', 'สุราษฎร์ธานี', 'S', '65/4 หมู่ 9 ต.บ้านส้อง อ.เวียงสระ สุราษฎร์ธานี 84190', '0-7725-7111', 'NULL', '0-7725-8088'),
(820, '200278', 'Isuzu Suratthani Co., Ltd. (Bantakhun)', 'บริษัท อีซูซุสุราษฎร์ธานี จำกัด(บ้านตาขุน)', '002', 'SURATTHANI', 'สุราษฎร์ธานี', 'S', '137 หมู่ 3 ต.เขาวง อ.บ้านตาขุน สุราษฎร์ธานี 84230', '0-7725-3666-8', 'NULL', '0-7792-9654'),
(821, '200279', 'Isuzu Hatyai Co., Ltd. (Hatyai HQ)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (สนง. ใหญ่)', '002', 'SONGKHLA', 'สงขลา', 'S', '1483 ถนนเพชรเกษม ต.หาดใหญ่ อ.หาดใหญ่ สงขลา 90110', '0-7442-2200-6', 'NULL', '0-7442-3513'),
(822, '200280', 'Isuzu Hatyai Co., Ltd. (Satoon)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (สตูล)', '002', 'SATUL', 'สตูล', 'S', '37-37/1 ถนนสตูลธานี ต.พิมาน อ.เมือง สตูล 91000', '0-7471-1246', 'NULL', '0-7473-2311'),
(823, '200281', 'Isuzu Hatyai Co., Ltd. (Songkhla)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (สงขลา)', '002', 'SONGKHLA', 'สงขลา', 'S', '91/89 หมู่ 2 ต.เขารูปช้าง อ.เมือง สงขลา 90000', '074-32-3901-3', 'NULL', '0-7431-3113'),
(824, '200282', 'Isuzu Hatyai Co., Ltd. (Phattalung)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (พัทลุง)', '002', 'PATTALUNG', 'พัทลุง', 'S', '356/17-21 ถนนราเมศวร์ ต.คูหาสวรรค์ อ.เมือง พัทลุง 93000', '0-7462-0827-29', 'NULL', '0-7461-1759'),
(825, '200283', 'Isuzu Hatyai Co., Ltd. (Nathawee)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (นาทวี)', '002', 'SONGKHLA', 'สงขลา', 'S', '169 หมู่ 6 ถนนเพชรเกษม ต.นาทวี อ.นาทวี สงขลา 90160', '0-7437-1524-5', 'NULL', '0-7437-1524'),
(826, '200284', 'Isuzu Hatyai Co., Ltd. (Ranod)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (ระโนด)', '002', 'SONGKHLA', 'สงขลา', 'S', '94/3 หมู่ 1 ถนนเขาแดง-ระโนด ต.ปากแตระ อ.ระโนด สงขลา 90140', '0-7445-4640', 'NULL', '0-7445-4641'),
(827, '200285', 'Isuzu Hatyai Co., Ltd. (Sadao)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (สะเดา)', '002', 'SONGKHLA', 'สงขลา', 'S', '19/9 ถนนกาญจนวานิชย์ ต.สะเดา อ.สะเดา สงขลา 90120', '0-7441-1646', 'NULL', '0-7441-1646'),
(828, '200286', 'Isuzu Hatyai Co., Ltd. (Maekree)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (แม่ขรี)', '002', 'PATTALUNG', 'พัทลุง', 'S', '69 หมู่ 8 ถนนเพชรเกษม ต.โคกสัก  อ.บางแก้ว จ.พัทลุง 93140', '0-7469-5768-71', 'NULL', '0-7469-5772'),
(829, '200287', 'Isuzu Hatyai Co., Ltd. (Jana)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (จะนะ)', '002', 'SONGKHLA', 'สงขลา', 'S', '155 หมู่ 5 ต.บ้านนา อ.จะนะ สงขลา 90130', '0-7443-1204-5', 'NULL', '0-7443-1204'),
(830, '200288', 'Isuzu Hatyai Co., Ltd. (Petchkasem)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (เพชรเกษม)', '002', 'SONGKHLA', 'สงขลา', 'S', '491/1-2 ถนนเพชรเกษม ต.หาดใหญ่ อ.หาดใหญ่ สงขลา 90110', '0-7424-5221', 'NULL', '0-7436-6830'),
(831, '200289', 'Isuzu Hatyai Co., Ltd. (La ngu)', 'บริษัท อีซูซุหาดใหญ่ จำกัด (ละงู)', '002', 'SATUL', 'สตูล', 'S', '300 หมู่ 1  ต.กำแพง อ.ละงู สตูล  91110', '0-7470-1211', 'NULL', '0-7470-1211'),
(832, '200290', 'Isuzu Andaman Sales Co., Ltd. (Koh Kaew HQ)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (เกาะแก้ว)', '002', 'PHUKET', 'ภูเก็ต', 'S', '99-99/1 หมู่ที่ 4 ถนนเทพกระษัตรี ต.เกาะแก้ว อ.เมือง ภูเก็ต 83000', '0-7635-5112-20', 'NULL', 'NULL'),
(833, '200291', 'Isuzu Andaman Sales Co., Ltd. (Phuket)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (ภูเก็ต)', '002', 'PHUKET', 'ภูเก็ต', 'S', '73 ถนนเทพกระษัตรี ต.ตลาดใหญ่ อ.เมือง ภูเก็ต 83000', '076-210756', 'NULL', '0-7621-6207'),
(834, '200292', 'Isuzu Andaman Sales Co., Ltd. (Trang)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (ตรัง)', '002', 'TRUNG', 'ตรัง', 'S', '297/1-5 ถนนห้วยยอด ต.ทับเที่ยง อ.เมือง ตรัง 92000', '0-7521-4334-5', 'NULL', '0-7521-0873'),
(835, '200293', 'Isuzu Andaman Sales Co., Ltd. (Krabi)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (กระบี่)', '002', 'KRABI', 'กระบี่', 'S', '199 ม.2 ถนนเพชรเกษม ต.กระบี่น้อย อ.เมือง จ.กระบี่ 81000', '075-810-370-4', 'NULL', '0-7562-0199'),
(836, '200294', 'Isuzu Andaman Sales Co., Ltd. (Thungsong)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (ทุ่งสง)', '002', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', '169 หมู่ 2 ถนนเอเซียทุ่งสง-เวียงสระ ต.ชะมาย อ.ทุ่งสง นครศรีธรรมราช 80110', '0-7542-0362', 'NULL', '0-7533-2960'),
(837, '200295', 'Isuzu Andaman Sales Co., Ltd. (Aou Lurk)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (อ่าวลึก)', '002', 'KRABI', 'กระบี่', 'S', '29/5 หมู่ 2 ถนนเพชรเกษม ต.อ่าวลึกเหนือ อ.อ่าวลึก กระบี่ 81110', '0-7563-4461-4', 'NULL', '0-7568-1486'),
(838, '200296', 'Isuzu Andaman Sales Co., Ltd. (Ta Kua Pa)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (ตะกั่วป่า)', '002', 'PANG-NGA', 'พังงา', 'S', '36/23 หมู่ที่ 1 ถนนเพชรเกษม ต.บางนายสี อ.ตะกั่วป่า พังงา 82110', '0-7642-2073', 'NULL', '0-7642-2035'),
(839, '200297', 'Isuzu Andaman Sales Co., Ltd. (Kokkloy)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (โคกกลอย)', '002', 'PANG-NGA', 'พังงา', 'S', '89 หมู่ที่ 3 ถนนเพชรเกษม ต.โคกกลอย อ.ตะกั่วทุ่ง พังงา 82130', '076-43-4440', 'NULL', '0-7658-1688'),
(840, '200298', 'Isuzu Andaman Sales Co., Ltd. (Yan Ta Kao)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (ย่านตาขาว)', '002', 'TRUNG', 'ตรัง', 'S', '201/12-13 หมู่ 1 ถนนตรัง-ประเหรียน อ.ย่านตาขาว จ.ตรัง 92140', '0-7728-1378', 'NULL', '0-7728-1379'),
(841, '200299', 'Isuzu Andaman Sales Co., Ltd. (Klongthom)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (คลองท่อม)', '002', 'KRABI', 'กระบี่', 'S', '111/10  ม. 1  ถ.เพชรเกษม    ต. คลองท่อมใต้   อ. คลองท่อม  จ.กระบี่ 81120', '0-7564-0574-6', 'NULL', '0-7564-0578'),
(842, '200300', 'Isuzu Andaman Sales Co., Ltd. (Thungyai)', 'บริษัท อีซูซุอันดามันเซลส์ จำกัด (ทุ่งใหญ่)', '002', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'S', '115/1 หมู่ 4 ต.ปริก อ.ทุ่งใหญ่ นครศรีธรรมราช 80240', '0-7536-8883-5', 'NULL', '0-7536-8885');

-- --------------------------------------------------------

--
-- Table structure for table `dealer_relationship`
--

CREATE TABLE IF NOT EXISTS `dealer_relationship` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto generated key of the table.',
  `dealer_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Alphanumeric key assigned to each dealer.',
  `sd_id` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Service dealer key.',
  `maker_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ID of the car maker from car_makers table',
  `created_by` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `sd_id` (`sd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table consisting the list of all the dealers.' AUTO_INCREMENT=187 ;

--
-- Dumping data for table `dealer_relationship`
--

INSERT INTO `dealer_relationship` (`ID`, `dealer_id`, `sd_id`, `maker_id`, `created_by`, `created_time`) VALUES
(1, '100170', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(2, '100131', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(3, '100010', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(4, '100251', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(5, '100458', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(6, '100178', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(7, '100520', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(8, '100347', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(9, '100029', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(10, '100007', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(11, '100504', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(12, '100070', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(13, '100052', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(14, '100053', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(15, '100271', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(16, '100378', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(17, '100457', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(18, '100435', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(19, '100033', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(20, '100032', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(21, '100370', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(22, '100074', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(23, '100058', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(24, '100259', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(25, '100066', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(26, '100353', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(27, '100113', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(28, '100406', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(29, '100334', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(30, '100387', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(31, '100500', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(32, '100204', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(33, '100276', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(34, '100192', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(35, '100247', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(36, '100493', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(37, '100249', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(38, '100001', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(39, '100248', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(40, '100179', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(41, '100263', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(42, '100346', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(43, '100292', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(44, '100015', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(45, '100099', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(46, '100082', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(47, '100238', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(48, '100329', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(49, '100166', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(50, '100289', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(51, '100290', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(52, '100511', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(53, '100102', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(54, '100252', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(55, '100245', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(56, '100527', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(57, '100086', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(58, '100513', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(59, '100109', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(60, '100138', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(61, '100159', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(62, '100428', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(63, '100506', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(64, '100146', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(65, '100533', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(66, '100485', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(67, '100361', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(68, '100284', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(69, '100482', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(70, '100277', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(71, '100071', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(72, '100468', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(73, '100078', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(74, '100133', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(75, '100027', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(76, '100069', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(77, '100072', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(78, '100526', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(79, '100144', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(80, '100472', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(81, '100171', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(82, '100270', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(83, '100244', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(84, '100327', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(85, '100422', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(86, '100273', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(87, '100444', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(88, '100278', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(89, '100481', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(90, '100397', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(91, '100356', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(92, '100107', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(93, '100073', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(94, '100060', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(95, '100528', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(96, '100363', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(97, '100126', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(98, '100212', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(99, '100505', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(100, '100287', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(101, '100169', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(102, '100121', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(103, '100530', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(104, '100018', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(105, '100256', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(106, '100193', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(107, '100012', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(108, '100507', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(109, '100134', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(110, '100214', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(111, '100136', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(112, '100262', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(113, '100095', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(114, '100148', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(115, '100089', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(116, '100266', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(117, '100423', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(118, '100461', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(119, '100057', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(120, '100424', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(121, '100051', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(122, '100059', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(123, '100231', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(124, '100210', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(125, '100426', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(126, '100466', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(127, '100151', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(128, '100040', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(129, '100320', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(130, '100021', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(131, '100031', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(132, '100431', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(133, '100172', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(134, '100522', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(135, '100203', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(136, '100205', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(137, '100165', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(138, '100195', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(139, '100403', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(140, '100038', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(141, '100198', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(142, '100085', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(143, '100501', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(144, '100471', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(145, '100264', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(146, '100223', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(147, '100119', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(148, '100330', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(149, '100295', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(150, '100154', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(151, '100106', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(152, '100213', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(153, '100017', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(154, '100190', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(155, '100120', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(156, '100118', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(157, '100030', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(158, '100301', 'SD0001', '001', 'denso', '2015-06-10 07:36:48'),
(159, '100019', 'SD0067', '001', 'denso', '2015-06-10 07:38:11'),
(160, '100306', 'SD0067', '001', 'denso', '2015-06-10 07:38:11'),
(161, '100047', 'SD0067', '001', 'denso', '2015-06-10 07:38:11'),
(162, '100141', 'SD0067', '001', 'denso', '2015-06-10 07:38:11'),
(164, '100518', 'SD0058', '001', 'denso', '2015-06-10 07:39:00'),
(165, '100267', 'SD0058', '001', 'denso', '2015-06-10 07:39:00'),
(166, '100008', 'SD0058', '001', 'denso', '2015-06-10 07:39:00'),
(167, '100009', 'SD0058', '001', 'denso', '2015-06-10 07:39:00'),
(168, '100034', 'SD0058', '001', 'denso', '2015-06-10 07:39:00'),
(169, '100310', 'SD0058', '001', 'denso', '2015-06-10 07:39:00'),
(170, '100112', 'SD0058', '001', 'denso', '2015-06-10 07:39:00'),
(171, '100140', 'SD0058', '001', 'denso', '2015-06-10 07:39:00'),
(172, '100167', 'SD0058', '001', 'denso', '2015-06-10 07:39:00'),
(173, '100370', 'SD0012', '001', 'denso', '2015-06-13 02:18:27'),
(174, '100031', 'SD0012', '001', 'denso', '2015-06-13 02:19:03'),
(175, '100472', 'SD0012', '001', 'denso', '2015-06-13 02:19:51'),
(176, '100058', 'SD0012', '001', 'denso', '2015-06-13 02:20:07'),
(177, '100120', 'SD0012', '001', 'denso', '2015-06-13 02:20:22'),
(178, '100032', 'SD0012', '001', 'denso', '2015-06-13 02:21:34'),
(179, '100214', 'SD0012', '001', 'denso', '2015-06-13 02:23:45'),
(180, '100151', 'SD0012', '001', 'denso', '2015-06-13 02:24:23'),
(181, '100038', 'SD0012', '001', 'denso', '2015-06-13 02:28:09'),
(182, '100071', 'SD0012', '001', 'denso', '2015-06-13 02:28:21'),
(183, '200129', 'SD0067', '002', 'denso', '2015-06-13 02:28:21'),
(184, '200130', 'SD0067', '002', 'denso', '2015-07-25 16:02:40'),
(186, '100340', 'SD0067', '001', 'denso', '2015-07-26 08:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `injector_parts`
--

CREATE TABLE IF NOT EXISTS `injector_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `car_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `engine_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `part_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `car_maker_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `finish` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table stores information of parts of injector' AUTO_INCREMENT=28 ;

--
-- Dumping data for table `injector_parts`
--

INSERT INTO `injector_parts` (`id`, `part_code`, `maker_id`, `car_model`, `engine_model`, `part_name`, `car_maker_PN`, `exchange_PN`, `start`, `finish`) VALUES
(1, 'TIA', '001', 'TIGER ', '1KD', 'TIGER 1KD', '23670-30060', '095000-1050', '2002-02-01', NULL),
(2, 'TIB', '001', 'TIGER ', '2KD', 'TIGER 2KD', '23670-30030', '095000-0940', '2001-09-01', NULL),
(3, 'TIC', '001', 'VIGO/FORTUNER', '1KD', 'VIGO 1KD', '23670-0L020', 'SM095000-8290', '2009-02-01', NULL),
(4, 'TID', '001', 'VIGO/FORTUNER', '2KD', 'VIGO 2KD', '23670-0L010', 'SM095000-8740', '2009-02-01', NULL),
(5, 'TIE', '001', 'VIGO/FORTUNER', '1KD (VN TURBO)', 'VIGO 1KD (VN TURBO)', '23670-0L090', 'SM295050-0520', '2009-08-01', NULL),
(6, 'TIF', '001', 'VIGO/FORTUNER', '2KD (VN TURBO)', 'VIGO 2KD (VN TURBO)', '23670-0L110', 'SM295050-0810', '2010-08-01', NULL),
(7, 'TIG', '001', 'VIGO/FORTUNER', '2KD', 'VIGO 2KD', '23670-0L100', 'SM295050-0530', '2010-08-01', NULL),
(8, 'TIH', '001', 'VIGO/FORTUNER TRD', '2KD (Peizo)', 'VIGO 2KD (Peizo)', '23670-30450', '972959-0028', '2011-06-01', NULL),
(9, 'TII', '000', 'NEW REVO 2015 ', '1GD', 'NEW REVO 2015 1GD', '23670-0E010', 'SM295700-0160', '2015-05-01', NULL),
(10, 'TIJ', '000', 'NEW REVO 2015', '2GD', 'NEW REVO 2015 2GD', '23670-0E020', 'SM295700-0090', '2015-05-01', NULL),
(27, 'TIG', '001', 'HIACE 2KD', '2KD', 'HIACE 2KD', '23670-39095-->6', '095000-5880', '2004-11-01', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `part_by_sd`
--
CREATE TABLE IF NOT EXISTS `part_by_sd` (
`part_id` varchar(4)
,`name_eng` text
,`name_th` text
);
-- --------------------------------------------------------

--
-- Table structure for table `part_types`
--

CREATE TABLE IF NOT EXISTS `part_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Actual part ID of the part.',
  `name_eng` text COLLATE utf8_unicode_ci COMMENT 'Name of part in English.',
  `name_th` text COLLATE utf8_unicode_ci COMMENT 'Name of part in Thai.',
  `table_prefix` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Time of creation/modification of the part data.',
  PRIMARY KEY (`id`),
  UNIQUE KEY ` part_id` (`part_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table to store different part types.' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `part_types`
--

INSERT INTO `part_types` (`id`, `part_id`, `name_eng`, `name_th`, `table_prefix`, `timestamp`) VALUES
(1, '0001', 'Supply Pump', 'ปั๊ม', 'pump', '2015-05-04 02:43:35'),
(2, '0002', 'Injector', 'หัวฉีด', 'injector', '2015-05-04 02:43:39'),
(3, '0003', 'Compressor', 'คอมเพรสเซอร์', 'compressor', '2015-05-04 02:43:49'),
(4, '0004', 'Alternator', 'อัลเทอร์เนเตอร์', 'alternator', '2015-05-04 02:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_eng` text COLLATE utf8_unicode_ci,
  `name_th` text COLLATE utf8_unicode_ci,
  `region_name_eng` text COLLATE utf8_unicode_ci,
  `region_name_th` text COLLATE utf8_unicode_ci,
  `region_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=78 ;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province_id`, `name_eng`, `name_th`, `region_name_eng`, `region_name_th`, `region_code`) VALUES
(1, 'P0001', 'BANGKOK', 'กรุงเทพฯ', 'BKK', 'กรุงเทพและปริมณฑล', 'BKK'),
(2, 'P0002', 'CHACHOENGSAO', 'ฉะเชิงเทรา', 'BKK', 'กรุงเทพและปริมณฑล', 'BKK'),
(3, 'P0003', 'LAO', 'ลาว', 'BKK', 'กรุงเทพและปริมณฑล', 'BKK'),
(4, 'P0004', 'NAKHONPATHOM', 'นครปฐม', 'BKK', 'กรุงเทพและปริมณฑล', 'BKK'),
(5, 'P0005', 'NONTHABURI', 'นนทบุรี', 'BKK', 'กรุงเทพและปริมณฑล', 'BKK'),
(6, 'P0006', 'PRATHUMTHANI', 'ปทุมธานี', 'BKK', 'กรุงเทพและปริมณฑล', 'BKK'),
(7, 'P0007', 'SAMUTPRAKARN', 'สมุทรปราการ', 'BKK', 'กรุงเทพและปริมณฑล', 'BKK'),
(8, 'P0008', 'SAMUTSAKHON', 'สมุทรสาคร', 'BKK', 'กรุงเทพและปริมณฑล', 'BKK'),
(9, 'P0009', 'SAMUTSONGKHAM', 'สมุทรสงคราม', 'BKK', 'กรุงเทพและปริมณฑล', 'BKK'),
(10, 'P0010', 'ANGTHONG', 'อ่างทอง', 'Central', 'กลาง', 'C'),
(11, 'P0011', 'AYUTTHAYA', 'อยุธยา', 'Central', 'กลาง', 'C'),
(12, 'P0012', 'CHAINAT', 'ชัยนาท', 'Central', 'กลาง', 'C'),
(13, 'P0013', 'KANCHANABURI', 'กาญจนบุรี', 'Central', 'กลาง', 'C'),
(14, 'P0014', 'LOPBURI', 'ลพบุรี', 'Central', 'กลาง', 'C'),
(15, 'P0015', 'NAKHONPATHOM', 'นครปฐม', 'Central', 'กลาง', 'C'),
(16, 'P0016', 'PETCHBURI', 'เพชรบุรี', 'Central', 'กลาง', 'C'),
(17, 'P0017', 'PRACHUABKHIRIKHAN', 'ประจวบคีรีขันธ์', 'Central', 'กลาง', 'C'),
(18, 'P0018', 'RATCHBURI', 'ราชบุรี', 'Central', 'กลาง', 'C'),
(19, 'P0019', 'SARABURI', 'สระบุรี', 'Central', 'กลาง', 'C'),
(20, 'P0020', 'SINGBURI', 'สิงห์บุรี', 'Central', 'กลาง', 'C'),
(21, 'P0021', 'SUPHANBURI', 'สุพรรณบุรี', 'Central', 'กลาง', 'C'),
(22, 'P0022', 'CHANTHABURI', 'จันทบุรี', 'East', 'ตะวันออก', 'E'),
(23, 'P0023', 'CHONBURI', 'ชลบุรี', 'East', 'ตะวันออก', 'E'),
(24, 'P0024', 'PRACHEENBURI', 'ปราจีนบุรี', 'East', 'ตะวันออก', 'E'),
(25, 'P0025', 'RAYONG', 'ระยอง', 'East', 'ตะวันออก', 'E'),
(26, 'P0026', 'SRAKAEW', 'สระแก้ว', 'East', 'ตะวันออก', 'E'),
(27, 'P0027', 'CHIANGMAI', 'เชียงใหม่', 'North', 'เหนือ', 'N'),
(28, 'P0028', 'CHIANGRAI', 'เชียงราย', 'North', 'เหนือ', 'N'),
(29, 'P0029', 'KAMPHAENGPHET', 'กำแพงเพชร', 'North', 'เหนือ', 'N'),
(30, 'P0030', 'LAMPANG', 'ลำปาง', 'North', 'เหนือ', 'N'),
(31, 'P0031', 'LAMPOON', 'ลำพูน', 'North', 'เหนือ', 'N'),
(32, 'P0032', 'MAEHONGSORN', 'แม่ฮ่องสอน', 'North', 'เหนือ', 'N'),
(33, 'P0033', 'NAKHONSAWAN', 'นครสวรรค์', 'North', 'เหนือ', 'N'),
(34, 'P0034', 'NAN', 'น่าน', 'North', 'เหนือ', 'N'),
(35, 'P0035', 'PAYAO', 'พะเยา', 'North', 'เหนือ', 'N'),
(36, 'P0036', 'PETCHBOON', 'เพชรบูรณ์', 'North', 'เหนือ', 'N'),
(37, 'P0037', 'PHRAE', 'แพร่', 'North', 'เหนือ', 'N'),
(38, 'P0038', 'PIJIT', 'พิจิตร', 'North', 'เหนือ', 'N'),
(39, 'P0039', 'PITSANULOKE', 'พิษณุโลก', 'North', 'เหนือ', 'N'),
(40, 'P0040', 'SUKHOTHAI', 'สุโขทัย', 'North', 'เหนือ', 'N'),
(41, 'P0041', 'TAK', 'ตาก', 'North', 'เหนือ', 'N'),
(42, 'P0042', 'UTHAITHANI', 'อุทัยธานี', 'North', 'เหนือ', 'N'),
(43, 'P0043', 'UTTARADIT', 'อุตรดิตถ์', 'North', 'เหนือ', 'N'),
(44, 'P0044', 'AMNATCHAROEN', 'อำนาจเจริญ', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(45, 'P0045', 'BURIRUM', 'บุรีรัมย์', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(46, 'P0046', 'CHAIYAPOOM', 'ชัยภูมิ', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(47, 'P0047', 'KALASIN', 'กาฬสินธ์', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(48, 'P0048', 'KHONKAEN', 'ขอนแก่น', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(49, 'P0049', 'LOEY', 'เลย', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(50, 'P0050', 'MAHASARAKAM', 'มหาสารคาม', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(51, 'P0051', 'MUKDAHAN', 'มุกดาหาร', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(52, 'P0052', 'NAKHONNAYOK', 'นครนายก', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(53, 'P0053', 'NAKHONPANOM', 'นครพนม', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(54, 'P0054', 'NAKHONRATCHSIMA', 'นครราชสีมา', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(55, 'P0055', 'NHONGBUALHAMPHU', 'หนองบัวลำภู ', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(56, 'P0056', 'NONGKHAI', 'หนองคาย', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(57, 'P0057', 'ROIET', 'ร้อยเอ็ด', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(58, 'P0058', 'SAKHONNAKHON', 'สกลนคร', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(59, 'P0059', 'SISAKET', 'ศรีสะเกษ', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(60, 'P0060', 'SURIN', 'สุรินทร์', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(61, 'P0061', 'UBONRATCHATHANI', 'อุบลราชธานี', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(62, 'P0062', 'UDONTHANI', 'อุดรธานี', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(63, 'P0063', 'YASOTHON', 'ยโสธร', 'Northeast', 'ตะวันออกเฉียงเหนือ', 'N-E'),
(64, 'P0064', 'CHUMPORN', 'ชุมพร', 'South', 'ใต้', 'S'),
(65, 'P0065', 'KRABI', 'กระบี่', 'South', 'ใต้', 'S'),
(66, 'P0066', 'NAKHONSRITHAMMARAT', 'นครศรีธรรมราช', 'South', 'ใต้', 'S'),
(67, 'P0067', 'NARATHIWAT', 'นราธิวาส', 'South', 'ใต้', 'S'),
(68, 'P0068', 'PANG-NGA', 'พังงา', 'South', 'ใต้', 'S'),
(69, 'P0069', 'PATTALUNG', 'พัทลุง', 'South', 'ใต้', 'S'),
(70, 'P0070', 'PATTANI', 'ปัตตานี', 'South', 'ใต้', 'S'),
(71, 'P0071', 'PHUKET', 'ภูเก็ต', 'South', 'ใต้', 'S'),
(72, 'P0072', 'RANONG', 'ระนอง', 'South', 'ใต้', 'S'),
(73, 'P0073', 'SATUL', 'สตูล', 'South', 'ใต้', 'S'),
(74, 'P0074', 'SONGKHLA', 'สงขลา', 'South', 'ใต้', 'S'),
(75, 'P0075', 'SURATTHANI', 'สุราษฏ์ธานี', 'South', 'ใต้', 'S'),
(76, 'P0076', 'TRUNG', 'ตรัง', 'South', 'ใต้', 'S'),
(77, 'P0077', 'YARA', 'ยะลา', 'South', 'ใต้', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `pump_parts`
--

CREATE TABLE IF NOT EXISTS `pump_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'This is the part cade proposed by Denso. The first letter indicates car maker. The second letter indicates pump or injector. The last letter indicates car model.',
  `maker_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `car_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `engine_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `part_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `car_maker_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start` date NOT NULL COMMENT 'This shows the starting month and year that uses this part.',
  `finish` date DEFAULT NULL COMMENT 'This shows the month and year that the part is discontinued.',
  PRIMARY KEY (`id`),
  KEY `maker_id` (`maker_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pump_parts`
--

INSERT INTO `pump_parts` (`id`, `part_code`, `maker_id`, `car_model`, `engine_model`, `part_name`, `car_maker_PN`, `exchange_PN`, `start`, `finish`) VALUES
(1, 'TPA', '001', 'TIGER', '1KD/2KD', 'HP3 TIGER', '22100-0L010', 'SM294000-0110', '2002-02-01', NULL),
(2, 'TPB', '001', 'VIGO', '1KD/2KD', 'HP3 VIGO', '22100-0L020', 'SM294000-0900', '2004-08-01', '2007-12-31'),
(3, 'TPB', '001', 'VIGO', '1KD/2KD', 'HP3 VIGO', '22100-0L060', 'SM294000-0900', '2008-01-01', NULL),
(4, 'TPC', '001', 'HIACE', '1KD/2KD', 'HP3 HIACE', '22100-0L040', 'SM294000-0890', '2005-08-01', '2010-11-30'),
(5, 'TPC', '001', 'HIACE', '1KD/2KD', 'HP3 HIACE', '22100-0L050', 'SM294000-0890', '2010-12-01', NULL),
(6, 'TPD', '000', 'NEW REVO 2015', '1GD/2GD', 'NEW REVO 2015 1GD/2GD', '22100-0E020', 'SM299000-0050', '2010-12-01', NULL),
(7, 'TPE', '000', 'REVO', 'XXXXXX', 'pum01', 'sd-pum000xxxx', 'sd-pum-111xxx', '2015-05-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `region_name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `region_code` (`region_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `region_code`, `region_name`) VALUES
(1, 'BKK', 'Bangkok'),
(2, 'E', 'East'),
(3, 'N', 'North'),
(4, 'N-E', 'North East'),
(5, 'S', 'South'),
(6, 'W', 'West');

-- --------------------------------------------------------

--
-- Table structure for table `ros_draft`
--

CREATE TABLE IF NOT EXISTS `ros_draft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ros_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maker_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dealer_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warranty` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_maker` text COLLATE utf8_unicode_ci,
  `dealer_name` text COLLATE utf8_unicode_ci,
  `part_id` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_model` text COLLATE utf8_unicode_ci,
  `frame_no` text COLLATE utf8_unicode_ci,
  `engine_no` text COLLATE utf8_unicode_ci,
  `engine_model` text COLLATE utf8_unicode_ci,
  `year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plate_no` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `repair_date` date DEFAULT NULL,
  `mileage` float(12,2) DEFAULT NULL,
  `car_problem` int(5) DEFAULT NULL,
  `car_problem_other` text COLLATE utf8_unicode_ci,
  `dtc_code` text COLLATE utf8_unicode_ci,
  `compressor_repair_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compressor_type_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compressor_status_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_category_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compressor_problem_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_condition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_condition_other` text COLLATE utf8_unicode_ci,
  `fuel_condition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuel_condition_other` text COLLATE utf8_unicode_ci,
  `parts_condition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parts_condition_other` text COLLATE utf8_unicode_ci,
  `part_failure_pn` text COLLATE utf8_unicode_ci,
  `part_exchange_pn` text COLLATE utf8_unicode_ci,
  `remark` text COLLATE utf8_unicode_ci,
  `part_quantity` float(10,2) DEFAULT NULL,
  `failure_sn_1` text COLLATE utf8_unicode_ci,
  `failure_sn_2` text COLLATE utf8_unicode_ci,
  `failure_sn_3` text COLLATE utf8_unicode_ci,
  `failure_sn_4` text COLLATE utf8_unicode_ci,
  `failure_sn_5` text COLLATE utf8_unicode_ci,
  `failure_sn_6` text COLLATE utf8_unicode_ci,
  `status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_approve_date` datetime DEFAULT NULL,
  `status_delivery_date` datetime DEFAULT NULL,
  `status_core_return_date` datetime DEFAULT NULL,
  `created_by` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ros_draft`
--

INSERT INTO `ros_draft` (`id`, `ros_no`, `maker_id`, `dealer_id`, `warranty`, `car_maker`, `dealer_name`, `part_id`, `car_model`, `frame_no`, `engine_no`, `engine_model`, `year`, `plate_no`, `delivery_date`, `repair_date`, `mileage`, `car_problem`, `car_problem_other`, `dtc_code`, `compressor_repair_id`, `compressor_type_id`, `compressor_status_id`, `customer_category_id`, `compressor_problem_id`, `car_condition`, `car_condition_other`, `fuel_condition`, `fuel_condition_other`, `parts_condition`, `parts_condition_other`, `part_failure_pn`, `part_exchange_pn`, `remark`, `part_quantity`, `failure_sn_1`, `failure_sn_2`, `failure_sn_3`, `failure_sn_4`, `failure_sn_5`, `failure_sn_6`, `status`, `status_approve_date`, `status_delivery_date`, `status_core_return_date`, `created_by`, `created_time`, `updated_time`) VALUES
(1, 'DX-001-15', '001', '100071', NULL, NULL, NULL, '0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Draft', NULL, NULL, NULL, 'SD0012', '2015-06-13 04:24:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ros_form`
--

CREATE TABLE IF NOT EXISTS `ros_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ros_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maker_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dealer_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warranty` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_maker` text COLLATE utf8_unicode_ci,
  `dealer_name` text COLLATE utf8_unicode_ci,
  `part_id` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_model` text COLLATE utf8_unicode_ci,
  `frame_no` text COLLATE utf8_unicode_ci,
  `engine_no` text COLLATE utf8_unicode_ci,
  `engine_model` text COLLATE utf8_unicode_ci,
  `year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plate_no` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `repair_date` date DEFAULT NULL,
  `mileage` float(12,2) DEFAULT NULL,
  `car_problem` int(5) DEFAULT NULL,
  `car_problem_other` text COLLATE utf8_unicode_ci,
  `dtc_code` text COLLATE utf8_unicode_ci,
  `compressor_repair_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compressor_type_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compressor_status_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_category_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compressor_problem_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_condition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_condition_other` text COLLATE utf8_unicode_ci,
  `fuel_condition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuel_condition_other` text COLLATE utf8_unicode_ci,
  `parts_condition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parts_condition_other` text COLLATE utf8_unicode_ci,
  `part_failure_pn` text COLLATE utf8_unicode_ci,
  `part_exchange_pn` text COLLATE utf8_unicode_ci,
  `remark` text COLLATE utf8_unicode_ci,
  `part_quantity` float(10,2) DEFAULT NULL,
  `failure_sn_1` text COLLATE utf8_unicode_ci,
  `failure_sn_2` text COLLATE utf8_unicode_ci,
  `failure_sn_3` text COLLATE utf8_unicode_ci,
  `failure_sn_4` text COLLATE utf8_unicode_ci,
  `failure_sn_5` text COLLATE utf8_unicode_ci,
  `failure_sn_6` text COLLATE utf8_unicode_ci,
  `status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_approve_date` datetime DEFAULT NULL,
  `status_delivery_date` datetime DEFAULT NULL,
  `status_core_return_date` datetime DEFAULT NULL,
  `created_by` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ros_form`
--

INSERT INTO `ros_form` (`id`, `ros_no`, `maker_id`, `dealer_id`, `warranty`, `car_maker`, `dealer_name`, `part_id`, `car_model`, `frame_no`, `engine_no`, `engine_model`, `year`, `plate_no`, `delivery_date`, `repair_date`, `mileage`, `car_problem`, `car_problem_other`, `dtc_code`, `compressor_repair_id`, `compressor_type_id`, `compressor_status_id`, `customer_category_id`, `compressor_problem_id`, `car_condition`, `car_condition_other`, `fuel_condition`, `fuel_condition_other`, `parts_condition`, `parts_condition_other`, `part_failure_pn`, `part_exchange_pn`, `remark`, `part_quantity`, `failure_sn_1`, `failure_sn_2`, `failure_sn_3`, `failure_sn_4`, `failure_sn_5`, `failure_sn_6`, `status`, `status_approve_date`, `status_delivery_date`, `status_core_return_date`, `created_by`, `created_time`, `updated_time`) VALUES
(13, 'TPB-001-15', '001', 'SD0001', 'in', NULL, NULL, '0001', 'VIGO', 'XXXXX', 'XXXXX', '1KD/2KD', NULL, 'AB 1234', '2015-07-15', '2015-07-08', 2000.00, 6, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '22100-0L020', 'SM294000-0900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Core Return', '2015-07-01 14:50:00', '2015-07-01 14:53:00', '2015-07-01 14:53:00', 'SD0001', '2015-07-01 06:46:41', '2015-07-01 14:53:37'),
(14, 'TIE-001-15', '001', 'SD0001', 'in', NULL, NULL, '0002', 'VIGO/FORTUNER', 'XXXXX', 'XXXXX', '1KD (VN TURBO)', NULL, NULL, '2015-07-01', '2015-07-01', 2000.00, 13, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0L090', 'SM295050-0520', 'ISUZU เจ้าใหม่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Core Return', '2015-07-01 15:00:00', '2015-07-01 15:01:00', '2015-07-01 15:04:00', 'SD0001', '2015-07-01 06:59:25', '2015-07-01 15:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `ros_form_backup`
--

CREATE TABLE IF NOT EXISTS `ros_form_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ros_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maker_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dealer_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warranty` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_maker` text COLLATE utf8_unicode_ci,
  `dealer_name` text COLLATE utf8_unicode_ci,
  `part_id` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_model` text COLLATE utf8_unicode_ci,
  `frame_no` text COLLATE utf8_unicode_ci,
  `engine_no` text COLLATE utf8_unicode_ci,
  `engine_model` text COLLATE utf8_unicode_ci,
  `year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plate_no` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `repair_date` date DEFAULT NULL,
  `mileage` float(12,2) DEFAULT NULL,
  `car_problem` int(5) DEFAULT NULL,
  `car_problem_other` text COLLATE utf8_unicode_ci,
  `dtc_code` text COLLATE utf8_unicode_ci,
  `compressor_repair_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compressor_type_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compressor_status_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_category_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compressor_problem_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_condition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_condition_other` text COLLATE utf8_unicode_ci,
  `fuel_condition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuel_condition_other` text COLLATE utf8_unicode_ci,
  `parts_condition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parts_condition_other` text COLLATE utf8_unicode_ci,
  `part_failure_pn` text COLLATE utf8_unicode_ci,
  `part_exchange_pn` text COLLATE utf8_unicode_ci,
  `remark` text COLLATE utf8_unicode_ci,
  `part_quantity` float(10,2) DEFAULT NULL,
  `failure_sn_1` text COLLATE utf8_unicode_ci,
  `failure_sn_2` text COLLATE utf8_unicode_ci,
  `failure_sn_3` text COLLATE utf8_unicode_ci,
  `failure_sn_4` text COLLATE utf8_unicode_ci,
  `failure_sn_5` text COLLATE utf8_unicode_ci,
  `failure_sn_6` text COLLATE utf8_unicode_ci,
  `status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_approve_date` datetime DEFAULT NULL,
  `status_delivery_date` datetime DEFAULT NULL,
  `status_core_return_date` datetime DEFAULT NULL,
  `created_by` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Dumping data for table `ros_form_backup`
--

INSERT INTO `ros_form_backup` (`id`, `ros_no`, `maker_id`, `dealer_id`, `warranty`, `car_maker`, `dealer_name`, `part_id`, `car_model`, `frame_no`, `engine_no`, `engine_model`, `year`, `plate_no`, `delivery_date`, `repair_date`, `mileage`, `car_problem`, `car_problem_other`, `dtc_code`, `compressor_repair_id`, `compressor_type_id`, `compressor_status_id`, `customer_category_id`, `compressor_problem_id`, `car_condition`, `car_condition_other`, `fuel_condition`, `fuel_condition_other`, `parts_condition`, `parts_condition_other`, `part_failure_pn`, `part_exchange_pn`, `remark`, `part_quantity`, `failure_sn_1`, `failure_sn_2`, `failure_sn_3`, `failure_sn_4`, `failure_sn_5`, `failure_sn_6`, `status`, `status_approve_date`, `status_delivery_date`, `status_core_return_date`, `created_by`, `created_time`, `updated_time`) VALUES
(37, 'TCP-008-15', '001', 'SD0001', 'out', NULL, NULL, '0003', 'NEW REVO 2015 (Diesel)', 'XXXXX', 'XXXXX', '1GD/2GD', NULL, NULL, '2015-05-21', '2015-05-21', 8999999488.00, 28, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'XI447160-8531', 'SD447160-8531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'Dhonsiri diesel', '2015-05-22 03:26:32', NULL),
(38, 'TCP-009-15', '001', 'SD0001', 'in', NULL, NULL, '0003', 'NEW REVO 2015 (Diesel)', 'XXXXX', 'XXXXX', '1GD/2GD', NULL, NULL, '2015-05-15', '2015-05-15', 7000.00, 27, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'XI447160-8531', 'SD447160-8531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-22 03:29:18', NULL),
(39, 'TCP-010-15', '001', '100041', 'in', NULL, NULL, '0003', 'NEW REVO 2015 (Diesel)', 'XXXXX', 'XXXXX', '1GD/2GD', NULL, NULL, '2015-05-16', '2015-05-20', 80000.00, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'XI447160-8531', 'SD447160-8531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-22 03:31:23', NULL),
(40, 'TCP-011-15', '001', '100110', 'in', NULL, NULL, '0003', 'NEW REVO 2015 (Diesel)', 'XXXXX', 'XXXXX', '1GD/2GD', NULL, NULL, '2015-05-22', '2015-05-22', 7000.00, 29, '', NULL, 'C0001', 'CT003', 'CS001', NULL, 'CP001', NULL, NULL, NULL, NULL, NULL, NULL, 'XI447160-8531', 'SD447160-8531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-22 03:40:29', NULL),
(41, 'TII-001-15', '001', '100347', 'in', NULL, NULL, '0002', 'NEW REVO 2015 ', 'XXXXX', 'XXXXX', '1GD', NULL, NULL, '2015-05-22', '2015-05-22', 77000.00, 11, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', NULL, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-22 03:44:40', NULL),
(42, 'TII-002-15', '001', 'SD0001', 'in', NULL, NULL, '0002', 'NEW REVO 2015 ', 'XXXXX', 'XXXXX', '1GD', NULL, NULL, '2015-05-22', '2015-05-22', 7000.00, 15, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', NULL, 3.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-22 04:10:10', NULL),
(43, 'TII-003-15', '001', 'SD0001', 'in', NULL, NULL, '0002', 'NEW REVO 2015 ', 'XXXXX', 'XXXXX', '1GD', NULL, NULL, '2015-05-22', '2015-05-22', 7000.00, 16, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', NULL, 3.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Core Return', '2015-05-22 14:17:00', '2015-05-22 14:50:00', '2015-05-22 14:53:00', 'SD0001', '2015-05-22 04:16:00', '2015-05-22 14:53:08'),
(44, 'TIJ-001-15', '001', '100113', 'in', NULL, NULL, '0002', 'NEW REVO 2015 ', 'XXXXX', 'XXXXX', '2GD', '2015', NULL, '2015-05-21', '2015-05-30', 200.00, 12, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E020', 'SM295700-0090', NULL, 3.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Complete', '2015-05-22 14:27:00', '2015-05-22 14:27:00', '2015-05-22 14:28:00', 'SD0001', '2015-05-22 06:24:58', '2015-05-22 14:29:04'),
(45, 'TAN-001-15', '001', '100457', 'in', NULL, NULL, '0004', 'NEW REVO 2015 (Diesel)', 'MR0531149305424795', '1NZ', '1GD/2GD', '2015', NULL, '2015-05-22', '2015-05-22', 2000.00, 33, '', NULL, NULL, NULL, NULL, 'CC002', 'CP001', NULL, NULL, NULL, NULL, NULL, NULL, 'TG104211-2120', 'SD104211-2120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delivery', '2015-05-22 15:56:00', '2015-05-25 14:45:00', NULL, 'SD0001', '2015-05-22 06:47:33', '2015-05-25 14:45:41'),
(46, 'TAN-002-15', '001', '100429', 'in', NULL, NULL, '0004', 'NEW REVO 2015 (Diesel)', '125463', '458633', '1GD/2GD', '2005', '452', '2015-05-21', '2015-05-19', 10000.00, 34, '', NULL, NULL, NULL, NULL, 'CC003', 'CP001', NULL, NULL, NULL, NULL, NULL, NULL, 'TG104211-2120', 'SD104211-2120', NULL, NULL, '1534', NULL, NULL, NULL, NULL, NULL, 'Cancel', '2015-05-25 14:47:00', NULL, NULL, 'SD0001', '2015-05-22 07:56:22', '2015-05-25 14:47:58'),
(47, 'TII-004-15', '001', '100161', 'out', NULL, NULL, '0002', 'NEW REVO 2015 ', 'MROYZ59GGX00006038', '1KD9411983', '1GD', '2005', NULL, '2005-04-05', '2015-05-18', 332.00, 15, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', NULL, 4.00, '03G24559', '03G24649', '03G24669', '10K52373', NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-22 09:55:27', '2015-05-22 17:57:22'),
(48, 'TII-005-15', '001', '100290', 'out', NULL, NULL, '0002', 'NEW REVO 2015 ', 'MROEZ19G005005897', '1KD9331050', '1GD', '2005', NULL, '2005-01-22', '2015-05-18', 310.00, 13, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', 'TEST', 1.00, '08F02129', NULL, NULL, NULL, NULL, NULL, 'Core Return', '2015-05-23 09:44:00', '2015-05-25 17:23:00', '2015-05-25 17:23:00', 'SD0001', '2015-05-22 10:03:35', '2015-05-25 17:23:33'),
(49, 'TII-006-15', '001', 'SD0001', 'in', NULL, NULL, '0002', 'NEW REVO 2015 ', 'XXXXX', 'XXXXX', '1GD', '2015', NULL, '2015-05-23', '2015-05-23', 8000.00, 12, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', NULL, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-23 01:48:56', NULL),
(50, 'TAN-003-15', '001', '100536', NULL, NULL, NULL, '0004', 'NEW REVO 2015 (Diesel)', 'XXXXX', 'XXXXX', '1GD/2GD', NULL, NULL, '2015-05-22', '2015-05-23', 70000.00, 34, '', NULL, NULL, NULL, NULL, 'CC002', 'CP002', NULL, NULL, NULL, NULL, NULL, NULL, 'TG104211-2120', 'SD104211-2120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cancel', NULL, NULL, NULL, 'SD0001', '2015-05-23 01:57:11', '2015-05-23 09:57:11'),
(51, 'TAN-004-15', '001', '100457', 'in', NULL, NULL, '0004', 'NEW REVO 2015 (Diesel)', 'XXXXX', 'XXXXX', '1GD/2GD', NULL, NULL, '2015-05-23', '2015-05-23', 70000.00, 32, '', NULL, NULL, NULL, NULL, 'CC003', 'CP001', NULL, NULL, NULL, NULL, NULL, NULL, 'TG104211-2120', 'SD104211-2120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-23 02:04:59', NULL),
(52, 'TII-007-15', '001', 'SD0001', 'out', NULL, NULL, '0002', 'NEW REVO 2015 ', 'MROEZ19G00500589', '1KD9331050', '1GD', '2005', NULL, '2005-01-22', '2015-05-18', 310900.00, 13, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', 'Test', NULL, '08F0219', NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-23 02:12:42', NULL),
(53, 'TIJ-002-15', '001', '100177', 'in', NULL, NULL, '0002', 'NEW REVO 2015 ', 'XXXXX', 'XXXXX', '2GD', NULL, NULL, '2015-05-20', '2015-05-30', 80000.00, 14, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E020', 'SM295700-0090', 'Testing the system ....', 3.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', '2015-05-26 09:47:00', NULL, NULL, 'SD0001', '2015-05-23 02:18:11', '2015-05-26 09:47:31'),
(54, 'TII-008-15', '001', '100491', 'out', NULL, NULL, '0002', 'NEW REVO 2015 ', 'MROYZ59G900028662', '1KD9585943', '1GD', '20006', 'ขข-5390', '2006-01-21', '2015-05-23', 242342.00, 14, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', NULL, 1.00, '12G57913', NULL, NULL, NULL, NULL, NULL, 'Approved', '2015-05-25 15:14:00', NULL, NULL, 'SD0001', '2015-05-25 07:01:18', '2015-05-25 15:14:36'),
(55, 'TII-009-15', '001', '100006', 'out', NULL, NULL, '0002', 'NEW REVO 2015 ', 'MROZZ69G403001555', '1KD', '1GD', NULL, NULL, '2015-05-23', '2015-05-23', 121857.00, 20, 'Test', 'DT5678', NULL, NULL, NULL, NULL, NULL, 'others', 'แต่งเครื่องยนต์', 'abnormal', 'น้ำมันดำ', 'color changed', '', '23670-0E010', 'SM295700-0160', NULL, 4.00, '01L82486', '01L82489', '01L46063', '01L82546', NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-25 07:06:34', '2015-05-25 16:28:05'),
(56, 'TPD-001-15', '001', '100019', 'out', NULL, NULL, '0001', 'NEW REVO 2015', 'MROGS19G401054656', '2KD9550798', '1GD/2GD', '2005', NULL, '2005-10-27', '2015-05-25', 166947.00, 1, '', 'P0627', NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '22100-0E020', 'SM299000-0050', NULL, NULL, '10G10983', NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-25 07:11:49', NULL),
(57, 'TPD-002-15', '001', '100437', 'in', NULL, NULL, '0001', 'NEW REVO 2015', 'MROZZ69G303120486', '1KDU203310', '1GD/2GD', '2012', NULL, '2012-11-12', '2015-05-25', 45430.00, 7, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '22100-0E020', 'SM299000-0050', NULL, NULL, '11P12892', NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-25 07:19:46', NULL),
(58, 'TII-010-15', '001', '100110', 'out', NULL, NULL, '0002', 'NEW REVO 2015 ', 'MROYZ59GX00046183', '1KD9759763', '1GD', '2006', NULL, '2015-09-30', '2015-05-26', 254862.00, 14, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', 'TEST KA', 4.00, '09H47132', '09H47164', '12F23117', '09H47124', NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-26 01:42:55', '2015-05-26 09:47:52'),
(59, 'TIJ-003-15', '001', '100037', 'in', NULL, NULL, '0002', 'NEW REVO 2015 ', 'MROCR12G502534474', '2KDS324478', '2GD', '2014', NULL, '2014-01-24', '2015-05-26', 17806.00, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E020', 'SM295700-0090', NULL, 4.00, '01R26038', '01R25985', '01R26081', '01R26045', NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-26 09:32:20', NULL),
(60, 'TII-011-15', '001', '100091', 'out', NULL, NULL, '0002', 'NEW REVO 2015 ', 'MROGZ39G306700826', '1KD', '1GD', NULL, NULL, '2015-05-27', '2015-05-27', 339305.00, 14, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E010', 'SM295700-0160', NULL, 2.00, NULL, NULL, '09G59986', '07G13230\n', NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-27 00:41:58', NULL),
(61, 'TIJ-004-15', '001', '100034', 'in', NULL, NULL, '0002', 'NEW REVO 2015 ', 'MROGR39G906791195', '2KDS474692', '2GD', '2014', NULL, '2014-12-23', '2015-05-28', 130.00, 11, '', NULL, NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '23670-0E020', 'SM295700-0090', NULL, 4.00, '12R876', '12R87706', '12R87707', '12R87669', NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-28 02:12:23', '2015-05-28 10:20:00'),
(62, 'TPD-003-15', '001', '100412', 'out', NULL, NULL, '0001', 'NEW REVO 2015', 'MROGR19G1070524165', '2KD9911929', '1GD/2GD', '2007', NULL, '2007-06-25', '2015-05-28', 213443.00, 4, '', 'P0088 ,P0093', NULL, NULL, NULL, NULL, NULL, 'original', '', 'normal', '', 'normal', '', '22100-0E020', 'SM299000-0050', 'ร้านสมพานดีเซล', NULL, '05J12228', NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, 'SD0001', '2015-05-28 02:18:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sd_map_parts`
--

CREATE TABLE IF NOT EXISTS `sd_map_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto key.',
  `sd_id` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `part_id` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='An SD may allow for certain part types.' AUTO_INCREMENT=17 ;

--
-- Dumping data for table `sd_map_parts`
--

INSERT INTO `sd_map_parts` (`id`, `sd_id`, `part_id`, `created_by`, `created_time`) VALUES
(1, 'SD0067', '0001', 'denso', '2015-06-10 06:51:42'),
(2, 'SD0067', '0002', 'denso', '2015-06-10 06:51:49'),
(3, 'SD0067', '0000', 'denso', '2015-06-10 06:54:17'),
(4, 'SD0067', '0000', 'denso', '2015-06-10 06:54:25'),
(5, 'SD0012', '0001', 'denso', '2015-06-10 06:53:17'),
(6, 'SD0012', '0002', 'denso', '2015-06-10 06:53:27'),
(7, 'SD0012', '0000', 'denso', '2015-06-10 06:57:13'),
(8, 'SD0012', '0000', 'denso', '2015-06-10 06:57:54'),
(9, 'SD0058', '0001', 'denso', '2015-06-10 06:58:24'),
(10, 'SD0058', '0002', 'denso', '2015-06-10 06:58:39'),
(11, 'SD0058', '0003', 'denso', '2015-06-23 02:37:24'),
(12, 'SD0058', '0000', 'denso', '2015-06-10 06:58:39'),
(13, 'SD0001', '0001', 'denso', '2015-06-10 06:58:39'),
(14, 'SD0001', '0002', 'denso', '2015-06-10 06:58:39'),
(15, 'SD0001', '0003', 'denso', '2015-06-10 06:58:39'),
(16, 'SD0001', '0004', 'denso', '2015-06-10 06:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `service_dealer`
--

CREATE TABLE IF NOT EXISTS `service_dealer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sd_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `name_eng` text COLLATE utf8_unicode_ci NOT NULL,
  `name_th` text COLLATE utf8_unicode_ci NOT NULL,
  `region_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `sd_class` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `primary_phone` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `fax` text COLLATE utf8_unicode_ci NOT NULL,
  `owner` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sd_id` (`sd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=66 ;

--
-- Dumping data for table `service_dealer`
--

INSERT INTO `service_dealer` (`id`, `sd_id`, `name_eng`, `name_th`, `region_code`, `sd_class`, `address`, `primary_phone`, `phone`, `fax`, `owner`, `email`) VALUES
(1, 'SD0001', 'DHONSIRI DIESEL', 'บริษัท ธนศิริดีเซล จำกัด', 'BKK', '', '425 ถ.ศรีนครินทร์ แขวงสวนหลวง เขตสวนหลวง 10250 กรุงเทพฯ', '02-379-4370', '02-379-4370', '02-379-4370', 'บริษัท ธนศิริดีเซล จำกัด', NULL),
(2, 'SD0002', 'RUNGJAK KOLLAKARN', 'บจก.รุ่งจักรกลการ', 'BKK', 'W', '193/1 ถ.บริพัตร แขวงบ้านบาตร เขตป้อมปราบศัตรูพ่าย กรุงเทพฯ 10100', '0-2222-8736', '0-2222-8736, 0-2223-5497', '0-2222-8736', 'คุณเฉลิม  โชคชัยเฉลิมวงศ์', NULL),
(3, 'SD0003', 'DIESEL MACHINERY', 'ดีเซลแมชชินเนอรี่', 'BKK', 'W', '70/708 ถ.กรุงเกษม แขวงวัดโสมนัส เขตป้อมปราบศัตรูพ่าย กรุงเทพฯ 10100', '0-2282-1529', '0-2282-1529, 0-2281-8711\nคุณเอ 081-4430148', '0-2629-8522', 'คุณโกศล  สุขะปิณฑะ', NULL),
(4, 'SD0004', 'SAWAI DIESEL', 'ไสวดีเซล', 'BKK', 'D', '115/2-3 ถ.บริพัตร ต.บ้านบาตร อ.ป้อมปราบ กรุงเทพฯ', '0-2221-5373', '0-2221-5373,0-2279-5721, \nK.ธวัช 081-454-8177 \nส.ไสว (หมอชิต) 0-2272-3370', '0-2223-4104', 'คุณไสว  สถาพรนานนท์ K.อี๊ด', NULL),
(5, 'SD0005', 'PRASERT DIESEL', 'ร้านประเสริฐดีเซล', 'BKK', 'S', '336/212-213 ถ.พหลโยธิน ต.ประชาธิปัตย์ อ.ธัญบุรี จ.ปทุมธานี 12130', '0-2531-3309', '0-2531-3309,0-2532-1491, \nข้างร้าน 0-2512-4258/\nK.ณรงค์ชัย 081-9052104 , \nK.ยศ 087-914-8946', '0-2992-3460', 'คุณณรงค์ชัย  แก้ววงศ์วัฒนา\nK.จิราภร, K.ณรงค์ชัย', NULL),
(6, 'SD0006', 'SIAM DIESEL AUTO PARTS', 'ดีเซลออโต้พาร์ท', 'BKK', 'S', '83/37 ม.10 ถ.อ่อนนุช แขวงประเวศ เขตประเวศ  กรุงเทพฯ 10250', '0-2392-5125', 'พระโขนง 0-2392-5125 \nK.เก่ง 086-6134148,\nK.เกรียงไกร 089-767-8866\nอ่อนนุช โทร. 0-2721-6942-4', 'อ่อนนุช  0-2721-7421', 'คุณเกรียงไกร ศิริชัยมนัส\nK.เก่ง , K.มุข', NULL),
(7, 'SD0007', 'SIAM DIESEL PART SERVICE', 'สยามดีเซลพาร์ท   เซอร์วิส', 'BKK', 'D', '130/20 ถ.นนทรี แขวงช่องนนทรี เขตยานนาวา กรุงเทพฯ 10120', '0-2294-2206-7', '0-2294-2206-7', '0-2681-6614', 'คุณเกรียงศักดิ์ ศิริชัยมนัส', NULL),
(8, 'SD0008', 'THAICHAROEN DIESEL (WONGWAEN)', 'ไทยเจริญดีเซล  (วงแหวน)', 'BKK', 'S', '5/3 ม.7 ถ.กาญจนาภิเษก แขวงหลักสอง เขตบางแค กรุงเทพฯ 10160', '0-2454-7575', '0-2454-7575, 0-2802-7128-9,\n 0-2802-8092-3', '0-2802-7130', 'คุณบัญชา  ฌานนันทะ/K.นุช', NULL),
(9, 'SD0009', 'THAICHAROEN DIESEL(OMNOI)', 'ไทยเจริญดีเซล (สาย4)', 'BKK', 'D', '1/11 ถ.พุทธสาคร ต.สวนหลวง อ.กระทุ่มแบน จ.สมุทรสาคร 74110', '0-2420-2965', '0-2420-2965/081-825-2592', '0-2811-1140', 'คุณพูลทรัพย์  ฌานนันทะ', NULL),
(10, 'SD0010', 'BANGBUATHONG DIESEL', 'บางบัวทองดีเซล', 'BKK', 'D', '36/63-64 ม. 4 ถ.ตลิ่งชัน-บางบัวทอง ต.บางรักพัฒนา อ.บางบัวทอง จ.นนทบุรี 11110  โทร. 0-2920-1089, 0-2920-1099  แฟ็กซ์. 0-2920-1099', '0-2920-1089', '0-2920-1089, 0-2920-1099', '0-2920-1099', 'คุณสนธยา มิเลียง\nK.ต้น , K.เล็ก', NULL),
(11, 'SD0011', 'NONTHABURI DIESEL', 'หจก.นนทบุรีดีเซล', 'BKK', 'D', '57/6 ถ.ติวานนท์ ต.ตลาดขวัญ อ.เมือง จ.นนทบุรี 11000', '0-2526-1102', '0-2526-1102/K.บุญให้ 087-973-2992 \nสามัคคี โทร.0-2589-9683, 0-2592-3353', 'เมือง 0-2527-3869\nสามัคคี 0-2591-2762', 'คุณบุญให้   แย้มสุข\nคุณมาโนช แย้มสุข', NULL),
(12, 'SD0012', 'SAMRONGTAI DIESEL', 'สำโรงใต้ดีเซล (กิ่งแก้ว)', 'BKK', 'I', '10/3 ม.12 ถ.กิ่งแก้ว ต.ราชาเทวะ อ.บางพลี จ.สมุทรปราการ 10540', '0-2750-0950-1', 'กิ่งแก้ว โทร. 0-2750-0950-1 (081-626-3872 )K.ตุ๊ก , K.ราศรี', '0-2312-4742/ปู่เจ้า แฟ็กซ์. 0-2394-1516', 'คุณสุโรจน์ บรรเลงทอง', NULL),
(13, 'SD0013', 'BAMRUNG DIESEL (UDON)', 'บำรุงดีเซล 2002(PN อะหลั่ย)', 'N-E', 'I', '151 หมู่ 9 ถ.ทหาร ต.หมากแข้ง อ.เมือง จ.อุดรธานี 41000', '042-340397', '042-340397 \nK.รงค์ 081-768-2255', '042-340397', 'คุณรัชต์ณรงค์  จารุไชยกุล K.ยุ', NULL),
(14, 'SD0014', 'BAMRUNG DIESEL(KORAT)', 'บำรุงดีเซล', 'N-E', 'D', '758-760 เยื้องปากทางเข้า บ.ข.ส. ถ.มิตรภาพ อ.เมือง จ.นครราชสีมา 30000', '044-242592', '044-242592, 252057\nมือถือ K.โหงว 086-461-6362', '044-252057', 'คุณสุรีภรณ์  อัครปรีดี', NULL),
(15, 'SD0015', 'CHOKEDEE KARNCHANG', 'โชคดีการช่าง', 'N-E', 'D', '229  ม.18  ต.ในเมือง  อ.เมือง จ.ร้อยเอ็ด 45000', '043-512899', '043-512899\nซ้อ 081-601-5071', '043-511123', 'คุณวิษณุ  จุฑางกรู', NULL),
(16, 'SD0016', '', 'ร้านสหกิจดีเซล', 'N-E', 'W', '18-20   ถ.แจ้งสนิท  หน้าแขวงการทาง อ.เมือง จ.อุบลราชธานี 34000', '045-281-858', '045-281-858,045-241149\nมือถือ 089-8461-812', '045-281879', 'คุณเสกสรร มงคลเสริมศิริ', NULL),
(17, 'SD0017', 'NAKHON DIESEL (SURIN)', 'นครดีเซล (สุรินทร์)', 'N-E', 'D', '187/188 ม.13 ต.นอกเมือง อ.เมือง จ.สุรินทร์ 32000', '044-531587', '044-531587,044-530240\nเจ๊เขียด 081-548-4655', '044-515326', 'คุณณีรนุช สหพงษ์', NULL),
(18, 'SD0018', 'NAKHON DIESEL(UBON)', 'นครดีเซล', 'N-E', 'D', '366 ม.10 ถ.เลี่ยงเมือง ต.แจระแม อ.เมือง จ.อุบลราชธานี 34000', '045-281858', '045-281858 \n K.บุ๋มบิ๋ม 089-7171736, เฮียเพ้ง 081-5472314', '045-281879', 'คุณศุภกฤต ตั้งปะติธานนท์', NULL),
(19, 'SD0019', 'PHAIBOON DIESEL', 'ไพบูลย์ดีเซล', 'N-E', 'D', '460 ถ.สถลมาร์ค ต.วารินชำราบ อ.วารินชำราบ จ.อุบลราชธานี 34190', '045-266566', '045-266566', '045-266566', 'คุณไพบูลย์ กะนะหาวงศ์', NULL),
(20, 'SD0020', 'SISAKET DIESEL', 'ศรีสะเกษดีเซล', 'N-E', 'I', '1503/2 ถ.ขุขันธ์ ตรงเทศบาลเมืองศรีสะเกษ ต.เมืองใต้ อ.เมือง จ.ศรีสะเกษ 33000', '045-611851', '045-611851', '045-643433', 'คุณปองพล มงคลเสริมศิริ', NULL),
(21, 'SD0021', 'AUENGCHAROEN DIESEL', 'อึ้งเจริญดีเซลอะไหล่', 'N-E', 'D', '379/1 ถ.มิตรภาพ ต.ในเมือง อ.เมือง จ.นครราชสีมา 30000', '044-244307', '044-244307\nK.เชียร 089-720-5225', '044-261954', 'คุณวิเชียร  เนระแก', NULL),
(22, 'SD0022', 'TONGCHAROEN DIESEL (MUKDAHAN)', 'ตงเจริญดีเซล (หจก.แพรทอง)', 'N-E', 'D', '19 ม.12 ถ.มุกดาหาร-คำชะอี ต.มุกดาหาร อ.เมือง จ.มุกดาหาร 49000', '042-611812', '042-611812\n081-8719639', '042-630063', 'คุณสินธร  จันทร์นนท์', NULL),
(23, 'SD0023', 'AOD DIESEL', 'อ๊อดดีเซล', 'N-E', 'I', '129 ม.10 ถ.อรุณประเสริฐ ต.บุ่ง อ.เมือง จ.อำนาจเจริญ  37000', '045-451806', '045-451806 \n K.เมี่ยง 089-844-8227', '045-270970', 'คุณบุญหลง พทาเพชร\nK.นิวัฒน์', NULL),
(24, 'SD0024', 'PRECHA DIESEL', 'ปรีชาดีเซล', 'N-E', 'D', '158 ม.10 ถ.แจ้งสนิท ต.แวงน่าง อ.เมือง จ.มหาสารคาม 44000', '043-725182', '043-725182\nK.ปรีชา 081-965-1854', '043-711502', 'คุณปรีชา  เที่ยงบุตร', NULL),
(25, 'SD0025', 'LUECHASAK DIESEL', 'ลือชาศักดิ์ดีเซล  (ฤาชาศักดิ์ดีเซล)', 'N-E', 'D', '100-17 ถ.บายพาสทุ่งมน ต.กาฬสินธุ์ อ.เมือง จ.กาฬสินธุ์ 46000', '043-821390', '043-821390\nมือถือ 091-3757041,088-3210149', '043-815911', 'คุณบัญชา  เนียนไทสง', NULL),
(26, 'SD0026', 'TONGCHAROEN DIESEL (NAKHONPANOM)', 'ตงเจริญดีเซล', 'N-E', 'W', '108 ถ.นิตโย (ตรงข้าม ธ.กรุงไทย) อ.เมือง จ.นครพนม 48000', '042-512864', '042-512864 K.น้อย  089-861-9043,081-861-9043', '042-523202', 'คุณสุวรรณ จันทร์นนท์', NULL),
(27, 'SD0027', 'SOMNUK CHECKPUMP', 'สมนึกเช็คปั๊ม', 'N-E', 'W', '25-26 ม.15 ถ.นิเวศน์รัตน์ ต.ในเมือง อ.เมือง จ.ชัยภูมิ  36000', '044-833247', '044-833247', '044-822192', 'คุณสมนึก  เป็งสาย', NULL),
(28, 'SD0028', 'V.PRASIT NONGKAI', 'ร้าน ว.ประสิทธิ์', 'N-E', 'D', '1205/12 ม.2 ถ.พนัสชลประทาน ต.ในเมือง อ.เมือง จ.หนองคาย 43000', '081-6018180', '081-6018180', '042-464339', 'คุณสุวัฒน์ ฮอมณี', NULL),
(29, 'SD0029', 'AU. PRASITCHAI DIESEL (SAKHONNAKHON)', 'อู่ประสิทธิ์ชัย', 'N-E', 'D', '172/3 ถ.รัฐพัฒนา ต.ธาตุเชิงชุม อ.เมือง จ.สกลนคร 47000', '042-712003', '042-712003\nK.สันติ 081-9641404', '042-712003', 'คุณสันติ ฮอมณี', NULL),
(30, 'SD0030', 'BURIRUM RUAMCHANG', 'บุรีรัมย์รวมช่าง (วิโรจน์ ถือดำ)', 'N-E', 'D', '493/8 ถ.จิระ ต.ในเมือง อ.เมือง จ. บุรีรัมย์  31000', '044-666775', '044-666775\nK.วิโรจน์ 086-4170799', '044-666775', 'คุณวิโรจน์ ถือดำ', NULL),
(31, 'SD0031', 'DIESEL THAI', 'ดีเซลไทย', 'N-E', 'I', '191/7 ถ.มิตรภาพ-จอหอ ต.ในเมือง อ.เมือง จ.นครราชสีมา 30000', '044-246334', '044-246334\nK.เป็ด 081-282-4474', '044-246334', 'คุณชาณุ สัมพันธ์', NULL),
(32, 'SD0032', 'RUAMJAI CHAROENYONT', 'ร่วมใจเจริญยนต์', 'N-E', 'I', '29/5  ถนนร่วมใจ  ต.กุดป่อง อ.เมือง จ.เลย 42000', '042-811636', '042-811636 ,042-811886\nK.วรเดช  088-340-5599', '042-833432', 'คุณวรเดช  ชินสุทธปราการ', NULL),
(33, 'SD0033', 'THAWIN DIESEL', 'ถวิลดีเซล', 'N', 'D', '96/13-14 ม.10 ถ. พหลโยธิน  ต.นครสวรรค์ตก อ.เมือง จ.นครสวรรค์ 60000', '056-221604', '056-221604\nK.ถวิล 081-475-3332\nK.บอส 089-034-1551 , 085-118-0115', '056-220410', 'คุณถวิล เนตรประจักษ์', NULL),
(34, 'SD0034', 'SINCHAI DIESEL', 'สินชัยดีเซล', 'N', 'I', '730 ถ.ราชดำเนิน 1 ต.ในเมือง อ.เมือง จ.กำแพงเพชร 62000', '055-713552', '055-713552 , 055-712464\nK.สินชัย 081-707-8902', '055-712464', 'คุณสินชัย  บุญเอนก', NULL),
(35, 'SD0035', 'TECHNIC DIESEL (SUKHOTHAI)', 'เทคนิคอะไหล่ดีเซล', 'N', 'I', '62 ถ.จรดวิถีถ่อง ต.ธานี อ.เมือง จ.สุโขทัย 64000', '055-611276', '055-611276\nK.ประมุข 081-972-6050', '055-620793', 'คุณประมุข  เงินบำรุง', NULL),
(36, 'SD0036', 'TAE DIESEL', 'เต้ดีเซล', 'N', 'D', '139 ม.6 บ้านอุดมทรัพย์ ถ.น่าน-ทุ่งช้าง ต.ผาสิงห์ อ.เมือง จ.น่าน 55000', '054-771834', '054-771834', '054-775291', 'คุณสฤษดิ์  แลสันกลาง', NULL),
(37, 'SD0037', 'CHIANGRAI DIESEL', 'หจก.เชียงรายดีเซล', 'N', 'I', '99/11 ม.13 ถ.ซุปเปอร์ไฮเวย์ ต.สันทราย อ.เมือง จ.เชียงราย  57000', '053-701495', '053-701495\nK.ดี 081-884-1366 , 081-7841-588', '053-774865', 'คุณเจริญ เรืองใจ', NULL),
(38, 'SD0038', 'NEW CHIANGMAI DIESEL', 'หจก.นิวเชียงใหม่สยามดีเซล', 'N', 'I', '64/1 ถ.เชียงใหม่-ลำปาง ต.ช้างเผือก อ.เมือง จ.เชียงใหม่ 50000', '053-212990', '053-212990, 210530\n081-724-3833', '053-210530', 'คุณนพดล  สินธุ์ษาระ', NULL),
(39, 'SD0039', 'CHIANGMAI DIESEL', 'บจก.เชียงใหม่ดีเซล', 'N', 'I', '410 ถ.เชียงใหม่-ลำปาง ต.หนองป่าครั่ง อ.เมือง จ.เชียงใหม่ 50000', '053-241677', '053-241677\nK.ก้วง 086-114-9000', '053-304664', 'คุณภคพล  แซ่แต้', NULL),
(40, 'SD0040', 'MIT DIESEL', 'บจก.มิตรดีเซลกลการ', 'N', 'W', '224/1-6 ถ.พหลโยธิน ต.ชมพู อ.เมือง จ.ลำปาง 52100', '054-226451', '054-226451, 324881\nเจ๊นก  081-883-8976 , 081-681-4032', '054-352696', 'คุณศุภกิจ ทองไหลรวม', NULL),
(41, 'SD0041', 'WONGTAWAN DIESEL', 'วงศ์เทวัญดีเซล', 'N', 'W', '505 ม.3  ถ.ชมฐีระเวช ต.งิ้วราย อ.ตะพานหิน จ.พิจิตร 66110', '087-204-6292', '087-204-6292', '056-621440', 'คุณมณี ติ้งฉิ่น', NULL),
(42, 'SD0042', 'SAMROUY DIESEL', 'สำรวยดีเซล', 'N', 'D', '25/16 ถ.คลองคะเชนทร์  ต.ในเมือง อ.เมือง จ.พิจิตร 66000', '056-990323', '056-990323\nK.เอ 086-119-5234', '056-612611', 'คุณสำรวย  มณีศรีวิวัฒนา', NULL),
(43, 'SD0043', 'PRASITCHAI DIESEL', 'ประสิทธิ์ชัยดีเซล', 'N', 'S', '649/21 ถ.พหลโยธิน ต.เวียง อ.เมืองพะเยา จ.พะเยา 56000', '054-412917-8', '054-412917-8', '054-412918', 'คุณปริญญ์  แซ่ฮอ', NULL),
(44, 'SD0044', 'SUAN DIESEL', 'สวนดีเซล', 'N', 'D', '219/37-39 ตรงข้ามแขวงการทางตาก ถ.ไทยชนะ ต.เชียงเงิน อ.เมือง จ.ตาก 63000', '055-893173', '055-893173\nมือถือ 081-727-7443', '055-540131', 'คุณเอก มาตรสงคราม', NULL),
(45, 'SD0045', 'THANOM DIESEL', 'ถนอมดีเซล', 'N', 'W', '161 ม.10 หน้าค่ายพ่อขุนผาเมือง ถ.สระบุรี-หล่มสัก ต.ชอนไพร อ.เมือง  จ.เพชรบูรณ์ 67000', '056-743814', '056-743814', '056-743813\nมือถือ 089-708-9569', 'คุณถนอม  ศรีวงศ์ษา', NULL),
(46, 'SD0046', 'CAV.', 'ฉัตรมงคลดีเซล (CAV.)', 'S', 'I', '417-419-421 ถ.ศุภสารรังสรรค์ (ทางไป มอ.) อ.หาดใหญ่ จ.สงขลา 90110', '074-244-312', '074-244-312, 232-899, 364-802  \nมือถือ 084-008-5650', '074-246-393', 'คุณกิตติ สินธุ์จำปาศักดิ์', NULL),
(47, 'SD0047', 'SAHA DIESEL KONLAKARN', 'สหดีเซลกลการ', 'S', 'D', '302 หมู่ 2 ถ.สนามบิน-ลพบุรีราเมศวร์ ต.ควนลัง อ.หาดใหญ่ จ.สงขลา 90110', '086-326-1860', 'K.โจ้ 086-326-1860, 086-489-3501', '074-536-394', 'คุณวัฒน์ โรจน์สุวรรณ', NULL),
(48, 'SD0048', 'THONGCHAI DIESEL', 'ธงชัยดีเซล', 'S', 'W', '41/2 ถ.รามวิถี ต.บ่อยาง อ.เมือง จ.สงขลา 90000', '074-323-571', '074-323-571, 313-475, 442-382-3 \nK.สมเดช 081-963-4426\nร้านอะไหล่ 074-442-382-3', '074-441-979', 'คุณสมเดช โถวรุ่งเรือง', NULL),
(49, 'SD0049', 'RUNGKIJSUPPLY (YALA)', 'รุ่งกิจซัพพลาย', 'S', 'D', '130/1 ถ.สิโรรส ต.สะเตง อ.เมือง จ. ยะลา 95000', '073-214-461', '073-214-461', '073-214-461', 'คุณนิวัฒน์ วิกรัยสกุล', NULL),
(50, 'SD0050', 'NOPPAKHUN DIESEL', 'ร้านนพคุณดีเซล', 'S', 'I', '16/4 ม.1 ถ.ชุมพร-ระนอง ต.วังไผ่ อ.เมือง จ.ชุมพร 86000', '077-511-424', '077-511-424\nมือถือ 081-535-1567', '077-511-424', 'คุณนพคุณ เพชรวงศ์', NULL),
(51, 'SD0051', 'S.KARN DIESEL', 'ส.การดีเซล', 'S', 'D', '72/78 หมู่ 5 ถ.สะพานปลา ต.บางริ้น อ.เมือง จ. ระนอง 85000', '077-835-144', '077-835-144\nK.น้อย 081-347-0719', '077-835-143', 'คุณสัญญา ตันเสถียร (น้อย)', NULL),
(52, 'SD0052', 'THAWORN DIESEL', 'ถาวรดีเซล (หจก.นครถาวรอะไหล่)', 'S', 'D', '29/34 ถ.พัฒนาการคูขวาง ต.ท่าวัง อ.เมือง จ.นครศรีธรรมราช 80000', '083-690-4446', 'K.หยัด 083-690-4446 , 075-341-731, 318-990-1', '075-318-991', 'คุณหยัด ศรีรัตนโชติกุล', NULL),
(53, 'SD0053', 'SAKCHAROEN KARNPUMP', 'ศักดิ์เจริญการปั๊ม', 'S', 'D', '56/9 ถ.ศรีพังงา ต.กระบี่ใหญ่ อ.เมืองกระบี่ จ.กระบี่ 81000', '075-700-344', '075-700-344\nมือถือ 081-397-3361', '075-700-344', 'คุณเดชา กอนจินดา', NULL),
(54, 'SD0054', 'THANI DIESEL', 'บจก.ธานีดีเซลวิศวกรรม', 'S', 'I', '118 ม.1 ถ.กาญจนวิถี ต.บางกุ้ง อ.เมือง จ.สุราษฎร์ธานี  84000', '077-275-253', '077-275-253, 282-058\nมือถือ 081-396-3693', '077-272-708', 'คุณธีรวัฒน์ อุส่าห์', NULL),
(55, 'SD0055', 'TECHNIC DIESEL(PHUKET)', 'เทคนิคดีเซล', 'S', 'S', '1/5 ม.6 ถ.เทพกระษัตรี ต.รัษฎา อ.เมือง จ.ภูเก็ต 83000', '076-225-127', '076-225-127,236-448\n มือถือ  089-873-3464 , 086-9408-842', '076-218-340', 'คุณสัมพันธ์  จริงจิตต์', NULL),
(56, 'SD0056', '', 'นายอนันทชัย หัทยานนท์', 'S', 'D', '84/3 ม.2 ต.เขาเจียก อ.เมือง จ.พัทลุง  93000', '074-613-727', '074-613-727\nK.เปี๊ยก 081-898-8571', '074-620-766', 'คุณอนันทชัย  หัทยานนท์', NULL),
(57, 'SD0057', 'SAKSRI KARNCHANG', 'ศักดิ์ศรีการช่าง', 'S', 'W', '14,16,18 ถ.กะลาพอ ต.อาเนาะรู อ.เมือง จ.ปัตตานี 94000', '073-349262', '073-349262,349727,332765-6\nมือถือ  081-766-5336 K.นันท์', '073-349765', 'คุณสุนันท์ พีรสุนันท์', NULL),
(58, 'SD0058', 'SERM DIESEL', 'เสริมดีเซล', 'E', 'I', '245/73 ม.9 ถ.สุขุมวิท ต.บ้านสวน อ.เมือง จ.ชลบุรี 20000', '038-274033', '038-274033 (089-407-4559)\nK.เจี๊ยบ 089-748-3821', '038-274432\nร้านใหม่ คุณเล็ก : FAX 038-284785', 'คุณวีระศักดิ์ สังข์สุข K.เจี๊ยบ', NULL),
(59, 'SD0059', 'DIESEL CHANTHABURI', 'ดีเซลจันทบุรี    เลิกกิจการวันที่31 ก.ค.55', 'E', 'D', '183/58-59 ถ.ตรีรัตน์ เยื้องศูนย์มิตซูบิชิ อ.เมือง จ.จันทบุรี 22000', '039-313566', '039-313566  \nมือถือ 083-589-8338', '039-325920', 'คุณพิชัย ลิ้มไพบูลย์', NULL),
(60, 'SD0060', 'S.RUNGRUENG DIESEL', 'ส.รุ่งเรืองดีเซล', 'E', 'I', '126/4 ม.17 ถ.ฉะเชิงเทรา-นครราชสีมา ต.เมืองเก่า อ.กบินทร์บุรี จ.ปราจีนบุรี 25240', '037-281017', '037- 281017, 281890\nมือถือ 081-861-6781', '037-281890', 'คุณสุนทร จามรพิพัฒน์', NULL),
(61, 'SD0061', '', 'เสริมดีเซลเซอร์วิส', 'E', 'D', '18/8 ม.12 ต.บางตีนเป็ด อ.เมือง จ.ฉะเชิงเทรา 24000', '038-822635', '038-822635', 'K.เสริม 081-8615708', 'คุณเสริม สังข์สุข', NULL),
(62, 'SD0062', 'SRIMUANG DIESEL', '4. ศรีเมืองดีเซล', 'E', 'I', '74/140 ม.7 ถ.สุวรรณศร ต.บ้านใหญ่ อ.เมือง จ.นครนายก 26000', '081-920-4668', '081-920-4668 , 081-806-7265', '037-312698', 'คุณฉลวย โหยหวล', NULL),
(63, 'SD0067', 'TOR.DIESEL', 'ต.ดีเซล', 'E', 'I', '79/8 ม.3 ถ.บายพาส (36) ต.เชิงเนิน จ.ระยอง 21000', '038-873-127-8', '038-873-127-8', '038-873-128', 'คุณไตรรงค์ แสงสวัสดิ์\n K.อลงกรณ์', NULL),
(64, 'SD0068', 'DNJP for test', 'DNJP for test', 'E', 'I', '79/8 ม.3 ถ.บายพาส (36) ต.เชิงเนิน จ.ระยอง 21000', '038-873-127-8', '038-873-127-8', '038-873-128', 'DNJP \r\n', NULL),
(65, 'SD0069', 'DIAT for Test', 'DIAT for Test', 'E', 'I', '888 Moo 1 Bangna-Trad Rd. 27.5 T. Bangbo, Bangbo Samutprakarn 10560', '02-315-9500', '02-315-9500', '02-315-9500', 'DIAT', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `starter_parts`
--

CREATE TABLE IF NOT EXISTS `starter_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `car_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `engine_model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `part_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `car_maker_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_PN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start` date DEFAULT NULL,
  `finish` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table stores information of parts of injector' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `starter_parts`
--

INSERT INTO `starter_parts` (`id`, `part_code`, `maker_id`, `car_model`, `engine_model`, `part_name`, `car_maker_PN`, `exchange_PN`, `start`, `finish`) VALUES
(1, 'sss', '001', 'newest fortuner', 'C7', 'starter', '1234567', '7777777', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_log`
--

CREATE TABLE IF NOT EXISTS `status_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto generated ID for the table.',
  `user_id` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'This can be service dealer or DSD.',
  `ros_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Logs of the status of ROS' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `status_log`
--

INSERT INTO `status_log` (`id`, `user_id`, `ros_no`, `status`, `created_time`) VALUES
(1, 'SD0001', 'TPB-001-15', 'Request', '2015-07-01 07:46:44'),
(2, 'denso', 'TPB-001-15', 'Approved', '2015-07-01 07:50:53'),
(3, 'SD0001', 'TPB-001-15', 'Delivery', '2015-07-01 07:53:14'),
(4, 'SD0001', 'TPB-001-15', 'Core Return', '2015-07-01 07:53:37'),
(5, 'SD0001', 'TIE-001-15', 'Request', '2015-07-01 07:59:27'),
(6, 'denso', 'TIE-001-15', 'Approved', '2015-07-01 08:00:01'),
(7, 'SD0001', 'TIE-001-15', 'Approved', '2015-07-01 08:00:47'),
(8, 'SD0001', 'TIE-001-15', 'Delivery', '2015-07-01 08:01:00'),
(9, 'SD0001', 'TIE-001-15', 'Core Return', '2015-07-01 08:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `status_master`
--

CREATE TABLE IF NOT EXISTS `status_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto generated number of the table.',
  `status_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Running number of the statuses (alphanumeric)',
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Actual status of the application',
  `prev_status` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Statuses that it can be reached from.',
  `next_status_sd` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Statuses that it can jump to.',
  `next_status_dsd` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `editable_by_sd` tinyint(1) DEFAULT NULL,
  `editable_by_dsd` tinyint(1) DEFAULT NULL,
  `created_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `status_master`
--

INSERT INTO `status_master` (`id`, `status_id`, `status`, `prev_status`, `next_status_sd`, `next_status_dsd`, `editable_by_sd`, `editable_by_dsd`, `created_by`, `created_time`) VALUES
(1, 'status_01', 'Draft', '', 'Request', '', 1, 0, 'admin', '2015-03-09 22:02:28'),
(2, 'status_02', 'Request', 'Draft', '', 'Approved,Cancel', 0, 1, 'admin', '2015-03-09 22:02:28'),
(3, 'status_03', 'Approved', 'Request', 'Delivery', 'Cancel', 0, 0, 'admin', '2015-03-09 22:04:08'),
(4, 'status_04', 'Delivery', 'Approved', 'Core Return', '', 0, 0, 'admin', '2015-03-09 22:04:08'),
(5, 'status_05', 'Core Return', 'Delivery', '', 'Complete', 0, 0, 'admin', '2015-03-09 22:08:20'),
(6, 'status_06', 'Complete', '', '', '', 0, 0, 'admin', '2015-03-09 22:08:20'),
(7, 'status_07', 'Cancel', '', '', '', 0, 0, 'admin', '2015-03-10 01:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE IF NOT EXISTS `user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `last_password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sd_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_group` int(4) NOT NULL,
  `created_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changed_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `changed_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user_auth`
--

INSERT INTO `user_auth` (`id`, `username`, `password`, `salt`, `last_password`, `sd_id`, `full_name`, `active`, `user_group`, `created_by`, `created_time`, `changed_by`, `changed_time`) VALUES
(1, 'denso', 'cccfcbe2ab5c0a569135a8639749ce26a2834815718d7c121c0393eed40ee09b', '45697b427ed0ddb4ac89ff48875bc6752f76398e399441254cad2ff97c09aa49', NULL, 'denso', 'Dealer', 1, 2, 'admin', '2015-03-05 18:59:32', 'admin', '2015-03-06 01:59:32'),
(2, 'dnjp', '2fd19a32e841e417090f9562886848230f676ed5402dde4ca55565a3ac5f979f', '1afae6d7bc2636f339b8eecbc10077b7bc0ba1f9338dc94c932dfa574107dc41', NULL, 'SD0068', 'DNJP for test', 1, 1, 'denso', '2015-05-21 09:06:26', 'denso', '2015-05-21 16:06:26'),
(3, 'diat', '8e1c3f5aa127a022bc680842f8875cbd51a20432ffb276fae40ce18921aa3db6', 'c6c45014554cc82323168b7d655a392b038a124dc8eac41864e426578914e36c', NULL, 'SD0069', 'DIAT for Test (DIAT for Test)', 1, 1, 'denso', '2015-05-22 01:52:42', 'denso', '2015-05-22 08:52:42'),
(4, 'dsth_qe', '773cc58b320675d88c2f630aa555ad80e3bce5a178b234b705e41891e486aaaf', 'e6f7cc39291f71fa3b302d5eff20bd800f7285be0461ad96b25f0cb315538cfa', NULL, 'denso', 'QE_DSTH', 1, 2, 'denso', '2015-05-25 02:06:33', 'denso', '2015-05-25 09:06:33'),
(5, 'dsd', 'd0f8ca9aec262ce19ef47131bc199710deb04e7b52477d0f5db762dad1dd96ba', '860f8aab5e2966891a1005703901f0b28bba1d1ed11a1373df04782924131597', NULL, 'denso', 'Dhonsiri_Admin', 1, 2, 'denso', '2015-05-25 02:07:17', 'denso', '2015-05-25 09:07:17'),
(10, 'sd001', '5a03cc355282a5c8adc26b47b727d67c2c927ca2f04b15992b3e16a1e6b30308', '1f5166e90df2dd7328f622f7a051bda84420d0d04d63c4e6d9ed232904962b4d', NULL, 'SD0001', 'Dhonsiri diesel', 1, 1, 'admin', '2015-01-24 17:25:00', 'admin', '2015-01-25 00:25:00'),
(11, 'sd0067', 'a7f655bc158ff9bc57061d917d3953af5bf9a758789e341969b5615f592b7b78', 'b2ecb9109c1e40091aa3d9c7bf725eb253975baef207bc66b4dcc83dacfe1d0d', '48c18dbc5638ef09e6fa040313c7d30487afd7681e1358a3d4d1232a243ea039', 'SD0067', 'ต.ดีเซล', 1, 1, 'denso', '2015-06-10 06:39:24', 'denso', '2015-06-10 13:41:01'),
(12, 'sd0058', '85a4e13cc45960fc292dbf2dcd58a65c0b19e69a16d6a8f1f93906f33249bf52', '970a4aa46f8d02a388f8349f736585f764a6fd2f6cbb73edcc23aaf801d91ebb', NULL, 'SD0058', 'เสริมดีเซล', 1, 1, 'denso', '2015-06-10 06:40:15', 'denso', '2015-06-10 13:40:15'),
(13, 'sd0012', '23d89677a3e89695585cf6bb08e99d84361f37e775187fbdb51626486bd5cc65', 'f80fc68a1b590254a2f59a61fb65b2ffc7c79b952d5f82aa9fa5685359316849', NULL, 'SD0012', 'สำโรงใต้ดีเซล (กิ่งแก้ว)', 1, 1, 'denso', '2015-06-10 06:40:45', 'denso', '2015-06-10 13:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(4) NOT NULL,
  `group_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `warranty_condition`
--

CREATE TABLE IF NOT EXISTS `warranty_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto Generated key of the table',
  `condition_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maker_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID of the car maker.',
  `starting_date` date NOT NULL,
  `ending_date` date NOT NULL,
  `no_of_days` float(10,2) NOT NULL DEFAULT '365.00' COMMENT 'Number of days of deciding warranty period. Defaults to one year (365 days)',
  `mileage` float(15,2) NOT NULL DEFAULT '1000.00' COMMENT 'Mileage for inside the warranty period. Defaults to 1000 km.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `warranty_condition`
--

INSERT INTO `warranty_condition` (`id`, `condition_id`, `maker_id`, `starting_date`, `ending_date`, `no_of_days`, `mileage`) VALUES
(1, 'cond_01', '001', '1990-09-09', '2017-01-27', 1095.00, 100000.00),
(2, 'cond_02', '002', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(3, 'cond_03', '003', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(4, 'cond_04', '004', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(5, 'cond_05', '005', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(6, 'cond_06', '006', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(7, 'cond_07', '007', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(8, 'cond_08', '008', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(9, 'cond_09', '009', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(10, 'cond_10', '010', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(11, 'cond_11', '011', '2013-09-09', '2017-01-27', 1095.00, 100000.00),
(12, 'cond_12', '012', '2013-09-09', '2017-01-27', 1095.00, 100000.00);

-- --------------------------------------------------------

--
-- Structure for view `part_by_sd`
--
DROP TABLE IF EXISTS `part_by_sd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `part_by_sd` AS select `part_types`.`part_id` AS `part_id`,`part_types`.`name_eng` AS `name_eng`,`part_types`.`name_th` AS `name_th` from `part_types` where `part_types`.`part_id` in (select `sd_map_parts`.`part_id` from `sd_map_parts` where (`sd_map_parts`.`sd_id` = 'sd0003'));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
