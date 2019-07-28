-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2019 at 12:55 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-07-01 05:55:31', '2019-07-01 05:55:31'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-07-01 05:55:31', '2019-07-01 05:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', '2019-07-01 05:08:51', '2019-07-01 05:08:51'),
(2, 'Desktops', 'desktops', '2019-07-01 05:08:51', '2019-07-01 05:08:51'),
(3, 'Mobile Phones', 'mobile-phones', '2019-07-01 05:08:51', '2019-07-01 05:08:51'),
(4, 'Tablets', 'tablets', '2019-07-01 05:08:51', '2019-07-01 05:08:51'),
(5, 'TVs', 'tvs', '2019-07-01 05:08:51', '2019-07-01 05:08:51'),
(6, 'Digital Cameras', 'digital-cameras', '2019-07-01 05:08:51', '2019-07-01 05:08:51'),
(7, 'Appliances', 'appliances', '2019-07-01 05:08:51', '2019-07-01 05:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 2, NULL, NULL),
(32, 32, 2, NULL, NULL),
(33, 33, 2, NULL, NULL),
(34, 34, 2, NULL, NULL),
(35, 35, 2, NULL, NULL),
(36, 36, 2, NULL, NULL),
(37, 37, 2, NULL, NULL),
(38, 38, 2, NULL, NULL),
(39, 39, 2, NULL, NULL),
(40, 40, 3, NULL, NULL),
(41, 41, 3, NULL, NULL),
(42, 42, 3, NULL, NULL),
(43, 43, 3, NULL, NULL),
(44, 44, 3, NULL, NULL),
(45, 45, 3, NULL, NULL),
(46, 46, 3, NULL, NULL),
(47, 47, 3, NULL, NULL),
(48, 48, 3, NULL, NULL),
(49, 49, 4, NULL, NULL),
(50, 50, 4, NULL, NULL),
(51, 51, 4, NULL, NULL),
(52, 52, 4, NULL, NULL),
(53, 53, 4, NULL, NULL),
(54, 54, 4, NULL, NULL),
(55, 55, 4, NULL, NULL),
(56, 56, 4, NULL, NULL),
(57, 57, 4, NULL, NULL),
(58, 58, 5, NULL, NULL),
(59, 59, 5, NULL, NULL),
(60, 60, 5, NULL, NULL),
(61, 61, 5, NULL, NULL),
(62, 62, 5, NULL, NULL),
(63, 63, 5, NULL, NULL),
(64, 64, 5, NULL, NULL),
(65, 65, 5, NULL, NULL),
(66, 66, 5, NULL, NULL),
(67, 67, 6, NULL, NULL),
(68, 68, 6, NULL, NULL),
(69, 69, 6, NULL, NULL),
(70, 70, 6, NULL, NULL),
(71, 71, 6, NULL, NULL),
(72, 72, 6, NULL, NULL),
(73, 73, 6, NULL, NULL),
(74, 74, 6, NULL, NULL),
(75, 75, 6, NULL, NULL),
(76, 76, 7, NULL, NULL),
(77, 77, 7, NULL, NULL),
(78, 78, 7, NULL, NULL),
(79, 79, 7, NULL, NULL),
(80, 80, 7, NULL, NULL),
(81, 81, 7, NULL, NULL),
(82, 82, 7, NULL, NULL),
(83, 83, 7, NULL, NULL),
(84, 84, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'VAL123', 'fixed', 45, NULL, '2019-07-01 05:09:05', '2019-07-01 05:09:05'),
(2, 'PER123', 'percent', NULL, 25, '2019-07-01 05:09:06', '2019-07-01 05:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 8, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(62, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(63, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(64, 8, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(65, 8, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{\"min\":1}', 5),
(66, 8, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(67, 8, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\"}', 7),
(68, 8, 'quantity', 'text', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 8),
(69, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(70, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(71, 9, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(72, 9, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 9, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"percent\",\"options\":{\"fixed\":\"Fixed Value\",\"percent\":\"Percent Off\"}}', 3),
(74, 9, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 4),
(75, 9, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 5),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(78, 10, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(79, 10, 'product_id', 'number', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(80, 10, 'category_id', 'number', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(81, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(82, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(83, 11, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(84, 11, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(85, 11, 'billing_email', 'text', 'Billing Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(86, 11, 'billing_name', 'text', 'Billing Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(87, 11, 'billing_address', 'text', 'Billing Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(88, 11, 'billing_city', 'text', 'Billing City', 0, 1, 1, 1, 1, 1, '{}', 6),
(89, 11, 'billing_province', 'text', 'Billing Province', 0, 1, 1, 1, 1, 1, '{}', 7),
(90, 11, 'billing_postalcode', 'text', 'Billing Postalcode', 0, 1, 1, 1, 1, 1, '{}', 8),
(91, 11, 'billing_phone', 'text', 'Billing Phone', 0, 1, 1, 1, 1, 1, '{}', 9),
(92, 11, 'billing_name_on_card', 'text', 'Billing Name On Card', 0, 1, 1, 1, 1, 1, '{}', 10),
(93, 11, 'billing_discount', 'text', 'Billing Discount', 1, 1, 1, 1, 1, 1, '{}', 11),
(94, 11, 'billing_discount_code', 'text', 'Billing Discount Code', 0, 1, 1, 1, 1, 1, '{}', 12),
(95, 11, 'billing_subtotal', 'text', 'Billing Subtotal', 1, 1, 1, 1, 1, 1, '{}', 13),
(96, 11, 'billing_tax', 'text', 'Billing Tax', 1, 1, 1, 1, 1, 1, '{}', 14),
(97, 11, 'billing_total', 'text', 'Billing Total', 1, 1, 1, 1, 1, 1, '{}', 15),
(98, 11, 'payment_gateway', 'text', 'Payment Gateway', 1, 1, 1, 1, 1, 1, '{}', 16),
(99, 11, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\"}', 17),
(100, 11, 'error', 'text', 'Error', 0, 1, 1, 1, 1, 1, '{}', 18),
(101, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 19),
(102, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(103, 12, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 0),
(104, 12, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(105, 12, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(106, 12, 'quantity', 'text', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 4),
(107, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(108, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-07-01 05:55:17', '2019-07-01 05:55:17'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-07-01 05:55:17', '2019-07-01 05:55:17'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-07-01 05:55:17', '2019-07-01 05:55:17'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-07-01 05:55:30', '2019-07-01 05:55:30'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-07-01 05:55:32', '2019-07-01 05:55:32'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-07-01 05:55:34', '2019-07-01 05:55:34'),
(7, 'category', 'category', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-01 06:23:46', '2019-07-28 04:20:07'),
(8, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-28 04:13:47', '2019-07-28 04:18:59'),
(9, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-28 04:23:18', '2019-07-28 04:23:18'),
(10, 'category_product', 'category-product', 'Category Product', 'Category Products', 'voyager-tag', 'App\\CategoryProduct', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-28 04:24:39', '2019-07-28 04:24:39'),
(11, 'orders', 'orders', 'Order', 'Orders', 'voyager-buy', 'App\\Order', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-28 04:27:33', '2019-07-28 04:27:33'),
(12, 'order_product', 'order-product', 'Order Product', 'Order Products', 'voyager-documentation', 'App\\OrderProduct', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-28 04:28:25', '2019-07-28 04:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-07-01 05:55:18', '2019-07-01 05:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-07-01 05:55:18', '2019-07-01 05:55:18', 'voyager.dashboard', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 6, '2019-07-01 05:55:18', '2019-07-28 04:55:32', 'voyager.users.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-07-01 05:55:19', '2019-07-28 04:55:41', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-07-01 05:55:19', '2019-07-28 04:55:20', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-07-01 05:55:19', '2019-07-28 04:55:20', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-07-01 05:55:19', '2019-07-28 04:55:20', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-07-01 05:55:19', '2019-07-28 04:55:20', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2019-07-01 05:55:19', '2019-07-28 04:55:41', 'voyager.settings.index', NULL),
(14, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 2, '2019-07-01 06:23:47', '2019-07-28 04:55:19', 'voyager.category.index', NULL),
(15, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 3, '2019-07-28 04:13:48', '2019-07-28 04:55:22', 'voyager.products.index', NULL),
(16, 1, 'Coupons', '', '_self', 'voyager-dollar', NULL, NULL, 5, '2019-07-28 04:23:19', '2019-07-28 04:55:32', 'voyager.coupons.index', NULL),
(17, 1, 'Category Products', '', '_self', 'voyager-tag', NULL, NULL, 4, '2019-07-28 04:24:39', '2019-07-28 04:55:32', 'voyager.category-product.index', NULL),
(18, 1, 'Orders', '', '_self', 'voyager-buy', NULL, NULL, 7, '2019-07-28 04:27:34', '2019-07-28 04:55:38', 'voyager.orders.index', NULL),
(19, 1, 'Order Products', '', '_self', 'voyager-documentation', NULL, NULL, 8, '2019-07-28 04:28:25', '2019-07-28 04:55:41', 'voyager.order-product.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_06_17_180426_create_products_table', 1),
(28, '2019_06_17_193032_create_category_table', 1),
(29, '2019_06_17_193103_create_coupons_table', 1),
(30, '2019_06_17_202331_create_category_product_table', 1),
(31, '2019_06_19_160014_create_orders_table', 1),
(32, '2019_06_19_160740_create_order_product_table', 1),
(33, '2019_06_24_090620_add_quantity_to_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT 0,
  `billing_discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT 0,
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(1, 2, 'ayush@gmail.com', 'Ayush Pandey', 'Samakhusi', 'Kathmandu', 'Bagmati', '977', '4355940', 'Ayush', 0, NULL, 808, 105, 913, 'stripe', 0, NULL, '2019-07-02 07:58:04', '2019-07-02 07:58:04'),
(2, 2, 'ayush@gmail.com', 'Ayush Pandey', 'Samakhusi', 'Kathmandu', 'Bagmati', '977', '4355940', 'Ayush', 0, NULL, 1287, 167, 1454, 'stripe', 0, NULL, '2019-07-15 03:50:29', '2019-07-15 03:50:29'),
(3, NULL, 'asdads@asd.com', 'asdasd', 'asdasd', 'asdasdad', 'asadasd', '9777', '45646456', 'asdasd', 202, 'PER123', 808, 105, 913, 'stripe', 0, NULL, '2019-07-15 07:09:45', '2019-07-15 07:09:45'),
(4, 2, 'ayush@gmail.com', 'Ayush Pandey', 'Samakhusi', 'Kathmandu', 'Bagmati', '977', '4355940', 'Ayush Pandey', 232, 'PER123', 928, 121, 1049, 'stripe', 0, NULL, '2019-07-26 01:49:41', '2019-07-26 01:49:41'),
(5, 2, 'ayush@gmail.com', 'Ayush Pandey', 'Samakhusi', 'Kathmandu', 'Bagmati', '977', '4355940', 'Ayush', 984, 'PER123', 3937, 384, 3337, 'stripe', 0, 'Your card has expired.', '2019-07-28 04:48:41', '2019-07-28 04:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 41, 1, '2019-07-02 07:58:04', '2019-07-02 07:58:04'),
(2, 2, 40, 1, '2019-07-15 03:50:29', '2019-07-15 03:50:29'),
(3, 3, 41, 1, '2019-07-15 07:09:45', '2019-07-15 07:09:45'),
(4, 4, 47, 1, '2019-07-26 01:49:41', '2019-07-26 01:49:41'),
(5, 5, 31, 1, '2019-07-28 04:48:41', '2019-07-28 04:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-07-01 05:55:35', '2019-07-01 05:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-07-01 05:55:19', '2019-07-01 05:55:19'),
(2, 'browse_bread', NULL, '2019-07-01 05:55:19', '2019-07-01 05:55:19'),
(3, 'browse_database', NULL, '2019-07-01 05:55:19', '2019-07-01 05:55:19'),
(4, 'browse_media', NULL, '2019-07-01 05:55:19', '2019-07-01 05:55:19'),
(5, 'browse_compass', NULL, '2019-07-01 05:55:19', '2019-07-01 05:55:19'),
(6, 'browse_menus', 'menus', '2019-07-01 05:55:19', '2019-07-01 05:55:19'),
(7, 'read_menus', 'menus', '2019-07-01 05:55:19', '2019-07-01 05:55:19'),
(8, 'edit_menus', 'menus', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(9, 'add_menus', 'menus', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(10, 'delete_menus', 'menus', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(11, 'browse_roles', 'roles', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(12, 'read_roles', 'roles', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(13, 'edit_roles', 'roles', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(14, 'add_roles', 'roles', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(15, 'delete_roles', 'roles', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(16, 'browse_users', 'users', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(17, 'read_users', 'users', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(18, 'edit_users', 'users', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(19, 'add_users', 'users', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(20, 'delete_users', 'users', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(21, 'browse_settings', 'settings', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(22, 'read_settings', 'settings', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(23, 'edit_settings', 'settings', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(24, 'add_settings', 'settings', '2019-07-01 05:55:20', '2019-07-01 05:55:20'),
(25, 'delete_settings', 'settings', '2019-07-01 05:55:21', '2019-07-01 05:55:21'),
(26, 'browse_categories', 'categories', '2019-07-01 05:55:31', '2019-07-01 05:55:31'),
(27, 'read_categories', 'categories', '2019-07-01 05:55:31', '2019-07-01 05:55:31'),
(28, 'edit_categories', 'categories', '2019-07-01 05:55:31', '2019-07-01 05:55:31'),
(29, 'add_categories', 'categories', '2019-07-01 05:55:31', '2019-07-01 05:55:31'),
(30, 'delete_categories', 'categories', '2019-07-01 05:55:31', '2019-07-01 05:55:31'),
(31, 'browse_posts', 'posts', '2019-07-01 05:55:33', '2019-07-01 05:55:33'),
(32, 'read_posts', 'posts', '2019-07-01 05:55:33', '2019-07-01 05:55:33'),
(33, 'edit_posts', 'posts', '2019-07-01 05:55:33', '2019-07-01 05:55:33'),
(34, 'add_posts', 'posts', '2019-07-01 05:55:33', '2019-07-01 05:55:33'),
(35, 'delete_posts', 'posts', '2019-07-01 05:55:33', '2019-07-01 05:55:33'),
(36, 'browse_pages', 'pages', '2019-07-01 05:55:34', '2019-07-01 05:55:34'),
(37, 'read_pages', 'pages', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(38, 'edit_pages', 'pages', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(39, 'add_pages', 'pages', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(40, 'delete_pages', 'pages', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(41, 'browse_category', 'category', '2019-07-01 06:23:46', '2019-07-01 06:23:46'),
(42, 'read_category', 'category', '2019-07-01 06:23:46', '2019-07-01 06:23:46'),
(43, 'edit_category', 'category', '2019-07-01 06:23:47', '2019-07-01 06:23:47'),
(44, 'add_category', 'category', '2019-07-01 06:23:47', '2019-07-01 06:23:47'),
(45, 'delete_category', 'category', '2019-07-01 06:23:47', '2019-07-01 06:23:47'),
(46, 'browse_products', 'products', '2019-07-28 04:13:48', '2019-07-28 04:13:48'),
(47, 'read_products', 'products', '2019-07-28 04:13:48', '2019-07-28 04:13:48'),
(48, 'edit_products', 'products', '2019-07-28 04:13:48', '2019-07-28 04:13:48'),
(49, 'add_products', 'products', '2019-07-28 04:13:48', '2019-07-28 04:13:48'),
(50, 'delete_products', 'products', '2019-07-28 04:13:48', '2019-07-28 04:13:48'),
(51, 'browse_coupons', 'coupons', '2019-07-28 04:23:19', '2019-07-28 04:23:19'),
(52, 'read_coupons', 'coupons', '2019-07-28 04:23:19', '2019-07-28 04:23:19'),
(53, 'edit_coupons', 'coupons', '2019-07-28 04:23:19', '2019-07-28 04:23:19'),
(54, 'add_coupons', 'coupons', '2019-07-28 04:23:19', '2019-07-28 04:23:19'),
(55, 'delete_coupons', 'coupons', '2019-07-28 04:23:19', '2019-07-28 04:23:19'),
(56, 'browse_category_product', 'category_product', '2019-07-28 04:24:39', '2019-07-28 04:24:39'),
(57, 'read_category_product', 'category_product', '2019-07-28 04:24:39', '2019-07-28 04:24:39'),
(58, 'edit_category_product', 'category_product', '2019-07-28 04:24:39', '2019-07-28 04:24:39'),
(59, 'add_category_product', 'category_product', '2019-07-28 04:24:39', '2019-07-28 04:24:39'),
(60, 'delete_category_product', 'category_product', '2019-07-28 04:24:39', '2019-07-28 04:24:39'),
(61, 'browse_orders', 'orders', '2019-07-28 04:27:34', '2019-07-28 04:27:34'),
(62, 'read_orders', 'orders', '2019-07-28 04:27:34', '2019-07-28 04:27:34'),
(63, 'edit_orders', 'orders', '2019-07-28 04:27:34', '2019-07-28 04:27:34'),
(64, 'add_orders', 'orders', '2019-07-28 04:27:34', '2019-07-28 04:27:34'),
(65, 'delete_orders', 'orders', '2019-07-28 04:27:34', '2019-07-28 04:27:34'),
(66, 'browse_order_product', 'order_product', '2019-07-28 04:28:25', '2019-07-28 04:28:25'),
(67, 'read_order_product', 'order_product', '2019-07-28 04:28:25', '2019-07-28 04:28:25'),
(68, 'edit_order_product', 'order_product', '2019-07-28 04:28:25', '2019-07-28 04:28:25'),
(69, 'add_order_product', 'order_product', '2019-07-28 04:28:25', '2019-07-28 04:28:25'),
(70, 'delete_order_product', 'order_product', '2019-07-28 04:28:25', '2019-07-28 04:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-07-01 05:55:33', '2019-07-01 05:55:33'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-07-01 05:55:33', '2019-07-01 05:55:33'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-07-01 05:55:33', '2019-07-01 05:55:33'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-07-01 05:55:34', '2019-07-01 05:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 10,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Laptop 1', 'laptop-1', '13 inch, 2 TB SSD, 32GB RAM', 1572, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 0, '2019-07-01 05:08:52', '2019-07-01 05:09:05'),
(2, 'Laptop 2', 'laptop-2', '15 inch, 2 TB SSD, 32GB RAM', 1598, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 3, '2019-07-01 05:08:52', '2019-07-01 05:08:52'),
(3, 'Laptop 3', 'laptop-3', '15 inch, 1 TB SSD, 32GB RAM', 1530, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:52', '2019-07-01 05:08:52'),
(4, 'Laptop 4', 'laptop-4', '13 inch, 2 TB SSD, 32GB RAM', 1731, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:52', '2019-07-01 05:08:52'),
(5, 'Laptop 5', 'laptop-5', '14 inch, 1 TB SSD, 32GB RAM', 2296, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:52', '2019-07-01 05:08:52'),
(6, 'Laptop 6', 'laptop-6', '13 inch, 2 TB SSD, 32GB RAM', 1795, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:53', '2019-07-01 05:08:53'),
(7, 'Laptop 7', 'laptop-7', '15 inch, 1 TB SSD, 32GB RAM', 2272, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:53', '2019-07-01 05:08:53'),
(8, 'Laptop 8', 'laptop-8', '15 inch, 1 TB SSD, 32GB RAM', 2150, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:53', '2019-07-01 05:08:53'),
(9, 'Laptop 9', 'laptop-9', '13 inch, 3 TB SSD, 32GB RAM', 1995, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:53', '2019-07-01 05:08:53'),
(10, 'Laptop 10', 'laptop-10', '15 inch, 2 TB SSD, 32GB RAM', 2376, 'Lorem 10 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:54', '2019-07-01 05:08:54'),
(11, 'Laptop 11', 'laptop-11', '15 inch, 2 TB SSD, 32GB RAM', 1839, 'Lorem 11 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:54', '2019-07-01 05:08:54'),
(12, 'Laptop 12', 'laptop-12', '14 inch, 3 TB SSD, 32GB RAM', 2158, 'Lorem 12 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:08:54', '2019-07-01 05:09:05'),
(13, 'Laptop 13', 'laptop-13', '15 inch, 2 TB SSD, 32GB RAM', 2244, 'Lorem 13 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:54', '2019-07-01 05:08:54'),
(14, 'Laptop 14', 'laptop-14', '13 inch, 1 TB SSD, 32GB RAM', 1744, 'Lorem 14 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:54', '2019-07-01 05:08:54'),
(15, 'Laptop 15', 'laptop-15', '13 inch, 2 TB SSD, 32GB RAM', 1699, 'Lorem 15 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:54', '2019-07-01 05:08:54'),
(16, 'Laptop 16', 'laptop-16', '15 inch, 3 TB SSD, 32GB RAM', 2415, 'Lorem 16 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:54', '2019-07-01 05:08:54'),
(17, 'Laptop 17', 'laptop-17', '14 inch, 1 TB SSD, 32GB RAM', 1712, 'Lorem 17 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:54', '2019-07-01 05:08:54'),
(18, 'Laptop 18', 'laptop-18', '14 inch, 1 TB SSD, 32GB RAM', 2412, 'Lorem 18 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:55', '2019-07-01 05:08:55'),
(19, 'Laptop 19', 'laptop-19', '14 inch, 1 TB SSD, 32GB RAM', 2090, 'Lorem 19 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:55', '2019-07-01 05:08:55'),
(20, 'Laptop 20', 'laptop-20', '14 inch, 3 TB SSD, 32GB RAM', 2050, 'Lorem 20 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:55', '2019-07-01 05:08:55'),
(21, 'Laptop 21', 'laptop-21', '14 inch, 1 TB SSD, 32GB RAM', 1692, 'Lorem 21 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:55', '2019-07-01 05:08:55'),
(22, 'Laptop 22', 'laptop-22', '14 inch, 2 TB SSD, 32GB RAM', 2206, 'Lorem 22 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:08:55', '2019-07-01 05:09:05'),
(23, 'Laptop 23', 'laptop-23', '14 inch, 1 TB SSD, 32GB RAM', 1679, 'Lorem 23 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:55', '2019-07-01 05:08:55'),
(24, 'Laptop 24', 'laptop-24', '15 inch, 2 TB SSD, 32GB RAM', 1677, 'Lorem 24 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:56', '2019-07-01 05:08:56'),
(25, 'Laptop 25', 'laptop-25', '14 inch, 2 TB SSD, 32GB RAM', 2322, 'Lorem 25 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:56', '2019-07-01 05:08:56'),
(26, 'Laptop 26', 'laptop-26', '14 inch, 1 TB SSD, 32GB RAM', 2336, 'Lorem 26 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:56', '2019-07-01 05:08:56'),
(27, 'Laptop 27', 'laptop-27', '14 inch, 1 TB SSD, 32GB RAM', 1959, 'Lorem 27 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:56', '2019-07-01 05:08:56'),
(28, 'Laptop 28', 'laptop-28', '15 inch, 1 TB SSD, 32GB RAM', 2370, 'Lorem 28 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:56', '2019-07-01 05:08:56'),
(29, 'Laptop 29', 'laptop-29', '14 inch, 1 TB SSD, 32GB RAM', 2369, 'Lorem 29 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:56', '2019-07-01 05:08:56'),
(30, 'Laptop 30', 'laptop-30', '13 inch, 3 TB SSD, 32GB RAM', 2406, 'Lorem 30 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:57', '2019-07-01 05:08:57'),
(31, 'Desktop 1', 'desktop-1', '24 inch, 2 TB SSD, 32GB RAM', 3937, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:08:57', '2019-07-01 05:09:05'),
(32, 'Desktop 2', 'desktop-2', '25 inch, 3 TB SSD, 32GB RAM', 4117, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:57', '2019-07-01 05:08:57'),
(33, 'Desktop 3', 'desktop-3', '27 inch, 2 TB SSD, 32GB RAM', 4209, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:57', '2019-07-01 05:08:57'),
(34, 'Desktop 4', 'desktop-4', '25 inch, 1 TB SSD, 32GB RAM', 2689, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:57', '2019-07-01 05:08:57'),
(35, 'Desktop 5', 'desktop-5', '27 inch, 2 TB SSD, 32GB RAM', 4494, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:57', '2019-07-01 05:08:57'),
(36, 'Desktop 6', 'desktop-6', '25 inch, 2 TB SSD, 32GB RAM', 2631, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:57', '2019-07-01 05:08:57'),
(37, 'Desktop 7', 'desktop-7', '25 inch, 3 TB SSD, 32GB RAM', 3665, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:58', '2019-07-01 05:08:58'),
(38, 'Desktop 8', 'desktop-8', '25 inch, 2 TB SSD, 32GB RAM', 3668, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:58', '2019-07-01 05:08:58'),
(39, 'Desktop 9', 'desktop-9', '25 inch, 3 TB SSD, 32GB RAM', 3337, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:58', '2019-07-01 05:08:58'),
(40, 'Phone 1', 'phone-1', '32GB, 5.7 inch screen, 4GHz Quad Core', 1287, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 9, '2019-07-01 05:08:58', '2019-07-15 03:50:29'),
(41, 'Phone 2', 'phone-2', '16GB, 5.8 inch screen, 4GHz Quad Core', 808, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 8, '2019-07-01 05:08:58', '2019-07-15 07:09:45'),
(42, 'Phone 3', 'phone-3', '64GB, 5.7 inch screen, 4GHz Quad Core', 1186, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:58', '2019-07-01 05:08:58'),
(43, 'Phone 4', 'phone-4', '64GB, 5.8 inch screen, 4GHz Quad Core', 861, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:08:58', '2019-07-01 05:09:05'),
(44, 'Phone 5', 'phone-5', '64GB, 5.7 inch screen, 4GHz Quad Core', 1337, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:58', '2019-07-01 05:08:58'),
(45, 'Phone 6', 'phone-6', '32GB, 5.7 inch screen, 4GHz Quad Core', 1132, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:59', '2019-07-01 05:08:59'),
(46, 'Phone 7', 'phone-7', '64GB, 5.9 inch screen, 4GHz Quad Core', 1182, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:59', '2019-07-01 05:08:59'),
(47, 'Phone 8', 'phone-8', '64GB, 5.7 inch screen, 4GHz Quad Core', 928, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 9, '2019-07-01 05:08:59', '2019-07-26 01:49:41'),
(48, 'Phone 9', 'phone-9', '16GB, 5.7 inch screen, 4GHz Quad Core', 1411, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:59', '2019-07-01 05:08:59'),
(49, 'Tablet 1', 'tablet-1', '32GB, 5.12 inch screen, 4GHz Quad Core', 877, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:59', '2019-07-01 05:08:59'),
(50, 'Tablet 2', 'tablet-2', '32GB, 5.10 inch screen, 4GHz Quad Core', 1384, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:59', '2019-07-01 05:08:59'),
(51, 'Tablet 3', 'tablet-3', '16GB, 5.12 inch screen, 4GHz Quad Core', 1159, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:08:59', '2019-07-01 05:09:05'),
(52, 'Tablet 4', 'tablet-4', '64GB, 5.11 inch screen, 4GHz Quad Core', 1320, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:08:59', '2019-07-01 05:08:59'),
(53, 'Tablet 5', 'tablet-5', '32GB, 5.11 inch screen, 4GHz Quad Core', 573, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:09:00', '2019-07-01 05:09:05'),
(54, 'Tablet 6', 'tablet-6', '32GB, 5.11 inch screen, 4GHz Quad Core', 1480, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:00', '2019-07-01 05:09:00'),
(55, 'Tablet 7', 'tablet-7', '64GB, 5.11 inch screen, 4GHz Quad Core', 809, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:00', '2019-07-01 05:09:00'),
(56, 'Tablet 8', 'tablet-8', '64GB, 5.12 inch screen, 4GHz Quad Core', 1386, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:00', '2019-07-01 05:09:00'),
(57, 'Tablet 9', 'tablet-9', '64GB, 5.10 inch screen, 4GHz Quad Core', 959, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:00', '2019-07-01 05:09:00'),
(58, 'TV 1', 'tv-1', '50 inch screen, Smart TV, 4K', 1410, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:01', '2019-07-01 05:09:01'),
(59, 'TV 2', 'tv-2', '50 inch screen, Smart TV, 4K', 1075, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:01', '2019-07-01 05:09:01'),
(60, 'TV 3', 'tv-3', '60 inch screen, Smart TV, 4K', 1443, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:01', '2019-07-01 05:09:01'),
(61, 'TV 4', 'tv-4', '46 inch screen, Smart TV, 4K', 866, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:09:01', '2019-07-01 05:09:05'),
(62, 'TV 5', 'tv-5', '46 inch screen, Smart TV, 4K', 1232, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:02', '2019-07-01 05:09:02'),
(63, 'TV 6', 'tv-6', '60 inch screen, Smart TV, 4K', 1138, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:02', '2019-07-01 05:09:02'),
(64, 'TV 7', 'tv-7', '50 inch screen, Smart TV, 4K', 1180, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:02', '2019-07-01 05:09:02'),
(65, 'TV 8', 'tv-8', '46 inch screen, Smart TV, 4K', 1478, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:02', '2019-07-01 05:09:02'),
(66, 'TV 9', 'tv-9', '60 inch screen, Smart TV, 4K', 1377, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:02', '2019-07-01 05:09:02'),
(67, 'Camera 1', 'camera-1', 'Full Frame DSLR, with 18-55mm kit lens.', 1573, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:03', '2019-07-01 05:09:03'),
(68, 'Camera 2', 'camera-2', 'Full Frame DSLR, with 18-55mm kit lens.', 2111, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:03', '2019-07-01 05:09:03'),
(69, 'Camera 3', 'camera-3', 'Full Frame DSLR, with 18-55mm kit lens.', 1121, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:09:03', '2019-07-01 05:09:05'),
(70, 'Camera 4', 'camera-4', 'Full Frame DSLR, with 18-55mm kit lens.', 1884, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:03', '2019-07-01 05:09:03'),
(71, 'Camera 5', 'camera-5', 'Full Frame DSLR, with 18-55mm kit lens.', 1669, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:03', '2019-07-01 05:09:03'),
(72, 'Camera 6', 'camera-6', 'Full Frame DSLR, with 18-55mm kit lens.', 1454, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:03', '2019-07-01 05:09:03'),
(73, 'Camera 7', 'camera-7', 'Full Frame DSLR, with 18-55mm kit lens.', 2131, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:09:03', '2019-07-01 05:09:05'),
(74, 'Camera 8', 'camera-8', 'Full Frame DSLR, with 18-55mm kit lens.', 2083, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:04', '2019-07-01 05:09:04'),
(75, 'Camera 9', 'camera-9', 'Full Frame DSLR, with 18-55mm kit lens.', 1343, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:04', '2019-07-01 05:09:04'),
(76, 'Appliance 1', 'appliance-1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 923, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:04', '2019-07-01 05:09:04'),
(77, 'Appliance 2', 'appliance-2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 1019, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:04', '2019-07-01 05:09:04'),
(78, 'Appliance 3', 'appliance-3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 958, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:04', '2019-07-01 05:09:04'),
(79, 'Appliance 4', 'appliance-4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 1417, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:04', '2019-07-01 05:09:04'),
(80, 'Appliance 5', 'appliance-5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 1066, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2019-07-01 05:09:04', '2019-07-01 05:09:05'),
(81, 'Appliance 6', 'appliance-6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 1340, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:05', '2019-07-01 05:09:05'),
(82, 'Appliance 7', 'appliance-7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 1328, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:05', '2019-07-01 05:09:05'),
(83, 'Appliance 8', 'appliance-8', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 911, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:05', '2019-07-01 05:09:05'),
(84, 'Appliance 9', 'appliance-9', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!', 1392, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2019-07-01 05:09:05', '2019-07-01 05:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-07-01 05:55:19', '2019-07-01 05:55:19'),
(2, 'user', 'Normal User', '2019-07-01 05:55:19', '2019-07-01 05:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Pasale.com', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Pasale.com. The  Admin Panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'site.stock_threshold', 'Stock Threshold', '5', NULL, 'text', 6, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-07-01 05:55:35', '2019-07-01 05:55:35'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-07-01 05:55:36', '2019-07-01 05:55:36'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-07-01 05:55:37', '2019-07-01 05:55:37'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-07-01 05:55:37', '2019-07-01 05:55:37'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-07-01 05:55:37', '2019-07-01 05:55:37'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-07-01 05:55:37', '2019-07-01 05:55:37'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-07-01 05:55:37', '2019-07-01 05:55:37'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-07-01 05:55:37', '2019-07-01 05:55:37'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-07-01 05:55:37', '2019-07-01 05:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$W5AojMc6YsyznXwBDGo4ZeXYpyQv1V34kutL4t0ZSR6oglqBnUO/K', 'P58JW97gFlmidnpHNHuZo0mOxByP2jIaToQe5zFiA67XEdMOrDp3yFRe5eS1', NULL, '2019-07-01 05:55:32', '2019-07-01 05:55:32'),
(2, 2, 'Ayush Pandey', 'ayush@gmail.com', 'users/default.png', NULL, '$2y$10$W5eDSkWGHXsEyiYB4JpIqe73YLXoMi6kGDNLymtI5hfgtFVHrjI/O', NULL, NULL, '2019-07-01 05:57:14', '2019-07-01 05:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
