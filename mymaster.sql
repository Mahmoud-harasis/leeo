-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 09:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mymaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` varchar(255) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_title`, `banner_url`, `banner_image`, `created_at`, `updated_at`) VALUES
(3, 'hi', 'https://www.jotform.com/', 'upload/banner/1760626243070261.jpg', NULL, NULL),
(4, 'hi', 'https://www.jotform.com/', 'upload/banner/1760626300734185.jpg', NULL, NULL),
(5, 'hi', 'https://www.jotform.com/', 'upload/banner/1760626312321592.jpg', NULL, NULL),
(6, 'hi', 'https://www.jotform.com/', 'upload/banner/1760626404267046.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_image`, `created_at`, `updated_at`) VALUES
(7, 'hand', 'hand', 'upload/brand/1758516501210570.png', NULL, NULL),
(8, 'hello', 'hello', 'upload/brand/1758516668616750.png', NULL, NULL),
(9, 'test test test', 'test-test-test', 'upload/brand/1758517317910356.png', NULL, NULL),
(10, 'foot1', 'foot1', 'upload/brand/1758556021408153.png', NULL, '2023-02-22 15:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'hello', 'hello', 'upload/category/1759456245455609.jfif', NULL, '2023-03-04 13:47:26'),
(3, 'its me', 'its-me', 'upload/category/1759456934884268.jpg', NULL, NULL),
(4, 'test', 'test', 'upload/category/1760625058483929.jpg', NULL, NULL),
(5, 'hi', 'hi', 'upload/category/1760625070905405.jpg', NULL, NULL),
(6, 'mm', 'mm', 'upload/category/1760786593293890.png', NULL, NULL),
(7, 'nn', 'nn', 'upload/category/1760786605595799.jpg', NULL, NULL),
(8, 'cc', 'cc', 'upload/category/1760786619715381.jpg', NULL, NULL),
(10, 'hhh', 'hhh', 'upload/category/1760786794482181.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_20_101038_create_brands_table', 2),
(6, '2023_03_04_162529_create_categories_table', 3),
(7, '2023_03_04_173912_create_products_table', 4),
(8, '2023_03_04_180742_create_multi_imgs_table', 4),
(9, '2023_03_16_233342_create_sliders_table', 5),
(10, '2023_03_17_001116_create_banners_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(5, 5, 'upload/products/multi-img/1760416516065389.png', '2023-03-15 04:06:57', NULL),
(6, 5, 'upload/products/multi-img/1760416516070569.png', '2023-03-15 04:06:57', NULL),
(7, 5, 'upload/products/multi-img/1760416516075288.png', '2023-03-15 04:06:57', NULL),
(8, 5, 'upload/products/multi-img/1760416516078985.jfif', '2023-03-15 04:06:57', NULL),
(10, 6, 'upload/products/multi-img/1760566523547074.png', '2023-03-15 05:36:23', '2023-03-16 19:51:15'),
(17, 8, 'upload/products/multi-img/1760625585291443.jpg', '2023-03-17 11:30:01', NULL),
(18, 8, 'upload/products/multi-img/1760625585299728.jpg', '2023-03-17 11:30:01', NULL),
(19, 8, 'upload/products/multi-img/1760625585303352.png', '2023-03-17 11:30:01', NULL),
(21, 8, 'upload/products/multi-img/1760625585309703.jpg', '2023-03-17 11:30:01', NULL),
(22, 9, 'upload/products/multi-img/1760730565271894.png', '2023-03-18 15:18:38', NULL),
(23, 9, 'upload/products/multi-img/1760730565276569.jpg', '2023-03-18 15:18:38', NULL),
(24, 9, 'upload/products/multi-img/1760730565279179.png', '2023-03-18 15:18:38', NULL),
(25, 9, 'upload/products/multi-img/1760730565282259.jpeg', '2023-03-18 15:18:38', NULL),
(26, 9, 'upload/products/multi-img/1760730565285067.jfif', '2023-03-18 15:18:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_tags` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `short_descp` text NOT NULL,
  `long_descp` text NOT NULL,
  `product_thambnail` varchar(255) NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(6, 9, 10, 'choose', 'choose', '68', '-1', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '668', '333', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi.', '<p>Hello, World!</p>', 'upload/products/thambnail/1760566228564575.jpg', 1, 1, 1, 1, 1, '2023-03-19 06:46:27', '2023-03-19 06:46:27'),
(8, 9, 8, 'hi', 'hi', '12', '12', 'new product,top product', NULL, NULL, '1222', '122', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi.\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi.', '<p style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 1rem; line-height: 24px; font-family: Lato, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #7e7e7e; background-color: #ffffff;\">Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 1rem; line-height: 24px; font-family: Lato, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #7e7e7e; background-color: #ffffff;\">Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\r\n<ul class=\"product-more-infor mt-30\" style=\"box-sizing: border-box; padding: 0px 0px 0px 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: none; color: #7e7e7e; background-color: #ffffff; margin: 30px !important 0px 0px 0px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; transition: all 0.3s ease 0s; -webkit-box-flex: 0; flex: 0 0 165px; display: inline-block;\">Type Of Packing</span>Bottle</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; transition: all 0.3s ease 0s; -webkit-box-flex: 0; flex: 0 0 165px; display: inline-block;\">Color</span>Green, Pink, Powder Blue, Purple</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; transition: all 0.3s ease 0s; -webkit-box-flex: 0; flex: 0 0 165px; display: inline-block;\">Quantity Per Case</span>100ml</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; transition: all 0.3s ease 0s; -webkit-box-flex: 0; flex: 0 0 165px; display: inline-block;\">Ethyl Alcohol</span>70%</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; transition: all 0.3s ease 0s; -webkit-box-flex: 0; flex: 0 0 165px; display: inline-block;\">Piece In One</span>Carton</li>\r\n</ul>\r\n<hr class=\"wp-block-separator is-style-dots\" style=\"box-sizing: content-box; height: 1px; overflow: visible; margin: 1rem 0px; color: #7e7e7e; border-top: 0px; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; opacity: 0.25; font-family: Lato, sans-serif; font-size: 14px;\" />\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 1rem; line-height: 24px; font-family: Lato, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #7e7e7e; background-color: #ffffff;\">Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\r\n<h4 class=\"mt-30\" style=\"box-sizing: border-box; line-height: 1.2; font-size: 24px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-family: Quicksand, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; transition: all 0.3s ease 0s; color: #253d4e; background-color: #ffffff; margin: 30px !important 0px 0px 0px;\">Packaging &amp; Delivery</h4>\r\n<hr class=\"wp-block-separator is-style-wide\" style=\"box-sizing: content-box; height: 1px; overflow: visible; margin: 1rem 0px; color: #7e7e7e; border-top: 0px; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; opacity: 0.25; font-family: Lato, sans-serif; font-size: 14px;\" />\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 1rem; line-height: 24px; font-family: Lato, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #7e7e7e; background-color: #ffffff;\">Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 1rem; line-height: 24px; font-family: Lato, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #7e7e7e; background-color: #ffffff;\">Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>\r\n<h4 class=\"mt-30\" style=\"box-sizing: border-box; line-height: 1.2; font-size: 24px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-family: Quicksand, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; transition: all 0.3s ease 0s; color: #253d4e; background-color: #ffffff; margin: 30px !important 0px 0px 0px;\">Suggested Use</h4>\r\n<ul class=\"product-more-infor mt-30\" style=\"box-sizing: border-box; padding: 0px 0px 0px 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: none; color: #7e7e7e; background-color: #ffffff; margin: 30px !important 0px 0px 0px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\">Refrigeration not necessary.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\">Stir before serving</li>\r\n</ul>\r\n<h4 class=\"mt-30\" style=\"box-sizing: border-box; line-height: 1.2; font-size: 24px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-family: Quicksand, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; transition: all 0.3s ease 0s; color: #253d4e; background-color: #ffffff; margin: 30px !important 0px 0px 0px;\">Other Ingredients</h4>\r\n<ul class=\"product-more-infor mt-30\" style=\"box-sizing: border-box; padding: 0px 0px 0px 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: none; color: #7e7e7e; background-color: #ffffff; margin: 30px !important 0px 0px 0px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\">Organic raw pecans, organic raw cashews.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\">This butter was produced using a LTG (Low Temperature Grinding) process</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\">Made in machinery that processes tree nuts but does not process peanuts, gluten, dairy or soy</li>\r\n</ul>\r\n<h4 class=\"mt-30\" style=\"box-sizing: border-box; line-height: 1.2; font-size: 24px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-family: Quicksand, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; transition: all 0.3s ease 0s; color: #253d4e; background-color: #ffffff; margin: 30px !important 0px 0px 0px;\">Warnings</h4>\r\n<ul class=\"product-more-infor mt-30\" style=\"box-sizing: border-box; padding: 0px 0px 0px 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: none; color: #7e7e7e; background-color: #ffffff; margin: 30px !important 0px 0px 0px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; position: relative;\">Oil separation occurs naturally. May contain pieces of shell.</li>\r\n</ul>', 'upload/products/thambnail/1760625585283599.jpg', 1, 1, NULL, 1, 1, '2023-03-19 12:03:49', '2023-03-19 12:03:49'),
(9, 8, 1, 'tit', 'tit', '127', '128', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '1289', NULL, 'hrloo', '<p>Hello, World!</p>', 'upload/products/thambnail/1760730565266652.jpg', 1, 1, 1, 1, 1, '2023-03-19 09:32:02', '2023-03-19 09:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `short_title`, `slider_image`, `created_at`, `updated_at`) VALUES
(3, 'jack', 'alloussi', 'upload/slider/1760624575748715.jpg', NULL, NULL),
(4, 'jack', 'hack', 'upload/slider/1760624625651427.jpg', NULL, NULL),
(5, 'test', 'test hello', 'upload/slider/1760624652369058.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','vendor','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jack', 'admin', 'admin@gmail.com', NULL, '$2y$10$kQ20z2qnNsKD093.MB5uWelpDcrqq6O1O0QsBowaKEeUXWakV8H7a', '202302181541Untit.png', '0798939333', 'Amman,Jordan', 'admin', 'active', NULL, NULL, '2023-02-19 07:39:19'),
(2, 'vendor', 'vendor', 'vendor@gmail.com', NULL, '$2y$10$XUtaQD.7CR9w4s2.1IZTvevfvUWuXihJh7Aigt7eajaeB3.2St1ie', NULL, NULL, NULL, 'vendor', 'active', NULL, NULL, NULL),
(3, 'user', 'user', 'user@gmail.com', NULL, '$2y$10$WSJUx4Bk0bJNCGs6MDbQuuHfY/hYMuVzJ2bjv1jTbkbYrkAhJ6lCi', '202302200617Untit.png', '078454545', 'Hi', 'user', 'active', NULL, NULL, '2023-02-20 05:17:34'),
(4, 'bassam', NULL, 'bassam@gmail.com', '2023-02-17 10:08:50', '$2y$10$hH04cSgpzTgpgG.xbu731eh72lu75aU5U9bB3.Ebc7TWM87EV4ibK', NULL, NULL, NULL, 'user', 'active', NULL, '2023-02-17 10:08:28', '2023-02-17 10:08:50'),
(5, 'christy', NULL, 'christy@gmail.com', NULL, '$2y$10$gsBdwWcYDswS2AgCJDN6feT42nuaKLeFaPFSL1/vxxzasML4Y5F4y', '202302181636wepik-photo-mode-2022104-122457.png', NULL, NULL, 'admin', 'active', NULL, '2023-02-17 10:14:59', '2023-02-18 13:36:45'),
(6, 'hack', NULL, 'bassa111m@gmail.com', NULL, '$2y$10$ILX0mVHozsEhnULSRd.HM.NeE2B43ANLEMr7UO6XIFySYXEaLuh8O', NULL, NULL, NULL, 'user', 'active', NULL, '2023-02-19 16:21:54', '2023-02-19 16:21:54'),
(7, 'hello', NULL, 'hello@gmail.com', NULL, '$2y$10$oZdeTIF61Bpr41K70sFc4OZmhvGDi2twNPkEzgdGpHAsI62efkvAW', NULL, NULL, NULL, 'user', 'active', NULL, '2023-02-19 16:22:27', '2023-02-19 16:22:27'),
(8, 'asas', NULL, 'fa@gmail.com', NULL, '$2y$10$ZyTIGHirdMdYhPgJg5R88.ufDxZ60PTCY1L1/f45wSQrEQzvA0Lh2', NULL, NULL, NULL, 'user', 'active', NULL, '2023-02-19 16:24:14', '2023-02-19 16:24:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
