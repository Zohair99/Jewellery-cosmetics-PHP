-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 10:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_image` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`) VALUES
(1, 'Muhammad Zohair', 'mohammadzohair41@gmail.com', 'images (7)gfffff.jpg', '$2y$10$8H9hy90Lb4aeSryd5CKqxesrK9yHf3BbhEI4e9iE4YhO4UP318OYu');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(3, 'Gosh'),
(6, 'Kryolan'),
(7, 'ST London'),
(8, 'Maybelline'),
(9, 'L\'Oreal Paris'),
(13, 'Rimmel London'),
(14, 'Jewellery');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Powders'),
(2, 'Eye liners'),
(3, 'Mascara'),
(4, 'Face Primer'),
(5, 'Lipsticks'),
(6, 'Lip Linears'),
(9, 'Gold');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 1, 312346784, 1, 3, 'pending'),
(2, 1, 312346784, 2, 1, 'pending'),
(3, 1, 312346784, 4, 1, 'pending'),
(4, 1, 1918753782, 3, 2, 'pending'),
(5, 1, 351837813, 1, 2, 'pending'),
(6, 1, 2110700289, 1, 1, 'pending'),
(7, 1, 65372047, 30, 1, 'pending'),
(8, 1, 65372047, 50, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(120) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image_one` varchar(255) NOT NULL,
  `product_image_two` varchar(255) NOT NULL,
  `product_image_three` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image_one`, `product_image_two`, `product_image_three`, `product_price`, `date`, `status`) VALUES
