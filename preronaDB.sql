-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2019 at 02:43 PM
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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `p_id`) VALUES
(1, 'Orthopedically handicapped', 2),
(2, 'Metally handicapped', 2),
(3, 'Wheel Chairs', 3),
(4, 'Tricycles', 3),
(5, 'Anganwadi worker', 4),
(6, 'ANM', 4),
(7, 'Radio talk', 5),
(8, 'Self help Gropus', 5),
(9, 'Self employeed', 6),
(10, 'Employed in Govt./Pvt.Sector', 6),
(11, 'No. of village surved', 7),
(12, 'Assessment camps', 7),
(13, 'Visually handicapped', 2),
(14, 'Hearing handicapped', 2),
(15, 'Multiple disability', 2),
(16, 'Aids to the hearing handicapped', 3),
(17, 'Aids to visually handicapped', 3),
(18, 'Any other aids and appliances', 3),
(19, 'Surgeries performed', 3),
(20, 'Fitment of limbs', 3),
(21, 'Teachers', 4),
(22, 'Nurses', 4),
(23, 'Others', 4),
(24, 'Preparation and free distribution of written material in local language', 5),
(25, 'T.V. coverage', 5),
(26, 'Publication of articles in print media', 5),
(27, 'Visit to school and addressing teachers/principal and students', 5),
(28, 'Meeting with parents of disabled children', 5),
(29, 'Meeting with parents of non-disabled children', 5),
(32, 'Provided disability certificate/concession', 6),
(33, 'Admission in regular school', 6),
(34, 'Follow up camps', 7),
(35, 'No. of meetings of the DMT', 7),
(36, 'Others', 7);

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
(6, 'DDRC-2019-3323-1043', 'Sudarshan Hazarika', 'Visually Handicapped', '25', '45', '2019-07-20', 'Neerav Hazarika', 'Neera Hazarika', 'male', 'christain', 'Nagaon', '7002711550', 2147483647, 'Hearing Machine', 'Amarjyoti Gautam', 'uploads/5d32fd385daef8.59291378.jpg');

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
(13, 14, 2, 3000, '2019-07-20', 1),
(14, 16, 2, 5000, '2019-07-22', 2);

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
-- Table structure for table `parentCategory`
--

CREATE TABLE `parentCategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parentCategory`
--

