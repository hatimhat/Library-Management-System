-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 01:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `isbnno` varchar(20) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `place` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 1,
  `virtual_link` varchar(600) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `isbnno`, `author`, `publisher`, `price`, `quantity`, `place`, `category`, `availability`, `virtual_link`, `created_at`) VALUES
(1, 'fq', 'dfb', 'g', 'fg', 88.00, 8, 'london', 'fiction', 1, '', '2023-12-05 14:13:02'),
(2, 'fq', 'dfb', 'g', 'fg', 88.00, 8, 'london', 'fiction', 1, '', '2023-12-05 14:15:04'),
(3, 'hasfvnk', 'dfb', 'dfmnk', 'fg', 4.99, 25, 'london', 'fiction', 1, 'https://www.amazon.co.uk/Harry-Potter-Philosophers-Stone-Rowling-ebook/dp/B019PIOJYU/ref=sr_1_2?crid=3TV2H7U79Z33Z&keywords=harry+potter+books&qid=1701779395&s=digital-text&sprefix=harry+porter%2Cdigital-text%2C260&sr=1-2', '2023-12-06 01:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_table`
--

CREATE TABLE `feedback_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_table`
--

INSERT INTO `feedback_table` (`id`, `name`, `email`, `comment`, `created_at`) VALUES
(1, 'Hatim Hakeemuddin Dhinojwala', 'hatimdhinoj021@gmail.com', 'alsdn', '2023-12-01 12:16:35'),
(2, 'Hatim Hakeemuddin', 'hatimdhinoj021@gmail.com', ',nmn', '2023-12-01 12:18:29'),
(3, 'Hatim Hakeemuddin', 'hatimdhinoj021@gmail.com', ',nmn', '2023-12-01 12:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `id` int(11) NOT NULL,
  `book_name` longtext NOT NULL,
  `isbnno` varchar(2500) NOT NULL,
  `author` varchar(2500) NOT NULL,
  `publisher` text NOT NULL,
  `price` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `place` text NOT NULL,
  `category` varchar(250) NOT NULL,
  `availability` tinyint(4) NOT NULL COMMENT '1=available, 0=not available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `virtual_link` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`id`, `book_name`, `isbnno`, `author`, `publisher`, `price`, `quantity`, `place`, `category`, `availability`, `created_at`, `virtual_link`) VALUES
(5, 'Harry Potter and the Philosophe', '145866', ' J.K. Rowling', 'Pottermore Publishing', '4', '2', 'london', 'fiction', 1, '2023-12-11 11:53:58', 'https://www.amazon.co.uk/Harry-Potter-Philosophers-Stone-Rowling-ebook/dp/B019PIOJYU/ref=sr_1_2?crid=3TV2H7U79Z33Z&keywords=harry+potter+books&qid=1701779395&s=digital-text&sprefix=harry+porter%2Cdigital-text%2C260&sr=1-2'),
(6, 'Hands-On Machine Learning', '1098125975', 'Aurélien Géron', 'OReilly Media', '52.05', '15', 'Manchester', 'Programming', 1, '2023-12-11 11:49:46', 'https://www.amazon.co.uk/Hands-Machine-Learning-Scikit-Learn-TensorFlow-ebook/dp/B0BHCFNY9Q/ref=tmm_kin_swatch_0?_encoding=UTF8&qid=&sr='),
(7, 'Alexander Johnson', '1738454215', 'Alexander Johnson', 'Explain It Now Books', '4.50', '54', 'Manchester', 'Architecture & Microprocessors', 1, '2023-12-11 11:52:52', 'https://amzn.eu/d/fLRvTBQ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=active, 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `status`, `created_at`) VALUES
(1, 'fiction', 1, '2023-12-05 12:53:33'),
(2, 'Programming', 1, '2023-12-11 11:46:18'),
(3, 'Architecture & Microprocessors', 1, '2023-12-11 11:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_issue`
--

CREATE TABLE `tbl_issue` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `issue_date` varchar(250) NOT NULL,
  `due_date` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT '0' COMMENT '3=request sent, 1=accept, 2=reject',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_issue`
--

INSERT INTO `tbl_issue` (`id`, `book_id`, `user_id`, `user_name`, `issue_date`, `due_date`, `status`, `created_at`) VALUES
(2, 5, 2, 'sai@gmail.com', '', '', '3', '2023-12-11 12:44:42'),
(3, 6, 2, 'sai@gmail.com', '', '', '3', '2023-12-11 12:44:47'),
(4, 7, 2, 'sai@gmail.com', '', '', '3', '2023-12-11 12:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=active, 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'london', 1, '2023-12-05 12:53:56'),
(2, 'Manchester', 1, '2023-12-11 11:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return`
--

CREATE TABLE `tbl_return` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `return_date` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `emailid` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` tinyint(4) NOT NULL COMMENT '1=admin, 2=user',
  `status` tinyint(4) NOT NULL COMMENT '1=active, 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_name`, `emailid`, `password`, `role`, `status`, `created_at`) VALUES
(1, 'Admin', 'admin@library.com', '6b8d5de3b53751bac499eb1bef762a2a', 1, 1, '2023-05-27 13:29:44'),
(2, 'sai@gmail.com', 'sai@gmail.com', '585a32b10bf63cc329536ed8dbcb006a', 2, 1, '2023-11-27 14:46:52'),
(3, 'admin@123', 'admin@123', 'e6e061838856bf47e1de730719fb2609', 1, 1, '2023-12-05 14:04:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_table`
--
ALTER TABLE `feedback_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tbl_book` ADD FULLTEXT KEY `book_name` (`book_name`);
ALTER TABLE `tbl_book` ADD FULLTEXT KEY `book_name_2` (`book_name`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_issue`
--
ALTER TABLE `tbl_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_return`
--
ALTER TABLE `tbl_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback_table`
--
ALTER TABLE `feedback_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_issue`
--
ALTER TABLE `tbl_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_return`
--
ALTER TABLE `tbl_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
