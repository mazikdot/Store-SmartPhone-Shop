-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 06:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '0836530374', '2022-05-12 11:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `money_today`
--

CREATE TABLE `money_today` (
  `money_today_id` int(4) NOT NULL,
  `money_today_name` int(10) NOT NULL,
  `amount_today` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(10) NOT NULL,
  `note_name` varchar(255) NOT NULL,
  `note_timp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_status`
--

CREATE TABLE `phone_status` (
  `status_id` int(4) NOT NULL,
  `status_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_status`
--

INSERT INTO `phone_status` (`status_id`, `status_name`) VALUES
(1, 'ปกติ'),
(2, 'เสีย'),
(3, 'ส่งซ่อม');

-- --------------------------------------------------------

--
-- Table structure for table `phone_today`
--

CREATE TABLE `phone_today` (
  `phone_today_id` int(10) NOT NULL,
  `phone_today_name` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sell_phone`
--

CREATE TABLE `sell_phone` (
  `sell_id` int(10) NOT NULL,
  `sell_name` varchar(10) DEFAULT NULL,
  `sell_amount` int(10) NOT NULL,
  `sell_price` int(10) NOT NULL,
  `sell_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sell_who` varchar(100) DEFAULT NULL,
  `sell_total` int(10) DEFAULT NULL,
  `echo_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sell_total`
--

CREATE TABLE `sell_total` (
  `total_id` int(10) NOT NULL,
  `total_name` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_list`
--

CREATE TABLE `status_list` (
  `list_id` int(4) NOT NULL,
  `list_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_phone`
--

CREATE TABLE `status_phone` (
  `echo_id` int(4) NOT NULL,
  `echo_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_phone`
--

INSERT INTO `status_phone` (`echo_id`, `echo_name`) VALUES
(1, 'IPHONE'),
(2, 'ONE PLUS'),
(3, 'SAMSUNG'),
(4, 'OPPO'),
(5, 'HUAWEI'),
(6, 'REALME'),
(7, 'VIVO'),
(8, 'XIAMO');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'ฝ่ายทะเบียน', 'RD', 'RD000', '2021-09-06 07:16:25'),
(2, 'ฝ่ายอำนวยการ', 'AM', 'AM000', '2021-09-06 07:19:37'),
(3, 'ฝ่ายรังวัด', 'SY', 'SY000', '2021-09-06 07:19:37'),
(4, 'ฝ่ายการเงิน', 'OP', 'OP000', '2021-09-06 07:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'RD001', 'นายทวีศักดิ์  ', 'นิลประเสริฐ', 'twisak@gmail.com', '36d59e2369f00c4d9f336acf4408bae9', 'ชาย', '3 February, 1990', 'ฝ่ายทะเบียน', 'จ.ปัตตานี', 'อ.เมือง', 'ไทย', '0123456789', 1, '2021-09-06 11:29:59'),
(2, 'AM001', 'นายจักรกฤษณ์', 'วัชรวรานนท์', 'james@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'ชาย', '3 February, 1990', 'ฝ่ายอำนวยการ', 'จ.สงขลา', 'อ.เมือง', 'ไทย', '9876543210', 1, '2021-09-06 13:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(1, 'มีเหตุจำเป็น', '07/09/2021', '09/10/2017', 'พ่อไม่สบาย', '2021-09-06 13:11:21', 'ถ้าหากมีเหตุจำเป็นให้พนักงานทำการเก็บหลักฐานต่างๆแล้วเอามายื่นวันที่มาทำงาน', '2021-09-06 23:26:27 ', 2, 1, 1),
(2, 'มีอาการไม่สบายกระทันหัน', '07/09/2021', '09/10/2017', 'ตัวร้อนหนัก', '2021-09-06 13:11:21', 'ถ้ามีอาการไม่สบายกระทันหันให้พนักทำการไปขอใบรับรองแพทน์และมาทำการยื่นในวันที่มาทำงาน', '2021-09-06 23:24:39 ', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'มีเหตุจำเป็น', 'ถ้าหากมีเหตุจำเป็นให้พนักงานทำการเก็บหลักฐานต่างๆแล้วเอามายื่นวันที่มาทำงาน ', '2021-09-06 12:07:56'),
(2, 'มีอาการไม่สบายกระทันหัน', 'ถ้ามีอาการไม่สบายกระทันหันให้พนักทำการไปขอใบรับรองแพทน์และมาทำการยื่นในวันที่มาทำงาน', '2021-09-06 13:16:09'),
(3, 'เนื่องจากเป็นวันหยุด', 'วันหยุดปกติ', '2021-09-06 13:16:09'),
(4, 'เกิดอุบัติเหตุระหว่างทาง', 'ทำการถ่ายรูปหรือหลักฐานต่าง', '2021-09-06 13:16:09'),
(5, 'ไม่มียานพาหนะในการเดินทาง', 'กรุณาระบุเหตุผล', '2021-09-06 13:16:09'),
(6, 'ลาอื่น', 'โปรดระบุ', '2021-09-06 13:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbphone`
--

CREATE TABLE `tbphone` (
  `phone_id` int(1) NOT NULL,
  `phone_name` varchar(100) DEFAULT NULL,
  `phone_price` int(10) NOT NULL,
  `phone_amount` int(10) NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `echo_id` int(4) NOT NULL,
  `status_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `total_phone`
--

CREATE TABLE `total_phone` (
  `id_total_phone` int(10) NOT NULL,
  `total_phone_name` int(10) NOT NULL,
  `total_timp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `total_phone2`
--

CREATE TABLE `total_phone2` (
  `id_total_phone2` int(10) NOT NULL,
  `total_phone_name2` int(10) NOT NULL,
  `total_timp2` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_today`
--
ALTER TABLE `money_today`
  ADD PRIMARY KEY (`money_today_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `phone_status`
--
ALTER TABLE `phone_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `phone_today`
--
ALTER TABLE `phone_today`
  ADD PRIMARY KEY (`phone_today_id`);

--
-- Indexes for table `sell_phone`
--
ALTER TABLE `sell_phone`
  ADD PRIMARY KEY (`sell_id`),
  ADD KEY `echo_id` (`echo_id`);

--
-- Indexes for table `sell_total`
--
ALTER TABLE `sell_total`
  ADD PRIMARY KEY (`total_id`);

--
-- Indexes for table `status_list`
--
ALTER TABLE `status_list`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `status_phone`
--
ALTER TABLE `status_phone`
  ADD PRIMARY KEY (`echo_id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbphone`
--
ALTER TABLE `tbphone`
  ADD PRIMARY KEY (`phone_id`),
  ADD KEY `echo_id` (`echo_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `total_phone`
--
ALTER TABLE `total_phone`
  ADD PRIMARY KEY (`id_total_phone`);

--
-- Indexes for table `total_phone2`
--
ALTER TABLE `total_phone2`
  ADD PRIMARY KEY (`id_total_phone2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `money_today`
--
ALTER TABLE `money_today`
  MODIFY `money_today_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_status`
--
ALTER TABLE `phone_status`
  MODIFY `status_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phone_today`
--
ALTER TABLE `phone_today`
  MODIFY `phone_today_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sell_phone`
--
ALTER TABLE `sell_phone`
  MODIFY `sell_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sell_total`
--
ALTER TABLE `sell_total`
  MODIFY `total_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_list`
--
ALTER TABLE `status_list`
  MODIFY `list_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_phone`
--
ALTER TABLE `status_phone`
  MODIFY `echo_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbphone`
--
ALTER TABLE `tbphone`
  MODIFY `phone_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `total_phone`
--
ALTER TABLE `total_phone`
  MODIFY `id_total_phone` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `total_phone2`
--
ALTER TABLE `total_phone2`
  MODIFY `id_total_phone2` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sell_phone`
--
ALTER TABLE `sell_phone`
  ADD CONSTRAINT `sell_phone_ibfk_1` FOREIGN KEY (`echo_id`) REFERENCES `status_phone` (`echo_id`);

--
-- Constraints for table `tbphone`
--
ALTER TABLE `tbphone`
  ADD CONSTRAINT `tbphone_ibfk_1` FOREIGN KEY (`echo_id`) REFERENCES `status_phone` (`echo_id`),
  ADD CONSTRAINT `tbphone_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `phone_status` (`status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