INSERT INTO `parentCategory` (`id`, `name`) VALUES
(2, 'Therapeutic service delivered'),
(3, 'AIDP related activities'),
(4, 'Training related activities'),
(5, 'Awareness generation'),
(6, 'Employeement/facilities concession'),
(7, 'Broad activities');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `id` int(11) NOT NULL,
  `last_year` int(11) NOT NULL DEFAULT '0',
  `current_year` int(11) NOT NULL DEFAULT '0',
  `grand_total` int(11) NOT NULL DEFAULT '0',
  `c_id` int(11) NOT NULL,
  `y_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`id`, `last_year`, `current_year`, `grand_total`, `c_id`, `y_id`) VALUES
(317, 0, 4, 4, 1, 10),
(318, 0, 4, 4, 2, 10),
(319, 0, 3, 3, 13, 10),
(320, 0, 1, 1, 14, 10),
(321, 0, 2, 2, 15, 10),
(322, 0, 1, 1, 3, 10),
(323, 0, 8, 8, 4, 10),
(324, 0, 9, 9, 16, 10),
(325, 0, 3, 3, 17, 10),
(326, 0, 1, 1, 18, 10),
(327, 0, 5, 5, 19, 10),
(328, 0, 6, 6, 20, 10),
(329, 0, 4, 4, 5, 10),
(330, 0, 3, 3, 6, 10),
(331, 0, 2, 2, 21, 10),
(332, 0, 1, 1, 22, 10),
(333, 0, 5, 5, 23, 10),
(334, 0, 4, 4, 7, 10),
(335, 0, 3, 3, 8, 10),
(336, 0, 2, 2, 24, 10),
(337, 0, 1, 1, 25, 10),
(338, 0, 4, 4, 26, 10),
(339, 0, 3, 3, 27, 10),
(340, 0, 2, 2, 28, 10),
(341, 0, 1, 1, 29, 10),
(342, 0, 4, 4, 9, 10),
(343, 0, 3, 3, 10, 10),
(344, 0, 2, 2, 32, 10),
(345, 0, 1, 1, 33, 10),
(346, 0, 10, 10, 11, 10),
(347, 0, 8, 8, 12, 10),
(348, 0, 7, 7, 34, 10),
(349, 0, 6, 6, 35, 10),
(350, 0, 4, 4, 36, 10);

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
-- Table structure for table `stdPaidFees`
--

CREATE TABLE `stdPaidFees` (
  `fee_Id` int(11) NOT NULL,
  `mFee_Id` int(11) NOT NULL,
  `std_Id` int(11) NOT NULL,
  `feeMonth` varchar(50) NOT NULL,
  `feeYear` varchar(50) NOT NULL,
  `paidFee` varchar(50) NOT NULL,
  `payDate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdPaidFees`
--

INSERT INTO `stdPaidFees` (`fee_Id`, `mFee_Id`, `std_Id`, `feeMonth`, `feeYear`, `paidFee`, `payDate`) VALUES
(5, 1, 14, 'July', '2019', '400', '2019-07-20'),
(6, 2, 14, 'July', '2019', '3000', '2019-07-20'),
(7, 3, 14, ' July', '2019', '500', ' 2019-07-20'),
(8, 1, 15, 'July', '2019', '300', '2019-07-20'),
(9, 3, 15, 'July', '2019', '500', '2019-07-20'),
(10, 4, 15, 'July', '2019', '2000', '2019-07-20');

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
(9, 14, 'uploads/5d32bff6e58224.22711277.jpg', 'uploads/5d32bff6e58a75.31576719.pdf', '', 'uploads/5d32bff6e58fc0.97284945.pdf', '', '', ''),
(10, 15, 'uploads/5d32c78fe0a6b1.58899371.jpg', 'uploads/5d32c78fe0ac40.19483520.pdf', '', 'uploads/5d32c78fe0aee8.08448437.pdf', '', '', ''),
(17, 16, 'uploads/5d35db711702f1.62333280.jpg', 'uploads/5d35db71171342.25154047.jpg', '', 'uploads/5d35db71171b79.64200600.pdf', '', '', '');

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
(14, 2, 'Amarjyoti Sharma', '1994-03-25', 'Jorhat', 'Nalin Sharma', 'Bharati Sharma', 'male', '26', 'hindu', 'GEN', 'L.M.T.C Road', 'Assam', 'Jorhat', '785001', '9859134115', '1', 'Orthopedically Handicapped', 0, '2019-07-20', 2000, '2000', 'Yes', '', 'APL', '3344666', 'SBIN0000104', 'Jorhat', 'pwd2019', 2147483647, 1),
(15, 1, 'Banashree Gautam', '1990-08-27', 'Jorhat', 'Nalin Sharma', 'Bharati Sharma', 'female', '29', 'hindu', 'GEN', 'Chirotia', 'Assam', 'Jorhat', '785001', '7002711550', '2', 'Hearing Handicapped', 0, '2019-07-20', 2000, '2000', 'No', 'Yes', 'BPL', '3344666', 'SBIN0000104', 'Jorhat', 'pwdwerf', 2147483647, 1),
(16, 1, 'Bageshree Kotoky', '1994-03-31', 'Jorhat', 'Nalin Sharma', 'Binita Neog', 'female', '25', 'hindu', 'GEN', 'Chirotia', 'Assam', 'Jorhat', '785001', '7002711550', '5', 'Visually Handicapped', 0, '2019-07-22', 2000, '2000', 'Yes', '', 'HIG', '3344666', 'SBIN0000104', 'Jorhat', 'PWD12345', 2147483647, 1);

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
(6, 14, 1),
(7, 14, 3),
(8, 15, 3),
(9, 16, 3);

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
(18, 'zyan', 'zyan@gmail.com', '$2y$10$xUcdne2oAHnxuk2ATaUst.mjjk6s4ZeCkzYpGHCBatPLcLnNP.1hm', '12-04-2019 05:26:07p', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(11) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `total_person_benefit` int(11) NOT NULL,
  `cur_yr_quater` varchar(255) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `agency`, `address`, `month`, `total_person_benefit`, `cur_yr_quater`, `year`) VALUES
(10, 'Prerona', 'DDRC,Chinnamara', 'March', 25, 'jun-oct', 2019);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`);

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
-- Indexes for table `parentCategory`
--
ALTER TABLE `parentCategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `y_id` (`y_id`);

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
-- Indexes for table `stdPaidFees`
--
ALTER TABLE `stdPaidFees`
  ADD PRIMARY KEY (`fee_Id`),
  ADD KEY `mFee_Id` (`mFee_Id`),
  ADD KEY `std_Id` (`std_Id`);

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
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `DDRC`
--
ALTER TABLE `DDRC`
  MODIFY `ddrc_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostelAdmission`
--
ALTER TABLE `hostelAdmission`
  MODIFY `hAdmission_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `monthlyFee`
--
ALTER TABLE `monthlyFee`
  MODIFY `mFee_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parentCategory`
--
ALTER TABLE `parentCategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quantity`
--
ALTER TABLE `quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

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
-- AUTO_INCREMENT for table `stdPaidFees`
--
ALTER TABLE `stdPaidFees`
  MODIFY `fee_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `studentDocuments`
--
ALTER TABLE `studentDocuments`
  MODIFY `doc_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `students_Info`
--
ALTER TABLE `students_Info`
  MODIFY `std_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `therapy`
--
ALTER TABLE `therapy`
  MODIFY `therapy_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `therapyRecipient`
--
ALTER TABLE `therapyRecipient`
  MODIFY `recipient_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `parentCategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hostelAdmission`
--
ALTER TABLE `hostelAdmission`
  ADD CONSTRAINT `hostelAdmission_ibfk_1` FOREIGN KEY (`std_Id`) REFERENCES `students_Info` (`std_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hostelAdmission_ibfk_2` FOREIGN KEY (`hst_Id`) REFERENCES `respite` (`hst_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quantity`
--
ALTER TABLE `quantity`
  ADD CONSTRAINT `quantity_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quantity_ibfk_2` FOREIGN KEY (`y_id`) REFERENCES `year` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stdPaidFees`
--
ALTER TABLE `stdPaidFees`
  ADD CONSTRAINT `stdPaidFees_ibfk_1` FOREIGN KEY (`mFee_Id`) REFERENCES `monthlyFee` (`mFee_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stdPaidFees_ibfk_2` FOREIGN KEY (`std_Id`) REFERENCES `students_Info` (`std_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
