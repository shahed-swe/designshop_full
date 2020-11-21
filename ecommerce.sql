-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 01:39 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

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
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `about` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `about`) VALUES
(1, 'about', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add about', 7, 'add_about'),
(26, 'Can change about', 7, 'change_about'),
(27, 'Can delete about', 7, 'delete_about'),
(28, 'Can view about', 7, 'view_about'),
(29, 'Can add main', 8, 'add_main'),
(30, 'Can change main', 8, 'change_main'),
(31, 'Can delete main', 8, 'delete_main'),
(32, 'Can view main', 8, 'view_main'),
(33, 'Can add overlay link', 9, 'add_overlaylink'),
(34, 'Can change overlay link', 9, 'change_overlaylink'),
(35, 'Can delete overlay link', 9, 'delete_overlaylink'),
(36, 'Can view overlay link', 9, 'view_overlaylink'),
(37, 'Can add custom form', 10, 'add_customform'),
(38, 'Can change custom form', 10, 'change_customform'),
(39, 'Can delete custom form', 10, 'delete_customform'),
(40, 'Can view custom form', 10, 'view_customform'),
(41, 'Can add package', 11, 'add_package'),
(42, 'Can change package', 11, 'change_package'),
(43, 'Can delete package', 11, 'delete_package'),
(44, 'Can view package', 11, 'view_package'),
(45, 'Can add category', 12, 'add_category'),
(46, 'Can change category', 12, 'change_category'),
(47, 'Can delete category', 12, 'delete_category'),
(48, 'Can view category', 12, 'view_category'),
(49, 'Can add customer', 13, 'add_customer'),
(50, 'Can change customer', 13, 'change_customer'),
(51, 'Can delete customer', 13, 'delete_customer'),
(52, 'Can view customer', 13, 'view_customer'),
(53, 'Can add order', 14, 'add_order'),
(54, 'Can change order', 14, 'change_order'),
(55, 'Can delete order', 14, 'delete_order'),
(56, 'Can view order', 14, 'view_order'),
(57, 'Can add shipping address', 15, 'add_shippingaddress'),
(58, 'Can change shipping address', 15, 'change_shippingaddress'),
(59, 'Can delete shipping address', 15, 'delete_shippingaddress'),
(60, 'Can view shipping address', 15, 'view_shippingaddress'),
(61, 'Can add order item', 16, 'add_orderitem'),
(62, 'Can change order item', 16, 'change_orderitem'),
(63, 'Can delete order item', 16, 'delete_orderitem'),
(64, 'Can view order item', 16, 'view_orderitem'),
(65, 'Can add store', 17, 'add_store'),
(66, 'Can change store', 17, 'change_store'),
(67, 'Can delete store', 17, 'delete_store'),
(68, 'Can view store', 17, 'view_store'),
(69, 'Can add contact', 18, 'add_contact'),
(70, 'Can change contact', 18, 'change_contact'),
(71, 'Can delete contact', 18, 'delete_contact'),
(72, 'Can view contact', 18, 'view_contact'),
(73, 'Can add custom', 19, 'add_custom'),
(74, 'Can change custom', 19, 'change_custom'),
(75, 'Can delete custom', 19, 'delete_custom'),
(76, 'Can view custom', 19, 'view_custom');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$XpojkgcgyICg$KFBDVu5P5/2toQtT2uWW8+hDYunfS0X+28krnZ0iMLY=', '2020-11-21 12:29:43.465041', 1, 'shahed', '', '', 'shahedtalukder51@gmail.com', 1, 1, '2020-11-21 07:35:34.839542');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `full_name` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `description` longtext,
  `subject` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `full_name`, `email`, `description`, `subject`) VALUES
(1, 'Shahed Talukder', 'shahedtalukder51@gmail.com', 'How to make python program using hantan', 'Python Integration with Demo data');

-- --------------------------------------------------------

--
-- Table structure for table `custom`
--

