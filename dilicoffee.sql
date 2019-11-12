-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 23, 2018 lúc 01:02 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dilicoffee`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT') COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `slug`, `content`, `image`, `status`, `date`, `featured`, `created_at`, `updated_at`, `deleted_at`, `intro`) VALUES
(1, 1, 'Hình ảnh chế biến cà phê sạch tận xưởng của Dili Coffee ', 'hinh-anh-che-bien-ca-phe-sach-tan-xuong-cua-dili-coffee', '<p><strong>Độ tơi xốp</strong></p>\r\n\r\n<p>Theo đ&oacute;, bột c&agrave; ph&ecirc; nguy&ecirc;n chất rất nhẹ, c&oacute; độ xốp, tơi v&agrave; rời. Tr&aacute;i lại c&aacute;c loại hạt đậu, bắp rang khi xay độ mịn, m&agrave;u sắc, k&iacute;ch thước kh&ocirc;ng đồng đều. Do trộn nhiều loại nguy&ecirc;n liệu được rang xay ri&ecirc;ng n&ecirc;n kh&ocirc;ng thể tơi xốp như bột nguy&ecirc;n chất.</p>\r\n\r\n<div type=\"Photo\">\r\n<div><img alt=\"Ca phê trộn tạp chất chìm nhanh xuống nước. Ảnh minh họa\" src=\"https://dantricdn.com/2018/4/20/caphe2-15241936384001689411045.gif\" style=\"margin:0px auto; width:460px\" /></div>\r\n\r\n<div style=\"text-align:center\">Ca ph&ecirc; trộn tạp chất ch&igrave;m nhanh xuống nước. Ảnh minh họa</div>\r\n</div>\r\n\r\n<div type=\"Photo\">\r\n<div><img alt=\"Cà phê mộc lâu tan có độ bông, tơi, xốp. Ảnh minh họa\" src=\"https://dantricdn.com/2018/4/20/caphe4-1524193857464175030685.gif\" style=\"margin:0px auto; width:460px\" /></div>\r\n\r\n<div style=\"text-align:center\">C&agrave; ph&ecirc; mộc l&acirc;u tan c&oacute; độ b&ocirc;ng, tơi, xốp. Ảnh minh họa</div>\r\n</div>\r\n\r\n<p>Để thử nghiệm xem c&agrave; ph&ecirc; c&oacute; nguy&ecirc;n chất hay kh&ocirc;ng, người ti&ecirc;u d&ugrave;ng c&oacute; thể tiến h&agrave;nh th&iacute; nghiệm nhỏ ngay tại nh&agrave;, bằng c&aacute;ch: Đổ nước nguội đầy 2/3 ly thủy tinh, sau đ&oacute; rắc nhẹ khoảng 2 muỗng bột c&agrave; ph&ecirc; l&ecirc;n mặt nước v&agrave; quan s&aacute;t.</p>\r\n\r\n<p>C&agrave; ph&ecirc; nguy&ecirc;n chất sẽ nổi rất l&acirc;u tr&ecirc;n mặt nước. Khi c&agrave; ph&ecirc; ch&igrave;m, m&agrave;u n&acirc;u mới pha ra nước v&agrave; tạo th&agrave;nh một dung dịch m&agrave;u c&aacute;nh gi&aacute;n trong.</p>\r\n\r\n<p>Ngược lại, c&agrave; ph&ecirc; pha độn ch&igrave;m rất nhanh, c&oacute; loại ch&igrave;m ngay lập tức. Pha độn c&agrave;ng nhiều, bột c&agrave;ng nhanh ch&igrave;m xuống đ&aacute;y ly v&agrave; c&oacute; khi ch&igrave;m cả mảng lớn. M&agrave;u n&acirc;u đen phai ra trong nước ngay lập tức v&agrave; nước vẩn đục kh&ocirc;ng trong.</p>\r\n\r\n<p>Khi bạn cho nước s&ocirc;i v&agrave;o phin chứa c&agrave; ph&ecirc; thật, lập tức bột c&agrave; ph&ecirc; sẽ nở phồng l&ecirc;n, sủi bọt mạnh thậm ch&iacute; tr&agrave;n cả ra ngo&agrave;i phin. Ngược lại, c&agrave; ph&ecirc; trộn tạp chất kh&ocirc;ng c&oacute; độ phồng, tr&aacute;i lại c&ograve;n d&iacute;nh v&agrave; bẹp xuống.</p>\r\n\r\n<div type=\"Photo\">\r\n<div><img alt=\"Chuyên gia Nguyễn Đăng Huy cho biết bột cà phê nguyên chất rất nhẹ, có độ xốp, tơi và rời. Trái lại các loại hạt đậu, bắp rang khi xay độ mịn, màu sắc, kích thước không đồng đều\" src=\"https://dantricdn.com/thumb_w/640/2018/4/20/z9639453533306eb7c00c4f310455079ce732d14a37e8-1524194064624529918866.jpg\" style=\"margin:0px auto; width:460px\" /></div>\r\n\r\n<div style=\"text-align:center\">Chuy&ecirc;n gia Nguyễn Đăng Huy cho biết bột c&agrave; ph&ecirc; nguy&ecirc;n chất rất nhẹ, c&oacute; độ xốp, tơi v&agrave; rời. Tr&aacute;i lại c&aacute;c loại hạt đậu, bắp rang khi xay độ mịn, m&agrave;u sắc, k&iacute;ch thước kh&ocirc;ng đồng đều</div>\r\n</div>\r\n\r\n<p><strong>Độ s&aacute;nh của nước c&agrave; ph&ecirc;</strong></p>\r\n\r\n<p>Khi pha nước của ly c&agrave; ph&ecirc; thật c&oacute; độ s&aacute;nh hầu như kh&ocirc;ng đ&aacute;ng kể, tr&aacute;i lại c&agrave; ph&ecirc; độn bắp v&agrave; đậu rang vốn chứa nhiều tinh bột n&ecirc;n sẽ rất s&aacute;nh v&agrave; dẻo.</p>\r\n\r\n<p><strong>M&agrave;u sắc</strong></p>\r\n\r\n<p>C&agrave; ph&ecirc; nguy&ecirc;n chất c&oacute; m&agrave;u c&aacute;nh gi&aacute;n đến n&acirc;u đậm, khi cho đ&aacute; v&agrave;o sẽ c&oacute; m&agrave;u n&acirc;u hổ ph&aacute;ch, trong. Để ra &aacute;nh s&aacute;ng nh&igrave;n ly c&agrave; ph&ecirc; đ&aacute; c&oacute; m&agrave;u n&acirc;u s&aacute;ng trong khi đ&oacute;, c&agrave; ph&ecirc; pha trộn thường c&oacute; m&agrave;u đen đục, đen đậm.</p>\r\n', 'uploads/b1.jpg', 'PUBLISHED', '2018-10-22', 0, '2018-10-22 07:50:25', '2018-10-22 07:59:49', NULL, 'Thời sinh viên tôi có một mơ ước nho nhỏ. Đấy là mở quán cà phê của riêng mình và khi nào hứng lên, sẽ...'),
(2, NULL, 'Hành trình khởi nghiệp từ cafe sạch của Dili ', 'hanh-trinh-khoi-nghiep-tu-cafe-sach-cua-dili', '<p><strong>Độ tơi xốp</strong></p>\r\n\r\n<p>Theo đ&oacute;, bột c&agrave; ph&ecirc; nguy&ecirc;n chất rất nhẹ, c&oacute; độ xốp, tơi v&agrave; rời. Tr&aacute;i lại c&aacute;c loại hạt đậu, bắp rang khi xay độ mịn, m&agrave;u sắc, k&iacute;ch thước kh&ocirc;ng đồng đều. Do trộn nhiều loại nguy&ecirc;n liệu được rang xay ri&ecirc;ng n&ecirc;n kh&ocirc;ng thể tơi xốp như bột nguy&ecirc;n chất.</p>\r\n\r\n<div type=\"Photo\">\r\n<div><img alt=\"Ca phê trộn tạp chất chìm nhanh xuống nước. Ảnh minh họa\" src=\"https://dantricdn.com/2018/4/20/caphe2-15241936384001689411045.gif\" style=\"margin:0px auto; width:460px\" /></div>\r\n\r\n<div style=\"text-align:center\">Ca ph&ecirc; trộn tạp chất ch&igrave;m nhanh xuống nước. Ảnh minh họa</div>\r\n</div>\r\n\r\n<div type=\"Photo\">\r\n<div><img alt=\"Cà phê mộc lâu tan có độ bông, tơi, xốp. Ảnh minh họa\" src=\"https://dantricdn.com/2018/4/20/caphe4-1524193857464175030685.gif\" style=\"margin:0px auto; width:460px\" /></div>\r\n\r\n<div style=\"text-align:center\">C&agrave; ph&ecirc; mộc l&acirc;u tan c&oacute; độ b&ocirc;ng, tơi, xốp. Ảnh minh họa</div>\r\n</div>\r\n\r\n<p>Để thử nghiệm xem c&agrave; ph&ecirc; c&oacute; nguy&ecirc;n chất hay kh&ocirc;ng, người ti&ecirc;u d&ugrave;ng c&oacute; thể tiến h&agrave;nh th&iacute; nghiệm nhỏ ngay tại nh&agrave;, bằng c&aacute;ch: Đổ nước nguội đầy 2/3 ly thủy tinh, sau đ&oacute; rắc nhẹ khoảng 2 muỗng bột c&agrave; ph&ecirc; l&ecirc;n mặt nước v&agrave; quan s&aacute;t.</p>\r\n\r\n<p>C&agrave; ph&ecirc; nguy&ecirc;n chất sẽ nổi rất l&acirc;u tr&ecirc;n mặt nước. Khi c&agrave; ph&ecirc; ch&igrave;m, m&agrave;u n&acirc;u mới pha ra nước v&agrave; tạo th&agrave;nh một dung dịch m&agrave;u c&aacute;nh gi&aacute;n trong.</p>\r\n\r\n<p>Ngược lại, c&agrave; ph&ecirc; pha độn ch&igrave;m rất nhanh, c&oacute; loại ch&igrave;m ngay lập tức. Pha độn c&agrave;ng nhiều, bột c&agrave;ng nhanh ch&igrave;m xuống đ&aacute;y ly v&agrave; c&oacute; khi ch&igrave;m cả mảng lớn. M&agrave;u n&acirc;u đen phai ra trong nước ngay lập tức v&agrave; nước vẩn đục kh&ocirc;ng trong.</p>\r\n\r\n<p>Khi bạn cho nước s&ocirc;i v&agrave;o phin chứa c&agrave; ph&ecirc; thật, lập tức bột c&agrave; ph&ecirc; sẽ nở phồng l&ecirc;n, sủi bọt mạnh thậm ch&iacute; tr&agrave;n cả ra ngo&agrave;i phin. Ngược lại, c&agrave; ph&ecirc; trộn tạp chất kh&ocirc;ng c&oacute; độ phồng, tr&aacute;i lại c&ograve;n d&iacute;nh v&agrave; bẹp xuống.</p>\r\n\r\n<div type=\"Photo\">\r\n<div><img alt=\"Chuyên gia Nguyễn Đăng Huy cho biết bột cà phê nguyên chất rất nhẹ, có độ xốp, tơi và rời. Trái lại các loại hạt đậu, bắp rang khi xay độ mịn, màu sắc, kích thước không đồng đều\" src=\"https://dantricdn.com/thumb_w/640/2018/4/20/z9639453533306eb7c00c4f310455079ce732d14a37e8-1524194064624529918866.jpg\" style=\"margin:0px auto; width:460px\" /></div>\r\n\r\n<div style=\"text-align:center\">Chuy&ecirc;n gia Nguyễn Đăng Huy cho biết bột c&agrave; ph&ecirc; nguy&ecirc;n chất rất nhẹ, c&oacute; độ xốp, tơi v&agrave; rời. Tr&aacute;i lại c&aacute;c loại hạt đậu, bắp rang khi xay độ mịn, m&agrave;u sắc, k&iacute;ch thước kh&ocirc;ng đồng đều</div>\r\n</div>\r\n\r\n<p><strong>Độ s&aacute;nh của nước c&agrave; ph&ecirc;</strong></p>\r\n\r\n<p>Khi pha nước của ly c&agrave; ph&ecirc; thật c&oacute; độ s&aacute;nh hầu như kh&ocirc;ng đ&aacute;ng kể, tr&aacute;i lại c&agrave; ph&ecirc; độn bắp v&agrave; đậu rang vốn chứa nhiều tinh bột n&ecirc;n sẽ rất s&aacute;nh v&agrave; dẻo.</p>\r\n\r\n<p><strong>M&agrave;u sắc</strong></p>\r\n\r\n<p>C&agrave; ph&ecirc; nguy&ecirc;n chất c&oacute; m&agrave;u c&aacute;nh gi&aacute;n đến n&acirc;u đậm, khi cho đ&aacute; v&agrave;o sẽ c&oacute; m&agrave;u n&acirc;u hổ ph&aacute;ch, trong. Để ra &aacute;nh s&aacute;ng nh&igrave;n ly c&agrave; ph&ecirc; đ&aacute; c&oacute; m&agrave;u n&acirc;u s&aacute;ng trong khi đ&oacute;, c&agrave; ph&ecirc; pha trộn thường c&oacute; m&agrave;u đen đục, đen đậm.</p>\r\n', 'uploads/b2.jpg', 'PUBLISHED', '2018-10-22', 0, '2018-10-22 08:53:39', '2018-10-22 08:53:39', NULL, 'Thời sinh viên tôi có một mơ ước nho nhỏ. Đấy là mở quán cà phê của riêng mình và khi nào hứng lên, sẽ...');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article_categories`
--

