-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2019 at 11:02 AM
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
  `beneficiary_Id` varchar(20) NOT NULL,
  `bName` varchar(50) NOT NULL,
  `disabilityType` varchar(20) NOT NULL,
  `disabilityPercent` varchar(10) NOT NULL,
  `dateOfAppointment` varchar(20) NOT NULL,
  `fatherName` varchar(100) NOT NULL,
  `motherName` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `aadharNo` int(20) NOT NULL,
  `serviceOffered` varchar(255) NOT NULL,
  `recommendedBy` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostelAdmission`
--

CREATE TABLE `hostelAdmission` (
  `hAdmission_Id` int(11) NOT NULL,
  `std_Id` int(11) NOT NULL,
  `hst_Id` int(11) NOT NULL,
  `paidAdmissionFee` int(50) NOT NULL,
  `paidMonthlyFee` int(50) NOT NULL,
  `admissionDate` varchar(20) NOT NULL,
  `roomNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostelAdmission`
--

INSERT INTO `hostelAdmission` (`hAdmission_Id`, `std_Id`, `hst_Id`, `paidAdmissionFee`, `paidMonthlyFee`, `admissionDate`, `roomNo`) VALUES
(9, 18, 1, 1000, 300, '2019-04-29', 9),
(10, 19, 1, 1000, 400, '2019-04-29', 8),
(11, 20, 1, 1000, 500, '2019-04-29', 7),
(12, 22, 1, 1200, 300, '2019-04-30', 9);

-- --------------------------------------------------------

--
-- Table structure for table `monthlyFee`
--

CREATE TABLE `monthlyFee` (
  `mFee_Id` int(11) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `std_Id` int(10) NOT NULL,
  `feeType` varchar(50) NOT NULL,
  `totalFeeAmt` int(20) NOT NULL,
  `payDate` varchar(20) NOT NULL,
  `paidFeeAmt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 2000, 500, 250, 'Amar');

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
  `bplCard` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentDocuments`
--

INSERT INTO `studentDocuments` (`doc_Id`, `std_Id`, `photo`, `birthCertificate`, `casteCertificate`, `disabilityCertificate`, `incomeCertificate`, `bplCard`) VALUES
(16, 20, 'uploads/5cc71f677c81e5.30643666.jpg', 'uploads/5cc71f677c8ee2.78730914.pdf', '', 'uploads/5cc71f677c94f7.87220927.pdf', 'uploads/5cc71f677c9a54.89820723.pdf', ''),
(18, 21, 'uploads/5cc720f863eef2.03287056.jpg', 'uploads/5cc720f863f286.62477100.pdf', '', 'uploads/5cc720f863f423.96279785.pdf', 'uploads/5cc720f863f593.31373937.pdf', ''),
(19, 22, 'uploads/5cc813675028d0.59682777.jpg', 'uploads/5cc813675032a1.26708750.pdf', 'uploads/5cc813675035e3.46824637.pdf', 'uploads/5cc81367503847.01765609.pdf', 'uploads/5cc81367503b33.43842211.pdf', '');

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
  `class` varchar(10) NOT NULL,
  `disabilityType` varchar(100) NOT NULL,
  `noOfDaysAttended` int(10) NOT NULL,
  `dateOfAdmission` varchar(20) NOT NULL,
  `admissionFee` int(20) NOT NULL,
  `hostel` varchar(10) NOT NULL,
  `transpotation` varchar(10) NOT NULL,
  `incomeGroup` varchar(10) NOT NULL,
  `bankAcNo` varchar(20) NOT NULL,
  `ifsc` varchar(20) NOT NULL,
  `bankBranch` varchar(100) NOT NULL,
  `iCard` varchar(20) NOT NULL,
  `aadharNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_Info`
--

INSERT INTO `students_Info` (`std_Id`, `scheme_id`, `stdName`, `dob`, `placeOfBirth`, `fatherName`, `motherName`, `gender`, `age`, `religion`, `caste`, `addres`, `statee`, `district`, `zip`, `class`, `disabilityType`, `noOfDaysAttended`, `dateOfAdmission`, `admissionFee`, `hostel`, `transpotation`, `incomeGroup`, `bankAcNo`, `ifsc`, `bankBranch`, `iCard`, `aadharNo`) VALUES
(18, 1, 'amar', '1992-03-25', 'jorhat', 'nalin', 'bharati', 'male', '27', 'hindu', 'Gen', 'jorhat', '', '', '', '7', 'Mental Retardation', 0, '2019-04-28', 1500, 'Yes', 'Yes', 'BPL', '3344666', 'sbin0000104', 'jorhat', 'amar2019', 2147483647),
(19, 1, 'zyan', '1993-07-27', 'jorhat', 'nalin', 'bharati', 'male', '25', 'hindu', 'Gen', 'malow ali', 'As', 'jorhat', '785001', '5', 'Mental Retardation', 0, '2019-04-29', 1500, 'Yes', 'Yes', 'BPL', '3344666', 'sbin0000104', 'jorhat', 'zyan2019', 2147483647),
(20, 2, 'ts', '1992-01-29', 'jorhat', 'neerav', 'neera', 'male', '27', 'hindu', 'SC', 'jorhat', 'As', 'jorhat', '785001', '4', 'Mental Retardation', 0, '2019-04-29', 1500, 'Yes', 'Yes', 'BPL', '3344666', 'sbin0000104', 'jorhat', 'ts2019', 2147483647),
(21, 2, 'dipsi', '1995-03-02', 'jorhat', 'bikash', 'mina', 'male', '24', 'hindu', 'GEN', 'club road', 'As', 'jorhat', '785001', '6', 'Mental Retardation', 0, '2019-04-29', 1500, 'Yes', 'Yes', 'LIG', '3344666', 'sbin0000104', 'jorhat', 'dips', 2147483647),
(22, 2, 'bageshree', '1993-03-31', 'jorhat', 'mukesh', 'neeta', 'female', '26', 'hindu', 'GEN', 'chirotia', 'As', 'jorhat', '785001', '8', 'Mental Retardation', 0, '2019-04-30', 1500, 'Yes', 'Yes', 'BPL', '0', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `therapy`
--

CREATE TABLE `therapy` (
  `therapy_Id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fee` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `therapy`
--

INSERT INTO `therapy` (`therapy_Id`, `name`, `fee`) VALUES
(1, 'Physio Therapy', 200),
(2, 'Speech Therapy', 150);

-- --------------------------------------------------------

--
-- Table structure for table `therapyRecipient`
--

CREATE TABLE `therapyRecipient` (
  `recipient_Id` int(11) NOT NULL,
  `std_Id` int(11) NOT NULL,
  `therapy_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(17, 'amar', 'bharatidadu47@gmail.com', '$2y$10$FLgdQpd7XImpOlo5Y1YhXuWDOio53KNBqQjDtsYoTGrU0LIRxuStK', '11-04-2019 09:11:56p', '0', ''),
