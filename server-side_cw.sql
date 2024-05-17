-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 09:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server-side_cw`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `title`, `question_id`, `question`, `answer`, `username`, `created_at`, `updated_at`) VALUES
(27, 'Web Development', 3, 'Why is HTTPS important for secure communication?', '\nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'Raj', '2024-05-14 17:10:21', '2024-05-14 17:10:21'),
(28, 'Database System', 6, 'What is a primary key in a database table, and why is it important?', 'A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'White', '2024-05-14 17:11:38', '2024-05-14 17:11:38'),
(29, 'teting 123', 24, 'testing question 123', 'knl,jbkjbjb  n mnnn', 'David', '2024-05-14 17:16:29', '2024-05-14 17:16:29'),
(30, 'Web Development', 1, 'Describe the difference between stateful and stateless web applications.', 'Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'joe', '2024-05-15 04:38:56', '2024-05-15 04:38:56'),
(31, 'Web Development', 3, 'Why is HTTPS important for secure communication?', 'HTTPS authenticates the server, ensuring users connect to legitimate websites and reducing the risk of phishing attacks. Overall, HTTPS is essential for maintaining privacy, security, and trust online.', 'joe', '2024-05-15 07:28:25', '2024-05-15 07:28:25'),
(32, 'Operating Systems', 9, 'Describe the role of an operating system\'s scheduler.', 'the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'joe', '2024-05-15 12:06:47', '2024-05-15 12:06:47'),
(33, 'Operating Systems', 10, 'What is virtual memory, and how does it work?', 'virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'jack', '2024-05-15 12:09:27', '2024-05-15 12:09:27'),
(34, '', 9, 'Describe the role of an operating system\'s scheduler.', 'The operating system\'s scheduler manages the allocation of CPU resources among processes and threads. Its role is to decide which process or thread should run next and for how long, based on various scheduling algorithms, to optimize system performance, fairness, and responsiveness.', 'Roy', '2024-05-15 16:52:35', '2024-05-15 16:52:35'),
(39, 'teting 123', 24, 'testing question 123', 'lskdnflsndfjs ', 'Roy', '2024-05-15 17:14:15', '2024-05-15 17:14:15'),
(40, 'teting 123', 24, 'testing question 123', 'kjbkjbkj', 'Roy', '2024-05-15 17:15:22', '2024-05-15 17:15:22'),
(41, 'teting 123', 24, 'testing question 123', 'testing 123 testing 123', 'Roy', '2024-05-15 17:16:24', '2024-05-15 17:16:24'),
(42, 'sample title 001', 25, 'sample question 001', 'sampling answer 123 123', 'Roy', '2024-05-15 17:18:28', '2024-05-15 17:18:28'),
(43, 'sample question testing 002', 26, 'sample answer for question 002', 'sample answer 002', 'tom', '2024-05-15 19:15:53', '2024-05-15 19:15:53'),
(44, 'sample title by kelvin', 27, 'kelvin testing question 123', 'kevin sample answer 123456', 'kelvin', '2024-05-16 18:04:04', '2024-05-16 18:04:04'),
(45, 'kelvin2', 28, 'sample question testing 123', 'kelvin 2 testing2', 'kelvin', '2024-05-16 18:06:46', '2024-05-16 18:06:46'),
(46, 'testing title- Alex', 29, 'sample question posted by Alex- testing ', 'this is the sample answer for the alex question', 'Alex', '2024-05-17 03:48:31', '2024-05-17 03:48:31'),
(47, 'sample title testing for user 501', 31, 'sample question posted by user 501', 'This is the sample answer for the user 501 ', 'user501', '2024-05-17 11:35:36', '2024-05-17 11:35:36'),
(48, 'sample titile created by user james', 32, 'this is the sample question posted by user James', 'this is the sample answer for the above question posted by James user', 'james', '2024-05-17 16:38:21', '2024-05-17 16:38:21'),
(49, 'sample title 002', 33, 'sample question posted for the title 002', 'this is the sample answer posted for 002', 'Raj', '2024-05-17 18:12:55', '2024-05-17 18:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `question` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `question`, `username`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'Describe the difference between stateful and stateless web applications.', 'Raj', NULL, '2024-05-12 09:43:48', '2024-05-14 10:59:30'),
(2, 'Web Development', 'Explain the concept of RESTful APIs and provide an example of a RESTful API endpoint.', 'John', NULL, '2024-05-12 09:48:26', '2024-05-14 11:08:51'),
(3, 'Web Development', 'Why is HTTPS important for secure communication?', 'Raj', NULL, '2024-05-12 10:11:08', '2024-05-14 11:04:13'),
(4, 'Web Development', 'What is the difference between HTTP and HTTPS?', 'David', NULL, '2024-05-13 07:19:24', '2024-05-14 11:07:38'),
(5, 'Database System', 'What is the difference between a relational database and a NoSQL database?', 'Alex', NULL, '2024-05-13 07:19:52', '2024-05-14 11:10:31'),
(6, 'Database System', 'What is a primary key in a database table, and why is it important?', 'White', NULL, '2024-05-13 07:33:56', '2024-05-14 11:10:19'),
(7, 'Database System', 'Why do we use foreign keys in database design?\r\n', 'Peter', NULL, '2024-05-13 07:37:08', '2024-05-14 11:12:22'),
(8, 'Operating Systems', 'Explain the difference between process and thread.', 'Roy', NULL, '2024-05-13 07:38:29', '2024-05-14 11:14:14'),
(9, 'Operating Systems', 'Describe the role of an operating system\'s scheduler.', 'Joe', NULL, '2024-05-13 07:56:27', '2024-05-14 11:14:47'),
(10, 'Operating Systems', 'What is virtual memory, and how does it work?', 'Harry', NULL, '2024-05-13 12:20:57', '2024-05-14 11:15:24'),
(24, 'teting 123', 'testing question 123', 'Raj', NULL, '2024-05-14 11:20:35', '2024-05-14 11:20:35'),
(25, 'sample title 001', 'sample question 001', 'Roy', NULL, '2024-05-15 17:17:51', '2024-05-15 17:17:51'),
(26, 'sample question testing 002', 'sample answer for question 002', 'tom', NULL, '2024-05-15 19:15:14', '2024-05-15 19:15:14'),
(27, 'sample title by kelvin', 'kelvin testing question 123', 'kelvin', NULL, '2024-05-16 18:02:38', '2024-05-16 18:02:38'),
(28, 'kelvin2', 'sample question testing 123', 'kelvin', NULL, '2024-05-16 18:06:19', '2024-05-16 18:06:19'),
(29, 'testing title- Alex', 'sample question posted by Alex- testing ', 'Alex', NULL, '2024-05-17 03:48:05', '2024-05-17 03:48:05'),
(30, 'testing 12345', 'sample question testing 12345', 'tom', NULL, '2024-05-17 07:35:19', '2024-05-17 07:35:19'),
(31, 'sample title testing for user 501', 'sample question posted by user 501', 'user501', NULL, '2024-05-17 11:35:03', '2024-05-17 11:35:03'),
(32, 'sample titile created by user james', 'this is the sample question posted by user James', 'james', NULL, '2024-05-17 16:37:45', '2024-05-17 16:37:45'),
(33, 'sample title 002', 'sample question posted for the title 002', 'Raj', NULL, '2024-05-17 18:12:25', '2024-05-17 18:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Raj', 'test1@gmail.com', '1234', '2024-04-29 13:33:31', '2024-05-14 10:38:47'),
(2, 'David', 'test2@gmail.com', '123', '2024-04-29 13:37:25', '2024-05-14 10:52:56'),
(3, 'Peter', 'test3@gmail.com', '1234', '2024-05-10 07:42:31', '2024-05-14 10:53:06'),
(4, 'Kamal', 'test4@gmail.com', '1234', '2024-05-10 07:42:33', '2024-05-14 10:55:18'),
(5, 'Joe', 'test5@gmail.com', '1234', '2024-05-10 07:42:33', '2024-05-14 11:08:18'),
(6, 'Alex', 'test6@gmail.com', '1234', '2024-05-10 07:42:34', '2024-05-14 11:08:28'),
(7, 'John', 'test7@gmail.com', '1234', '2024-05-10 07:42:35', '2024-05-14 11:08:37'),
(8, 'White', 'test8@gmail.com', '1234', '2024-05-10 07:42:36', '2024-05-14 11:08:09'),
(9, 'Roy', 'test9@gmail.com', '1234', '2024-05-10 07:42:37', '2024-05-14 10:56:01'),
(10, 'Harry', 'test10@gmail.com', '1234', '2024-05-10 07:42:38', '2024-05-14 10:55:53'),
(102, 'jack', 'test11@gmail.com', '12345', '2024-05-14 13:51:55', '2024-05-14 13:51:55'),
(163, 'james', 'test02@gmail.com', '12345', '2024-05-17 13:06:45', '2024-05-17 13:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `vote` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `question_id`, `question`, `answer`, `username`, `vote`, `created_at`, `updated_at`) VALUES
(1, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', 1, '2024-05-16 14:26:20', '2024-05-16 14:44:07'),
(2, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', 1, '2024-05-16 14:26:39', '2024-05-16 14:44:22'),
(4, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', 1, '2024-05-16 14:38:25', '2024-05-16 14:38:25'),
(5, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', -1, '2024-05-16 14:39:03', '2024-05-16 14:39:03'),
(6, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', 1, '2024-05-16 14:48:33', '2024-05-16 14:48:33'),
(7, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', 1, '2024-05-16 14:48:37', '2024-05-16 14:48:37'),
(8, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', 1, '2024-05-16 14:56:33', '2024-05-16 14:56:33'),
(9, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', -1, '2024-05-16 14:57:54', '2024-05-16 14:57:54'),
(10, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', -1, '2024-05-16 14:57:57', '2024-05-16 14:57:57'),
(11, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', -1, '2024-05-16 14:57:59', '2024-05-16 14:57:59'),
(12, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: The operating system\'s scheduler manages the allocation of CPU resources among processes and threads. Its role is to decide which process or thread should run next and for how long, based on various scheduling algorithms, to optimize system performance, fairness, and responsiveness.', 'tom', 1, '2024-05-16 14:58:25', '2024-05-16 14:58:25'),
(13, 24, 'Question: testing question 123', 'Posted Answer: kjbkjbkj', 'tom', 1, '2024-05-16 14:58:30', '2024-05-16 14:58:30'),
(14, 24, 'Question: testing question 123', 'Posted Answer: kjbkjbkj', 'tom', 1, '2024-05-16 14:58:32', '2024-05-16 14:58:32'),
(15, 24, 'Question: testing question 123', 'Posted Answer: kjbkjbkj', 'tom', 1, '2024-05-16 14:58:38', '2024-05-16 14:58:38'),
(16, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: The operating system\'s scheduler manages the allocation of CPU resources among processes and threads. Its role is to decide which process or thread should run next and for how long, based on various scheduling algorithms, to optimize system performance, fairness, and responsiveness.', 'tom', 1, '2024-05-16 14:58:42', '2024-05-16 14:58:42'),
(17, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: The operating system\'s scheduler manages the allocation of CPU resources among processes and threads. Its role is to decide which process or thread should run next and for how long, based on various scheduling algorithms, to optimize system performance, fairness, and responsiveness.', 'tom', 1, '2024-05-16 14:58:42', '2024-05-16 14:58:42'),
(18, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: The operating system\'s scheduler manages the allocation of CPU resources among processes and threads. Its role is to decide which process or thread should run next and for how long, based on various scheduling algorithms, to optimize system performance, fairness, and responsiveness.', 'tom', 1, '2024-05-16 14:58:42', '2024-05-16 14:58:42'),
(19, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: The operating system\'s scheduler manages the allocation of CPU resources among processes and threads. Its role is to decide which process or thread should run next and for how long, based on various scheduling algorithms, to optimize system performance, fairness, and responsiveness.', 'tom', -1, '2024-05-16 14:58:46', '2024-05-16 14:58:46'),
(20, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: The operating system\'s scheduler manages the allocation of CPU resources among processes and threads. Its role is to decide which process or thread should run next and for how long, based on various scheduling algorithms, to optimize system performance, fairness, and responsiveness.', 'tom', -1, '2024-05-16 14:58:47', '2024-05-16 14:58:47'),
(21, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: The operating system\'s scheduler manages the allocation of CPU resources among processes and threads. Its role is to decide which process or thread should run next and for how long, based on various scheduling algorithms, to optimize system performance, fairness, and responsiveness.', 'tom', -1, '2024-05-16 14:59:08', '2024-05-16 14:59:08'),
(22, 24, 'Question: testing question 123', 'Posted Answer: lskdnflsndfjs ', 'tom', -1, '2024-05-16 15:00:44', '2024-05-16 15:00:44'),
(23, 10, 'Question: What is virtual memory, and how does it work?', 'Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'tom', 1, '2024-05-16 15:22:09', '2024-05-16 15:22:09'),
(24, 10, 'Question: What is virtual memory, and how does it work?', 'Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'tom', 1, '2024-05-16 15:22:10', '2024-05-16 15:22:10'),
(25, 10, 'Question: What is virtual memory, and how does it work?', 'Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'tom', 1, '2024-05-16 16:12:39', '2024-05-16 16:12:39'),
(26, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', 1, '2024-05-16 16:42:42', '2024-05-16 16:42:42'),
(27, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', 1, '2024-05-16 16:42:44', '2024-05-16 16:42:44'),
(28, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', -1, '2024-05-16 16:42:46', '2024-05-16 16:42:46'),
(29, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', -1, '2024-05-16 16:42:47', '2024-05-16 16:42:47'),
(30, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', 1, '2024-05-16 16:44:17', '2024-05-16 16:44:17'),
(31, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', 1, '2024-05-16 16:44:18', '2024-05-16 16:44:18'),
(32, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', -1, '2024-05-16 16:44:23', '2024-05-16 16:44:23'),
(33, 24, 'Question: testing question 123', 'Posted Answer: knl,jbkjbjb  n mnnn', 'tom', 1, '2024-05-16 16:47:17', '2024-05-16 16:47:17'),
(34, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: HTTPS authenticates the server, ensuring users connect to legitimate websites and reducing the risk of phishing attacks. Overall, HTTPS is essential for maintaining privacy, security, and trust online.', 'tom', 1, '2024-05-16 16:47:31', '2024-05-16 16:47:31'),
(35, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: HTTPS authenticates the server, ensuring users connect to legitimate websites and reducing the risk of phishing attacks. Overall, HTTPS is essential for maintaining privacy, security, and trust online.', 'tom', 1, '2024-05-16 16:47:31', '2024-05-16 16:47:31'),
(36, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: HTTPS authenticates the server, ensuring users connect to legitimate websites and reducing the risk of phishing attacks. Overall, HTTPS is essential for maintaining privacy, security, and trust online.', 'tom', -1, '2024-05-16 16:47:36', '2024-05-16 16:47:36'),
(37, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', 1, '2024-05-16 17:02:28', '2024-05-16 17:02:28'),
(38, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', -1, '2024-05-16 17:02:31', '2024-05-16 17:02:31'),
(39, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'tom', 1, '2024-05-16 17:02:33', '2024-05-16 17:02:33'),
(40, 24, 'Question: testing question 123', 'Posted Answer: kjbkjbkj', 'tom', 1, '2024-05-16 17:02:47', '2024-05-16 17:02:47'),
(41, 24, 'Question: testing question 123', 'Posted Answer: kjbkjbkj', 'tom', 1, '2024-05-16 17:02:49', '2024-05-16 17:02:49'),
(42, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', 1, '2024-05-16 17:09:06', '2024-05-16 17:09:06'),
(43, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', 1, '2024-05-16 17:09:07', '2024-05-16 17:09:07'),
(44, 1, 'Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'tom', -1, '2024-05-16 17:48:01', '2024-05-16 17:48:01'),
(45, 1, 'Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'tom', -1, '2024-05-16 17:48:01', '2024-05-16 17:48:01'),
(46, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'tom', -1, '2024-05-16 17:51:37', '2024-05-16 17:51:37'),
(47, 27, 'Question: kelvin testing question 123', 'Posted Answer: kevin sample answer 123456', 'kelvin', 1, '2024-05-16 18:04:27', '2024-05-16 18:04:27'),
(48, 27, 'Question: kelvin testing question 123', 'Posted Answer: kevin sample answer 123456', 'kelvin', 1, '2024-05-16 18:04:28', '2024-05-16 18:04:28'),
(49, 3, 'Question: Question: Why is HTTPS important for secure communication?', 'Posted Answer: Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'kelvin', 1, '2024-05-16 18:42:56', '2024-05-16 18:42:56'),
(50, 3, 'Question: Question: Why is HTTPS important for secure communication?', 'Posted Answer: Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'kelvin', 1, '2024-05-16 18:42:56', '2024-05-16 18:42:56'),
(51, 3, 'Question: Question: Why is HTTPS important for secure communication?', 'Posted Answer: Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'kelvin', -1, '2024-05-16 18:42:58', '2024-05-16 18:42:58'),
(52, 3, 'Question: Question: Why is HTTPS important for secure communication?', 'Posted Answer: Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'kelvin', 1, '2024-05-16 18:42:59', '2024-05-16 18:42:59'),
(53, 3, 'Question: Question: Why is HTTPS important for secure communication?', 'Posted Answer: Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'kelvin', 1, '2024-05-16 18:43:00', '2024-05-16 18:43:00'),
(54, 10, 'Question: Question: What is virtual memory, and how does it work?', 'Posted Answer: Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'kelvin', 1, '2024-05-16 18:45:07', '2024-05-16 18:45:07'),
(55, 10, 'Question: Question: What is virtual memory, and how does it work?', 'Posted Answer: Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'kelvin', 1, '2024-05-16 18:45:08', '2024-05-16 18:45:08'),
(56, 10, 'Question: Question: What is virtual memory, and how does it work?', 'Posted Answer: Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'kelvin', 1, '2024-05-16 18:45:09', '2024-05-16 18:45:09'),
(57, 10, 'Question: Question: What is virtual memory, and how does it work?', 'Posted Answer: Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'kelvin', 1, '2024-05-16 18:45:09', '2024-05-16 18:45:09'),
(58, 3, 'Question: Question: Why is HTTPS important for secure communication?', 'Posted Answer: Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'kelvin', -1, '2024-05-16 18:45:11', '2024-05-16 18:45:11'),
(59, 3, 'Question: Question: Why is HTTPS important for secure communication?', 'Posted Answer: Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'kelvin', -1, '2024-05-16 18:45:12', '2024-05-16 18:45:12'),
(60, 6, 'Question: Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'kelvin', 1, '2024-05-16 18:50:49', '2024-05-16 18:50:49'),
(61, 6, 'Question: Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'kelvin', 1, '2024-05-16 18:50:50', '2024-05-16 18:50:50'),
(62, 1, 'Question: Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'kelvin', 1, '2024-05-16 18:51:13', '2024-05-16 18:51:13'),
(63, 1, 'Question: Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'kelvin', 1, '2024-05-16 18:51:13', '2024-05-16 18:51:13'),
(64, 1, 'Question: Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'kelvin', 1, '2024-05-16 18:51:14', '2024-05-16 18:51:14'),
(65, 1, 'Question: Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'kelvin', 1, '2024-05-16 18:51:14', '2024-05-16 18:51:14'),
(66, 24, 'Question: Question: testing question 123', 'Posted Answer: Posted Answer: kjbkjbkj', 'kelvin', 1, '2024-05-16 19:03:40', '2024-05-16 19:03:40'),
(67, 24, 'Question: Question: testing question 123', 'Posted Answer: Posted Answer: kjbkjbkj', 'kelvin', 1, '2024-05-16 19:03:41', '2024-05-16 19:03:41'),
(68, 26, 'Question: sample answer for question 002', 'Posted Answer: sample answer 002', 'kelvin', 1, '2024-05-16 19:30:10', '2024-05-16 19:30:10'),
(69, 26, 'Question: sample answer for question 002', 'Posted Answer: sample answer 002', 'kelvin', 1, '2024-05-16 19:30:10', '2024-05-16 19:30:10'),
(70, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'kelvin', -1, '2024-05-16 19:30:23', '2024-05-16 19:30:23'),
(71, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'kelvin', -1, '2024-05-16 19:30:23', '2024-05-16 19:30:23'),
(72, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'kelvin', -1, '2024-05-16 19:30:24', '2024-05-16 19:30:24'),
(73, 29, 'Question: sample question posted by Alex- testing ', 'Posted Answer: this is the sample answer for the alex question', 'Alex', 1, '2024-05-17 03:49:07', '2024-05-17 03:49:07'),
(74, 29, 'Question: sample question posted by Alex- testing ', 'Posted Answer: this is the sample answer for the alex question', 'Alex', 1, '2024-05-17 03:49:08', '2024-05-17 03:49:08'),
(75, 29, 'Question: sample question posted by Alex- testing ', 'Posted Answer: this is the sample answer for the alex question', 'Alex', 1, '2024-05-17 03:49:09', '2024-05-17 03:49:09'),
(76, 29, 'Question: sample question posted by Alex- testing ', 'Posted Answer: this is the sample answer for the alex question', 'Alex', 1, '2024-05-17 03:49:10', '2024-05-17 03:49:10'),
(77, 24, 'Question: testing question 123', 'Posted Answer: knl,jbkjbjb  n mnnn', 'raj', -1, '2024-05-17 05:08:59', '2024-05-17 05:08:59'),
(78, 24, 'Question: testing question 123', 'Posted Answer: knl,jbkjbjb  n mnnn', 'tom', -1, '2024-05-17 08:15:49', '2024-05-17 08:15:49'),
(79, 24, 'Question: testing question 123', 'Posted Answer: knl,jbkjbjb  n mnnn', 'tom', -1, '2024-05-17 08:15:50', '2024-05-17 08:15:50'),
(80, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'user144', 1, '2024-05-17 08:38:39', '2024-05-17 08:38:39'),
(81, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'user1', 1, '2024-05-17 10:26:52', '2024-05-17 10:26:52'),
(82, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'user1', 1, '2024-05-17 10:26:52', '2024-05-17 10:26:52'),
(83, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'user1', 1, '2024-05-17 10:26:53', '2024-05-17 10:26:53'),
(84, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user1', -1, '2024-05-17 10:26:55', '2024-05-17 10:26:55'),
(85, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user1', -1, '2024-05-17 10:26:56', '2024-05-17 10:26:56'),
(86, 31, 'Question: sample question posted by user 501', 'Posted Answer: This is the sample answer for the user 501 ', 'user501', 1, '2024-05-17 11:36:26', '2024-05-17 11:36:26'),
(87, 31, 'Question: sample question posted by user 501', 'Posted Answer: This is the sample answer for the user 501 ', 'user501', 1, '2024-05-17 11:36:34', '2024-05-17 11:36:34'),
(88, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'james', 1, '2024-05-17 16:39:05', '2024-05-17 16:39:05'),
(89, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'james', 1, '2024-05-17 16:39:06', '2024-05-17 16:39:06'),
(90, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'james', 1, '2024-05-17 16:39:06', '2024-05-17 16:39:06'),
(91, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'james', 1, '2024-05-17 16:39:07', '2024-05-17 16:39:07'),
(92, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'james', 1, '2024-05-17 16:39:09', '2024-05-17 16:39:09'),
(93, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'james', -1, '2024-05-17 16:39:14', '2024-05-17 16:39:14'),
(94, 24, 'Question: testing question 123', 'Posted Answer: knl,jbkjbjb  n mnnn', 'james', -1, '2024-05-17 16:39:17', '2024-05-17 16:39:17'),
(95, 33, 'Question: sample question posted for the title 002', 'Posted Answer: this is the sample answer posted for 002', 'Raj', 1, '2024-05-17 18:13:39', '2024-05-17 18:13:39'),
(96, 3, 'Question: Why is HTTPS important for secure communication?', 'Posted Answer: \nHTTPS (Hypertext Transfer Protocol Secure) is crucial for secure communication because it encrypts data exchanged between a user\'s browser and a website\'s server. This encryption prevents unauthorized parties from intercepting and tampering with sensitive information, such as login credentials, personal details, and financial data.', 'user101', -1, '2024-05-17 18:28:56', '2024-05-17 18:28:56'),
(97, 10, 'Question: What is virtual memory, and how does it work?', 'Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'user101', 1, '2024-05-17 18:29:19', '2024-05-17 18:29:19'),
(98, 10, 'Question: What is virtual memory, and how does it work?', 'Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'user101', 1, '2024-05-17 18:29:24', '2024-05-17 18:29:24'),
(99, 10, 'Question: What is virtual memory, and how does it work?', 'Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'user101', 1, '2024-05-17 18:29:25', '2024-05-17 18:29:25'),
(100, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'user101', 1, '2024-05-17 18:29:28', '2024-05-17 18:29:28'),
(101, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'user101', 1, '2024-05-17 18:29:29', '2024-05-17 18:29:29'),
(102, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'user101', 1, '2024-05-17 18:29:30', '2024-05-17 18:29:30'),
(103, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'user101', 1, '2024-05-17 18:29:30', '2024-05-17 18:29:30'),
(104, 10, 'Question: What is virtual memory, and how does it work?', 'Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'user101', -1, '2024-05-17 18:29:32', '2024-05-17 18:29:32'),
(105, 10, 'Question: What is virtual memory, and how does it work?', 'Posted Answer: virtual memory is a feature of an operating system (OS) that enables a computer to be able to compensate shortages of physical memory by transferring pages of data from Random Access Memory (RAM) to disk storage. This process is done automatically and allows programs to run even if they have outgrown available physical memory. It works by using a combination of hardware and software to treat a portion of the hard drive as though it were actual RAM.', 'user101', 1, '2024-05-17 18:29:34', '2024-05-17 18:29:34'),
(106, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'user101', 1, '2024-05-17 18:29:37', '2024-05-17 18:29:37'),
(107, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'user101', 1, '2024-05-17 18:29:37', '2024-05-17 18:29:37'),
(108, 32, 'Question: this is the sample question posted by user James', 'Posted Answer: this is the sample answer for the above question posted by James user', 'user101', 1, '2024-05-17 18:29:38', '2024-05-17 18:29:38'),
(109, 29, 'Question: sample question posted by Alex- testing ', 'Posted Answer: this is the sample answer for the alex question', 'user101', 1, '2024-05-17 18:29:41', '2024-05-17 18:29:41'),
(110, 29, 'Question: sample question posted by Alex- testing ', 'Posted Answer: this is the sample answer for the alex question', 'user101', 1, '2024-05-17 18:29:41', '2024-05-17 18:29:41'),
(111, 29, 'Question: sample question posted by Alex- testing ', 'Posted Answer: this is the sample answer for the alex question', 'user101', 1, '2024-05-17 18:29:42', '2024-05-17 18:29:42'),
(112, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', 1, '2024-05-17 18:29:47', '2024-05-17 18:29:47'),
(113, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', 1, '2024-05-17 18:29:48', '2024-05-17 18:29:48'),
(114, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', 1, '2024-05-17 18:29:48', '2024-05-17 18:29:48'),
(115, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', 1, '2024-05-17 18:29:48', '2024-05-17 18:29:48'),
(116, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', 1, '2024-05-17 18:29:49', '2024-05-17 18:29:49'),
(117, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', 1, '2024-05-17 18:29:49', '2024-05-17 18:29:49'),
(118, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', 1, '2024-05-17 18:29:53', '2024-05-17 18:29:53'),
(119, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', -1, '2024-05-17 18:29:54', '2024-05-17 18:29:54'),
(120, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', -1, '2024-05-17 18:29:54', '2024-05-17 18:29:54'),
(121, 6, 'Question: What is a primary key in a database table, and why is it important?', 'Posted Answer: A primary key in a database table is a unique identifier for each record. It ensures that each row in the table is uniquely identifiable. Primary keys are crucial because they facilitate data integrity, enforce entity uniqueness, and enable efficient data retrieval and indexing.', 'user101', -1, '2024-05-17 18:29:55', '2024-05-17 18:29:55'),
(122, 1, 'Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'user101', 1, '2024-05-17 18:29:57', '2024-05-17 18:29:57'),
(123, 1, 'Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'user101', 1, '2024-05-17 18:29:57', '2024-05-17 18:29:57'),
(124, 1, 'Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'user101', 1, '2024-05-17 18:29:57', '2024-05-17 18:29:57'),
(125, 1, 'Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'user101', 1, '2024-05-17 18:29:58', '2024-05-17 18:29:58'),
(126, 1, 'Question: Describe the difference between stateful and stateless web applications.', 'Posted Answer: Stateful web applications retain information about the user\'s interactions, while stateless web applications do not store any user data between requests.', 'user101', 1, '2024-05-17 18:29:58', '2024-05-17 18:29:58'),
(127, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', 1, '2024-05-17 18:30:13', '2024-05-17 18:30:13'),
(128, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', 1, '2024-05-17 18:30:18', '2024-05-17 18:30:18'),
(129, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', -1, '2024-05-17 18:30:20', '2024-05-17 18:30:20'),
(130, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', -1, '2024-05-17 18:30:20', '2024-05-17 18:30:20'),
(131, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', -1, '2024-05-17 18:30:21', '2024-05-17 18:30:21'),
(132, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', 1, '2024-05-17 18:30:28', '2024-05-17 18:30:28'),
(133, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', 1, '2024-05-17 18:30:29', '2024-05-17 18:30:29'),
(134, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', 1, '2024-05-17 18:30:29', '2024-05-17 18:30:29');
INSERT INTO `votes` (`id`, `question_id`, `question`, `answer`, `username`, `vote`, `created_at`, `updated_at`) VALUES
(135, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', 1, '2024-05-17 18:30:30', '2024-05-17 18:30:30'),
(136, 9, 'Question: Describe the role of an operating system\'s scheduler.', 'Posted Answer: the role of an operating system’s scheduler is to manage the execution of processes or threads on the CPU. It determines the order in which tasks are processed to optimize system performance, maximize CPU utilization, and minimize response time', 'user101', 1, '2024-05-17 18:30:31', '2024-05-17 18:30:31'),
(137, 33, 'Question: sample question posted for the title 002', 'Posted Answer: this is the sample answer posted for 002', 'user101', -1, '2024-05-17 18:30:38', '2024-05-17 18:30:38'),
(138, 33, 'Question: sample question posted for the title 002', 'Posted Answer: this is the sample answer posted for 002', 'user101', -1, '2024-05-17 18:30:38', '2024-05-17 18:30:38'),
(139, 33, 'Question: sample question posted for the title 002', 'Posted Answer: this is the sample answer posted for 002', 'user101', -1, '2024-05-17 18:30:39', '2024-05-17 18:30:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
