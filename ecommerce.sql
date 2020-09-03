-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2020 at 08:42 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `about` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(37, 'Can add package', 10, 'add_package'),
(38, 'Can change package', 10, 'change_package'),
(39, 'Can delete package', 10, 'delete_package'),
(40, 'Can view package', 10, 'view_package'),
(41, 'Can add category', 11, 'add_category'),
(42, 'Can change category', 11, 'change_category'),
(43, 'Can delete category', 11, 'delete_category'),
(44, 'Can view category', 11, 'view_category'),
(45, 'Can add customer', 12, 'add_customer'),
(46, 'Can change customer', 12, 'change_customer'),
(47, 'Can delete customer', 12, 'delete_customer'),
(48, 'Can view customer', 12, 'view_customer'),
(49, 'Can add store', 13, 'add_store'),
(50, 'Can change store', 13, 'change_store'),
(51, 'Can delete store', 13, 'delete_store'),
(52, 'Can view store', 13, 'view_store'),
(53, 'Can add shipping address', 14, 'add_shippingaddress'),
(54, 'Can change shipping address', 14, 'change_shippingaddress'),
(55, 'Can delete shipping address', 14, 'delete_shippingaddress'),
(56, 'Can view shipping address', 14, 'view_shippingaddress'),
(57, 'Can add order', 15, 'add_order'),
(58, 'Can change order', 15, 'change_order'),
(59, 'Can delete order', 15, 'delete_order'),
(60, 'Can view order', 15, 'view_order'),
(61, 'Can add order item', 16, 'add_orderitem'),
(62, 'Can change order item', 16, 'change_orderitem'),
(63, 'Can delete order item', 16, 'delete_orderitem'),
(64, 'Can view order item', 16, 'view_orderitem'),
(65, 'Can add contact', 17, 'add_contact'),
(66, 'Can change contact', 17, 'change_contact'),
(67, 'Can delete contact', 17, 'delete_contact'),
(68, 'Can view contact', 17, 'view_contact'),
(69, 'Can add product', 13, 'add_product'),
(70, 'Can change product', 13, 'change_product'),
(71, 'Can delete product', 13, 'delete_product'),
(72, 'Can view product', 13, 'view_product');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$UhPpltD05lgk$H6UiljV/Dh0RbPElaDOeIkQLwkkFW6zQrfwAxB+wYww=', '2020-09-01 15:48:18.469541', 1, 'shahed', '', '', 'shahed@gmail.com', 1, 1, '2020-06-27 12:52:25.474545'),
(14, 'pbkdf2_sha256$150000$q1mO9tpmI12F$Civhzr7V2H6xybpzMes3r8eadPZoyufLlyQMIV88wqM=', '2020-08-11 17:33:12.569290', 0, 'shahedtalukder', 'Shahed', 'Talukder', 'shahedtalukder51@gmail.com', 0, 1, '2020-07-03 04:47:13.423676');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `full_name` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-27 12:55:15.545903', '1', 'Essential | 1', 1, '[{\"added\": {}}]', 10, 1),
(2, '2020-06-27 12:56:10.131074', '2', 'Professional | 2', 1, '[{\"added\": {}}]', 10, 1),
(3, '2020-06-27 12:56:37.122048', '3', 'Premium | 3', 1, '[{\"added\": {}}]', 10, 1),
(4, '2020-06-27 12:57:18.057130', '1', 'about | 1', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-06-27 12:58:11.054484', '1', 'youtube | 1', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-06-27 13:00:17.393763', '1', 'Free | 1', 1, '[{\"added\": {}}]', 11, 1),
(7, '2020-06-27 13:00:25.168455', '2', 'Logo | 2', 1, '[{\"added\": {}}]', 11, 1),
(8, '2020-06-27 13:00:32.431814', '3', 'Animation | 3', 1, '[{\"added\": {}}]', 11, 1),
(9, '2020-06-27 13:00:40.843834', '4', 'Video | 4', 1, '[{\"added\": {}}]', 11, 1),
(10, '2020-06-27 13:00:46.752890', '4', 'Video Animation | 4', 2, '[{\"changed\": {\"fields\": [\"category\"]}}]', 11, 1),
(11, '2020-06-27 13:00:55.836024', '5', 'Viper Video | 5', 1, '[{\"added\": {}}]', 11, 1),
(12, '2020-06-27 13:04:23.389161', '1', 'Plasma Stream Alert | Video Animation | 1', 1, '[{\"added\": {}}]', 13, 1),
(13, '2020-06-27 13:05:09.284105', '2', 'Valor Essentials Stream Package | Free | 2', 1, '[{\"added\": {}}]', 13, 1),
(14, '2020-06-27 13:06:03.327949', '2', 'Valor Essentials Stream Package | Free | 2', 2, '[]', 13, 1),
(15, '2020-06-27 13:06:46.647227', '3', 'Libra Stream Package | Viper VIdeo | 3', 1, '[{\"added\": {}}]', 13, 1),
(16, '2020-06-27 13:07:50.829912', '4', 'Libra Stinger Transition | Animation | 4', 1, '[{\"added\": {}}]', 13, 1),
(17, '2020-06-27 13:08:50.469531', '5', 'Spellbreaker Stinger Transition | Video Animation | 5', 1, '[{\"added\": {}}]', 13, 1),
(18, '2020-06-27 13:18:32.481231', '1', 'Tarek Jamil', 1, '[{\"added\": {}}]', 12, 1),
(19, '2020-06-27 13:45:14.579376', '1', '1', 2, '[{\"changed\": {\"fields\": [\"transaction_id\"]}}]', 15, 1),
(20, '2020-06-27 13:45:33.178883', '1', 'OrderItem object (1)', 1, '[{\"added\": {}}]', 16, 1),
(21, '2020-06-27 13:45:42.169354', '2', 'OrderItem object (2)', 1, '[{\"added\": {}}]', 16, 1),
(22, '2020-06-27 13:45:50.492022', '3', 'OrderItem object (3)', 1, '[{\"added\": {}}]', 16, 1),
(23, '2020-06-27 13:52:29.645045', '6', 'azad', 3, '', 4, 1),
(24, '2020-06-27 13:52:29.649044', '2', 'tarikjamil', 3, '', 4, 1),
(25, '2020-06-27 13:54:36.753427', '7', 'azad', 3, '', 4, 1),
(26, '2020-06-27 13:56:23.787178', '9', 'azad', 3, '', 4, 1),
(27, '2020-06-27 15:12:38.818857', '5', 'OrderItem object (5)', 3, '', 16, 1),
(28, '2020-06-27 15:12:38.821858', '4', 'OrderItem object (4)', 3, '', 16, 1),
(29, '2020-06-27 15:12:38.824859', '3', 'OrderItem object (3)', 3, '', 16, 1),
(30, '2020-06-27 15:12:38.827858', '2', 'OrderItem object (2)', 3, '', 16, 1),
(31, '2020-06-27 15:12:38.834859', '1', 'OrderItem object (1)', 3, '', 16, 1),
(32, '2020-06-27 15:24:21.643310', '12', 'ashik', 3, '', 4, 1),
(33, '2020-06-27 15:24:21.648310', '10', 'azad', 3, '', 4, 1),
(34, '2020-06-27 15:51:07.272081', '10', 'OrderItem object (10)', 3, '', 16, 1),
(35, '2020-06-27 15:51:07.277081', '9', 'OrderItem object (9)', 3, '', 16, 1),
(36, '2020-06-27 15:51:07.284081', '8', 'OrderItem object (8)', 3, '', 16, 1),
(37, '2020-06-27 15:51:07.287083', '7', 'OrderItem object (7)', 3, '', 16, 1),
(38, '2020-06-27 15:51:07.290082', '6', 'OrderItem object (6)', 3, '', 16, 1),
(39, '2020-06-27 15:54:03.117217', '13', 'OrderItem object (13)', 3, '', 16, 1),
(40, '2020-06-27 15:54:03.121219', '12', 'OrderItem object (12)', 3, '', 16, 1),
(41, '2020-06-27 15:54:03.126219', '11', 'OrderItem object (11)', 3, '', 16, 1),
(42, '2020-06-27 15:56:33.491342', '14', 'OrderItem object (14)', 3, '', 16, 1),
(43, '2020-06-27 16:11:59.162843', '18', 'OrderItem object (18)', 3, '', 16, 1),
(44, '2020-06-27 16:11:59.164839', '17', 'OrderItem object (17)', 3, '', 16, 1),
(45, '2020-06-27 16:11:59.166840', '16', 'OrderItem object (16)', 3, '', 16, 1),
(46, '2020-06-27 16:11:59.169840', '15', 'OrderItem object (15)', 3, '', 16, 1),
(47, '2020-06-27 18:06:26.912869', '48', 'OrderItem object (48)', 3, '', 16, 1),
(48, '2020-06-27 18:06:26.915869', '47', 'OrderItem object (47)', 3, '', 16, 1),
(49, '2020-06-27 18:06:26.917870', '46', 'OrderItem object (46)', 3, '', 16, 1),
(50, '2020-06-27 18:06:26.919870', '45', 'OrderItem object (45)', 3, '', 16, 1),
(51, '2020-06-27 18:06:26.921869', '44', 'OrderItem object (44)', 3, '', 16, 1),
(52, '2020-06-27 18:06:26.923870', '43', 'OrderItem object (43)', 3, '', 16, 1),
(53, '2020-06-27 18:06:26.925870', '42', 'OrderItem object (42)', 3, '', 16, 1),
(54, '2020-06-27 18:06:26.931870', '41', 'OrderItem object (41)', 3, '', 16, 1),
(55, '2020-06-27 18:06:26.933872', '40', 'OrderItem object (40)', 3, '', 16, 1),
(56, '2020-06-27 18:06:26.935871', '39', 'OrderItem object (39)', 3, '', 16, 1),
(57, '2020-06-27 18:06:26.939871', '20', 'OrderItem object (20)', 3, '', 16, 1),
(58, '2020-06-27 18:06:26.942871', '19', 'OrderItem object (19)', 3, '', 16, 1),
(59, '2020-06-27 18:18:55.458584', '65', 'OrderItem object (65)', 3, '', 16, 1),
(60, '2020-06-27 18:22:14.274007', '68', 'OrderItem object (68)', 3, '', 16, 1),
(61, '2020-06-27 18:34:35.736494', '36', 'Libra Stream Package | Logo | 36', 2, '[{\"changed\": {\"fields\": [\"category\"]}}]', 13, 1),
(62, '2020-06-27 18:34:40.168171', '31', 'Libra Stream Package | Logo | 31', 2, '[{\"changed\": {\"fields\": [\"category\"]}}]', 13, 1),
(63, '2020-07-03 04:46:14.079886', '13', 'azad', 3, '', 4, 1),
(64, '2020-07-03 04:46:14.081886', '5', 'shahedtalukder', 3, '', 4, 1),
(65, '2020-07-03 04:46:14.082887', '4', 'tarikjamil21', 3, '', 4, 1),
(66, '2020-07-03 04:46:26.062226', '2', '2', 3, '', 15, 1),
(67, '2020-07-03 04:46:26.065224', '1', '1', 3, '', 15, 1),
(68, '2020-07-07 13:59:12.497298', '37', 'Libra Stinger Transition | Animation | 37', 2, '[{\"changed\": {\"fields\": [\"Product file\"]}}]', 13, 1),
(69, '2020-07-08 12:27:45.965136', '1', 'Plasma Stream Alert | Video Animation | 1', 2, '[{\"changed\": {\"fields\": [\"Img two\"]}}]', 13, 1),
(70, '2020-07-08 12:27:55.694371', '1', 'Plasma Stream Alert | Video Animation | 1', 2, '[{\"changed\": {\"fields\": [\"Img two\"]}}]', 13, 1),
(71, '2020-08-13 10:48:39.348801', '1', 'Plasma Stream Alert | Video Animation | 1', 2, '[{\"changed\": {\"fields\": [\"img_one\", \"img_two\", \"img_three\"]}}]', 13, 1),
(72, '2020-08-13 11:51:15.238023', '37', 'Libra Stinger Transition Help | Animation | 37', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 13, 1),
(73, '2020-08-13 11:51:26.618606', '37', 'Libra Stinger Transition | Animation | 37', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 13, 1),
(74, '2020-09-01 15:51:22.017532', '38', 'Libra Stinger Transition Help | Logo | 38', 1, '[{\"added\": {}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(17, 'about', 'contact'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'categories', 'category'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'about'),
(8, 'main', 'main'),
(9, 'main', 'overlaylink'),
(10, 'package', 'package'),
(6, 'sessions', 'session'),
(12, 'store', 'customer'),
(15, 'store', 'order'),
(16, 'store', 'orderitem'),
(13, 'store', 'product'),
(14, 'store', 'shippingaddress');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-27 12:42:34.971628'),
(2, 'auth', '0001_initial', '2020-06-27 12:42:35.171683'),
(3, 'admin', '0001_initial', '2020-06-27 12:42:35.721538'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-27 12:42:35.886322'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-27 12:42:35.895321'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-27 12:42:35.970328'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-27 12:42:36.017332'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-27 12:42:36.038334'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-27 12:42:36.048334'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-27 12:42:36.096337'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-27 12:42:36.098338'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-27 12:42:36.107339'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-27 12:42:36.135341'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-27 12:42:36.155343'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-27 12:42:36.175343'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-27 12:42:36.190345'),
(17, 'sessions', '0001_initial', '2020-06-27 12:42:36.229348'),
(18, 'main', '0001_initial', '2020-06-27 12:45:55.608464'),
(19, 'package', '0001_initial', '2020-06-27 12:46:36.961143'),
(20, 'categories', '0001_initial', '2020-06-27 12:47:12.055802'),
(21, 'store', '0001_initial', '2020-06-27 12:47:39.327284'),
(22, 'about', '0001_initial', '2020-06-27 12:48:11.167572'),
(23, 'store', '0002_auto_20200627_2111', '2020-06-27 15:12:02.915973'),
(24, 'store', '0003_store_product_file', '2020-07-07 13:58:08.009311'),
(25, 'store', '0004_auto_20200708_1827', '2020-07-08 12:27:34.160840'),
(26, 'store', '0005_auto_20200813_1722', '2020-08-13 11:22:11.159812');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('33qaq29hu2muyntcnadkmifhjkwg9no7', 'NzJiNjgyNGVjODg4NDQyNTNlNGE2MjA5ZWM3NzhjNTkzMWUwZWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzk3YTk1MWM3OWEwODlhZDc5MDM1ZWQ1ZDg2ZDQzYWZmYzBiNTlmZCJ9', '2020-08-24 17:36:17.502297'),
('3e7fmkvkpwzopu4f5hyr76fl5p7crrpz', 'YzY2OGIwZDA2YTM4M2ZlYzA1YTIwMjk1NmEyMGNmZDRiY2FmYWM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGI5YTE4Y2YzYTUzM2I3MTRhM2FhMTZkMGZjNmI0ZTdiMTEzYmE0YyJ9', '2020-07-22 12:00:17.358693'),
('7du6qhj6jxbb62jx6irv4jomlr8sw15c', 'YzY2OGIwZDA2YTM4M2ZlYzA1YTIwMjk1NmEyMGNmZDRiY2FmYWM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGI5YTE4Y2YzYTUzM2I3MTRhM2FhMTZkMGZjNmI0ZTdiMTEzYmE0YyJ9', '2020-07-22 14:57:18.181658'),
('7hbd10ayrkvr7ldui2ol656rqubj82ug', 'Y2NhYmZiM2RmZWM2ZjQ1MWQ5M2Q5NzhjYjdhMjViY2U2MjI4MjdkNDp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjMzOWI0ZjlkYTk3MWMyNGU0NTMxYWY2Mjk5ODU2NmU1Zjc0OTk2YSJ9', '2020-07-11 16:07:53.431479'),
('83lv0ho5gh9f2pa6hrz3bynwrmlfuxdq', 'YjZmNDE3OGQ4OTQzMWE1MTllZGZhOGQ3MDM5YjQyNjMzNjJmNzIxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NjczMWZkOTBmMDAyOWY0Yzg5OTEzODZmYTZhY2EzM2MzMDJhN2FiIn0=', '2020-07-11 18:06:18.383924'),
('874ey4y1h4vu4zdcnise9bup5qnsxps9', 'YzY2OGIwZDA2YTM4M2ZlYzA1YTIwMjk1NmEyMGNmZDRiY2FmYWM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGI5YTE4Y2YzYTUzM2I3MTRhM2FhMTZkMGZjNmI0ZTdiMTEzYmE0YyJ9', '2020-07-22 14:42:02.672574'),
('cjuqxch2z8jctvw9mykaai3hq27yoi1a', 'OTM4MjlmNDYyMjYwM2U4YjM2MDg0MTA2NjQ3ZWNiYjBhZTE5ZTdiZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZmRhZTRhYmQyMDU1OGJiM2NkNTdlMmMyYjZmODIzZGI1OTI1YTc1In0=', '2020-08-27 10:48:09.630898'),
('d8l6u6jspbif8t51zxs9co2x1phpcv7b', 'YzY2OGIwZDA2YTM4M2ZlYzA1YTIwMjk1NmEyMGNmZDRiY2FmYWM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGI5YTE4Y2YzYTUzM2I3MTRhM2FhMTZkMGZjNmI0ZTdiMTEzYmE0YyJ9', '2020-07-22 14:27:00.990563'),
('kutiz97v7m709nrpr029x317gs61ylb4', 'YzQxOWY2ZDNjZjQ3Mjg4YTIzYjIzMjAwZDEwZjczMTc5ZmFlZjdiODp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NTRmMzkzNDIxMjA4YmUxZjQxODI0ZjAwNGYwNmFmYTI5YzkyZGE5In0=', '2020-07-11 18:42:50.125487'),
('oaji4nz4u7ikc98zp8ipidy5no8oa2nm', 'ZjA3ZTg4YTIxNjFjNzIzOWFmNDcwODQ2ZGFmNmM5NTFkYWM1MzRlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjc0N2JkOTMxMDNhODdmMjUzMDUzY2M2ZDVlNmYwODFmZWM5YjU0In0=', '2020-07-21 13:58:39.184731'),
('op57jaw2o51t8n8fdhykmlklht3mwmsf', 'OTM4MjlmNDYyMjYwM2U4YjM2MDg0MTA2NjQ3ZWNiYjBhZTE5ZTdiZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZmRhZTRhYmQyMDU1OGJiM2NkNTdlMmMyYjZmODIzZGI1OTI1YTc1In0=', '2020-08-27 11:23:37.190395'),
('t5hkgc7ipg88owlce0mvjr0d2yrzi8m2', 'YzY2OGIwZDA2YTM4M2ZlYzA1YTIwMjk1NmEyMGNmZDRiY2FmYWM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGI5YTE4Y2YzYTUzM2I3MTRhM2FhMTZkMGZjNmI0ZTdiMTEzYmE0YyJ9', '2020-07-21 13:28:22.019364'),
('wwqp3rkud2s1xywmjerbsons73m1esg9', 'Y2NhYmZiM2RmZWM2ZjQ1MWQ5M2Q5NzhjYjdhMjViY2U2MjI4MjdkNDp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjMzOWI0ZjlkYTk3MWMyNGU0NTMxYWY2Mjk5ODU2NmU1Zjc0OTk2YSJ9', '2020-07-11 16:15:36.854912'),
('zfi6r9gpfe3gboynw46t6inyl6u7xudj', 'OTM4MjlmNDYyMjYwM2U4YjM2MDg0MTA2NjQ3ZWNiYjBhZTE5ZTdiZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZmRhZTRhYmQyMDU1OGJiM2NkNTdlMmMyYjZmODIzZGI1OTI1YTc1In0=', '2020-09-15 15:48:18.477548'),
('zj21x9ce318m1ywkjr8j8z1qwf60k778', 'ZDEyYjViMzM2NmIyZGExN2RkMzJjOGUxNmQ3MjZkZmMxODk0MzI3NDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzIxODQ0MzA5NTBkN2NkMzU3OTlhNzBhZmE3NDcwOWJmYWRkMjRmMSJ9', '2020-07-17 04:47:22.114798'),
('zw32wf8qqto8yv8zmqec6mezo3776m99', 'ZjA3ZTg4YTIxNjFjNzIzOWFmNDcwODQ2ZGFmNmM5NTFkYWM1MzRlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjc0N2JkOTMxMDNhODdmMjUzMDUzY2M2ZDVlNmYwODFmZWM5YjU0In0=', '2020-07-22 10:18:40.069742');

-- --------------------------------------------------------

--
-- Table structure for table `overlay-links`
--

CREATE TABLE `overlay-links` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `category` varchar(120) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `img_one` varchar(100) DEFAULT NULL,
  `img_two` varchar(100) DEFAULT NULL,
  `img_three` varchar(100) DEFAULT NULL,
  `product_description` longtext DEFAULT NULL,
  `product_file` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `slug`, `title`, `category`, `price`, `img_one`, `img_two`, `img_three`, `product_description`, `product_file`) VALUES
(1, 'prod_1', 'Plasma Stream Alert', 'Video Animation', 20, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO_9CaXtgb.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj_ggM2OMT.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF_DwzSHOu_dk1MUVA.webp', 'These alerts pass the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Setup, big Loggers.\r\n\r\nFunky, feel-good vibes. Introducing \'Plasma\', a groovy new alerts widget for your stream on Twitch, YouTube, Mixer, and Facebook Gaming. Inspired by lava lamps and molten elementals. A psychedelic look designed for transcendent hippies and creative-types. Part of the Plasma Stream Package collection. \r\n\r\nOur most innovative stream alerts yet. Adjust colors and shapes to fit your style. Choose from two alert layout styles: go big with vertical displays, or keep it low-key with horizontal banners. Includes editable titles to support any language or occasion! All 100% customizable with one-click setup for Streamlabs and StreamElements. Includes custom sound effects and a handy setup guide.', ''),
(2, 'prod_2', 'Valor Essentials Stream Package', 'Free', 0, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_vd3Qfsa.webp', 'This Package passes the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Alerts Setup, big Poggers.\r\n\r\nLocked & loaded. Introducing \'Valor Essentials\', a FREE new theme for your stream graphics. Overlays and alerts inspired by Valorant. A sleek, high-tech look blending minimalist themes and tactical layouts. Designed for cyber sharpshooters and FPS gods. Supports Twitch, YouTube, Mixer, and Facebook Gaming.\r\n\r\nFeaturing modular overlays and intermission screens, so you can build your own custom layouts. Just use the included SLOBS .overlay files and easy one-click setups for Streamlabs and StreamElements.\r\n\r\nPackage includes all the essential visuals: alerts, overlays, webcams, stream screens, stinger transitions, and Twitch panels. Available in animated and static options. Includes handy setup guide.', NULL),
(3, 'prod_3', 'Libra Stream Package', 'Viper VIdeo', 30, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(4, 'prod_4', 'Libra Stinger Transition', 'Animation', 30, 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_GllJArh.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_LOuKrVV.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(5, 'prod_5', 'Spellbreaker Stinger Transition', 'Video Animation', 50, 'product/image/Clash_Stream_Package_Store_Thumb_Final_MhBhsCH.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF_DwzSHOu.webp', 'Conjure the dark arts. Introducing \'Spellbreaker\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Spellbreaker Stream Package collection. Includes three color options and three unique rune patterns.\r\n\r\nSummon magical wards with a single click. An enchanted stinger transition, designed for necromancers, sorcerers, and battle-mages. Blending ancient hexes with themes of alchemy and astrology. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Spellbreaker comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(6, 'prod_6', 'Plasma Stream Alert', 'Video Animation', 20, 'product/image/Panther-Premade.webp', 'product/image/Panther-Premade_BdiH71w.webp', 'product/image/Panther-Premade_Jx32Rd1.webp', 'These alerts pass the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Setup, big Loggers.\r\n\r\nFunky, feel-good vibes. Introducing \'Plasma\', a groovy new alerts widget for your stream on Twitch, YouTube, Mixer, and Facebook Gaming. Inspired by lava lamps and molten elementals. A psychedelic look designed for transcendent hippies and creative-types. Part of the Plasma Stream Package collection. \r\n\r\nOur most innovative stream alerts yet. Adjust colors and shapes to fit your style. Choose from two alert layout styles: go big with vertical displays, or keep it low-key with horizontal banners. Includes editable titles to support any language or occasion! All 100% customizable with one-click setup for Streamlabs and StreamElements. Includes custom sound effects and a handy setup guide.', NULL),
(7, 'prod_7', 'Valor Essentials Stream Package', 'Free', 0, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_vd3Qfsa.webp', 'This Package passes the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Alerts Setup, big Poggers.\r\n\r\nLocked & loaded. Introducing \'Valor Essentials\', a FREE new theme for your stream graphics. Overlays and alerts inspired by Valorant. A sleek, high-tech look blending minimalist themes and tactical layouts. Designed for cyber sharpshooters and FPS gods. Supports Twitch, YouTube, Mixer, and Facebook Gaming.\r\n\r\nFeaturing modular overlays and intermission screens, so you can build your own custom layouts. Just use the included SLOBS .overlay files and easy one-click setups for Streamlabs and StreamElements.\r\n\r\nPackage includes all the essential visuals: alerts, overlays, webcams, stream screens, stinger transitions, and Twitch panels. Available in animated and static options. Includes handy setup guide.', NULL),
(8, 'prod_8', 'Libra Stream Package', 'Viper VIdeo', 30, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(9, 'prod_9', 'Libra Stinger Transition', 'Animation', 30, 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_GllJArh.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_LOuKrVV.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(10, 'prod_10', 'Spellbreaker Stinger Transition', 'Video Animation', 50, 'product/image/Clash_Stream_Package_Store_Thumb_Final_MhBhsCH.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF_DwzSHOu.webp', 'Conjure the dark arts. Introducing \'Spellbreaker\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Spellbreaker Stream Package collection. Includes three color options and three unique rune patterns.\r\n\r\nSummon magical wards with a single click. An enchanted stinger transition, designed for necromancers, sorcerers, and battle-mages. Blending ancient hexes with themes of alchemy and astrology. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Spellbreaker comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(11, 'prod_11', 'Valor Essentials Stream Package', 'Free', 0, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_vd3Qfsa.webp', 'This Package passes the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Alerts Setup, big Poggers.\r\n\r\nLocked & loaded. Introducing \'Valor Essentials\', a FREE new theme for your stream graphics. Overlays and alerts inspired by Valorant. A sleek, high-tech look blending minimalist themes and tactical layouts. Designed for cyber sharpshooters and FPS gods. Supports Twitch, YouTube, Mixer, and Facebook Gaming.\r\n\r\nFeaturing modular overlays and intermission screens, so you can build your own custom layouts. Just use the included SLOBS .overlay files and easy one-click setups for Streamlabs and StreamElements.\r\n\r\nPackage includes all the essential visuals: alerts, overlays, webcams, stream screens, stinger transitions, and Twitch panels. Available in animated and static options. Includes handy setup guide.', NULL),
(12, 'prod_12', 'Valor Essentials Stream Package', 'Free', 0, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_vd3Qfsa.webp', 'This Package passes the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Alerts Setup, big Poggers.\r\n\r\nLocked & loaded. Introducing \'Valor Essentials\', a FREE new theme for your stream graphics. Overlays and alerts inspired by Valorant. A sleek, high-tech look blending minimalist themes and tactical layouts. Designed for cyber sharpshooters and FPS gods. Supports Twitch, YouTube, Mixer, and Facebook Gaming.\r\n\r\nFeaturing modular overlays and intermission screens, so you can build your own custom layouts. Just use the included SLOBS .overlay files and easy one-click setups for Streamlabs and StreamElements.\r\n\r\nPackage includes all the essential visuals: alerts, overlays, webcams, stream screens, stinger transitions, and Twitch panels. Available in animated and static options. Includes handy setup guide.', NULL),
(13, 'prod_13', 'Libra Stream Package', 'Viper VIdeo', 30, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(14, 'prod_14', 'Libra Stream Package', 'Viper VIdeo', 30, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(15, 'prod_15', 'Plasma Stream Alert', 'Video Animation', 20, 'product/image/Panther-Premade.webp', 'product/image/Panther-Premade_BdiH71w.webp', 'product/image/Panther-Premade_Jx32Rd1.webp', 'These alerts pass the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Setup, big Loggers.\r\n\r\nFunky, feel-good vibes. Introducing \'Plasma\', a groovy new alerts widget for your stream on Twitch, YouTube, Mixer, and Facebook Gaming. Inspired by lava lamps and molten elementals. A psychedelic look designed for transcendent hippies and creative-types. Part of the Plasma Stream Package collection. \r\n\r\nOur most innovative stream alerts yet. Adjust colors and shapes to fit your style. Choose from two alert layout styles: go big with vertical displays, or keep it low-key with horizontal banners. Includes editable titles to support any language or occasion! All 100% customizable with one-click setup for Streamlabs and StreamElements. Includes custom sound effects and a handy setup guide.', NULL),
(16, 'prod_16', 'Libra Stream Package', 'Viper VIdeo', 30, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(17, 'prod_17', 'Libra Stinger Transition', 'Animation', 30, 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_GllJArh.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_LOuKrVV.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(18, 'prod_18', 'Spellbreaker Stinger Transition', 'Video Animation', 50, 'product/image/Clash_Stream_Package_Store_Thumb_Final_MhBhsCH.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF_DwzSHOu.webp', 'Conjure the dark arts. Introducing \'Spellbreaker\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Spellbreaker Stream Package collection. Includes three color options and three unique rune patterns.\r\n\r\nSummon magical wards with a single click. An enchanted stinger transition, designed for necromancers, sorcerers, and battle-mages. Blending ancient hexes with themes of alchemy and astrology. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Spellbreaker comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(19, 'prod_19', 'Valor Essentials Stream Package', 'Free', 0, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_vd3Qfsa.webp', 'This Package passes the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Alerts Setup, big Poggers.\r\n\r\nLocked & loaded. Introducing \'Valor Essentials\', a FREE new theme for your stream graphics. Overlays and alerts inspired by Valorant. A sleek, high-tech look blending minimalist themes and tactical layouts. Designed for cyber sharpshooters and FPS gods. Supports Twitch, YouTube, Mixer, and Facebook Gaming.\r\n\r\nFeaturing modular overlays and intermission screens, so you can build your own custom layouts. Just use the included SLOBS .overlay files and easy one-click setups for Streamlabs and StreamElements.\r\n\r\nPackage includes all the essential visuals: alerts, overlays, webcams, stream screens, stinger transitions, and Twitch panels. Available in animated and static options. Includes handy setup guide.', NULL),
(20, 'prod_20', 'Libra Stinger Transition', 'Animation', 30, 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_GllJArh.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_LOuKrVV.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(21, 'prod_21', 'Plasma Stream Alert', 'Video Animation', 20, 'product/image/Panther-Premade.webp', 'product/image/Panther-Premade_BdiH71w.webp', 'product/image/Panther-Premade_Jx32Rd1.webp', 'These alerts pass the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Setup, big Loggers.\r\n\r\nFunky, feel-good vibes. Introducing \'Plasma\', a groovy new alerts widget for your stream on Twitch, YouTube, Mixer, and Facebook Gaming. Inspired by lava lamps and molten elementals. A psychedelic look designed for transcendent hippies and creative-types. Part of the Plasma Stream Package collection. \r\n\r\nOur most innovative stream alerts yet. Adjust colors and shapes to fit your style. Choose from two alert layout styles: go big with vertical displays, or keep it low-key with horizontal banners. Includes editable titles to support any language or occasion! All 100% customizable with one-click setup for Streamlabs and StreamElements. Includes custom sound effects and a handy setup guide.', NULL),
(22, 'prod_22', 'Valor Essentials Stream Package', 'Free', 0, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_vd3Qfsa.webp', 'This Package passes the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Alerts Setup, big Poggers.\r\n\r\nLocked & loaded. Introducing \'Valor Essentials\', a FREE new theme for your stream graphics. Overlays and alerts inspired by Valorant. A sleek, high-tech look blending minimalist themes and tactical layouts. Designed for cyber sharpshooters and FPS gods. Supports Twitch, YouTube, Mixer, and Facebook Gaming.\r\n\r\nFeaturing modular overlays and intermission screens, so you can build your own custom layouts. Just use the included SLOBS .overlay files and easy one-click setups for Streamlabs and StreamElements.\r\n\r\nPackage includes all the essential visuals: alerts, overlays, webcams, stream screens, stinger transitions, and Twitch panels. Available in animated and static options. Includes handy setup guide.', NULL),
(23, 'prod_23', 'Libra Stream Package', 'Viper VIdeo', 30, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(24, 'prod_24', 'Libra Stinger Transition', 'Animation', 30, 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_GllJArh.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_LOuKrVV.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(25, 'prod_25', 'Spellbreaker Stinger Transition', 'Video Animation', 50, 'product/image/Clash_Stream_Package_Store_Thumb_Final_MhBhsCH.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF_DwzSHOu.webp', 'Conjure the dark arts. Introducing \'Spellbreaker\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Spellbreaker Stream Package collection. Includes three color options and three unique rune patterns.\r\n\r\nSummon magical wards with a single click. An enchanted stinger transition, designed for necromancers, sorcerers, and battle-mages. Blending ancient hexes with themes of alchemy and astrology. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Spellbreaker comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(26, 'prod_26', 'Plasma Stream Alert', 'Video Animation', 20, 'product/image/Panther-Premade.webp', 'product/image/Panther-Premade_BdiH71w.webp', 'product/image/Panther-Premade_Jx32Rd1.webp', 'These alerts pass the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Setup, big Loggers.\r\n\r\nFunky, feel-good vibes. Introducing \'Plasma\', a groovy new alerts widget for your stream on Twitch, YouTube, Mixer, and Facebook Gaming. Inspired by lava lamps and molten elementals. A psychedelic look designed for transcendent hippies and creative-types. Part of the Plasma Stream Package collection. \r\n\r\nOur most innovative stream alerts yet. Adjust colors and shapes to fit your style. Choose from two alert layout styles: go big with vertical displays, or keep it low-key with horizontal banners. Includes editable titles to support any language or occasion! All 100% customizable with one-click setup for Streamlabs and StreamElements. Includes custom sound effects and a handy setup guide.', NULL),
(27, 'prod_27', 'Valor Essentials Stream Package', 'Free', 0, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_vd3Qfsa.webp', 'This Package passes the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Alerts Setup, big Poggers.\r\n\r\nLocked & loaded. Introducing \'Valor Essentials\', a FREE new theme for your stream graphics. Overlays and alerts inspired by Valorant. A sleek, high-tech look blending minimalist themes and tactical layouts. Designed for cyber sharpshooters and FPS gods. Supports Twitch, YouTube, Mixer, and Facebook Gaming.\r\n\r\nFeaturing modular overlays and intermission screens, so you can build your own custom layouts. Just use the included SLOBS .overlay files and easy one-click setups for Streamlabs and StreamElements.\r\n\r\nPackage includes all the essential visuals: alerts, overlays, webcams, stream screens, stinger transitions, and Twitch panels. Available in animated and static options. Includes handy setup guide.', NULL),
(28, 'prod_28', 'Libra Stream Package', 'Viper VIdeo', 30, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(29, 'prod_29', 'Plasma Stream Alert', 'Video Animation', 20, 'product/image/Panther-Premade.webp', 'product/image/Panther-Premade_BdiH71w.webp', 'product/image/Panther-Premade_Jx32Rd1.webp', 'These alerts pass the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Setup, big Loggers.\r\n\r\nFunky, feel-good vibes. Introducing \'Plasma\', a groovy new alerts widget for your stream on Twitch, YouTube, Mixer, and Facebook Gaming. Inspired by lava lamps and molten elementals. A psychedelic look designed for transcendent hippies and creative-types. Part of the Plasma Stream Package collection. \r\n\r\nOur most innovative stream alerts yet. Adjust colors and shapes to fit your style. Choose from two alert layout styles: go big with vertical displays, or keep it low-key with horizontal banners. Includes editable titles to support any language or occasion! All 100% customizable with one-click setup for Streamlabs and StreamElements. Includes custom sound effects and a handy setup guide.', NULL),
(30, 'prod_30', 'Valor Essentials Stream Package', 'Free', 0, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_vd3Qfsa.webp', 'This Package passes the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Alerts Setup, big Poggers.\r\n\r\nLocked & loaded. Introducing \'Valor Essentials\', a FREE new theme for your stream graphics. Overlays and alerts inspired by Valorant. A sleek, high-tech look blending minimalist themes and tactical layouts. Designed for cyber sharpshooters and FPS gods. Supports Twitch, YouTube, Mixer, and Facebook Gaming.\r\n\r\nFeaturing modular overlays and intermission screens, so you can build your own custom layouts. Just use the included SLOBS .overlay files and easy one-click setups for Streamlabs and StreamElements.\r\n\r\nPackage includes all the essential visuals: alerts, overlays, webcams, stream screens, stinger transitions, and Twitch panels. Available in animated and static options. Includes handy setup guide.', NULL),
(31, 'prod_31', 'Libra Stream Package', 'Logo', 30, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(32, 'prod_32', 'Libra Stinger Transition', 'Animation', 30, 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_GllJArh.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_LOuKrVV.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(33, 'prod_32', 'Spellbreaker Stinger Transition', 'Video Animation', 50, 'product/image/Clash_Stream_Package_Store_Thumb_Final_MhBhsCH.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF.webp', 'product/image/Clash_Stream_Package_Store_Thumb_Final_XEHRpiF_DwzSHOu.webp', 'Conjure the dark arts. Introducing \'Spellbreaker\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Spellbreaker Stream Package collection. Includes three color options and three unique rune patterns.\r\n\r\nSummon magical wards with a single click. An enchanted stinger transition, designed for necromancers, sorcerers, and battle-mages. Blending ancient hexes with themes of alchemy and astrology. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Spellbreaker comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(34, 'prod_34', 'Plasma Stream Alert', 'Video Animation', 20, 'product/image/Panther-Premade.webp', 'product/image/Panther-Premade_BdiH71w.webp', 'product/image/Panther-Premade_Jx32Rd1.webp', 'These alerts pass the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Setup, big Loggers.\r\n\r\nFunky, feel-good vibes. Introducing \'Plasma\', a groovy new alerts widget for your stream on Twitch, YouTube, Mixer, and Facebook Gaming. Inspired by lava lamps and molten elementals. A psychedelic look designed for transcendent hippies and creative-types. Part of the Plasma Stream Package collection. \r\n\r\nOur most innovative stream alerts yet. Adjust colors and shapes to fit your style. Choose from two alert layout styles: go big with vertical displays, or keep it low-key with horizontal banners. Includes editable titles to support any language or occasion! All 100% customizable with one-click setup for Streamlabs and StreamElements. Includes custom sound effects and a handy setup guide.', NULL),
(35, 'prod_35', 'Valor Essentials Stream Package', 'Free', 0, 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_o7vVgbO.webp', 'product/image/Valor_Essentials_Store_Thumb_cf43952e-cbef-48af-aef9-00f9e789be6e_vd3Qfsa.webp', 'This Package passes the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Alerts Setup, big Poggers.\r\n\r\nLocked & loaded. Introducing \'Valor Essentials\', a FREE new theme for your stream graphics. Overlays and alerts inspired by Valorant. A sleek, high-tech look blending minimalist themes and tactical layouts. Designed for cyber sharpshooters and FPS gods. Supports Twitch, YouTube, Mixer, and Facebook Gaming.\r\n\r\nFeaturing modular overlays and intermission screens, so you can build your own custom layouts. Just use the included SLOBS .overlay files and easy one-click setups for Streamlabs and StreamElements.\r\n\r\nPackage includes all the essential visuals: alerts, overlays, webcams, stream screens, stinger transitions, and Twitch panels. Available in animated and static options. Includes handy setup guide.', NULL),
(36, 'prod_36', 'Libra Stream Package', 'Logo', 30, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428.webp', 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_8zFmFWj.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', NULL),
(37, 'prod_37', 'Libra Stinger Transition', 'Animation', 30, 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_GllJArh.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_LOuKrVV.webp', 'Cast a spell. Introducing \'Libra\', a new stinger transition for streamers on Twitch, Mixer, YouTube, and Facebook Gaming. Part of the Libra Stream Package collection. Includes five vibrant color options.\r\n\r\nSummon forest sprites with a single click. A magical stinger transition, designed for cozy late-night streams, MMORPG gaming, and ASMR sessions. Blending fairy tale themes and Harry Potter inspirations. Includes custom sound effects!\r\n\r\nUp your broadcast presentation with professional stinger transitions. Best used when switching scenes, exiting or entering gameplay, and more. Libra comes neatly packaged, featuring setup instructions and special readme guide.', 'new_file/jquery-validation-1.19.2.zip'),
(38, 'new_prod21', 'Libra Stinger Transition Help', 'Logo', 12, 'product/image/Libra_Store_Thumb_be3c0f05-6d4e-464d-bf95-c78646c7e428_94TWvtX_NxkMOE6.webp', 'product/image/Panther-Premade_L0MFIC5.webp', 'product/image/Spellbreaker_Stingers_Store_Thumb_20f75cad-50ca-42e4-be47-2a65a0e57753_irsi88i.webp', 'These alerts pass the highest marks of Streamlabs and StreamElements compatibility. Featuring 1-Click Setup, big Loggers. Funky, feel-good vibes. Introducing \'Plasma\', a groovy new alerts widget for your stream on Twitch, YouTube, Mixer, and Facebook Gaming. Inspired by lava lamps and molten elementals. A psychedelic look designed for transcendent hippies and creative-types. Part of the Plasma Stream Package collection. Our most innovative stream alerts yet. Adjust colors and shapes to fit your style. Choose from two alert layout styles: go big with vertical displays, or keep it low-key with horizontal banners. Includes editable titles to support any language or occasion! All 100% customizable with one-click setup for Streamlabs and StreamElements. Includes custom sound effects and a handy setup guide.', '');

-- --------------------------------------------------------

--
-- Table structure for table `prod_category`
--

CREATE TABLE `prod_category` (
  `id` int(11) NOT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prod_category`
--

INSERT INTO `prod_category` (`id`, `category`) VALUES
(1, 'Free'),
(2, 'Logo'),
(3, 'Animation'),
(4, 'Video Animation'),
(5, 'Viper Video');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_customer`
--

CREATE TABLE `store_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_customer`
--

INSERT INTO `store_customer` (`id`, `name`, `email`, `user_id`) VALUES
(4, 'Shahed Talukder', 'shahedtalukder51@gmail.com', 14);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `date_ordered`, `complete`, `transaction_id`, `customer_id`) VALUES
(3, '2020-07-03 04:47:22.130801', 0, NULL, 4);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_orderitem`
--

INSERT INTO `store_orderitem` (`id`, `quantity`, `data_added`, `order_id`, `product_id`) VALUES
(155, 1, '2020-08-11 17:57:58.073444', 3, 1),
(156, 1, '2020-08-11 17:58:01.170259', 3, 3),
(157, 1, '2020-08-11 17:58:02.894398', 3, 8),
(158, 1, '2020-08-11 17:58:04.857561', 3, 9),
(159, 1, '2020-08-11 17:58:09.297921', 3, 10);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `product_details_slug_e9a3a3e0` (`slug`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

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