CREATE TABLE `article_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article_categories`
--

INSERT INTO `article_categories` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'none', 'none', '2018-10-22 07:44:45', '2018-10-22 07:44:45', NULL),
(2, NULL, NULL, NULL, NULL, 'home image', 'home-image', '2018-10-22 18:02:39', '2018-10-22 18:02:39', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 1, 2, NULL, NULL, NULL),
(3, 2, 1, NULL, NULL, NULL),
(4, 2, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `visible` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `visible`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'normal', NULL, 'normal', 'normal', 'normal', 'normal', '<p>normal</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, NULL, NULL, NULL, '2018-01-24 10:21:32', '2018-10-22 03:52:48', '2018-10-22 03:52:48'),
(3, 'BRAND STORY', NULL, 'identity', 'IDENTITY', 'IDENTITY', 'IDENTITY', '<p><img alt=\"\" src=\"http://localhost:8000/uploads/img_brandStory01.jpg\" style=\"height:296px; width:500px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/uploads/img_brandStory02.jpg\" style=\"height:317px; width:500px\" /></p>\r\n', 0, NULL, NULL, NULL, '2018-01-24 20:32:19', '2018-10-22 03:52:44', '2018-10-22 03:52:44'),
(4, 'BRAND VISION', NULL, 'brand-vision', 'BRAND VISION', 'BRAND VISION', 'BRAND VISION', '<p><img alt=\"\" src=\"http://cellavie.vn/uploads/img_beautyLab01.jpg\" style=\"height:355px; width:600px\" /></p>\r\n', 0, NULL, NULL, NULL, '2018-01-25 10:37:03', '2018-10-22 03:52:46', '2018-10-22 03:52:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT '0',
  `visible` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `parent_id`, `visible`, `slug`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'normal', 'normal', 'normal', 'normal', '<p>normal</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 'normal', NULL, NULL, NULL, '2018-01-24 10:21:54', '2018-01-24 10:21:54', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_images`
--

CREATE TABLE `home_images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `key` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_images`
--

INSERT INTO `home_images` (`id`, `image`, `key`, `description`, `updated_at`) VALUES
(1, 'uploads/home_images/video-bg.jpg', 'home_about', 'Ảnh ở mục giới thiệu', '2018-10-23'),
(2, 'uploads/home_images/g1.jpg', 'home_g1', 'Hình ảnh', '0000-00-00'),
(3, 'uploads/home_images/g2.jpg', 'home_g2', 'Hình ảnh', '0000-00-00'),
(4, 'uploads/home_images/g3.jpg', 'home_g3', 'Hình ảnh', '0000-00-00'),
(5, 'uploads/home_images/g4.jpg', 'home_g4', 'Hình ảnh', '0000-00-00'),
(6, 'uploads/home_images/g5.jpg', 'home_g5', 'Hình ảnh', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `filename`, `position`, `created_at`, `updated_at`) VALUES
(9, '1509075041700m0.jpg', 0, '2018-01-27 21:12:25', '2018-01-27 21:12:25'),
(10, '111.jpg', 0, '2018-10-21 22:01:18', '2018-10-21 22:01:18'),
(11, 'tin.jpg', 0, '2018-10-21 22:02:02', '2018-10-21 22:02:02'),
(12, 'tin.jpg', 0, '2018-10-21 23:57:07', '2018-10-21 23:57:07'),
(13, 'uploads/g4.jpg', 0, '2018-10-22 06:39:40', '2018-10-22 06:39:40'),
(14, 'uploads/g4.jpg', 0, '2018-10-22 06:44:35', '2018-10-22 06:44:35'),
(15, 'uploads/g1.jpg', 0, '2018-10-22 06:59:16', '2018-10-22 06:59:16'),
(16, 'g4.jpg', 0, '2018-10-22 07:52:23', '2018-10-22 07:52:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_08_04_130507_create_article_tag_table', 1),
(4, '2015_08_04_130520_create_articles_table', 1),
(5, '2015_08_04_130551_create_categories_table', 1),
(6, '2015_08_04_131614_create_settings_table', 1),
(7, '2015_08_04_131626_create_tags_table', 1),
(8, '2016_05_05_115641_create_menu_items_table', 1),
(9, '2016_05_10_130540_create_permission_tables', 1),
(10, '2016_05_25_121918_create_pages_table', 1),
(11, '2016_07_24_060017_add_slug_to_categories_table', 1),
(12, '2016_07_24_060101_add_slug_to_tags_table', 1),
(13, '2017_01_17_061709_create_product_category_table', 1),
(14, '2017_01_17_072541_create_product_table', 1),
(15, '2017_01_17_084803_rename_categories_table', 1),
(16, '2017_01_17_085204_create_brands_table', 1),
(17, '2017_01_17_090731_create_forein_key', 1),
(18, '2017_01_17_091534_rename_product_categories_table', 1),
(19, '2017_01_17_093644_create_product_categories_table', 1),
(20, '2017_01_18_093211_create_imageable_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `extras` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `template`, `name`, `title`, `slug`, `content`, `extras`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'home', 'home (có thể chỉnh sửa)', 'home', 'home', '<h1>Những hạt c&agrave; ph&ecirc;&nbsp;<br />\r\nthơm ngon nhất từ Dinh Linh</h1>\r\n\r\n<p>Chuy&ecirc;n cung cấp c&agrave; ph&ecirc; rang, xay &amp; pha sẵn</p>\r\n\r\n<p>Thời sinh vi&ecirc;n t&ocirc;i c&oacute; một mơ ước nho nhỏ. Đấy l&agrave; mở qu&aacute;n c&agrave; ph&ecirc; của ri&ecirc;ng m&igrave;nh v&agrave; khi n&agrave;o hứng l&ecirc;n, sẽ... Thời sinh vi&ecirc;n t&ocirc;i c&oacute; một mơ ước nho nhỏ.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/uploads/signature.png\" style=\"height:40px; width:144px\" /></p>\r\n', NULL, '2018-10-22 01:44:23', '2018-10-22 18:00:49', NULL),
(10, 'price_list', 'Bảng báo giá sỉ cafe (có thể chỉnh sửa)', 'Bảng báo giá sỉ cafe', 'bang-bao-gia-si-cafe', '<h2>&nbsp;</h2>\r\n\r\n<p>C&ocirc;ng ty TNHH DiLi tr&acirc;n trọng gửi đến qu&yacute; kh&aacute;ch h&agrave;ng bảng gi&aacute; sản phẩm như sau</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>C&aacute;c loại Cafe</td>\r\n			<td>Mua dưới 10kg<br />\r\n			ĐV: 1Kg</td>\r\n			<td>Mua tr&ecirc;n 10kg<br />\r\n			ĐV: 1Kg</td>\r\n			<td>Gi&aacute; b&aacute;n lẻ<br />\r\n			<em>(mua d&ugrave;ng thử</em><em>)</em><br />\r\n			T&Uacute;I 250g</td>\r\n			<td>Ghi ch&uacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Robusta I</td>\r\n			<td>159.000</td>\r\n			<td>158.000</td>\r\n			<td>85.000</td>\r\n			<td>Đậm, đắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Arabica I</td>\r\n			<td>249.000</td>\r\n			<td>248.000</td>\r\n			<td>125.000</td>\r\n			<td>Giao h&agrave;ng miễn ph&iacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(Gi&aacute; đ&atilde; giảm &gt;=50%, y&ecirc;u cầu sản lượng &gt;=100Kg/Th&aacute;ng, chưa gồm VAT)LƯU &Yacute;:&nbsp;Gi&aacute; &aacute;p dụng cho NH&Agrave; PH&Acirc;N PHỐI: Tổng đại l&yacute; ph&acirc;n phối tại 1 quận, huyện hoặc tỉnh xem cột Gi&aacute; sỉ cho Qu&aacute;n<br />\r\n&nbsp;</p>\r\n', NULL, '2018-10-23 01:50:08', '2018-10-23 02:22:09', NULL),
(11, 'post', 'post', 'bài viết - blog ', 'post', NULL, NULL, '2018-10-23 01:29:46', '2018-10-23 01:29:46', NULL),
(12, 'product', 'product', 'Cà phê sạch Dili Coffee ', 'product', NULL, NULL, '2018-10-23 00:10:20', '2018-10-23 00:10:20', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('cau2binhdinh@gmail.com', 'd26d80693eb58acb06dbf5e6d08ca727ebe6ab37840c69b0fc71b6175fdca870', '2018-10-21 20:56:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2017-07-23 00:35:01', '2017-07-23 00:35:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_roles`
--

CREATE TABLE `permission_roles` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_roles`
--

INSERT INTO `permission_roles` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_users`
--

CREATE TABLE `permission_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL,
  `old_price` int(11) DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ml` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `price`, `old_price`, `img`, `ml`, `visible`, `featured`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, NULL, 'Cà phê hạt robusta', 'ca-phe-hat-robusta', 'Cà phê hạt robusta được lựa chọn từ cao nguyên Di Linh, có tỉ lệ trái chín cao. Mùi vị đặc trưng của sô cô la và caramel, hậu vị ngọt của caramel, vị béo cao đặc biệt ít đắng.', NULL, NULL, '<h2><strong>C&Agrave; PH&Ecirc; ROBUSTA NGUY&Ecirc;N CHẤT SẠCH 100% ĐẶC BIỆT T&Acirc;Y NGUY&Ecirc;N</strong></h2>\r\n\r\n<p><strong>C&agrave; Ph&ecirc; Robusta Nguy&ecirc;n Chất</strong>&nbsp;Sạch 100% Đặc Biệt c&oacute; vị đắng đậm đ&agrave;, m&ugrave;i hương thơm nhẹ, cafein vừa, ch&aacute;t, hậu vị ngọt.</p>\r\n\r\n<p><strong>Khuyến m&atilde;i:</strong>&nbsp;Ch&uacute;ng t&ocirc;i đặc biệt c&oacute; ch&iacute;nh s&aacute;ch b&aacute;n sỉ hấp dẫn cho c&aacute;c cửa h&agrave;ng,&nbsp;<a href=\"https://cafesach.com.vn/mo-quan-cafe\">qu&aacute;n c&agrave; ph&ecirc;</a>, đại l&yacute;, cơ sở ph&acirc;n phối lấy định kỳ đơn h&agrave;ng số lượng lớn</p>\r\n\r\n<h3><a href=\"https://cafesach.com.vn/wp-content/uploads/2018/06/ca-phe-thuong-hang-1-doc-dao-1.jpg\"><img alt=\"cafe sạch sài gòn có giá cả khác với cà phê bẩn\" src=\"https://cafesach.com.vn/wp-content/uploads/2018/06/ca-phe-thuong-hang-1-doc-dao-1.jpg\" style=\"height:auto; margin:0px auto; width:800px\" /></a></h3>\r\n\r\n<h3><strong>Ch&iacute;nh s&aacute;ch vận chuyển (giao h&agrave;ng)</strong></h3>\r\n\r\n<ul>\r\n	<li>Kh&aacute;ch h&agrave;ng ở tỉnh ngo&agrave;i Tp.HCM lấy&nbsp;<strong>&iacute;t nhất 30kg (Tặng 1kg)</strong>&nbsp;v&agrave; được&nbsp;<strong>miễn 100% ph&iacute; vận&nbsp;chuyển</strong>&nbsp;tr&ecirc;n cả nước. Nếu lấy dưới 30kg&nbsp;<strong>chịu 100% ph&iacute; vận chuyển</strong>. Giao h&agrave;ng tận nơi to&agrave;n quốc</li>\r\n	<li>Kh&aacute;ch h&agrave;ng ở nội th&agrave;nh Tp.HCM lấy&nbsp;<strong>&iacute;t nhất 10kg</strong>&nbsp;v&agrave; ngoại th&agrave;nh Tp.HCM&nbsp;<strong>lấy &iacute;t nhất 20kg</strong>&nbsp;sẽ&nbsp;được&nbsp;<strong>miễn 100% ph&iacute; vận chuyển (Mua 30kg tặng 1kg)</strong>. Nếu lấy dưới mức quy định ở tr&ecirc;n xin vui&nbsp;l&ograve;ng gh&eacute; kho c&ocirc;ng ty để lấy h&agrave;ng hoặc chịu ph&iacute; SHIP (<strong>Vận chuyển</strong>) l&agrave; 50K/đơn h&agrave;ng</li>\r\n	<li>Đối với kh&aacute;ch&nbsp;<strong>mua lẻ từ 1kg</strong>&nbsp;trở l&ecirc;n sẽ&nbsp;<strong>miễn ph&iacute; SHIP (Vận chuyển) v&agrave; COD (Thu hộ)</strong>, giao h&agrave;ng&nbsp;tận nơi tr&ecirc;n to&agrave;n quốc</li>\r\n	<li><strong>Mua 30kg tặng 1kg, miễn ph&iacute; giao h&agrave;ng tận nơi to&agrave;n quốc</strong></li>\r\n</ul>\r\n\r\n<h3><strong>Đặt mua c&agrave; ph&ecirc; Robusta Việt Nam</strong></h3>\r\n\r\n<ul>\r\n	<li>Để đặt h&agrave;ng, mua C&Agrave; PH&Ecirc; NGUY&Ecirc;N CHẤT, LY C&Agrave; PH&Ecirc; GIAO TẬN NƠI</li>\r\n	<li>Để biết th&ecirc;m th&ocirc;ng tin về SẢN PHẨM, HỢP T&Aacute;C NHƯỢNG QUYỀN THƯƠNG HIỆU, X&Acirc;Y DỰNG QU&Aacute;N</li>\r\n	<li>Để tham gia th&agrave;nh vi&ecirc;n của GIA Đ&Igrave;NH C&Agrave; PH&Ecirc; SẠCH</li>\r\n	<li>Để được t&agrave;i trợ d&ugrave; che, bảng hiệu, hộp đ&egrave;n, logo với thương hiệu NGUYEN CHAT COFFEE</li>\r\n	<li>Để phản &aacute;nh về chất lượng c&agrave; ph&ecirc;, chất lượng phục vụ to&agrave;n hệ thống của NGUYEN CHAT COFFEE</li>\r\n</ul>\r\n\r\n<h3><strong>Xin vui l&ograve;ng li&ecirc;n hệ:</strong></h3>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng ty TNHH DiLi Coffee</li>\r\n	<li>Địa chỉ: 148/13 Ung Văn Khi&ecirc;m, p.25, quận B&igrave;nh Thạnh, TP.HCM</li>\r\n	<li>Email:&nbsp;</li>\r\n	<li>Điện thoại: (090) 933 76 10 &ndash; (090) 933 76 10</li>\r\n</ul>\r\n', 200000, NULL, 'uploads/g4.jpg', '0.5 Kg', 0, 0, NULL, NULL, NULL, '2018-10-22 06:44:35', '2018-10-23 00:44:12', NULL),
(8, NULL, 'Hạt Arabica nguyên chất 100%', 'ca-phe-hat-arabica-nguyen-chat-100', 'Cà phê hạt Arabica được lựa chọn từ cao nguyên Di Linh, có tỉ lệ trái chín cao. Mùi vị đặc trưng của sô cô la và caramel, hậu vị ngọt của caramel, vị béo cao đặc biệt ít đắng. ', NULL, NULL, '<h2><strong>C&Agrave; PH&Ecirc; ROBUSTA NGUY&Ecirc;N CHẤT SẠCH 100% ĐẶC BIỆT T&Acirc;Y NGUY&Ecirc;N</strong></h2>\r\n\r\n<p><strong>C&agrave; Ph&ecirc; Robusta Nguy&ecirc;n Chất</strong>&nbsp;Sạch 100% Đặc Biệt c&oacute; vị đắng đậm đ&agrave;, m&ugrave;i hương thơm nhẹ, cafein vừa, ch&aacute;t, hậu vị ngọt.</p>\r\n\r\n<p><strong>Khuyến m&atilde;i:</strong>&nbsp;Ch&uacute;ng t&ocirc;i đặc biệt c&oacute; ch&iacute;nh s&aacute;ch b&aacute;n sỉ hấp dẫn cho c&aacute;c cửa h&agrave;ng,&nbsp;<a href=\"https://cafesach.com.vn/mo-quan-cafe\">qu&aacute;n c&agrave; ph&ecirc;</a>, đại l&yacute;, cơ sở ph&acirc;n phối lấy định kỳ đơn h&agrave;ng số lượng lớn</p>\r\n\r\n<h3><a href=\"https://cafesach.com.vn/wp-content/uploads/2018/06/ca-phe-thuong-hang-1-doc-dao-1.jpg\"><img alt=\"cafe sạch sài gòn có giá cả khác với cà phê bẩn\" src=\"https://cafesach.com.vn/wp-content/uploads/2018/06/ca-phe-thuong-hang-1-doc-dao-1.jpg\" style=\"height:auto; margin:0px auto; width:800px\" /></a></h3>\r\n\r\n<h3><strong>Ch&iacute;nh s&aacute;ch vận chuyển (giao h&agrave;ng)</strong></h3>\r\n\r\n<ul>\r\n	<li>Kh&aacute;ch h&agrave;ng ở tỉnh ngo&agrave;i Tp.HCM lấy&nbsp;<strong>&iacute;t nhất 30kg (Tặng 1kg)</strong>&nbsp;v&agrave; được&nbsp;<strong>miễn 100% ph&iacute; vận&nbsp;chuyển</strong>&nbsp;tr&ecirc;n cả nước. Nếu lấy dưới 30kg&nbsp;<strong>chịu 100% ph&iacute; vận chuyển</strong>. Giao h&agrave;ng tận nơi to&agrave;n quốc</li>\r\n	<li>Kh&aacute;ch h&agrave;ng ở nội th&agrave;nh Tp.HCM lấy&nbsp;<strong>&iacute;t nhất 10kg</strong>&nbsp;v&agrave; ngoại th&agrave;nh Tp.HCM&nbsp;<strong>lấy &iacute;t nhất 20kg</strong>&nbsp;sẽ&nbsp;được&nbsp;<strong>miễn 100% ph&iacute; vận chuyển (Mua 30kg tặng 1kg)</strong>. Nếu lấy dưới mức quy định ở tr&ecirc;n xin vui&nbsp;l&ograve;ng gh&eacute; kho c&ocirc;ng ty để lấy h&agrave;ng hoặc chịu ph&iacute; SHIP (<strong>Vận chuyển</strong>) l&agrave; 50K/đơn h&agrave;ng</li>\r\n	<li>Đối với kh&aacute;ch&nbsp;<strong>mua lẻ từ 1kg</strong>&nbsp;trở l&ecirc;n sẽ&nbsp;<strong>miễn ph&iacute; SHIP (Vận chuyển) v&agrave; COD (Thu hộ)</strong>, giao h&agrave;ng&nbsp;tận nơi tr&ecirc;n to&agrave;n quốc</li>\r\n	<li><strong>Mua 30kg tặng 1kg, miễn ph&iacute; giao h&agrave;ng tận nơi to&agrave;n quốc</strong></li>\r\n</ul>\r\n\r\n<h3><strong>Đặt mua c&agrave; ph&ecirc; Robusta Việt Nam</strong></h3>\r\n\r\n<ul>\r\n	<li>Để đặt h&agrave;ng, mua C&Agrave; PH&Ecirc; NGUY&Ecirc;N CHẤT, LY C&Agrave; PH&Ecirc; GIAO TẬN NƠI</li>\r\n	<li>Để biết th&ecirc;m th&ocirc;ng tin về SẢN PHẨM, HỢP T&Aacute;C NHƯỢNG QUYỀN THƯƠNG HIỆU, X&Acirc;Y DỰNG QU&Aacute;N</li>\r\n	<li>Để tham gia th&agrave;nh vi&ecirc;n của GIA Đ&Igrave;NH C&Agrave; PH&Ecirc; SẠCH</li>\r\n	<li>Để được t&agrave;i trợ d&ugrave; che, bảng hiệu, hộp đ&egrave;n, logo với thương hiệu NGUYEN CHAT COFFEE</li>\r\n	<li>Để phản &aacute;nh về chất lượng c&agrave; ph&ecirc;, chất lượng phục vụ to&agrave;n hệ thống của NGUYEN CHAT COFFEE</li>\r\n</ul>\r\n\r\n<h3><strong>Xin vui l&ograve;ng li&ecirc;n hệ:</strong></h3>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng ty TNHH DiLi Coffee</li>\r\n	<li>Địa chỉ: 148/13 Ung Văn Khi&ecirc;m, p.25, quận B&igrave;nh Thạnh, TP.HCM</li>\r\n	<li>Email:&nbsp;</li>\r\n	<li>Điện thoại: (090) 933 76 10 &ndash; (090) 933 76 10</li>\r\n</ul>\r\n', 300000, NULL, 'uploads/g1.jpg', '0.5 Kg', 0, 0, NULL, NULL, NULL, '2018-10-22 06:59:16', '2018-10-23 00:44:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_categories`
--

CREATE TABLE `products_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_categories`
--

INSERT INTO `products_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 10, NULL, NULL),
(2, 2, 10, NULL, NULL),
(3, 3, 10, NULL, NULL),
(4, 4, 10, NULL, NULL),
(5, 5, 10, NULL, NULL),
(6, 6, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_images`
--

CREATE TABLE `products_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trần Quốc Tín', '2017-07-23 00:35:31', '2017-07-23 00:35:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

CREATE TABLE `role_users` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `name`, `description`, `value`, `field`, `active`, `created_at`, `updated_at`) VALUES
(1, 'title', 'Title', 'Title của website', 'Dili Coffee - Cafe nguyên chất', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, NULL),
(2, 'webName', 'Tên Web', 'Tiêu đề Web', 'CAFE NGUYÊN CHẤT DILI', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, NULL),
(3, 'moTaWeb', 'Mô tả Web', 'Mô tả website', 'Chuyên cung cấp <br> cà phê rang, xay & pha sẵn', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, NULL),
(4, 'time1', 'Lịch làm việc 1', 'Ngày thường', 'Mon-Fri: 6am to 2pm', '{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Motto value\" ,\"type\":\"textarea\"}', 1, NULL, NULL),
(5, 'time2', 'Lich Lam việc 2', 'Cuối tuần', ' Sat-Sun: 6am to 9am', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, NULL),
(6, 'sdt1', 'Số điện thoại 1', 'Số điện thoại 1', '(090) 933 76 10', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, NULL),
(7, 'sdt2', 'Số điện thoại 2', 'Số điện thoại 2', '', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, NULL),
(8, 'diaChi', 'Địa chỉ', 'Địa chỉ', '148/13 Ung Văn Khiêm, p.25, quận Bình Thạnh, TP.HCM \r\n<br> Freeship nội thành HCM', '{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Motto value\" ,\"type\":\"textarea\"}', 1, NULL, '2018-10-22 03:06:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cà phê sạch', 'ca-phe-sach', '2018-10-22 07:09:30', '2018-10-22 07:09:30', NULL),
(2, 'Cà phê nguyên chất', 'ca-phe-nguyen-chat', '2018-10-22 07:09:48', '2018-10-22 07:09:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Trần Quốc Tín', 'cau2binhdinh@gmail.com', '$2y$10$hxQy5JJvRcQJj90xJsqb5OwR81wPCbuaJ6HHA6AmoSfEo/ou1BsQu', 'vPUxzORcH0dURKKYCZOe3uH0VDQeyfW8Sn0TdjRzGfNnLaKRmnbCk0h2Lw1V', '2018-10-21 20:57:21', '2018-10-22 03:30:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `home_images`
--
ALTER TABLE `home_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `permission_users`
--
ALTER TABLE `permission_users`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `permission_users_permission_id_foreign` (`permission_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_users_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `home_images`
--
ALTER TABLE `home_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_users`
--
ALTER TABLE `permission_users`
  ADD CONSTRAINT `permission_users_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Các ràng buộc cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
