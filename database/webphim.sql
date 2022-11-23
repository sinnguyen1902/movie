-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220810.35f421a69b
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 07:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webphim`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmucs`
--

CREATE TABLE `danhmucs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmucs`
--

INSERT INTO `danhmucs` (`id`, `title`, `des`, `status`, `slug`) VALUES
(6, 'Phim mới', '123', 1, 'phim-moi'),
(7, 'Phim chiếu rạp', '123', 1, 'phim-chieu-rap'),
(8, 'Phim bộ', '123', 1, 'phim-bo'),
(9, 'Phim lẻ', '123', 1, 'phim-le');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phims`
--

CREATE TABLE `phims` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `des` mediumtext NOT NULL,
  `status` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `phimhot` int(11) NOT NULL,
  `name_eng` varchar(255) NOT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `cc` int(11) NOT NULL DEFAULT 0,
  `create_at` varchar(50) DEFAULT NULL,
  `update_at` varchar(50) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT 0,
  `trailer` varchar(255) DEFAULT NULL,
  `tap` int(11) NOT NULL DEFAULT 1,
  `thuocphim` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phims`
--

INSERT INTO `phims` (`id`, `title`, `des`, `status`, `img`, `category_id`, `country_id`, `genre_id`, `slug`, `phimhot`, `name_eng`, `resolution`, `cc`, `create_at`, `update_at`, `year`, `time`, `tag`, `view`, `session`, `trailer`, `tap`, `thuocphim`) VALUES
(11, 'MA TRẬN: HỒI SINH', 'Ma Trận: Hồi Sinh - The Matrix Resurrections 2021 Quay Trở Lại Một Thế Giới Của Hai Thực Tại: Một, Cuộc Sống Hàng Ngày; Khác, Những Gì Nằm Sau Nó. Để Tìm Hiểu Xem Thực Tế Của Anh Ta Có Phải Là Một Công Trình Hay Không, để Thực Sự Hiểu Rõ Bản Thân Mình, Anh Anderson Sẽ Phải Chọn Theo Dõi Con Thỏ Trắng Một Lần Nữa. Ma Trận: Hồi Sinh là phần phim tiếp theo rất được trông đợi của loạt phim “Ma Trận” đình đám, đã góp phần tái định nghĩa thể loại phim khoa học viễn tưởng. Phần phim mới nhất này đón chào sự trở lại của cặp đôi Keanu Reeves và Carrie-Anne Moss với vai diễn biểu tượng đã làm nên tên tuổi của họ, Neo và Trinity. Ngoài ra, phim còn có sự góp mặt của dàn diễn viên đầy tài năng gồm Yahya Abdul-Mateen II, Jessica Henwick, Jonathan Groff, Neil Patrick Harris, Priyanka Chopra Jonas và Christina Ricci.', 1, 'ma-tran-hoi-sinh-58788-thumbnail5255.jpg', 7, 6, 5, 'ma-tran-hoi-sinh', 1, 'lamb', 1, 0, '', '2022-09-29 22:55:12', '2022', NULL, NULL, 0, NULL, NULL, 4, 0),
(18, 'NGƯỜI NHỆN: KHÔNG CÒN NHÀ', 'Người Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3501513.jpg', 9, 5, 4, 'nguoi-nhen-khong-con-nha', 1, 'No Way Home', 0, 0, '', '2022-10-10 22:21:47', '2016', '120p', 'no-way-home', 1, 4, 'rt-2cxAiPJk', 1, 1),
(19, 'VENOM 2: ĐỐI MẶT TỬ THÙ', 'là phim siêu anh hùng Mỹ sắp ra mắt dựa trên nhân vật Venom, được Columbia Pictures cùng với Marvel và Tencent Pictures đồng sản xuất. Được phân phối bởi Sony Pictures Releasing, phim sẽ là phần hậu truyện của Venom (2018). Phim được đạo diễn bởi Andy Serkis từ kịch bản của Kelly Marcel, dựa theo cốt truyện cô viết cùng với Tom Hardy (diễn viên thủ vai Venom). Phim quy tụ dàn diễn viên gồm Tom Hardy, Michelle Williams, Naomie Harris, Reid Scott, Stephen Graham và Woody Harrelson. Trong phim, Brock cố gắng xây dựng lại sự nghiệp của mình bằng cách phỏng vấn sát nhân Cletus Kasady, kẻ trở thành vật chủ của sinh vật Carnage, một sinh vật ngoài hành tinh giống Venom.18 tháng sau các sự kiện trong Venom (2018), phóng viên Eddie Brock cố gắng làm quen với việc sống như 1 vật chủ của sinh vật ngoài hành tinh Venom, kẻ ban cho anh siêu năng lực nhưng cũng khiến anh phải cảnh giác. Brock cố gắng xây dựng lại sự nghiệp của mình bằng cách phỏng vấn tên sát nhân Cletus Kasady, kẻ trở thành vật chủ của sinh vật Carnage và bỏ trốn khỏi nhà tù sau khi may mắn thoát khỏi hành quyết', 1, 'venom-2-doi-mat-tu-thu-54064-thumbnail551.jpg', 6, 4, 5, 'venom-2-doi-mat-tu-thu', 1, 'Venom: Let There Be Carnage (2021)', 4, 1, '', '2022-09-29 22:57:52', '2016', NULL, NULL, 2, 1, NULL, 1, 1),
(20, 'GÓA PHỤ ĐEN', 'Góa Phụ Đen - Black Widow (2021) lấy bối cảnh ngay sau sự kiện Captain America: Civil War, lần này nữ điệp viên phải đối diện với những câu hỏi đầy bí ẩn trong nguồn gốc của mình. Những câu hỏi sẽ dẫn Natasha quay trở lại Budapest, nơi cô được luyện tập để trở thành siêu điệp viên của Nga.', 1, 'goa-phu-den-250x3504049.jpg', 6, 6, 4, 'goa-phu-den', 1, 'Black Window', 4, 1, '', '2022-09-26 02:03:50', '2017', '120p', NULL, 2, 0, '2uVJPYbGHKo', 1, 1),
(21, 'VỆ SĨ SÁT THỦ 2: NHÀ CÓ NÓC', 'Người vệ sĩ Michael Bryce tiếp tục tình bạn của mình với sát thủ Darius Kincaid khi họ cố gắng cứu vợ của Darius là Sonia.', 1, '60c6a6a01280f-250x3502627.jpg', 6, 4, 6, 've-si-sat-thu-2-nha-co-noc', 1, 'Hitman\'s Wife\'s Bodyguard (2021)', 1, 0, '', '2022-09-26 01:24:13', '2002', '123', 'dong-phim', 0, 3, NULL, 1, 1),
(22, 'ĐẢO HẢI TẶC', 'Đảo Hải Tặc - One Piece, One Piece 1999 Anime Phim Đảo Hải Tặc – One Piece Là Chuyện Về Cậu Bé Monkey D. Luffy Do ăn Nhầm Trái Ác Quỷ, Bị Biến Thành Người Cao Su Và Sẽ Không Bao Giờ Biết Bơi. 10 Năm Sau Sự Việc đó, Cậu Rời Quê Mình Và Kiếm đủ 10 Thành Viên để Thành Một Băng Hải Tặc, Biệt Hiệu Hải Tặc Mũ Rơm. Khi đó Của Phiêu Lưu Tìm Kiếm Kho Báu One Piece Bắt đầu. Trong Cuộc Phiêu Lưu Tìm Kiếm One Piece, Băng Hải Tặc Mũ Rơm Phải Chiến đấu Với Nhiều Băng Hải Tặc Xấu Khác Cũng Muốn độc Chiếm One Piece Và Hải Quân Của Chính Phủ Muốn Diệt Trừ Hải Tặc. Băng Hải Tặc Mũ Rơm Phải Trải Qua Biết Bao Nhiêu Khó Khăn, Không Lùi Bước Với ước Mơ “Trở Thành Vua Hải Tặc Và Chiếm được Kho Báu One Piece', 1, 'dao-hai-tac-34373-thumbnail3020.jpg', 8, 6, 5, 'dao-hai-tac', 1, 'One piece', 2, 1, '', '2022-09-29 23:56:50', '2001', '20p/1 tập', 'dao-hai-tac,one-piece,dong-phim', 0, 2, 'S8_YwFLCh4U', 10, 0),
(23, 'Hoàn Hảo', 'Hoàn Hảo The Perfection 2018 Full HD Vietsub Thuyết Minh Charlotte Willmore là một nghệ sĩ cello trẻ tài năng đã buộc phải rời Bachoff, một trường âm nhạc danh tiếng ở Boston , để chăm sóc cho người mẹ bị bệnh nan y. Sau cái chết của mẹ nhiều năm sau đó, Charlotte liên hệ với Anton, người đứng đầu học viện, và đi đến Thượng Hải để cùng anh ta, vợ anh ta Paloma, và các giáo viên Geoffrey và Theis chọn một học sinh mới. Charlotte kết bạn với Lizzie, học trò ngôi sao của Anton, người đã thay thế Charlotte tại Bachof', 1, 'hoan-hao8885.jpg', 7, 6, 4, 'hoan-hao', 1, 'The Perfection (2018)', 0, 1, '2022-09-26 00:06:39', '2022-09-29 23:04:13', '2019', '120p', NULL, 1, 0, NULL, 1, 1),
(26, 'Làm Sao Để Tốt Nghiệp', 'Van Wilder (Ryan Reynolds) là một trong những chàng trai tuyệt vời, đẹp trai, dễ mến và được yêu thích nhất tại Đại học Coolidge. Anh ấy cũng có một trợ lý riêng (Kal Penn). Wilder rất giỏi trong việc tổ chức các bữa tiệc và giúp đỡ sinh viên trong các khóa học của họ vào những thời điểm khó khăn nhất của họ nhưng vì Wilder đang học năm thứ bảy và anh ấy không bao giờ coi trọng tương lai của mình. Tốt nghiệp đối với Wilder là điều xa vời nhất chính là tâm trí anh. Mọi thứ sắp thay đổi, khi một phóng viên trẻ hấp dẫn (Tara Reid) cố gắng tìm hiểu cuộc sống hoang dã của Wilder. Cha của Wilder (Tim Matheson) đe dọa sẽ ngừng đóng học phí cho cậu lần thứ bảy. Wilder, Trợ lý riêng của anh ấy và Bạn thân của anh ấy (Teck Holmes) sẽ cố gắng tìm mọi cách để giữ Wilder học đại học. Nhưng có một sinh viên đại học mảnh khảnh (Daniel Cosgrove), là bạn trai của phóng viên.', 1, 'lam-sao-de-tot-nghiep3974.jpg', 7, 6, 6, 'lam-sao-de-tot-nghiep', 1, 'Van Wilder (2002)', 3, 1, '2022-09-26 00:39:22', '2022-09-29 23:04:04', NULL, '120p', NULL, NULL, 0, NULL, 1, 1),
(28, 'Jujutsu Kaisen 0: Chú Thuật Hồi Chiến', 'Jujutsu Kaisen 0: Chú Thuật Hồi Chiến Jujutsu Kaisen 0: The Movie 2021 Full HD Vietsub Thuyết Minh Những bất hạnh bạo lực thường xuyên xảy ra xung quanh Yuuta Okkotsu, 16 tuổi, một nạn nhân nhút nhát của nạn bắt nạt ở trường trung học. Yuuta bị đeo một lời nguyền quái dị, một sức mạnh có thể gây ra sự trả thù tàn bạo chống lại những kẻ bắt nạt mình. Rika Orimoto, lời nguyền của Yuuta, là cái bóng từ thời thơ ấu đầy bi kịch của anh và là mối đe dọa có thể gây chết người cho bất cứ ai dám sai anh ta.', 1, 'jujutsu-kaisen-0-chu-thuat-hoi-chien198.jpg', 8, 5, 6, 'jujutsu-kaisen-0-chu-thuat-hoi-chien', 1, 'Jujutsu Kaisen 0: The Movie (2021)', 0, 0, '2022-09-26 00:44:33', '2022-09-29 23:16:20', '2002', '120pp', NULL, 1, 0, NULL, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phim_theloai`
--

CREATE TABLE `phim_theloai` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phim_theloai`
--

INSERT INTO `phim_theloai` (`id`, `movie_id`, `genre_id`) VALUES
(4, 28, 5),
(5, 28, 6),
(9, 23, 4),
(10, 22, 5),
(11, 21, 4),
(12, 21, 5),
(13, 21, 6),
(14, 20, 4),
(15, 18, 4),
(17, 11, 5),
(18, 19, 5),
(19, 26, 4),
(20, 26, 6);

-- --------------------------------------------------------

--
-- Table structure for table `quocgias`
--

CREATE TABLE `quocgias` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quocgias`
--

INSERT INTO `quocgias` (`id`, `title`, `des`, `status`, `slug`) VALUES
(4, 'Việt Nam', '123', 1, 'viet-nam'),
(5, 'Hàn Quốc', '123', 1, 'han-quoc'),
(6, 'Mỹ', '123', 1, 'my');

-- --------------------------------------------------------

--
-- Table structure for table `taps`
--

CREATE TABLE `taps` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `link_phim` longtext DEFAULT NULL,
  `episode` int(11) NOT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `update_at` varchar(255) NOT NULL,
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taps`
--

INSERT INTO `taps` (`id`, `movie_id`, `link_phim`, `episode`, `create_at`, `update_at`, `video`) VALUES
(3, 11, '<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/HBdkIWdteSk\" title=\"REVIEW PHIM SHANGCHI VÀ HUYỀN THOẠI THẬP NHẪN || SAKURA REVIEW\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2022-09-26 23:58:48', '2022-09-27 00:03:09', NULL),
(5, 11, '<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/HBdkIWdteSk\" title=\"REVIEW PHIM SHANGCHI VÀ HUYỀN THOẠI THẬP NHẪN || SAKURA REVIEW\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, '2022-09-27 00:27:09', '2022-09-27 00:27:09', NULL),
(6, 11, '<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/HBdkIWdteSk\" title=\"REVIEW PHIM SHANGCHI VÀ HUYỀN THOẠI THẬP NHẪN || SAKURA REVIEW\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, '2022-09-27 00:27:25', '2022-09-27 00:27:25', NULL),
(7, 18, '<iframe width=\"1520\" height=\"577\" src=\"https://www.youtube.com/embed/Yq4n0upxFVg\" title=\"REVIEW PHIM NGƯỜI NHỆN KHÔNG CÒN NHÀ || SPIDER MAN NO WAY HOME || SAKURA REVIEW\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2022-09-29 23:48:40', '2022-09-29 23:48:40', NULL),
(8, 22, '<iframe width=\"1520\" height=\"577\" src=\"https://www.youtube.com/embed/sxczgK3W1nM\" title=\"[One Piece Chap 1062 Prediction] Tổng Tư Lệnh KONG Xuất Hiện G14 ? Bí Mật TRÁI ÁC QUỶ Được Tiết Lộ ?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2022-09-29 23:58:45', '2022-09-29 23:58:45', NULL),
(10, 22, NULL, 3, '2022-10-03 16:53:52', '2022-10-03 17:18:00', 'video833.mp4'),
(11, 22, '<iframe width=\"1520\" height=\"577\" src=\"https://www.youtube.com/embed/sxczgK3W1nM\" title=\"[One Piece Chap 1062 Prediction] Tổng Tư Lệnh KONG Xuất Hiện G14 ? Bí Mật TRÁI ÁC QUỶ Được Tiết Lộ ?\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, '2022-09-29 23:58:45', '2022-09-29 23:58:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theloais`
--

CREATE TABLE `theloais` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theloais`
--

INSERT INTO `theloais` (`id`, `title`, `des`, `status`, `slug`) VALUES
(4, 'Tâm lý', 'Tâm lý', 1, 'tam-ly'),
(5, 'Hành động', 'hành động', 1, 'hanh-dong'),
(6, 'Viễn Tưởng', '123', 1, 'vien-tuong');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sin', 'sinb1812813@student.ctu.edu.vn', NULL, '$2y$10$QLmV2dTnjnwmR1MeYKZIqeB8ZxPAPP4ChkSiqaZMh1..cUGONXIYq', NULL, '2022-08-14 07:36:02', '2022-08-14 07:36:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmucs`
--
ALTER TABLE `danhmucs`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phims`
--
ALTER TABLE `phims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phim_theloai`
--
ALTER TABLE `phim_theloai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quocgias`
--
ALTER TABLE `quocgias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taps`
--
ALTER TABLE `taps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theloais`
--
ALTER TABLE `theloais`
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
-- AUTO_INCREMENT for table `danhmucs`
--
ALTER TABLE `danhmucs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phims`
--
ALTER TABLE `phims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `phim_theloai`
--
ALTER TABLE `phim_theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quocgias`
--
ALTER TABLE `quocgias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `taps`
--
ALTER TABLE `taps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `theloais`
--
ALTER TABLE `theloais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
