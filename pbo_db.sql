-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2023 at 11:43 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookTitle` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `bookType` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookTitle`, `author`, `bookType`, `image`, `date`) VALUES
('Black And Grey Romance', 'Thumbnail_01', 'romance', 'D:\\KULIAH\\PBO\\Project_PBO\\Proyek Library\\src\\image\\Black And Grey Romance Novel Book Cover.jpg', '2018-10-16'),
('Black White Yellow Cool', 'Thumbnail_02', 'Non-fiction', 'D:\\KULIAH\\PBO\\Project_PBO\\Proyek Library\\src\\image\\Black White Yellow Cool Business Suit Photo Book Cover.jpg', '2018-10-16'),
('Black and White', 'Thumbnail_03', 'Non-fiction', 'D:\\KULIAH\\PBO\\Project_PBO\\Proyek Library\\src\\image\\Black and White Photo Rustic Text Horror Thriller Book Cover.jpg', '2021-05-29'),
('Blue Simple Food', 'Thumbnail_04', 'Non-fiction', 'D:\\KULIAH\\PBO\\Project_PBO\\Proyek Library\\src\\image\\Blue Simple Food Book Cover.jpg', '2021-08-10'),
('Brown Black Rusty', 'Thumbnail_05', 'Fiction', 'D:\\KULIAH\\PBO\\Project_PBO\\Proyek Library\\src\\image\\Brown Black Rusty Fantasy Novel Book Cover.jpg', '2020-07-15'),
('Green and Grey Modern', 'Thumbnail_06', 'Fiction', 'D:\\KULIAH\\PBO\\Project_PBO\\Proyek Library\\src\\image\\Green and Grey Modern Magic Kingdom Book Cover.jpg', '2019-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `save`
--

CREATE TABLE `save` (
  `studentNumber` varchar(100) NOT NULL,
  `bookTitle` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `bookType` varchar(100) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentNumber` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentNumber`, `password`, `image`) VALUES
('11322029', 'Pisces123', 'C:\\Users\\carlos\\Downloads\\kumpulan-tag-html-Small.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `take`
--

CREATE TABLE `take` (
  `studentNumber` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `bookTitle` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `bookType` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date DEFAULT NULL,
  `checkReturn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `take`
--

INSERT INTO `take` (`studentNumber`, `firstName`, `lastName`, `gender`, `bookTitle`, `author`, `bookType`, `image`, `date`, `checkReturn`) VALUES
('11322029', 'Carlos', 'Marpaung', 'Male', 'Label', 'Label', 'Label', 'D:\\KULIAH\\PBO\\PROYEK\\Image\\logo1.jpg', '2023-12-05', 'Returned'),
('11322029', 'Carlos', 'Marpaung', 'Male', 'Black White Yellow Cool', 'Thumbnail_02', 'Non-fiction', 'D:\\KULIAH\\PBO\\PROYEK Marcoman\\Proyek Library\\src\\image\\Black White Yellow Cool Business Suit Photo Book Cover.jpg', '2023-12-06', 'Returned');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