(18, 'zyan', 'zyan@gmail.com', '$2y$10$xUcdne2oAHnxuk2ATaUst.mjjk6s4ZeCkzYpGHCBatPLcLnNP.1hm', '12-04-2019 05:26:07p', '1', ''),
(19, 'dipsi', 'dipsi@gmail.com', '$2y$10$ekaxYy5aXmQy1ruZiD2/7.UxKdKXHpdpDTY7jM0lKScqHwhx3Cl9e', '16-04-2019 02:07:52p', '1', ''),
(25, 'pooja', 'dipsi@gmail.com', '$2y$10$4iWqZje5vb4pZ5u.9UjPMeU77RSp6q4kurmGBMYLwJTHvpw9P8xWu', '17-04-2019 08:58:25p', '0', 'e8307635103ebb0f19dee4c3a7942a27'),
(26, 'tsdas29', 'amarjyoti.gautam@gmail.com', '$2y$10$ZAMMP0kRgwipT5V9Iv2AU.qJgQpVRWBhKzUqma2uA2J3iwm5KJTle', '22-04-2019 01:01:39p', '1', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DDRC`
--
ALTER TABLE `DDRC`
  ADD PRIMARY KEY (`beneficiary_Id`);

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
  ADD PRIMARY KEY (`std_Id`);

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
-- AUTO_INCREMENT for table `hostelAdmission`
--
ALTER TABLE `hostelAdmission`
  MODIFY `hAdmission_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `monthlyFee`
--
ALTER TABLE `monthlyFee`
  MODIFY `mFee_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respite`
--
ALTER TABLE `respite`
  MODIFY `hst_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `scheme_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentDocuments`
--
ALTER TABLE `studentDocuments`
  MODIFY `doc_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `students_Info`
--
ALTER TABLE `students_Info`
  MODIFY `std_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `therapy`
--
ALTER TABLE `therapy`
  MODIFY `therapy_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `therapyRecipient`
--
ALTER TABLE `therapyRecipient`
  MODIFY `recipient_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- Constraints for table `therapyRecipient`
--
ALTER TABLE `therapyRecipient`
  ADD CONSTRAINT `therapyRecipient_ibfk_1` FOREIGN KEY (`std_Id`) REFERENCES `students_Info` (`std_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `therapyRecipient_ibfk_2` FOREIGN KEY (`therapy_Id`) REFERENCES `therapy` (`therapy_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