CREATE TABLE `custom` (
  `id` int(11) NOT NULL,
  `user` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `idea_category` varchar(120) DEFAULT NULL,
  `idea_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custom_design`
--

CREATE TABLE `custom_design` (
  `id` int(11) NOT NULL,
  `user_id` varchar(120) DEFAULT NULL,
  `types` varchar(20) DEFAULT NULL,
  `color_preference` varchar(220) DEFAULT NULL,
  `style` varchar(40) DEFAULT NULL,
  `description` longtext,
  `categories` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-21 07:36:07.310610', '1', 'Video Animation | 1', 1, '[{\"added\": {}}]', 12, 1),
(2, '2020-11-21 07:36:12.025342', '2', 'Animation | 2', 1, '[{\"added\": {}}]', 12, 1),
(3, '2020-11-21 07:36:20.983517', '3', 'Free | 3', 1, '[{\"added\": {}}]', 12, 1),
(4, '2020-11-21 07:36:25.193622', '4', 'Viper VIdeo | 4', 1, '[{\"added\": {}}]', 12, 1),
(5, '2020-11-21 07:36:35.720724', '5', 'Logo | 5', 1, '[{\"added\": {}}]', 12, 1),
(6, '2020-11-21 07:40:42.831698', '1', 'youtube | 1', 1, '[{\"added\": {}}]', 9, 1),
(7, '2020-11-21 11:11:46.317138', '1', 'Libra Stinger Transition |  | 1', 1, '[{\"added\": {}}]', 17, 1),
(8, '2020-11-21 11:12:28.401929', '2', 'Spellbreaker Stinger Transition |  | 2', 1, '[{\"added\": {}}]', 17, 1),
(9, '2020-11-21 11:13:12.225813', '3', 'Plasma Stream Alert |  | 3', 1, '[{\"added\": {}}]', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(18, 'about', 'contact'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(12, 'categories', 'category'),
(5, 'contenttypes', 'contenttype'),
(19, 'create', 'custom'),
(7, 'main', 'about'),
(10, 'main', 'customform'),
(8, 'main', 'main'),
(9, 'main', 'overlaylink'),
(11, 'package', 'package'),
(6, 'sessions', 'session'),
(13, 'store', 'customer'),
(14, 'store', 'order'),
(16, 'store', 'orderitem'),
(15, 'store', 'shippingaddress'),
(17, 'store', 'store');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'about', '0001_initial', '2020-11-21 07:33:42.115242'),
(2, 'about', '0002_auto_20201120_1711', '2020-11-21 07:33:42.266566'),
(3, 'about', '0003_auto_20201120_2024', '2020-11-21 07:33:42.366925'),
(4, 'contenttypes', '0001_initial', '2020-11-21 07:33:42.434470'),
(5, 'auth', '0001_initial', '2020-11-21 07:33:42.704792'),
(6, 'admin', '0001_initial', '2020-11-21 07:33:43.614906'),
(7, 'admin', '0002_logentry_remove_auto_add', '2020-11-21 07:33:43.830853'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-21 07:33:43.846540'),
(9, 'contenttypes', '0002_remove_content_type_name', '2020-11-21 07:33:44.003519'),
(10, 'auth', '0002_alter_permission_name_max_length', '2020-11-21 07:33:44.217474'),
(11, 'auth', '0003_alter_user_email_max_length', '2020-11-21 07:33:44.340258'),
(12, 'auth', '0004_alter_user_username_opts', '2020-11-21 07:33:44.356512'),
(13, 'auth', '0005_alter_user_last_login_null', '2020-11-21 07:33:44.422715'),
(14, 'auth', '0006_require_contenttypes_0002', '2020-11-21 07:33:44.429695'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2020-11-21 07:33:44.445136'),
(16, 'auth', '0008_alter_user_username_max_length', '2020-11-21 07:33:44.555259'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2020-11-21 07:33:44.667996'),
(18, 'auth', '0010_alter_group_name_max_length', '2020-11-21 07:33:44.780524'),
(19, 'auth', '0011_update_proxy_permissions', '2020-11-21 07:33:44.793733'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2020-11-21 07:33:44.910004'),
(21, 'categories', '0001_initial', '2020-11-21 07:33:44.968304'),
(22, 'create', '0001_initial', '2020-11-21 07:33:45.027620'),
(23, 'create', '0002_auto_20201119_1916', '2020-11-21 07:33:45.512792'),
(24, 'main', '0001_initial', '2020-11-21 07:33:45.660197'),
(25, 'main', '0002_customform', '2020-11-21 07:33:45.782421'),
(26, 'package', '0001_initial', '2020-11-21 07:33:45.835950'),
(27, 'sessions', '0001_initial', '2020-11-21 07:33:45.916695'),
(28, 'store', '0001_initial', '2020-11-21 07:33:46.269877'),
(29, 'store', '0002_auto_20200627_2111', '2020-11-21 07:33:46.991616'),
(30, 'store', '0003_store_product_file', '2020-11-21 07:33:47.082536'),
(31, 'store', '0004_auto_20200708_1827', '2020-11-21 07:33:47.093545'),
(32, 'store', '0005_auto_20200813_1722', '2020-11-21 07:33:47.311316'),
(33, 'store', '0006_auto_20201109_1858', '2020-11-21 07:33:47.464777'),
(34, 'store', '0007_auto_20201119_1925', '2020-11-21 07:33:47.723606'),
(35, 'store', '0008_auto_20201119_1926', '2020-11-21 07:33:47.910882'),
(36, 'store', '0009_auto_20201119_1927', '2020-11-21 07:33:48.239840');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8zxcf9ytzmnyhwrqo7jnvyih206mf4sw', '.eJxVjEEOwiAQRe_C2hCghQGX7nuGZgamUjWQlHZlvLtt0oVu_3vvv8WI25rHrfEyzklchRaX340wPrkcID2w3KuMtazLTPJQ5EmbHGri1-10_w4ytrzXAcBxN7mOiAx4r1TEQEk75fvgLCAzq96mtFOwmqCjSB68NmRxMlZ8vtiaN6w:1kgQWf:7611hPmDgxlERAwrrMhES-8ex-Krptxfvw-wqvJpCY4', '2020-12-05 10:53:53.534878');

-- --------------------------------------------------------

--
-- Table structure for table `overlay-links`
--

CREATE TABLE `overlay-links` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `overlay-links`
--

INSERT INTO `overlay-links` (`id`, `name`, `link`) VALUES
(1, 'youtube', 'https://www.youtube.com/embed/jn_alkA7cZE');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `pack_name` varchar(20) DEFAULT NULL,
  `price_monthly` int(11) DEFAULT NULL,
  `price_yearly` int(11) DEFAULT NULL,
  `discount_rate` int(11) DEFAULT NULL,
  `pack_sec_one` varchar(120) DEFAULT NULL,
  `pack_sec_two` varchar(120) DEFAULT NULL,
  `pack_sec_three` varchar(120) DEFAULT NULL,
  `pack_sec_four` varchar(120) DEFAULT NULL,
  `pack_sec_five` varchar(120) DEFAULT NULL,
  `pack_sec_six` varchar(120) DEFAULT NULL,
  `pack_sec_seven` varchar(120) DEFAULT NULL,
  `pack_sec_eight` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `pack_name`, `price_monthly`, `price_yearly`, `discount_rate`, `pack_sec_one`, `pack_sec_two`, `pack_sec_three`, `pack_sec_four`, `pack_sec_five`, `pack_sec_six`, `pack_sec_seven`, `pack_sec_eight`) VALUES
(1, 'Essential', 8, 96, 0, '1000 respones per month', '3 logic jumps per typeform', 'Custom Thank you Screen', 'Calculator for quizzes and payments', NULL, NULL, NULL, NULL),
(2, 'Professional', 15, 180, 0, '1000 respones per month', '3 logic jumps per typeform', 'Custom Thank you Screen', 'Calculator for quizzes and payments', 'Calculator for quizzes and payments', 'Calculator for quizzes and payments', NULL, NULL),
(3, 'Premium', 20, 240, 0, '1000 respones per month', '3 logic jumps per typeform', 'Custom Thank you Screen', 'Calculator for quizzes and payments', 'Calculator for quizzes and payments', 'Calculator for quizzes and payments', 'Calculator for quizzes and payments', 'Calculator for quizzes and payments');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `img_one` varchar(100) DEFAULT NULL,
  `img_two` varchar(100) DEFAULT NULL,
  `img_three` varchar(100) DEFAULT NULL,
  `product_description` longtext,
  `product_file` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `slug`, `title`, `category_id`, `price`, `img_one`, `img_two`, `img_three`, `product_description`, `product_file`) VALUES
(1, 'prod_1', 'Libra Stinger Transition', 1, 50, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_CYDEUbi.webp', 'product/image/Panther-Premade_pb48fml.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO_f2DINGp.webp', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', ''),
(2, 'prod_2', 'Spellbreaker Stinger Transition', 3, 60, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO_bkxASIJ.webp', 'product/image/Beast-Hunter-Store-Thumb_ffd46332-f95f-4b29-87f4-baff133f0aec_TPSxofP.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_Gl_CI6VL3r.webp', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', ''),
(3, 'prod_3', 'Plasma Stream Alert', 1, 120, 'product/image/Beast-Hunter-Store-Thumb_ffd46332-f95f-4b29-87f4-baff133f0aec_LBDtEb0.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_Gl_p9LfgNq.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_CYDEUbi_yh8HBtJ.webp', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '');

-- --------------------------------------------------------

--
-- Table structure for table `prod_category`
--

CREATE TABLE `prod_category` (
  `id` int(11) NOT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod_category`
--

INSERT INTO `prod_category` (`id`, `category`) VALUES
(1, 'Video Animation'),
(2, 'Animation'),
(3, 'Free'),
(4, 'Viper VIdeo'),
(5, 'Logo');

-- --------------------------------------------------------

--
-- Table structure for table `social-links`
--

CREATE TABLE `social-links` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `google_plus` varchar(100) DEFAULT NULL,
  `pinterest` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `tumbler` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_customer`
--

CREATE TABLE `store_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` int(11) NOT NULL,
  `date_ordered` datetime(6) NOT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  `transaction_id` varchar(200) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_orderitem`
--

CREATE TABLE `store_orderitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `data_added` datetime(6) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_shippingaddress`
--

CREATE TABLE `store_shippingaddress` (
  `id` int(11) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zipcode` varchar(200) DEFAULT NULL,
  `date_added` varchar(200) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_name_20bbbb38` (`name`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom`
--
ALTER TABLE `custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_design`
--
ALTER TABLE `custom_design`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `overlay-links`
--
ALTER TABLE `overlay-links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `overlay-links_name_b1f059a0` (`name`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_pack_name_7a1d9b74` (`pack_name`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_slug_e9a3a3e0` (`slug`),
  ADD KEY `product_details_category_id_61790d28` (`category_id`);

--
-- Indexes for table `prod_category`
--
ALTER TABLE `prod_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social-links`
--
ALTER TABLE `social-links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social-links_name_4bb3659d` (`name`);

--
-- Indexes for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_customer_id_13d6d43e_fk_store_customer_id` (`customer_id`);

--
-- Indexes for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  ADD KEY `store_orderitem_product_id_f2b098d4_fk_product_details_id` (`product_id`);

--
-- Indexes for table `store_shippingaddress`
--
ALTER TABLE `store_shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_shippingaddress_customer_id_66e362a6_fk_store_customer_id` (`customer_id`),
  ADD KEY `store_shippingaddress_order_id_e6decfbb_fk_store_order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom`
--
ALTER TABLE `custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_design`
--
ALTER TABLE `custom_design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `overlay-links`
--
ALTER TABLE `overlay-links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prod_category`
--
ALTER TABLE `prod_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social-links`
--
ALTER TABLE `social-links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_customer`
--
ALTER TABLE `store_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_shippingaddress`
--
ALTER TABLE `store_shippingaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_category_id_61790d28_fk_prod_category_id` FOREIGN KEY (`category_id`) REFERENCES `prod_category` (`id`);

--
-- Constraints for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD CONSTRAINT `store_customer_user_id_04276401_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`);

--
-- Constraints for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  ADD CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_product_details_id` FOREIGN KEY (`product_id`) REFERENCES `product_details` (`id`);

--
-- Constraints for table `store_shippingaddress`
--
ALTER TABLE `store_shippingaddress`
  ADD CONSTRAINT `store_shippingaddress_customer_id_66e362a6_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`),
  ADD CONSTRAINT `store_shippingaddress_order_id_e6decfbb_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