(1, 'Gosh - Eye Liner Pen - Liquid Liner - Black', 'GOSH COPENHAGEN offers a wide selection of products in different categories: Cosmetics, Fragrances, Hair Care, Face Care, Body Care.', 'eyeliner', 2, 3, 'eye liner 2.webp', 'blank.png', 'blank.png', 1199, '2024-12-25 07:22:02', 'true'),
(2, 'Gosh - Growth Mascara - Black', 'GOSH COPENHAGEN offers a wide selection of products in different categories: Cosmetics, Fragrances, Hair Care, Face Care, Body Care. ', 'mascara', 3, 3, 'mascara 1.webp', 'blank.png', 'blank.png', 1135, '2024-12-25 07:26:01', 'true'),
(3, 'Gosh - Waterproof Volume Mascara - Black', 'GOSH COPENHAGEN offers a wide selection of products in different categories: Cosmetics, Fragrances, Hair Care, Face Care, Body Care', 'Canon, camera , high quality, 4k', 3, 3, 'mascara 2.webp', 'blank.png', 'blank.png', 1380, '2024-12-25 07:26:50', 'true'),
(4, 'GOSH-BB Powder', 'The silky BB POWDER combines light-coverage makeup. It is ideal for those who prefer a flawlessly matt look or just need a little anti-shine magic in certain areas.', 'makeup', 1, 3, 'powder 1.webp', 'blank.png', 'blank.png', 1764, '2024-12-25 07:29:07', 'true'),
(5, 'GOSH-Mineral Powder', 'Mineral Powder provides medium to full coverage and a natural, matte finish', 'makeup', 1, 3, 'powder 2.webp', 'blank.png', 'blank.png', 1824, '2024-12-25 07:30:06', 'true'),
(6, 'Gosh - The Ultimate EyeLiner - 01 - Black in Black', 'GOSH COPENHAGEN offers a wide selection of products in different categories: Cosmetics, Fragrances, Hair Care, Face Care, Body Care', 'EyeLiner', 2, 3, 'eye liner 1.webp', 'blank.png', 'blank.png', 864, '2024-12-25 07:19:40', 'true'),
(7, 'Gosh - Giant Sun Powder - 001 - Metallic Gold', 'GOSH COPENHAGEN offers a wide selection of products in different categories: Cosmetics, Fragrances, Hair Care, Face Care, Body Care. ', 'makeup', 1, 3, 'powder 3.webp', 'blank.png', 'blank.png', 2465, '2024-12-25 07:31:40', 'true'),
(8, 'Gosh - Chameleon Primer - 001 30ml', 'The CHAMELEON PRIMER ANTI-WRINKLE is an energy-boosting, lightweight, oil-free tinted moisturizer. It hydrates, energizes the skin, helping to prevent signs of premature ageing by protecting the skin all day.', 'makeup', 4, 3, 'face primer 1.webp', 'blank.png', 'blank.png', 2178, '2024-12-25 07:34:22', 'true'),
(9, 'GOSH-Velvet Touch Lipstick', 'VELVET TOUCH LIPSTICK creates intense and long-lasting colour due to a high concentration of colour pigments This amazing and creamy lipstick contains light reflecting particles, to give lips a bright and glossy look The colour pay-off is fantastic – appl', 'lipstick', 5, 3, 'lipstick 1.webp', 'blank.png', 'blank.png', 816, '2024-12-25 07:36:22', 'true'),
(10, 'Gosh - The Ultimate Lipliner With A Twist', 'The Ultimate Lipliner lasts for hours with intense and pure matt colour pay-off. The soft and creamy texture is perfect for outlining or filling in lips. ', 'liplinear', 6, 3, 'liplinear 1.webp', 'blank.png', 'blank.png', 953, '2024-12-25 07:38:54', 'true'),
(11, 'GOSH-Liquid Matt Lips', 'Easy application and delivers long lasting results with an intense, pure matt, colour pay-off It will not smudge when temperature rises', 'liplinear', 6, 3, 'liplinear 2.webp', 'blank.png', 'blank.png', 1524, '2024-12-25 07:40:52', 'true'),
(12, 'GOSH-Velvet Touch LipLiner Waterproof', 'VELVET TOUCH LIPLINER is highly pigmented, easy to apply and is also waterproof Use as a lipliner or use it on its own as lipstick.', 'lip linear', 6, 3, 'liplinear 3.webp', 'blank.png', 'blank.png', 816, '2024-12-25 07:41:46', 'true'),
(13, 'Kryolan - Translucent Powder - 20gm', 'Translucent Powder is a setting powder for full coverage cream and fluid foundations. Developed with a large amount of modified rice starch, the ingredients have been specifically designed to ensure optimal absorption qualities which increase durability o', 'powder', 1, 6, 'powder 4.webp', 'blank.png', 'blank.png', 1050, '2024-12-25 07:44:54', 'true'),
(14, 'Kryolan - Translucent Powder', 'Translucent Powder is characterized by its fineness and high degree of color neutrality Translucent Powder contains a large share of modified rice starch, unique in its specification It assures great absorption power and enhances the durability of make-up', 'powder', 1, 6, 'powder 5.webp', 'blank.png', 'blank.png', 4837, '2024-12-25 07:45:43', 'true'),
(15, 'Kryolan - Cake eye liner sealer', 'Cake Eye Liner Sealer is an innovative product created especially for mastering the art of eye liner! Cake Eye Liner Sealer fixes the applied eye liner, enhances its durability and improves its water resistance. ', 'eyelinear', 2, 6, 'eye liner 3.webp', 'blank.png', 'blank.png', 3170, '2024-12-25 07:49:03', 'true'),
(16, 'Kryolan - Aquacolor Cake Liner', 'Aquacolor cake liner is a glycerin-based compact make-up, especially color-intensive, with the ingredients of superior-quality skin cream preparations.', 'eye liner', 2, 6, 'eye liner 4.webp', 'blank.png', 'blank.png', 2660, '2024-12-25 07:50:07', 'true'),
(17, 'ST London - Mineralz Loose Powder', 'Ultra-fine loose powder that sets your foundation flawlessly, making the skin look smooth, healthy and youthful. Gives a soft blur effect and adds just the right amount of coverage.', 'powder', 1, 7, 'powder 6.webp', 'blank.png', 'blank.png', 3000, '2024-12-25 07:52:29', 'true'),
(18, 'ST London - Mineralz Compact Powder', 'Soft luminous finish powder to add that sets and perfects your makeup. This ultra fine compact is perfect to use on its own or with your favorite foundation for added coverage.', 'powder', 1, 7, 'powder 7.webp', 'blank.png', 'blank.png', 2790, '2024-12-25 07:53:32', 'true'),
(19, 'ST London - Intense Eyeliner', 'A pen/marker eyeliner that applies smoothly to the eyes without smudging or bleeding. This water proof formula dries quick, giving a matte finish that lasts all day.', 'eyeliner', 2, 7, 'eye liner 5.webp', 'blank.png', 'blank.png', 1010, '2024-12-25 07:56:44', 'true'),
(20, 'ST London - 3D Billion Mascara', 'Ultimate mascara to create 3D volume and a stunning ‘billion lash’ look.', 'mascara', 3, 7, 'mascara 3.webp', 'blank.png', 'blank.png', 1400, '2024-12-25 07:59:36', 'true'),
(21, 'ST London - Curve Obsession Mascara', 'A revolutionary mascara designed to deliver a bold, defiant volume and a pushed-up lash style..', 'mascara', 3, 7, 'mascara 4.webp', 'blank.png', 'blank.png', 1240, '2024-12-25 08:00:42', 'true'),
(22, 'ST London - Perfect Balance Primer', 'Perfect balance primer is silicon free. An easy to glide gel based primer that makes the skin soft and silky & gives a nice delicate matte finish.', 'face primer', 4, 7, 'face primer 3.webp', 'blank.png', 'blank.png', 1905, '2024-12-25 08:01:58', 'true'),
(23, 'ST London - Foundation Primer', 'An easy to glide gel based primer that makes the skin soft and silky, giving it a delicate matte finish.', 'face primer', 4, 7, 'face primer 4.webp', 'blank.png', 'blank.png', 2290, '2024-12-25 08:03:01', 'true'),
(24, 'ST London - Matt Moist Long-Lasting Lipstick - Latte', 'This statement lipstick conditions and moisturizes lips, while delivering high-impact colour and long-lasting shine.', 'Lipstick', 5, 7, 'lipstick 2.webp', 'blank.png', 'blank.png', 1376, '2024-12-25 08:05:29', 'true'),
(25, 'ST London - Matt Moist Long-Lasting Lipstick - Death by Red', 'This statement lipstick conditions and moisturizes lips, while delivering high-impact colour and long-lasting shine.', 'lipstick', 5, 7, 'lipstick 3.webp', 'blank.png', 'blank.png', 1250, '2024-12-25 08:06:45', 'true'),
(26, 'ST London - Velvet Ultra Matt Lipstick - Burnt', 'Ultra-Matte bullet combines explosive colour payoff and 8hours of superior comfort.', 'lipstick', 5, 7, 'lipstick 4.webp', 'blank.png', 'blank.png', 1505, '2024-12-25 08:07:44', 'true'),
(27, 'Kryolan - Dual Finish - OB2', 'Dual Finish is a soft, micronized pressed powder foundation that can be applied dry or wet. Ideal for contouring and highlights as well as to increase the opacity of other foundations.', 'powder', 1, 6, 'powder 8.webp', 'blank.png', 'blank.png', 4136, '2024-12-25 08:11:17', 'true'),
(28, 'Kryolan - Dermacolor Fixing Powder - P5 20gm', 'Dermacolor Fixing Powder waterproofs, sets and mattes Dermacolor Camouflage Creme. Dermacolor Fixing Powder is available in two different sizes', 'powder', 1, 6, 'powder 9.webp', 'blank.png', 'blank.png', 1732, '2024-12-25 08:12:01', 'true'),
(29, 'Maybelline - Fit Me Matte + Poreless Powder - 128 Warm Nude', 'Ideal for normal to oily skin, this long-lasting powder leaves a natural, poreless-looking finish with long-lasting shine control. ', 'powder', 1, 8, 'powder 10.webp', 'blank.png', 'blank.png', 1499, '2024-12-25 08:14:03', 'true'),
(30, 'Maybelline - Fit Me Matte + Poreless Powder - 120 Classic Ivory', 'Ideal for normal to oily skin, this long-lasting powder leaves a natural, poreless-looking finish with long-lasting shine control. Perlite Mineral technology absorbs oil to mattify skin, while pores virtually disappear thanks to blurring micro-powders.', 'powder', 1, 8, 'powder 11.webp', 'blank.png', 'blank.png', 2399, '2024-12-25 08:14:49', 'true'),
(31, 'Maybelline - SuperStay Powder Foundation - 220 Natural Beige', ' This full-coverage powder makeup has a creamy texture that is easily blendable and glides onto the skin for a matte finish.', 'powder', 1, 8, 'powder 12.webp', 'blank.png', 'blank.png', 3599, '2024-12-25 08:16:33', 'true'),
(32, 'Maybelline - Color Sensational Ultimatte Slim Lipstick - More Ruby', 'With Color Sensational Ultimatte, more is more! That’s more matte, more color intensity, and lightweight feel.', 'lipstick', 5, 8, 'lipstick 5.webp', 'blank.png', 'blank.png', 1840, '2024-12-25 08:18:01', 'true'),
(33, 'Maybelline - Color Sensational Ultimatte Slim Lipstick - More Blush', 'With Color Sensational Ultimatte, more is more! That’s more matte, more color intensity, and lightweight feel.', 'lipstick', 5, 8, 'lipstick 6.webp', 'blank.png', 'blank.png', 1840, '2024-12-25 08:18:44', 'true'),
(34, 'Maybelline - Tattoo Liner 48H Liquid Pen', 'Maybelline NY’s Tattoo Liner Liquid Pen withstands it all for up to 48 hours.', 'eye linear', 2, 8, 'eye liner 6.webp', 'blank.png', 'blank.png', 1999, '2024-12-25 08:20:25', 'true'),
(35, 'Maybelline - The Colossal Kajal Pencil - Black', 'Colossal Kajal 6HR Smudge Proof formula', 'eye linear', 2, 8, 'eye liner 7.webp', 'blank.png', 'blank.png', 789, '2024-12-25 08:21:21', 'true'),
(36, 'Maybelline - Falsies Waterproof Lash Lift Mascara - Black', ' Falsies Lash Lift mascara with fiber delivers dramatic volume and long, lifted lashes - a mascara that looks like false eyelashes!', 'mascara', 3, 8, 'mascara 5.webp', 'blank.png', 'blank.png', 2800, '2024-12-25 08:22:43', 'true'),
(37, 'Maybelline - Colossal Volume Express Mascara - 100% Black', 'Top-rated for a reason, our iconic yellow mascara delivers instant, big, and clump-free volume in a NY minute!', 'mascara', 3, 8, 'mascara 6.webp', 'blank.png', 'blank.png', 1399, '2024-12-25 08:23:40', 'true'),
(38, 'Maybelline - Fit Me Dewy & Smooth Primer', 'Suitable for normal to oily skin, Fit Me Primer is non-pore clogging, prevents shine and gices a smooth poreless base.', 'face primer', 4, 8, 'face primer 5.webp', 'blank.png', 'blank.png', 2879, '2024-12-25 08:25:32', 'true'),
(39, 'Maybelline - Baby Skin Pore Eraser Primer', 'Suitable for normal to oily skin, Fit Me Primer is non-pore clogging, prevents shine and gices a smooth poreless base.', 'face primer', 4, 8, 'face primer 6.webp', 'blank.png', 'blank.png', 1999, '2024-12-25 08:26:24', 'true'),
(40, 'Maybelline - Tattoo Studio Gel Pencil Liner - 942 Rich Berry', 'Delivering smooth strokes and intense color, this waterproof eyeliner glides on seamlessly for our longest-lasting wear yet! This sharpenable eyeliner delivers pigment-rich hues, precise definition, and a 36-hour finish that lasts from day-to-night and be', 'lip linear', 6, 8, 'liplinear 4.webp', 'blank.png', 'blank.png', 2499, '2024-12-25 08:29:16', 'true'),
(41, 'LOreal Paris - Paradise Mascara - 01 Black', 'Take your lashes to paradise with voluptuous volume & intense length. Soft wavy bristle brush holds the maximum amount of formula. 200+ bristles catch every lash for a dramatic volumizing effect. Silky smooth formula glides on evenly and easily. ', 'mascara', 3, 9, 'mascara 7.webp', 'blank.png', 'blank.png', 2599, '2024-12-25 09:11:10', 'true'),
(42, 'LOreal Paris - Liner Signature Liquid Eyeliner ', 'Sign your eyes with this liquid eyeliner, available in 9 deep stunning colors.', 'eyeliner', 2, 9, 'eye liner 8.webp', 'blank.png', 'blank.png', 2500, '2024-12-25 13:01:39', 'true'),
(43, 'LOreal Paris - Liner Signature Liquid Eyeliner - 02 Blue', 'Sign your eyes with this liquid eyeliner, available in 9 deep stunning colors.', 'eyeliner', 2, 9, 'eye liner 10.webp', 'cloud.png', 'blank.png', 2500, '2024-12-25 13:00:32', 'true'),
(44, 'Twisted Stone Earrings', 'Twisted stone earrings Push back closure', 'jewellery', 9, 14, 'j1.webp', 'blank.png', 'blank.png', 15000, '2024-12-25 18:15:34', 'true'),
(45, 'Twisted Stone Earrings', 'Twisted stone earrings Push back closure', 'jewellery', 9, 14, 'j2.webp', 'blank.png', 'blank.png', 14500, '2024-12-25 18:16:57', 'true'),
(46, 'Minimal Gold Earrings', 'Minimal gold earrings Push back closure', 'jewellery', 9, 14, 'j3.webp', 'blank.png', 'blank.png', 17999, '2024-12-25 18:18:56', 'true'),
(47, 'Square Earrings', 'Minimal gold earrings Push back closure', 'jewellery', 9, 14, 'j4.webp', 'blank.png', 'blank.png', 18000, '2024-12-25 18:19:55', 'true'),
(48, 'Hammered Half Flower Earrings', 'Hammered half flower earrings Push back closure', 'jewellery', 9, 14, 'j5.webp', 'blank.png', 'blank.png', 9999, '2024-12-25 18:20:45', 'true'),
(49, 'Multi-Layered Charm Necklace', 'Layered gold charm necklace, Two loop chains, Two beaded chains, Claw clasp closure', 'jewellery', 9, 14, 'j6.webp', 'blank.png', 'blank.png', 20000, '2024-12-25 18:24:22', 'true'),
(50, 'Hammered Pearl Necklace', 'Hammered pearl necklace Hook and eye closure', 'jewellery', 9, 14, 'j7.webp', 'blank.png', 'blank.png', 19999, '2024-12-25 18:25:31', 'true'),
(51, 'Looped Chain With Ring Necklace', 'Layered chains with ring necklace Claw clasp closure', 'jewellery', 9, 14, 'j8.webp', 'blank.png', 'blank.png', 25999, '2024-12-25 18:26:36', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(2, 1, 760, 1918753782, 1, '2023-10-24 00:25:10', 'pending'),
(4, 1, 120, 2110700289, 1, '2024-12-24 07:03:41', 'pending'),
(5, 1, 22398, 65372047, 2, '2024-12-26 09:00:43', 'pending'),
(6, 1, 0, 1068711684, 0, '2024-12-26 09:00:47', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_method`, `payment_date`) VALUES
(1, 1, 312346784, 1160, 'paypal', '2023-10-24 00:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(1, 'Muhammad Zohair', 'mohammadzohair41@gmail.com', '$2y$10$saz3qPb25kYN5dIZEKWaWuCMjochD75JC4g3pCbrphu9gqo8v/BES', 'images (7)gfffff.jpg', '::1', 'kgvsjckasblcknka scoahscsjaccjl', '03343574436');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
