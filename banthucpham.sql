-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 04:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banthucpham`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `cate_name`) VALUES
(25, 'Đặc sản'),
(26, 'Hải sản'),
(27, 'Khai vị'),
(28, 'Món chính');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `hten` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `ngaycmt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `hten`, `email`, `noidung`, `ngaycmt`) VALUES
(14, 'Van Hao', 'vhao@gmail.com', 'Thuc an rat ngon va vua mieng', '5/4/2024'),
(15, 'Nhat Hao', 'nhao@gmail.com', 'Mon an hop khau vi cua toi, huong vi tuyet voi', '5/4/2024'),
(16, 'Duy Khang', 'dkhang@gmail.com', 'Gia ca hop ly, do an tuoi song va dam chat que huong', '5/4/2024'),
(17, 'Thanh Hung', 'thung@gmail.com', 'Dong goi bao quan can than va giao hang nhanh, chi phi re ', '5/4/2024'),
(18, 'Hoang Khang', 'hkhang@gmail.com', 'Khong gian thoang mat, sach se va view dep tuyet voi', '5/4/2024');

-- --------------------------------------------------------

--
-- Table structure for table `product`
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
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `name_product`, `code_product`, `regular_price`, `mota`, `cate_id`, `thumbnail`, `date_product`) VALUES
(88, 'Phở bò', 'SP21', '50000', 'Nước dùng trong veo, ngọt thanh, bò tái mềm, thơm phức.', 25, 'pho_bo.jpg', '2024-05-08'),
(89, 'Bánh xèo', 'SP22', '40000', 'Vỏ bánh giòn rụm, nhân tôm thịt đậm đà, nước mắm chua ngọt.', 25, 'banh_xeo.jpg', '2024-05-08'),
(90, 'Gỏi cuốn', 'SP23', '30000', 'Tươi mát, đầy ắp tôm thịt, chấm mắm nêm béo ngậy.', 27, 'goi_cuon.png', '2024-05-08'),
(91, 'Tôm hùm', 'SP24', '200000', 'Tôm hùm tươi sống, thịt chắc, ngọt lịm,  thơm lừng.', 26, 'tom_hum.jpg', '2024-05-08'),
(92, 'Cá hồi nướng', 'SP25', '150000', 'Cá hồi tươi, nướng vừa chín tới, da giòn, thịt béo ngậy.', 26, 'ca_hoi_nuong.jpg', '2024-05-08'),
(93, 'Súp cua', 'SP26', '60000', 'Súp cua sánh mịn, thịt cua ngọt, thơm phức, \r\n trứng cút béo ngậy.', 27, 'sup_cua.jpg', '2024-05-08'),
(94, 'Gà nướng mật ong', 'SP27', '80000', 'Gà nướng vàng ươm, da giòn rụm, thấm đẫm mật ong.', 28, 'ga_nuong_mat_ong.jpg', '2024-05-08'),
(95, 'Bánh cuốn', 'SP28', '35000', 'Bánh mềm mịn, nhân thịt mộc nhĩ, nước mắm chua ngọt.', 27, 'banh_cuon.jpg', '2024-05-08'),
(96, 'Cháo hải sản', 'SP29', '70000', 'Cháo thơm ngon, hải sản tươi sống, vị ngọt thanh đậm đà.', 26, 'chao_hai_san.jpg', '2024-05-08'),
(97, 'Lẩu thái', 'SP30', '120000', 'Nước lẩu chua cay, đậm đà, hải sản tươi sống.', 28, 'lau_thai.jpg', '2024-05-08'),
(98, 'Cơm tấm', 'SP31', '50000', 'Cơm tấm dẻo, sườn nướng thơm phức, trứng ốp la.', 28, 'com_tam_long_xuyen.jpg', '2024-05-08'),
(99, 'Nem nướng', 'SP32', '40000', 'Nem nướng thơm lừng, giòn tan, ăn kèm rau sống tươi mát.', 25, 'nem_nuong.jpg', '2024-05-08'),
(100, 'Bún chả', 'SP33', '45000', 'Thịt nướng, chả viên béo ngậy, nước mắm chua ngọt.', 28, 'bun_cha.jpg', '2024-05-08'),
(101, 'Mì quảng', 'SP34', '55000', 'Mì dai mềm, nước lèo đậm đà, thịt gà xé tươi ngọt.', 25, 'mi_quang.jpg', '2024-05-08'),
(102, 'Gỏi sứa', 'SP35', '60000', 'Sứa giòn tan, thanh mát, kết hợp rau sống tươi ngon.', 27, 'goi_sua.jpg', '2024-05-08'),
(103, 'Hàu nướng mỡ hành', 'SP36', '80000', 'Hàu tươi ngon, nướng mỡ hành thơm lừng, béo ngậy.', 26, 'hau_nuong_mo_hanh.jpg', '2024-05-08'),
(104, 'Bò kho', 'SP37', '70000', 'Thịt bò mềm, nước kho sánh mịn, đậm đà.', 28, 'bo_kho.jpg', '2024-05-08'),
(105, 'Chả cá Lã Vọng', 'SP38', '90000', 'Chả cá thơm ngon, béo ngậy, ăn kèm bún và rau sống tươi mát.', 25, 'cha_ca_la_vong.jpg', '2024-05-08'),
(106, 'Mực hấp', 'SP39', '75000', 'Mực tươi sống, hấp chín tới, giòn ngọt, chấm mắm gừng.', 26, 'muc_hap.jpg', '2024-05-08'),
(107, 'Bánh bèo', 'SP40', '35000', 'Bánh bèo mềm mịn, thơm ngon, chấm nước mắm chua ngọt.', 27, 'banh_beo.jpg', '2024-05-08'),
(108, 'Bánh tráng trộn', 'SP41', '30000', 'Bánh tráng mềm dẻo, kết hợp tôm khô, trứng cút và xoài chua.', 27, 'banh_trang_tron.jpg', '2024-05-08'),
(109, 'Chè thập cẩm', 'SP42', '20000', 'Chè ngọt mát, nhiều loại topping như đậu, thạch, trái cây.', 27, 'che_thap_cam.jpg', '2024-05-08'),
(110, 'Nem rán', 'SP43', '40000', 'Nem giòn rụm, nhân thịt và mộc nhĩ thơm ngon.', 25, 'nem_ran.jpg', '2024-05-08'),
(111, 'Bún bò', 'SP44', '60000', 'Bún bò đậm đà, nước dùng ngọt thanh, thịt bò mềm.', 28, 'bun_bo.jpg', '2024-05-08'),
(112, 'Bánh khọt', 'SP45', '50000', 'Bánh khọt giòn tan, nhân tôm, nước mắm chua ngọt.', 25, 'banh_khot.jpg', '2024-05-08'),
(113, 'Tôm rim', 'SP46', '70000', 'Tôm rim mặn ngọt, đậm đà, ăn cùng cơm trắng nóng hổi.', 28, 'tom_rim.jpg', '2024-05-08'),
(114, 'Súp gà', 'SP47', '45000', 'Súp gà thơm ngon, nước dùng ngọt thanh, thịt gà mềm.', 27, 'sup_ga.jpg', '2024-05-08'),
(115, 'Mực chiên', 'SP48', '80000', 'Mực tươi, chiên giòn rụm, ăn kèm tương ớt cay nồng.', 26, 'muc_chien.jpg', '2024-05-08'),
(116, 'Chả lụa', 'SP49', '35000', 'Chả lụa mềm, thơm ngon, ăn kèm với bánh mì nóng.', 25, 'cha_lua.jpg', '2024-05-08'),
(117, 'Cháo lòng', 'SP50', '40000', 'Cháo nóng hổi, lòng lợn giòn giòn, đậm đà.', 28, 'chao_long.jpg', '2024-05-08'),
(118, 'Canh chua', 'SP51', '55000', 'Canh chua thanh mát, cá tươi ngon, rau sống tươi mát.', 28, 'canh_chua.jpg', '2024-05-08'),
(119, 'Bánh hỏi', 'SP52', '35000', 'Bánh hỏi mềm mịn, ăn kèm thịt nướng thơm lừng.', 27, 'banh_hoi.jpg', '2024-05-08'),
(120, 'Chả rươi', 'SP53', '60000', 'Chả rươi thơm ngon, giòn rụm, đậm đà gia vị.', 25, 'cha_ruoi.jpg', '2024-05-08'),
(121, 'Gà quay', 'SP54', '90000', 'Gà quay vàng ươm, da giòn rụm, thấm đẫm gia vị.', 28, 'ga_quay.jpg', '2024-05-08'),
(122, 'Lẩu dê', 'SP55', '120000', 'Nước lẩu thơm ngon, thịt dê mềm, đậm đà gia vị.', 28, 'lau_de.jpg', '2024-05-08'),
(123, 'Bò né', 'SP56', '75000', 'Thịt bò mềm, trứng ốp la béo ngậy, ăn kèm bánh mì.', 28, 'bo_ne.jpg', '2024-05-08'),
(124, 'Cua rang', 'SP57', '130000', 'Cua tươi, rang muối ớt thơm lừng, cay nồng.', 26, 'cua_rang.jpg', '2024-05-08'),
(125, 'Bánh ướt', 'SP58', '35000', 'Bánh ướt mềm mịn, nhân thịt, nước mắm chua ngọt.', 27, 'banh_uot.jpg', '2024-05-08'),
(126, 'Bún mọc', 'SP59', '50000', 'Bún mọc thơm ngon, nước dùng ngọt thanh, mọc giòn dai.', 28, 'bun_moc.jpg', '2024-05-08'),
(127, 'Mì xào', 'SP60', '60000', 'Mì xào giòn tan, rau củ tươi ngon, thịt bò mềm.', 28, 'mi_xao.jpg', '2024-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwad` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lever` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `pwad`, `email`, `lever`) VALUES
(5, 'Admin', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'admin@gmail.com', 0),
(9, 'Nhân viên', '2a2fa4fe2fa737f129ef2d127b861b7e', 'nv@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
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
-- Table structure for table `tbl_order`
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
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `ten`, `sdt`, `diachi`, `tong`, `tien`) VALUES
(10, 'Van Hao', '0909090909', 'KTX B, TP.Thu Duc', 2, 295000),
(11, 'Nhat Hao', '0808080808', 'KTX A, TP.Thu Duc', 2, 472000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `email_user`) VALUES
(18, 'nvhao2k2', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'Admin@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
