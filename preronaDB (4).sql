-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 18, 2019 at 08:26 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `preronaDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `DDRC`
--

CREATE TABLE `DDRC` (
  `ddrc_Id` int(20) NOT NULL,
  `beneficiary_Id` varchar(100) NOT NULL,
  `bName` varchar(50) NOT NULL,
  `disabilityType` varchar(20) NOT NULL,
  `age` varchar(11) NOT NULL,
  `disabilityPercent` varchar(10) NOT NULL,
  `dateOfAppointment` varchar(20) NOT NULL,
  `fatherName` varchar(100) NOT NULL,
  `motherName` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `addres` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `aadharNo` int(20) NOT NULL,
  `serviceOffered` varchar(255) NOT NULL,
  `recommendedBy` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DDRC`
--

INSERT INTO `DDRC` (`ddrc_Id`, `beneficiary_Id`, `bName`, `disabilityType`, `age`, `disabilityPercent`, `dateOfAppointment`, `fatherName`, `motherName`, `gender`, `religion`, `addres`, `phone`, `aadharNo`, `serviceOffered`, `recommendedBy`, `photo`) VALUES
(2, 'DDRC-2019-1375-0341', 'Deepak Neog', 'Mentally Handicapped', '25', '45', '2019-07-18', 'Neelam Das', 'Neera', 'Female', 'hindu', 'Jorhat', '7002711550', 2147483647, 'Hearing Machine', 'Amarjyoti Gautam', 'uploads/5d29be5e12fe68.70821865.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hostelAdmission`
--

CREATE TABLE `hostelAdmission` (
  `hAdmission_Id` int(11) NOT NULL,
  `std_Id` int(11) NOT NULL,
  `hst_Id` int(11) NOT NULL,
  `paidAdmissionFee` int(50) NOT NULL,
  `admissionDate` varchar(20) NOT NULL,
  `roomNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostelAdmission`
--

INSERT INTO `hostelAdmission` (`hAdmission_Id`, `std_Id`, `hst_Id`, `paidAdmissionFee`, `admissionDate`, `roomNo`) VALUES
(11, 12, 2, 4000, '2019-07-18', 3),
(12, 13, 2, 3000, '2019-07-18', 5);

-- --------------------------------------------------------

--
-- Table structure for table `monthlyFee`
--

CREATE TABLE `monthlyFee` (
  `mFee_Id` int(11) NOT NULL,
  `feeType` varchar(50) NOT NULL,
  `totalFeeAmt` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthlyFee`
--

INSERT INTO `monthlyFee` (`mFee_Id`, `feeType`, `totalFeeAmt`) VALUES
(1, 'school fee', 400),
(2, 'respite fee', 4500),
(3, 'therapetic service fee', 500),
(4, 'conveyance service fee', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `respite`
--

CREATE TABLE `respite` (
  `hst_Id` int(11) NOT NULL,
  `admissionFee` int(11) NOT NULL,
  `monthlyFee` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `warden` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respite`
--

INSERT INTO `respite` (`hst_Id`, `admissionFee`, `monthlyFee`, `capacity`, `warden`) VALUES
(2, 5000, 3500, 20, 'Sayera Rehman');

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `scheme_Id` int(11) NOT NULL,
  `schemeName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheme`
--

INSERT INTO `scheme` (`scheme_Id`, `schemeName`) VALUES
(1, 'Disha'),
(2, 'Special School');

-- --------------------------------------------------------

--
-- Table structure for table `studentDocuments`
--

CREATE TABLE `studentDocuments` (
  `doc_Id` int(11) NOT NULL,
  `std_Id` int(10) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `birthCertificate` varchar(255) NOT NULL,
  `casteCertificate` varchar(255) NOT NULL,
  `disabilityCertificate` varchar(255) NOT NULL,
  `incomeCertificate` varchar(255) NOT NULL,
  `guardianCertificate` varchar(255) NOT NULL,
  `niramayaCard` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentDocuments`
--

INSERT INTO `studentDocuments` (`doc_Id`, `std_Id`, `photo`, `birthCertificate`, `casteCertificate`, `disabilityCertificate`, `incomeCertificate`, `guardianCertificate`, `niramayaCard`) VALUES
(7, 13, 'uploads/5d309e3a5ab710.75759105.jpg', 'uploads/5d309e3a5abc83.35803785.pdf', '', 'uploads/5d309e3a5abf67.62322761.pdf', '', '', ''),
(8, 12, 'uploads/5d309fa2974974.88297093.jpg', 'uploads/5d309fa2975166.60755046.pdf', '', 'uploads/5d309fa2975492.90281995.pdf', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `students_Info`
--

CREATE TABLE `students_Info` (
  `std_Id` int(11) NOT NULL,
  `scheme_id` int(10) NOT NULL,
  `stdName` varchar(50) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `placeOfBirth` varchar(100) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `motherName` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` varchar(50) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `addres` varchar(50) NOT NULL,
  `statee` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `class` varchar(10) NOT NULL,
  `disabilityType` varchar(100) NOT NULL,
  `noOfDaysAttended` int(10) NOT NULL,
  `dateOfAdmission` varchar(20) NOT NULL,
  `admissionFee` int(20) NOT NULL DEFAULT '2000',
  `paidAdmissionFee` varchar(20) NOT NULL,
  `hostel` varchar(10) NOT NULL,
  `transpotation` varchar(10) NOT NULL,
  `incomeGroup` varchar(10) NOT NULL,
  `bankAcNo` varchar(20) NOT NULL,
  `ifsc` varchar(20) NOT NULL,
  `bankBranch` varchar(100) NOT NULL,
  `iCard` varchar(20) NOT NULL,
  `aadharNo` int(10) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_Info`
--

INSERT INTO `students_Info` (`std_Id`, `scheme_id`, `stdName`, `dob`, `placeOfBirth`, `fatherName`, `motherName`, `gender`, `age`, `religion`, `caste`, `addres`, `statee`, `district`, `zip`, `phone`, `class`, `disabilityType`, `noOfDaysAttended`, `dateOfAdmission`, `admissionFee`, `paidAdmissionFee`, `hostel`, `transpotation`, `incomeGroup`, `bankAcNo`, `ifsc`, `bankBranch`, `iCard`, `aadharNo`, `active`) VALUES
(12, 1, 'Deepak Neog', '1995-03-25', 'Jorhat', 'Mukesh Neog', 'Binita Neog', 'male', '24', 'hindu', 'GEN', 'Chirotia Gaon,Near Megha Bibah Bhavan,PS Pulibor', 'Assam', 'Jorhat', '785001', '9859134115', '5', 'Orthopedically Handicapped', 0, '2019-07-18', 2000, '2000', 'Yes', '', 'APL', '3344666', 'SBIN0000104', 'Jorhat', 'qqwwrtt6t', 2147483647, 1),
(13, 2, 'Amar Sharma', '1994-03-25', 'Jorhat', 'Nalin Sharma', 'Bharati Sharma', 'male', '25', 'hindu', 'GEN', 'Jorhat', 'Assam', 'Jorhat', '785001', '9859134115', '8', 'Mentally Handicapped', 0, '2019-07-18', 2000, '2000', 'Yes', '', 'BPL', '3344666', 'SBIN0000104', 'Jorhat', 'pwd3r56', 2147483647, 1);

-- --------------------------------------------------------

--
-- Table structure for table `therapy`
--

CREATE TABLE `therapy` (
  `therapy_Id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `therapy`
--

INSERT INTO `therapy` (`therapy_Id`, `name`) VALUES
(1, 'Physio Therapy'),
(2, 'Speech Therapy'),
(3, 'Music Therapy'),
(4, 'Psychological Development');

-- --------------------------------------------------------

--
-- Table structure for table `therapyRecipient`
--

CREATE TABLE `therapyRecipient` (
  `recipient_Id` int(11) NOT NULL,
  `std_Id` int(11) NOT NULL,
  `therapy_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `therapyRecipient`
--

INSERT INTO `therapyRecipient` (`recipient_Id`, `std_Id`, `therapy_Id`) VALUES
(3, 12, 1),
(4, 12, 3),
(5, 13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_Id` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `createdAt` varchar(20) NOT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT '0',
  `resetCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_Id`, `userName`, `email`, `pswd`, `createdAt`, `is_active`, `resetCode`) VALUES
(18, 'zyan', 'zyan@gmail.com', '$2y$10$xUcdne2oAHnxuk2ATaUst.mjjk6s4ZeCkzYpGHCBatPLcLnNP.1hm', '12-04-2019 05:26:07p', '1', ''),
(26, 'tsdas29', 'amarjyoti.gautam@gmail.com', '$2y$10$ZAMMP0kRgwipT5V9Iv2AU.qJgQpVRWBhKzUqma2uA2J3iwm5KJTle', '22-04-2019 01:01:39p', '1', ''),
(32, 'dipsikha', 'bharatidadu47@gmail.com', '$2y$10$1jrNwnURqgQc/pfDysrJNuW4OnKbLDtPrUiEmpKbg96T.9PP8hpvu', '26-06-2019 11:40:29a', '1', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DDRC`
--
ALTER TABLE `DDRC`
  ADD PRIMARY KEY (`ddrc_Id`);

--
-- Indexes for table `hostelAdmission`
--
ALTER TABLE `hostelAdmission`
  ADD PRIMARY KEY (`hAdmission_Id`),
  ADD KEY `std_Id` (`std_Id`),
  ADD KEY `hst_Id` (`hst_Id`);

--
-- Indexes for table `monthlyFee`
--
ALTER TABLE `monthlyFee`
  ADD PRIMARY KEY (`mFee_Id`);

--
-- Indexes for table `respite`
--
ALTER TABLE `respite`
  ADD PRIMARY KEY (`hst_Id`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`scheme_Id`);

--
-- Indexes for table `studentDocuments`
--
ALTER TABLE `studentDocuments`
  ADD PRIMARY KEY (`doc_Id`),
  ADD KEY `std_Id` (`std_Id`);

--
-- Indexes for table `students_Info`
--
ALTER TABLE `students_Info`
  ADD PRIMARY KEY (`std_Id`),
  ADD KEY `scheme_id` (`scheme_id`);

--
-- Indexes for table `therapy`
--
ALTER TABLE `therapy`
  ADD PRIMARY KEY (`therapy_Id`);

--
-- Indexes for table `therapyRecipient`
--
ALTER TABLE `therapyRecipient`
  ADD PRIMARY KEY (`recipient_Id`),
  ADD KEY `std_Id` (`std_Id`),
  ADD KEY `therapy_Id` (`therapy_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DDRC`
--
ALTER TABLE `DDRC`
  MODIFY `ddrc_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hostelAdmission`
--
ALTER TABLE `hostelAdmission`
  MODIFY `hAdmission_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `monthlyFee`
--
ALTER TABLE `monthlyFee`
  MODIFY `mFee_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `respite`
--
ALTER TABLE `respite`
  MODIFY `hst_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `scheme_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentDocuments`
--
ALTER TABLE `studentDocuments`
  MODIFY `doc_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students_Info`
--
ALTER TABLE `students_Info`
  MODIFY `std_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `therapy`
--
ALTER TABLE `therapy`
  MODIFY `therapy_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `therapyRecipient`
--
ALTER TABLE `therapyRecipient`
  MODIFY `recipient_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hostelAdmission`
--
ALTER TABLE `hostelAdmission`
  ADD CONSTRAINT `hostelAdmission_ibfk_1` FOREIGN KEY (`std_Id`) REFERENCES `students_Info` (`std_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hostelAdmission_ibfk_2` FOREIGN KEY (`hst_Id`) REFERENCES `respite` (`hst_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studentDocuments`
--
ALTER TABLE `studentDocuments`
  ADD CONSTRAINT `studentDocuments_ibfk_1` FOREIGN KEY (`std_Id`) REFERENCES `students_Info` (`std_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students_Info`
--
ALTER TABLE `students_Info`
  ADD CONSTRAINT `students_Info_ibfk_1` FOREIGN KEY (`scheme_id`) REFERENCES `scheme` (`scheme_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `therapyRecipient`
--
ALTER TABLE `therapyRecipient`
  ADD CONSTRAINT `therapyRecipient_ibfk_1` FOREIGN KEY (`std_Id`) REFERENCES `students_Info` (`std_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `therapyRecipient_ibfk_2` FOREIGN KEY (`therapy_Id`) REFERENCES `therapy` (`therapy_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
