-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 10, 2024 lúc 09:36 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banthucpham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`id`, `cate_name`) VALUES
(25, 'Đặc sản'),
(26, 'Hải sản'),
(27, 'Khai vị'),
(28, 'Món chính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `hten` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `ngaycmt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `hten`, `email`, `noidung`, `ngaycmt`) VALUES
(14, 'Van Hao', 'vhao@gmail.com', 'Thuc an rat ngon va vua mieng', '5/4/2024'),
(15, 'Nhat Hao', 'nhao@gmail.com', 'Mon an hop khau vi cua toi, huong vi tuyet voi', '5/4/2024'),
(16, 'Duy Khang', 'dkhang@gmail.com', 'Gia ca hop ly, do an tuoi song va dam chat que huong', '5/4/2024'),
(17, 'Thanh Hung', 'thung@gmail.com', 'Dong goi bao quan can than va giao hang nhanh, chi phi re ', '5/4/2024'),
(18, 'Hoang Khang', 'hkhang@gmail.com', 'Khong gian thoang mat, sach se va view dep tuyet voi', '5/4/2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(200) NOT NULL,
  `code_product` varchar(100) NOT NULL,
  `regular_price` varchar(100) DEFAULT NULL,
  `mota` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `date_product` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `name_product`, `code_product`, `regular_price`, `mota`, `cate_id`, `thumbnail`, `date_product`) VALUES
(71, 'Chả giò', 'SP01', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 25, 'fried-spring-rolls-cutting-board.jpg', '2023-12-29'),
(72, 'Mực nướng', 'SP02', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 26, 'fried-squid-with-garlic_1339-83500.png', '2023-12-29'),
(73, 'Xiên bẩn', 'SP03', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 27, 'pork-meatballs-dark-surface.jpg', '2023-12-29'),
(74, 'Canh gà', 'SP04', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 28, 'stewed-chicken-feet-soup-served-with-spicy-fish-sauce_1150-27366.jpg', '2023-12-29'),
(75, 'Chả giò', 'SP05', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 25, 'fried-spring-rolls-cutting-board.jpg', '2023-12-29'),
(76, 'Cá nướng', 'SP06', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 26, 'canuong.jpg', '2024-04-10'),
(77, 'Xiên bẩn', 'SP07', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 27, 'pork-meatballs-dark-surface.jpg', '2023-12-29'),
(78, 'Canh gà', 'SP08', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 28, 'stewed-chicken-feet-soup-served-with-spicy-fish-sauce_1150-27366.jpg', '2023-12-29'),
(79, 'Chả giò', 'SP09', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 25, 'fried-spring-rolls-cutting-board.jpg', '2023-12-29'),
(80, 'Mực nướng', 'SP10', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 26, 'fried-squid-with-garlic_1339-83500.png', '2023-12-29'),
(81, 'Xiên bẩn', 'SP11', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 27, 'pork-meatballs-dark-surface.jpg', '2023-12-29'),
(82, 'Canh gà', 'SP12', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 28, 'stewed-chicken-feet-soup-served-with-spicy-fish-sauce_1150-27366.jpg', '2023-12-29'),
(83, 'Chả giò', 'SP13', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 25, 'fried-spring-rolls-cutting-board.jpg', '2023-12-29'),
(84, 'Mực nướng', 'SP14', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 26, 'fried-squid-with-garlic_1339-83500.png', '2023-12-29'),
(85, 'Xiên bẩn', 'SP15', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 27, 'pork-meatballs-dark-surface.jpg', '2023-12-29'),
(86, 'Canh gà', 'SP16', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 28, 'stewed-chicken-feet-soup-served-with-spicy-fish-sauce_1150-27366.jpg', '2023-12-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwad` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lever` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `pwad`, `email`, `lever`) VALUES
(5, 'Admin', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'admin@gmail.com', 0),
(9, 'Nhân viên', '2a2fa4fe2fa737f129ef2d127b861b7e', 'nv@gmail.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(20) NOT NULL,
  `id_product` int(20) NOT NULL,
  `tensp` varchar(30) NOT NULL,
  `soluong` int(20) NOT NULL,
  `dongia` int(20) NOT NULL,
  `hinhanhsp` varchar(30) NOT NULL,
  `userName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `tong` int(11) NOT NULL,
  `tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `ten`, `sdt`, `diachi`, `tong`, `tien`) VALUES
(10, 'Van Hao', '0909090909', 'KTX B, TP.Thu Duc', 2, 295000),
(11, 'Nhat Hao', '0808080808', 'KTX A, TP.Thu Duc', 2, 472000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `email_user`) VALUES
(18, 'nvhao2k2', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'Admin@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
