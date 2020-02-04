-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 08:34 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `idbl` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `idsp` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `ngaydang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`idbl`, `noidung`, `idsp`, `user`, `ngaydang`) VALUES
(2, 'adsadasd', 6, 'anml', '2019-12-08 03:29:48'),
(24, 'sản Phẩm rất tốt', 1, 'lethi', '0000-00-00 00:00:00'),
(30, 'a', 1, 'lethi', '0000-00-00 00:00:00'),
(32, 'sản phẩm ngon đấy', 3, 'lethi', '0000-00-00 00:00:00'),
(33, 'a', 5, 'vinhoc', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_dathang`
--

CREATE TABLE `chitiet_dathang` (
  `mamon` int(11) NOT NULL,
  `madat` int(11) NOT NULL,
  `idsp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitiet_dathang`
--

INSERT INTO `chitiet_dathang` (`mamon`, `madat`, `idsp`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `iddm` int(11) NOT NULL,
  `tendm` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`iddm`, `tendm`, `logo`) VALUES
(11, 'Đồ Ăn', 'danhmuc4.jpg'),
(12, 'Đồ Uống', 'danhmuc2.png'),
(13, 'Bánh Kem', 'danhmuc3.jpg'),
(14, 'Tráng Miệng ', 'danhmuc5.png'),
(29, 'Dịch Vụ', 'danhmuc6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dat_hang`
--

CREATE TABLE `dat_hang` (
  `madat` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `idnh` int(11) NOT NULL,
  `ngaydat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dat_hang`
--

INSERT INTO `dat_hang` (`madat`, `user`, `idnh`, `ngaydat`) VALUES
(2, 'lethi', 1, '2019-12-08 05:34:52'),
(5, 'vinhoc', 1, '0000-00-00 00:00:00'),
(6, 'vinhoc', 4, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `monan`
--

CREATE TABLE `monan` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `anhdd` varchar(100) NOT NULL,
  `gia` int(11) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `phiship` int(11) NOT NULL,
  `chitietsanpham` text NOT NULL,
  `ngaydang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idnh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `monan`
--

INSERT INTO `monan` (`idsp`, `tensp`, `anhdd`, `gia`, `giamgia`, `view`, `phiship`, `chitietsanpham`, `ngaydang`, `idnh`) VALUES
(1, 'Gà Rán FKC', 'quan1.jpg', 12, 1233, 123, 123, 'asdasdsadas', '2019-12-08 05:49:36', 1),
(3, 'Gà Luộc', 'quan3.jpg', 8230, 100, 100, 100, '                ', '2019-12-08 05:49:41', 4),
(5, 'Cá Hấp Bia', 'ban1.jpg', 8230, 100, 100, 100, 'ádasdasdas', '2019-12-08 05:49:45', 5),
(6, 'Combo Gà Rán', 'quan1.jpg', 8230, 100, 100, 100, '                ', '2019-12-08 05:49:54', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nhahang`
--

CREATE TABLE `nhahang` (
  `idnh` int(11) NOT NULL,
  `tennh` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `anhdd` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `giathapnhat` int(11) NOT NULL,
  `giacaonhat` int(11) NOT NULL,
  `mota` text NOT NULL,
  `view` int(11) NOT NULL,
  `mocua` time NOT NULL,
  `dongcua` time NOT NULL,
  `user` varchar(100) NOT NULL,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhahang`
--

INSERT INTO `nhahang` (`idnh`, `tennh`, `logo`, `anhdd`, `diachi`, `giathapnhat`, `giacaonhat`, `mota`, `view`, `mocua`, `dongcua`, `user`, `iddm`) VALUES
(1, 'Nhà Hàng Việt Nam', 'doitac1.jpg', 'nha-hang-banh-my-bready-style.jpg', 'Hà Nội', 1233, 123123, '<h3 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 29px; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(22,=\"\" 25,=\"\" 34);=\"\" text-align:=\"\" center;\"=\"\"><span style=\"color: rgb(105, 86, 75);\"><font size=\"3\">Ẩm thực Trung Hoa không còn quá xa lạ với người Việt Nam, nhưng không phải nhà hàng</font></span><br></h3>                                                                                                                                                                                                                        ', 12, '00:00:00', '00:00:00', 'anml', 14),
(4, 'Nhà Hàng Đất Quảng', 'danhmuc6.jpg', 'banh-kem-nha-hang-hoa.jpg', 'Hà Nội', 123, 123123, '<span style=\"color: rgb(105, 86, 75);\">Ẩm thực Trung Hoa không còn quá xa lạ với người Việt Nam, nhưng không phải nhà hàng</span>                ', 3, '00:00:00', '00:00:00', 'quangga', 13),
(5, 'Nhà hàng món ăn ngon', 'danhmuc6.jpg', 'qq.jpg', 'Hà Nội', 213123, 123123, '<span style=\"color: rgb(105, 86, 75); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Ẩm thực Trung Hoa không còn quá xa lạ với người Việt Nam, nhưng không phải nhà hàng</span>                ', 3, '00:00:00', '00:00:00', 'lethi', 29),
(8, 'Nhà hàng Bắc', 'doitac1.jpg', 'ban1.jpg', 'Hà Nội', 213123, 123123, 'Nhà hàng số một tại miền bắc                ', 3, '00:00:00', '00:00:00', 'vinhoc', 11),
(9, 'Nhà Hàng coffe', 'danhmuc6.jpg', 'tin3.png', 'Hà Nội', 213123, 123123, '<span style=\"color: rgb(105, 86, 75); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; letter-spacing: 0.5px;\">Ẩm thực Trung Hoa không còn quá xa lạ với người Việt Nam, nhưng không phải nhà hàng</span>                ', 3, '00:00:00', '00:00:00', 'quangga', 12);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `tencty` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sdt` int(11) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `tencty`, `email`, `sdt`, `diachi`, `logo`) VALUES
(1, 'Fast Food', 'ledinhthi2909@gmail.com', 986966813, 'Hà Nội', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `idship` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `madat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipper`
--

INSERT INTO `shipper` (`idship`, `user`, `madat`) VALUES
(1, 'lethi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `anhdd` varchar(100) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `anhdd`, `tieude`, `trangthai`, `link`) VALUES
(2, 'baground1.jpg', 'mon an ngon 1', 1, 'http://localhost/du_an_1/mvc_php/index.php?controller=giao-dien&action=product&chitiet=1'),
(3, 'baground2.jpg', 'anh dai dien 2', 1, 'http://localhost/du_an_1/mvc_php/index.php?controller=giao-dien&action=product&chitiet=3'),
(4, 'baground3.jpg', 'Trên tay, đánh giá nhanh Samsung Galaxy S9 Xách Tay', 1, 'http://localhost/du_an_1/mvc_php/index.php?controller=giao-dien&action=product&chitiet=6'),
(5, 'baground4.jpg', 'backgroud 3', 1, 'http://localhost/du_an_1/mvc_php/index.php?controller=giao-dien&action=product&chitiet=5');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `anhdd` varchar(100) NOT NULL,
  `vaitro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`user`, `pass`, `anhdd`, `vaitro`) VALUES
('aa', '123456', 'Zx', 0),
('anml', '123456', 'an', 1),
('hihi', '123456', 'thi.jpg', 0),
('lethi', '123456', 'aaa', 2),
('quangga', '123456', 'abc', 2),
('thithi', '123456', 'thi.jpg', 0),
('vinhoc', '123456', 'ádasdasd', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `idtt` int(11) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `mota` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `chitiet` text NOT NULL,
  `ngaydang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`idtt`, `tieude`, `logo`, `mota`, `diachi`, `chitiet`, `ngaydang`, `user`) VALUES
(1, 'Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân', 'tin2.png', 'Những món ăn đường phố đặc trưng này được xem', 'hà nội', '<p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Giữa thời đại coi trọng tới ngoại hình như hiện tại thì việc gìn giữ vóc dáng thon gọn luôn là điều mà các cô gái vô cùng quan tâm. Tuy nhiên, với tần suất hẹn hò, party cùng bạn bè diễn ra mỗi ngày thì chuyện này xem chừng rất khó khăn đối với hội con gái.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Để vừa giữ được body cân đối, vừa không làm cơ thể bị đói lả do kiêng khem kham khổ, bạn có thể áp dụng ngay những quy tắc sau đây trong cuộc sống thường ngày.</p><h3 style=\"margin-right: 0px; margin-bottom: 22px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: SFD-Bold; vertical-align: baseline; color: rgb(17, 17, 17); width: 580px;\"><font style=\"line-height: 20px; font-size: 20px;\">Tập dùng đồ uống trong ly dài</font></h3><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Một số cô nàng sẽ chẳng ngờ rằng, cơ thể thường hấp thụ một lượng lớn calo từ những món đồ uống quen thuộc. Trong một ly nước ép bạn uống ngoài hàng có thể chứa đến 120 calo và khoảng 20gr đường. Vì vậy, để phòng tránh nguy cơ uống quá nhiều thì bạn nên chuyển sang dùng một chiếc ly dài thay cho những chiếc cốc có đường kính lớn. Với cách này, bạn sẽ giảm bớt được lượng chất lỏng gây tăng cân vào cơ thể tới 20 - 30%.&nbsp;&nbsp;</p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\"></p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/12/2/1-1575277716335108147910.jpg\" id=\"img_53bf0220-14e3-11ea-bf6a-31a8d4324450\" w=\"650\" h=\"486\" alt=\"Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân, giữ dáng của bạn thêm hiệu quả - Ảnh 1.\" title=\"Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân, giữ dáng của bạn thêm hiệu quả - Ảnh 1.\" rel=\"lightbox\" photoid=\"53bf0220-14e3-11ea-bf6a-31a8d4324450\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/12/2/1-1575277716335108147910.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"text-align: justify; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></p></blockquote><p></p></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><div class=\"VCSortableInPreviewMode noCaption active\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"></div><h3 style=\"margin-right: 0px; margin-bottom: 22px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: SFD-Bold; vertical-align: baseline; color: rgb(17, 17, 17); width: 580px;\"><font style=\"line-height: 20px; font-size: 20px;\">Ăn với đồng hồ bấm giờ bên cạnh</font></h3><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Nhiều người thường có thói quen ăn nhanh mà không biết rằng mình có thể ăn quá mức lượng thức ăn được cho phép. Do đó, trước khi ngồi vào bàn ăn, bạn nên bật đồng hồ hẹn giờ trong khoảng 20 phút và cố gắng ăn chậm rãi, từ tốn.</p><div id=\"admzone474524\" class=\"wp100 clearfix\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"></div><h3 style=\"margin-right: 0px; margin-bottom: 22px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: SFD-Bold; vertical-align: baseline; color: rgb(17, 17, 17); width: 580px;\"><font style=\"line-height: 20px; font-size: 20px;\">Tắm nước ấm</font></h3><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Nghiên cứu từ các nhà khoa học ở Đại học&nbsp;Loughborough (Anh) cho biết, việc tắm bằng nước ấm không chỉ giúp bạn thư giãn mà còn hỗ trợ giảm cân hiệu quả. Trong nh</p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><a href=\"https://kenh14cdn.com/2019/12/2/3-1575277716339710690824.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"text-decoration-line: underline; background-color: rgb(255, 255, 255); color: rgb(0, 86, 179); font: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; cursor: zoom-in; display: block;\"></a><a href=\"https://kenh14cdn.com/2019/12/2/3-1575277716339710690824.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"text-decoration-line: underline; background-color: rgb(255, 255, 255); color: rgb(0, 86, 179); font: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/12/2/3-1575277716339710690824.jpg\" id=\"img_53fef150-14e3-11ea-968b-93ca489a5cd5\" w=\"650\" h=\"532\" alt=\"Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân, giữ dáng của bạn thêm hiệu quả - Ảnh 3.\" title=\"Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân, giữ dáng của bạn thêm hiệu quả - Ảnh 3.\" rel=\"lightbox\" photoid=\"53fef150-14e3-11ea-968b-93ca489a5cd5\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/12/2/3-1575277716339710690824.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"vertical-align: bottom; border: 0px; margin: 0px; padding: 0px; font: inherit; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">ững nghiên cứu mà họ tiến hành, họ đã phát hiện ra rằng, cứ 1 giờ tắm nước ấm sẽ đốt cháy được khoảng 130 calo - tương đương với lượng calo bạn giảm được khi đi bộ trong vòng 30 phút.</p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode noCaption active\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/12/2/4-1575277716341670436883.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/12/2/4-1575277716341670436883.jpg\" id=\"img_541a1a70-14e3-11ea-88d9-4384cf1ad9e6\" w=\"650\" h=\"650\" alt=\"Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân, giữ dáng của bạn thêm hiệu quả - Ảnh 4.\" title=\"Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân, giữ dáng của bạn thêm hiệu quả - Ảnh 4.\" rel=\"lightbox\" photoid=\"541a1a70-14e3-11ea-88d9-4384cf1ad9e6\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/12/2/4-1575277716341670436883.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><h3 style=\"margin-right: 0px; margin-bottom: 22px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: SFD-Bold; vertical-align: baseline; color: rgb(17, 17, 17); width: 580px;\"><font style=\"line-height: 20px; font-size: 20px;\">Ngồi ở cuối bàn ăn</font></h3><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Khi ngồi vào một chiếc bàn ăn lớn, bạn nên chọn cho mình vị trí ở cuối bàn. Vì thường thì các món ăn ngon, hấp dẫn sẽ được bày ở khu vực trung tâm. Tuy nhiên, nếu ngồi ở cuối bàn thì cơ hội để ăn tất cả những món này sẽ trở nên khó khăn hơn.</p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/12/2/5-15752777163432136893554.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/12/2/5-15752777163432136893554.jpg\" id=\"img_543b3700-14e3-11ea-a023-4bb0d7ad79d9\" w=\"650\" h=\"433\" alt=\"Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân, giữ dáng của bạn thêm hiệu quả - Ảnh 5.\" title=\"Loạt mẹo đơn giản góp phần giúp cho công cuộc giảm cân, giữ dáng của bạn thêm hiệu quả - Ảnh 5.\" rel=\"lightbox\" photoid=\"543b3700-14e3-11ea-a023-4bb0d7ad79d9\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/12/2/5-15752777163432136893554.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote>', '2019-12-08 10:48:38', 'lethi'),
(3, 'Là 1 món ăn khoái khẩu mà rất nhiều người lớn lẫn trẻ nhỏ đều thích mê ', 'doan1.jpg', 'Là 1 món ăn khoái khẩu mà rất nhiều người lớn lẫn trẻ nhỏ đều thích mê ', 'Hà Nội', '<h3 style=\"margin-right: 0px; margin-bottom: 22px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: SFD-Bold; vertical-align: baseline; color: rgb(17, 17, 17); width: 580px;\">Vì sao ăn nem chua có nguy cơ mắc bệnh từ nhiều phía?</h3><div id=\"admzone474524\" class=\"wp100 clearfix\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"></div><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Theo PGS.TS Trần Đáng (Nguyên Cục trưởng Cục An toàn Vệ sinh Thực phẩm), nem chua là món ăn dân tộc vừa ngon vừa rẻ nhưng nhiều cơ sở sản xuất chưa đảm bảo các điều kiện an toàn thực phẩm.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\"><i style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">\"Điều đầu tiên cần phải bàn đến là nguy cơ làm từ thịt lợn hỏng, bì lợn tẩy trắng bằng oxy già\"</i>, chuyên gia khẳng định. Hiện nay, giá thịt lợn đang lên cao ngất ngưởng một phần bởi không có thịt lợn cung cấp.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Nguyên nhân sâu xa chính là dịch lợn vẫn âm ỉ, chưa có dấu hiệu ngừng hẳn như dịch tả lợn châu Phi. Chúng ta không thể lường trước được việc sử dụng thịt, bì để làm nem chua có đảm bảo hay không hay sẽ được phù phép với hóa chất độc hại.</p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/28/photo-1-1574916528095330348779.jpg\" data-fancybox-group=\"img-lightbox\" title=\"Nem chua thực sự rất bẩn khi bị quăng quật thế này.\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/28/photo-1-1574916528095330348779.jpg\" id=\"img_5d2a23e0-119a-11ea-bbad-d14ff1cfd25f\" w=\"650\" h=\"433\" alt=\"Là 1 món ăn khoái khẩu mà rất nhiều người lớn lẫn trẻ nhỏ đều thích mê nhưng lại ẩn chứa nhiều mối họa cho sức khỏe - Ảnh 2.\" title=\"Là 1 món ăn khoái khẩu mà rất nhiều người lớn lẫn trẻ nhỏ đều thích mê nhưng lại ẩn chứa nhiều mối họa cho sức khỏe - Ảnh 2.\" rel=\"lightbox\" photoid=\"5d2a23e0-119a-11ea-bbad-d14ff1cfd25f\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/28/photo-1-1574916528095330348779.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><div class=\"VCSortableInPreviewMode\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div class=\"PhotoCMS_Caption\" style=\"margin: 0px; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left;\"><p data-placeholder=\"[nhập chú thích]\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: SFD-Medium; vertical-align: baseline; color: rgb(102, 102, 102); -webkit-font-smoothing: subpixel-antialiased; margin-bottom: 0px !important;\">Nem chua thực sự rất bẩn khi bị quăng quật thế này.</p></div></div><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Thứ hai, hãy xem xét sản phẩm nem chua sau khi được phân phát đến tay người tiêu dùng.&nbsp;</span><i style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13pt; line-height: inherit; font-family: inherit; vertical-align: baseline;\">\"Dây cao su như chun, nịt buộc bên ngoài mỗi chiếc nem chua có thể bị lão hóa, tạo ra các chất: nitrozamin và các hóa chất trung gian gây nên ung thư. Khi bóc nem, bàn tay khiến các chất này rất dễ lẫn vào nem khiến người mang mầm bệnh\"</i><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">, PGS.TS Trần Đáng chỉ rõ.</span></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Thứ ba, để món ăn ngon hơn, cũng như việc phù phép tinh vi hơn, không loại trừ khả năng người làm nem chua sẽ cho thêm những chất phụ gia vào thực phẩm. Tất nhiên, những chất phụ gia dùng trong chế biến thực phẩm là được phép nhưng vấn đề nằm ở chỗ nếu sử dụng chất phụ gia quá mức cho phép, nhất là loại chất không được sử dụng trong chế biến thực phẩm thì tác hại sẽ đến đâu? Chuyên gia đặt ra lo ngại món nem chua khoái khẩu dễ trở thành món ăn độc hại, về lâu dài sẽ gây nên những bệnh mãn tính như ung thư.</p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/28/photo-2-15749165280971249621955.jpg\" data-fancybox-group=\"img-lightbox\" title=\"Để món ăn ngon hơn, cũng như việc phù phép tinh vi hơn, không loại trừ khả năng người làm nem chua sẽ cho thêm những chất phụ gia vào thực phẩm.\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/28/photo-2-15749165280971249621955.jpg\" id=\"img_5d2038d0-119a-11ea-a870-e1a6a282bff0\" w=\"650\" h=\"451\" alt=\"Là 1 món ăn khoái khẩu mà rất nhiều người lớn lẫn trẻ nhỏ đều thích mê nhưng lại ẩn chứa nhiều mối họa cho sức khỏe - Ảnh 3.\" title=\"Là 1 món ăn khoái khẩu mà rất nhiều người lớn lẫn trẻ nhỏ đều thích mê nhưng lại ẩn chứa nhiều mối họa cho sức khỏe - Ảnh 3.\" rel=\"lightbox\" photoid=\"5d2038d0-119a-11ea-a870-e1a6a282bff0\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/28/photo-2-15749165280971249621955.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><div class=\"VCSortableInPreviewMode\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div class=\"PhotoCMS_Caption\" style=\"margin: 0px; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left;\"><p data-placeholder=\"[nhập chú thích]\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: SFD-Medium; vertical-align: baseline; color: rgb(102, 102, 102); -webkit-font-smoothing: subpixel-antialiased; margin-bottom: 0px !important;\">Để món ăn ngon hơn, cũng như việc phù phép tinh vi hơn, không loại trừ khả năng người làm nem chua sẽ cho thêm những chất phụ gia vào thực phẩm.</p></div></div><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Chưa kể, nem chua sử dụng vi sinh vật để lên men thịt. Nếu không kiểm soát được độ tinh khiết của sự lên men thì có khả năng sản sinh ra chất axpegili, từ đó tạo ra độc tố aphlatoxine cũng sẽ gây ung thư cho người dùng.</span><br></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\">Nem chua là sản phẩm lên men từ thịt sống. Nếu tiêu thụ trong khoảng thời gian nhất định thì có thể giảm nguy cơ mắc bệnh. Nhưng bạn có bao giờ nghĩ người bán hàng sẽ bỏ nem chua quá hạn đi để đảm bảo đồ ăn cho người mua? Hơn một lần, chắc hẳn đã có người bóc phải nem chua ủ quá lâu, để quá lâu đến nỗi bị mốc. Điều đáng nói là nhiều người vẫn tặc lưỡi gạt nấm mốc đi và ăn vì… ngon.&nbsp;<b style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Bảo sao, nguy cơ ung thư từ nem chua cứ thế tăng cao?</b></p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode active\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/28/photo-3-15749165280991967578271.jpg\" data-fancybox-group=\"img-lightbox\" title=\"Nem chua là sản phẩm lên men từ thịt sống. Nếu tiêu thụ trong khoảng thời gian nhất định thì có thể giảm nguy cơ mắc bệnh.\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/28/photo-3-15749165280991967578271.jpg\" id=\"img_5d1aba90-119a-11ea-933b-aba876d74352\" w=\"560\" h=\"374\" alt=\"Là 1 món ăn khoái khẩu mà rất nhiều người lớn lẫn trẻ nhỏ đều thích mê nhưng lại ẩn chứa nhiều mối họa cho sức khỏe - Ảnh 4.\" title=\"Là 1 món ăn khoái khẩu mà rất nhiều người lớn lẫn trẻ nhỏ đều thích mê nhưng lại ẩn chứa nhiều mối họa cho sức khỏe - Ảnh 4.\" rel=\"lightbox\" photoid=\"5d1aba90-119a-11ea-933b-aba876d74352\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/28/photo-3-15749165280991967578271.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><div class=\"VCSortableInPreviewMode active\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div class=\"PhotoCMS_Caption\" style=\"margin: 0px; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left;\"><p data-placeholder=\"[nhập chú thích]\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: SFD-Medium; vertical-align: baseline; color: rgb(102, 102, 102); -webkit-font-smoothing: subpixel-antialiased; margin-bottom: 0px !important;\">Nem chua là sản phẩm lên men từ thịt sống. Nếu tiêu thụ trong khoảng thời gian nhất định thì có thể giảm nguy cơ mắc bệnh.</p></div></div>', '2019-12-08 10:48:31', 'vinhoc');
INSERT INTO `tintuc` (`idtt`, `tieude`, `logo`, `mota`, `diachi`, `chitiet`, `ngaydang`, `user`) VALUES
(4, 'Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới', 'quan3.jpg', 'Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới', 'Hà Nội', '<h3 style=\"margin-right: 0px; margin-bottom: 22px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: SFD-Bold; vertical-align: baseline; color: rgb(17, 17, 17); width: 580px;\"><span id=\"docs-internal-guid-2b6c79f3-7fff-0fb6-c008-8c29ce004ad6\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Emirates</span></h3><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/22/b1c-1574430558554242964086.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/22/b1c-1574430558554242964086.jpg\" id=\"img_e48416e0-0d2e-11ea-8a2f-5b2270cd9291\" w=\"1440\" h=\"958\" alt=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 1.\" title=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 1.\" rel=\"lightbox\" photoid=\"e48416e0-0d2e-11ea-8a2f-5b2270cd9291\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/22/b1c-1574430558554242964086.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/22/b1b-15744305585521052324823.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/22/b1b-15744305585521052324823.jpg\" id=\"img_e45824e0-0d2e-11ea-8540-c95a0ea3e7c6\" w=\"1400\" h=\"1050\" alt=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 2.\" title=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 2.\" rel=\"lightbox\" photoid=\"e45824e0-0d2e-11ea-8540-c95a0ea3e7c6\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/22/b1b-15744305585521052324823.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/22/b1a-15744305585491560796502.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/22/b1a-15744305585491560796502.jpg\" id=\"img_e4327470-0d2e-11ea-b501-c74588ee7aa0\" w=\"1280\" h=\"720\" alt=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 3.\" title=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 3.\" rel=\"lightbox\" photoid=\"e4327470-0d2e-11ea-b501-c74588ee7aa0\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/22/b1a-15744305585491560796502.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\"><span id=\"docs-internal-guid-2b6c79f3-7fff-0fb6-c008-8c29ce004ad6\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Hãng hàng không cao cấp của Các tiểu vương quốc Ả Rập thống nhất (UAE) được đánh giá cao với thực đơn đa dạng, phong phú, đặc biệt là các nguyên liệu có nguồn gốc đắt tiền, được chế biến giữ nguyên độ tươi ngon.</span></p><h3 style=\"margin-right: 0px; margin-bottom: 22px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: SFD-Bold; vertical-align: baseline; color: rgb(17, 17, 17); width: 580px;\"><span id=\"docs-internal-guid-2b6c79f3-7fff-0fb6-c008-8c29ce004ad6\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">9. Swiss Airlines</span></h3><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/22/b2c-15744305585631716911061.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/22/b2c-15744305585631716911061.jpg\" id=\"img_e5184090-0d2e-11ea-8661-7302f29dae18\" w=\"1200\" h=\"748\" alt=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 4.\" title=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 4.\" rel=\"lightbox\" photoid=\"e5184090-0d2e-11ea-8661-7302f29dae18\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/22/b2c-15744305585631716911061.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/22/b2b-1574430558559968435614.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/22/b2b-1574430558559968435614.jpg\" id=\"img_e4ea79d0-0d2e-11ea-9c28-6735c1160aa3\" w=\"728\" h=\"485\" alt=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 5.\" title=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 5.\" rel=\"lightbox\" photoid=\"e4ea79d0-0d2e-11ea-9c28-6735c1160aa3\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/22/b2b-1574430558559968435614.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/22/b2a-15744305585561928107920.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/22/b2a-15744305585561928107920.jpg\" id=\"img_e4ae0d10-0d2e-11ea-b501-c74588ee7aa0\" w=\"1920\" h=\"1030\" alt=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 6.\" title=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 6.\" rel=\"lightbox\" photoid=\"e4ae0d10-0d2e-11ea-b501-c74588ee7aa0\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/22/b2a-15744305585561928107920.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\"><span id=\"docs-internal-guid-2b6c79f3-7fff-0fb6-c008-8c29ce004ad6\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Được nhận xét là có suất ăn hạng nhất (First Class) top đầu, Swiss Airlines của Thuỵ Sĩ sẽ đem đến trải nghiệm ẩm thực truyền thống quốc gia cho các du khách. Thực đơn ở đây còn được làm mới hoàn toàn mỗi 3 tháng.</span></p><h3 style=\"margin-right: 0px; margin-bottom: 22px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: SFD-Bold; vertical-align: baseline; color: rgb(17, 17, 17); width: 580px;\"><span id=\"docs-internal-guid-2b6c79f3-7fff-0fb6-c008-8c29ce004ad6\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">8. Air New Zealand</span></h3><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/22/b3b-15744305585691640070926.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/22/b3b-15744305585691640070926.jpg\" id=\"img_e55c0050-0d2e-11ea-8a76-c5814dc0e9cd\" w=\"2000\" h=\"1500\" alt=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 7.\" title=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 7.\" rel=\"lightbox\" photoid=\"e55c0050-0d2e-11ea-8a76-c5814dc0e9cd\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/22/b3b-15744305585691640070926.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" text-align:=\"\" center;=\"\" width:=\"\" 580px;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/22/b3a-15744305585671095788977.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/22/b3a-15744305585671095788977.jpg\" id=\"img_e539ab40-0d2e-11ea-8021-ef3a8c1c6b53\" w=\"738\" h=\"492\" alt=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 8.\" title=\"Chuyên trang du lịch công bố 10 hãng hàng không có đồ ăn cao cấp và ngon nhất thế giới, top 2 đều nằm ở châu Á - Ảnh 8.\" rel=\"lightbox\" photoid=\"e539ab40-0d2e-11ea-8021-ef3a8c1c6b53\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/22/b3a-15744305585671095788977.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;\"=\"\"><span id=\"docs-internal-guid-2b6c79f3-7fff-0fb6-c008-8c29ce004ad6\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Các đầu bếp chuyên gia của hãng chủ yếu sáng tạo những món đậm hương vị New Zealand, nhưng vẫn thay đổi, đan xen ẩm thực quốc tế để vừa quảng bá ẩm thực địa phương, vừa làm hài lòng các thực khách.</span></p>', '2019-12-08 10:49:47', 'vinhoc'),
(5, 'Loại củ trông xù xì xấu mã nhưng càng ăn càng đốt mỡ bụng cực tốt vào mùa lạnh và còn là thuốc quý t', 'text.jpg', 'Loại củ trông xù xì xấu mã nhưng càng ăn càng đốt mỡ bụng cực tốt vào mùa lạnh và còn là thuốc quý t', 'Hà Nội', '<h2 class=\"knc-sapo\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 5px 0px 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 22px; font-family: SFD-Bold; vertical-align: baseline; position: relative; color: rgb(17, 17, 17);\">Củ từ được giới đông y ví là loại thực phẩm cực tốt cho người bị tiểu đường, cao huyết áp, béo phì, người hay bị táo bón, khó ngủ mà không muốn dùng thuốc an thần</h2><div class=\"knc-relate-wrapper relationnews\" style=\"margin: 0px 0px 15px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(239, 239, 239); border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0);\"><ul class=\"krw-list\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style: none;\"><li class=\"krwli\" style=\"margin: 0px 0px 6px -9px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a data-newsid=\"20191118175058535\" href=\"http://kenh14.vn/nguoi-song-tho-thuong-co-nhieu-thoi-quen-an-uong-tot-ban-co-bao-nhieu-diem-trong-list-sau-day-20191118175058535.chn\" title=\"Người sống thọ thường có nhiều thói quen ăn uống tốt, bạn có bao nhiêu điểm trong list sau đây?\" data-popup-url=\"/nguoi-song-tho-thuong-co-nhieu-thoi-quen-an-uong-tot-ban-co-bao-nhieu-diem-trong-list-sau-day-20191118175058535rf20191119124826785.chn\" class=\"show-popup visit-popup\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: 16px; font-family: inherit; vertical-align: baseline; position: relative; color: rgb(56, 62, 84);\">Người sống thọ thường có nhiều thói quen ăn uống tốt, bạn có bao nhiêu điểm trong list sau đây?&nbsp;<span class=\"icon-show-popup\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline-block; height: 10px; width: 10px; background: url(\" data:image=\"\" png;base64,ivborw0kggoaaaansuheugaaaaoaaaakcayaaah6nf8raaaagxrfwhrtb2z0d2fyzqbbzg9izsbjbwfnzvjlywr5ccllpaaaayzpvfh0we1momnvbs5hzg9izs54bxaaaaaaadw=\"\" ehbhy2tldcbizwdpbj0i77u=\"\" iibpzd0ivzvnme1wq2voauh6cmvtek5uy3pryzlkij8+idx4onhtcg1ldgegeg1sbnm6ed0iywrvymu6bnm6bwv0ys8iihg6eg1wdgs9ikfkb2jlifhnucbdb3jliduuni1jmdy3idc5lje1nzc0nywgmjaxns8wmy8zmc0ymzo0mdo0miagicagicagij4gphjkzjpsreygeg1sbnm6cmrmpsjodhrwoi8vd3d3lnczlm9yzy8xotk5lzaylziylxjkzi1zew50yxgtbnmjij4gphjkzjpezxnjcmlwdglvbibyzgy6ywjvdxq9iiigeg1sbnm6eg1wpsjodhrwoi8vbnmuywrvymuuy29tl3hhcc8xljaviib4bwxuczp4bxbntt0iahr0cdovl25zlmfkb2jllmnvbs94yxavms4wl21tlyigeg1sbnm6c3rszwy9imh0dha6ly9ucy5hzg9izs5jb20vegfwlzeumc9zvhlwzs9szxnvdxjjzvjlzimiihhtcdpdcmvhdg9yvg9vbd0iqwrvymugughvdg9zag9wiendidiwmtugkfdpbmrvd3mpiib4bxbnttpjbnn0yw5jzulepsj4bxauawlkokveqjzfqzexnzy2mtexrtzcmdffq0mwmtfemzqzqjm4iib4bxbnttpeb2n1bwvudelepsj4bxauzglkokveqjzfqzeynzy2mtexrtzcmdffq0mwmtfemzqzqjm4ij4gphhtce1nokrlcml2zwrgcm9tihn0umvmomluc3rhbmnlsuq9inhtcc5pawq6rurcnkvdmey3njyxmtffnkiwmuvdqzaxmuqzndncmzgiihn0umvmomrvy3vtzw50suq9inhtcc5kawq6rurcnkvdmta3njyxmtffnkiwmuvdqzaxmuqzndncmzgilz4gpc9yzgy6rgvzy3jpchrpb24+idwvcmrmoljerj4gpc94onhtcg1ldge+idw=\"\" ehbhy2tldcblbmq9iniipz7cjdvoaaaafeleqvr42ml4=\"\" 8=\"\" w+ntpyeeiamqqgagi4gfeebwiragccagmekifbawgygzz878bwgguagyyahjmjiymijomcbaaifvigvazqebkgoqrhfemrpgwdathqaegapm2tbxi=\"\" orxzlarqg7cbtggrmqkekc1qfjfnsfiankmwbslyn0enhlqgaaaabjru5erkjggg=\"=\" )\"=\"\" no-repeat;\"=\"\"></span></a></li><li class=\"krwli\" style=\"margin: 0px 0px 6px -9px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a data-newsid=\"20191119000522504\" href=\"http://kenh14.vn/hoc-ngay-mot-ro-bi-kip-giu-dang-tu-red-velvet-wendy-nhay-day-1000-cai-ngay-irene-uong-nuoc-bi-ngo-20191119000522504.chn\" title=\"Học ngay một rổ bí kíp giữ dáng từ Red Velvet: Wendy nhảy dây 1000 cái/ngày, Irene uống nước bí ngô\" data-popup-url=\"/hoc-ngay-mot-ro-bi-kip-giu-dang-tu-red-velvet-wendy-nhay-day-1000-cai-ngay-irene-uong-nuoc-bi-ngo-20191119000522504rf20191119124826785.chn\" class=\"show-popup visit-popup\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: 16px; font-family: inherit; vertical-align: baseline; position: relative; color: rgb(56, 62, 84);\">Học ngay một rổ bí kíp giữ dáng từ Red Velvet: Wendy nhảy dây 1000 cái/ngày, Irene uống nước bí ngô&nbsp;<span class=\"icon-show-popup\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline-block; height: 10px; width: 10px; background: url(\" data:image=\"\" png;base64,ivborw0kggoaaaansuheugaaaaoaaaakcayaaah6nf8raaaagxrfwhrtb2z0d2fyzqbbzg9izsbjbwfnzvjlywr5ccllpaaaayzpvfh0we1momnvbs5hzg9izs54bxaaaaaaadw=\"\" ehbhy2tldcbizwdpbj0i77u=\"\" iibpzd0ivzvnme1wq2voauh6cmvtek5uy3pryzlkij8+idx4onhtcg1ldgegeg1sbnm6ed0iywrvymu6bnm6bwv0ys8iihg6eg1wdgs9ikfkb2jlifhnucbdb3jliduuni1jmdy3idc5lje1nzc0nywgmjaxns8wmy8zmc0ymzo0mdo0miagicagicagij4gphjkzjpsreygeg1sbnm6cmrmpsjodhrwoi8vd3d3lnczlm9yzy8xotk5lzaylziylxjkzi1zew50yxgtbnmjij4gphjkzjpezxnjcmlwdglvbibyzgy6ywjvdxq9iiigeg1sbnm6eg1wpsjodhrwoi8vbnmuywrvymuuy29tl3hhcc8xljaviib4bwxuczp4bxbntt0iahr0cdovl25zlmfkb2jllmnvbs94yxavms4wl21tlyigeg1sbnm6c3rszwy9imh0dha6ly9ucy5hzg9izs5jb20vegfwlzeumc9zvhlwzs9szxnvdxjjzvjlzimiihhtcdpdcmvhdg9yvg9vbd0iqwrvymugughvdg9zag9wiendidiwmtugkfdpbmrvd3mpiib4bxbnttpjbnn0yw5jzulepsj4bxauawlkokveqjzfqzexnzy2mtexrtzcmdffq0mwmtfemzqzqjm4iib4bxbnttpeb2n1bwvudelepsj4bxauzglkokveqjzfqzeynzy2mtexrtzcmdffq0mwmtfemzqzqjm4ij4gphhtce1nokrlcml2zwrgcm9tihn0umvmomluc3rhbmnlsuq9inhtcc5pawq6rurcnkvdmey3njyxmtffnkiwmuvdqzaxmuqzndncmzgiihn0umvmomrvy3vtzw50suq9inhtcc5kawq6rurcnkvdmta3njyxmtffnkiwmuvdqzaxmuqzndncmzgilz4gpc9yzgy6rgvzy3jpchrpb24+idwvcmrmoljerj4gpc94onhtcg1ldge+idw=\"\" ehbhy2tldcblbmq9iniipz7cjdvoaaaafeleqvr42ml4=\"\" 8=\"\" w+ntpyeeiamqqgagi4gfeebwiragccagmekifbawgygzz878bwgguagyyahjmjiymijomcbaaifvigvazqebkgoqrhfemrpgwdathqaegapm2tbxi=\"\" orxzlarqg7cbtggrmqkekc1qfjfnsfiankmwbslyn0enhlqgaaaabjru5erkjggg=\"=\" )\"=\"\" no-repeat;\"=\"\"></span></a></li><li class=\"krwli\" style=\"margin: 0px 0px 6px -9px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a data-newsid=\"20191118163809394\" href=\"http://kenh14.vn/co-gai-hot-hoang-khi-phat-hien-ban-trai-co-toi-3-tinh-hoan-20191118163809394.chn\" title=\"Cô gái hốt hoảng khi phát hiện bạn trai có tới 3 tinh hoàn\" data-popup-url=\"/co-gai-hot-hoang-khi-phat-hien-ban-trai-co-toi-3-tinh-hoan-20191118163809394rf20191119124826785.chn\" class=\"show-popup visit-popup\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: 16px; font-family: inherit; vertical-align: baseline; position: relative; color: rgb(56, 62, 84);\">Cô gái hốt hoảng khi phát hiện bạn trai có tới 3 tinh hoàn&nbsp;<span class=\"icon-show-popup\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline-block; height: 10px; width: 10px; background: url(\" data:image=\"\" png;base64,ivborw0kggoaaaansuheugaaaaoaaaakcayaaah6nf8raaaagxrfwhrtb2z0d2fyzqbbzg9izsbjbwfnzvjlywr5ccllpaaaayzpvfh0we1momnvbs5hzg9izs54bxaaaaaaadw=\"\" ehbhy2tldcbizwdpbj0i77u=\"\" iibpzd0ivzvnme1wq2voauh6cmvtek5uy3pryzlkij8+idx4onhtcg1ldgegeg1sbnm6ed0iywrvymu6bnm6bwv0ys8iihg6eg1wdgs9ikfkb2jlifhnucbdb3jliduuni1jmdy3idc5lje1nzc0nywgmjaxns8wmy8zmc0ymzo0mdo0miagicagicagij4gphjkzjpsreygeg1sbnm6cmrmpsjodhrwoi8vd3d3lnczlm9yzy8xotk5lzaylziylxjkzi1zew50yxgtbnmjij4gphjkzjpezxnjcmlwdglvbibyzgy6ywjvdxq9iiigeg1sbnm6eg1wpsjodhrwoi8vbnmuywrvymuuy29tl3hhcc8xljaviib4bwxuczp4bxbntt0iahr0cdovl25zlmfkb2jllmnvbs94yxavms4wl21tlyigeg1sbnm6c3rszwy9imh0dha6ly9ucy5hzg9izs5jb20vegfwlzeumc9zvhlwzs9szxnvdxjjzvjlzimiihhtcdpdcmvhdg9yvg9vbd0iqwrvymugughvdg9zag9wiendidiwmtugkfdpbmrvd3mpiib4bxbnttpjbnn0yw5jzulepsj4bxauawlkokveqjzfqzexnzy2mtexrtzcmdffq0mwmtfemzqzqjm4iib4bxbnttpeb2n1bwvudelepsj4bxauzglkokveqjzfqzeynzy2mtexrtzcmdffq0mwmtfemzqzqjm4ij4gphhtce1nokrlcml2zwrgcm9tihn0umvmomluc3rhbmnlsuq9inhtcc5pawq6rurcnkvdmey3njyxmtffnkiwmuvdqzaxmuqzndncmzgiihn0umvmomrvy3vtzw50suq9inhtcc5kawq6rurcnkvdmta3njyxmtffnkiwmuvdqzaxmuqzndncmzgilz4gpc9yzgy6rgvzy3jpchrpb24+idwvcmrmoljerj4gpc94onhtcg1ldge+idw=\"\" ehbhy2tldcblbmq9iniipz7cjdvoaaaafeleqvr42ml4=\"\" 8=\"\" w+ntpyeeiamqqgagi4gfeebwiragccagmekifbawgygzz878bwgguagyyahjmjiymijomcbaaifvigvazqebkgoqrhfemrpgwdathqaegapm2tbxi=\"\" orxzlarqg7cbtggrmqkekc1qfjfnsfiankmwbslyn0enhlqgaaaabjru5erkjggg=\"=\" )\"=\"\" no-repeat;\"=\"\"></span></a></li></ul></div><div class=\"react-relate animated hiding-react-relate\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; animation-duration: 0.5s; height: 0px; overflow: hidden; transition: height 0.5s ease 0s; color: rgb(0, 0, 0);\"></div><div data-check-position=\"body_start\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0);\"></div><div class=\"knc-content\" style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: \" times=\"\" new=\"\" roman\",=\"\" georgia,=\"\" serif;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" -webkit-font-smoothing:=\"\" subpixel-antialiased;=\"\" position:=\"\" relative;=\"\" display:=\"\" inline-block;=\"\" width:=\"\" 580px;\"=\"\"><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\">Ăn củ từ đều đặn mỗi ngày vào mùa đông giúp hút mỡ bụng siêu hay lại còn phòng chữa bệnh</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\">Là một loại củ có nhiều lông xù xì, củ từ có nhiều chất nhờn, nhất là khi bóc sống lớp vỏ ngoài. Điều ấy khiến nhiều người khá e ngại khi ăn loại củ này. Trong vườn tược của người Việt ngày xưa, củ từ luôn được ưu ái bởi luộc, nướng hay nấu canh đều đem lại những món ăn ngon. Tuy nhiên, trong thời đại hiện nay, loại củ này dường như đang bị lãng quên.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\">Đây quả là điều đáng tiếc khi củ từ là một trong những thực phẩm vàng vào mùa lạnh. Không chỉ ăn ngon, giúp món ăn giảm độ béo ngấy, loại củ này còn được ví là thực phẩm hút mỡ bụng, chữa nhiều bệnh thường gặp vào mùa đông.</p><div class=\"VCSortableInPreviewMode\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; width: 580px;\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/19/photo-1-15741423553641272354899.jpg\" data-fancybox-group=\"img-lightbox\" title=\"Công dụng của củ từ không chỉ có ý nghĩa về mặt sức khỏe mà còn cực tốt cho chị em trong việc làm đẹp, giữ dáng hiệu quả vào mùa đông.\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/19/photo-1-15741423553641272354899.jpg\" id=\"img_d9ac24c0-0a8f-11ea-b644-47841c5890db\" w=\"600\" h=\"370\" alt=\"Loại củ trông xù xì xấu mã nhưng càng ăn càng đốt mỡ bụng cực tốt vào mùa lạnh và còn là thuốc quý trong Đông y - Ảnh 1.\" title=\"Loại củ trông xù xì xấu mã nhưng càng ăn càng đốt mỡ bụng cực tốt vào mùa lạnh và còn là thuốc quý trong Đông y - Ảnh 1.\" rel=\"lightbox\" photoid=\"d9ac24c0-0a8f-11ea-b644-47841c5890db\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/19/photo-1-15741423553641272354899.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div><div class=\"PhotoCMS_Caption\" style=\"margin: 0px; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left;\"><p data-placeholder=\"[nhập chú thích]\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: SFD-Medium; vertical-align: baseline; color: rgb(102, 102, 102); -webkit-font-smoothing: subpixel-antialiased; margin-bottom: 0px !important;\">Công dụng của củ từ không chỉ có ý nghĩa về mặt sức khỏe mà còn cực tốt cho chị em trong việc làm đẹp, giữ dáng hiệu quả vào mùa đông.</p></div></div><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Theo cựu đại tá, lương y đa khoa Bùi Hồng Minh (Phó Chủ tịch Hội Đông y Ba Đình, Hà Nội), trong Đông y, củ từ hay còn gọi là củ khoai từ có vị ngọt, tính bình có tác dụng chống mệt mỏi, ích khí lực, kiện tỳ vị, cường thận dương, giải các chất độc khỏi cơ thể và chữa được nhiều bệnh.</span></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\">\"Đây là loại thực phẩm cực tốt cho người bị tiểu đường, cao huyết áp, béo phì, người hay bị táo bón, khó ngủ mà không muốn dùng thuốc an thần, đặc biệt là người già, trẻ nhỏ, đồng thời phòng chống nhiễm độc kim loại nặng từ môi trường\", vị chuyên gia nhấn mạnh. Củ từ thực sự có tác dụng giải độc rất tốt, từ xa xưa, các vị thầy thuốc ở Liên Xô đã sử dụng chúng để đưa vào chế độ ăn hàng ngày cho công nhân nhằm bớt hấp thụ độc tố kim loại vào người, bảo vệ sức khỏe cho tầng lớp công nhân.</p><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; width: 580px;\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/19/photo-1-15741423576331409966600.jpg\" data-fancybox-group=\"img-lightbox\" title=\"\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/19/photo-1-15741423576331409966600.jpg\" id=\"img_db0ec200-0a8f-11ea-aa75-37475508c6ae\" w=\"650\" h=\"680\" alt=\"Loại củ trông xù xì xấu mã nhưng càng ăn càng đốt mỡ bụng cực tốt vào mùa lạnh và còn là thuốc quý trong Đông y - Ảnh 2.\" title=\"Loại củ trông xù xì xấu mã nhưng càng ăn càng đốt mỡ bụng cực tốt vào mùa lạnh và còn là thuốc quý trong Đông y - Ảnh 2.\" rel=\"lightbox\" photoid=\"db0ec200-0a8f-11ea-aa75-37475508c6ae\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/19/photo-1-15741423576331409966600.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\">Nghiên cứu của y học hiện đại cho thấy, trong củ từ có hàm lượng chất xơ cao, kích thích nhu động ruột, chỉ số glycemic rất thấp, khi nấu cùng các món xương, thịt hầm sẽ giúp những món ăn bớt ngấy ngán, đồng thời không lo sợ món ăn quá béo.</p><div id=\"admzone474524\" class=\"wp100 clearfix\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; width: 580px;\"></div><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\">Chuyên gia \"bật mí\" một số món ăn, bài thuốc chữa bệnh, giảm béo bụng từ củ từ</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\">Công dụng của củ từ không chỉ có ý nghĩa về mặt sức khỏe mà còn cực tốt cho chị em trong việc làm đẹp, giữ dáng hiệu quả vào mùa đông. Một số món ăn thuốc dễ làm sau sẽ giúp bạn vừa chữa bệnh vừa giảm mỡ bụng cực dễ dàng:</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\"><i style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">- Giải độc cơ thể , giải độc kim loại:</i>&nbsp;Lấy củ từ tươi đem gọt vỏ, giã lấy nước uống cho nôn hết ra ngoài sẽ giúp giải độc hiệu quả.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 25px; vertical-align: baseline; -webkit-font-smoothing: subpixel-antialiased;\"><i style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">- Chữa viêm họng, chữa ho do nhiệt:&nbsp;</i>Củ từ đã gọt vỏ 250g, thịt gà 25g, thịt lợn nạc 100g, xá xíu 75g, nấm đông cô 5g, măng non 100g, bột nếp 500g, bột mì&nbsp;250g, dầu mè, rượu gạo trắng, thêm gia vị như xì dầu, muối, bột tiêu… Củ từ luộc chín trộn với bột, đường làm vỏ bánh. Măng và nấm trần qua nước sôi, các loại thịt đem thái nhỏ, nhào bột mì cho ướt. Bạn xào thịt, măng, nấm kèm gia vị làm nhân bánh. Đem gói rồi rán vàng lên ăn. Củ&nbsp;từ có chứa saponin và niêm dịch sẽ làm dịu và nhuận họng, tiêu đờm, trị các chứng ho khan cũng như một số chứng bệnh đường hô hấp hiệu quả.</p><div class=\"VCSortableInPreviewMode\" type=\"Photo\" style=\"margin: 0px auto 22px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; width: 580px;\"><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><a href=\"https://kenh14cdn.com/2019/11/19/photo-2-1574142357635560473852.jpg\" data-fancybox-group=\"img-lightbox\" title=\"Để dùng khoai từ làm thức ăn an toàn hơn, bạn nên nướng khoai từ để phân hủy chất nhựa, hạn chế tối đa khả năng bị đầy bụng, khó tiêu.\" target=\"_blank\" class=\"detail-img-lightbox\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; cursor: zoom-in; display: block;\"><img src=\"https://kenh14cdn.com/thumb_w/620/2019/11/19/photo-2-1574142357635560473852.jpg\" id=\"img_db37f4e0-0a8f-11ea-a870-e1a6a282bff0\" w=\"640\" h=\"426\" alt=\"Loại củ trông xù xì xấu mã nhưng càng ăn càng đốt mỡ bụng cực tốt vào mùa lạnh và còn là thuốc quý trong Đông y - Ảnh 3.\" title=\"Loại củ trông xù xì xấu mã nhưng càng ăn càng đốt mỡ bụng cực tốt vào mùa lạnh và còn là thuốc quý trong Đông y - Ảnh 3.\" rel=\"lightbox\" photoid=\"db37f4e0-0a8f-11ea-a870-e1a6a282bff0\" type=\"photo\" data-original=\"https://kenh14cdn.com/2019/11/19/photo-2-1574142357635560473852.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: bottom; color: transparent; display: block; width: 580px; max-width: 100%;\"></a></div></div></div>', '2019-12-08 10:25:07', 'vinhoc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`idbl`),
  ADD KEY `idsp` (`idsp`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `chitiet_dathang`
--
ALTER TABLE `chitiet_dathang`
  ADD PRIMARY KEY (`mamon`),
  ADD KEY `madat` (`madat`),
  ADD KEY `idsp` (`idsp`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`iddm`);

--
-- Indexes for table `dat_hang`
--
ALTER TABLE `dat_hang`
  ADD PRIMARY KEY (`madat`),
  ADD KEY `user` (`user`),
  ADD KEY `idnh` (`idnh`);

--
-- Indexes for table `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`idsp`),
  ADD KEY `idnh` (`idnh`);

--
-- Indexes for table `nhahang`
--
ALTER TABLE `nhahang`
  ADD PRIMARY KEY (`idnh`),
  ADD KEY `user` (`user`),
  ADD KEY `iddm` (`iddm`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`idship`),
  ADD KEY `user` (`user`),
  ADD KEY `madat` (`madat`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idtt`),
  ADD KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `idbl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `chitiet_dathang`
--
ALTER TABLE `chitiet_dathang`
  MODIFY `mamon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `iddm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `dat_hang`
--
ALTER TABLE `dat_hang`
  MODIFY `madat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `monan`
--
ALTER TABLE `monan`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhahang`
--
ALTER TABLE `nhahang`
  MODIFY `idnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipper`
--
ALTER TABLE `shipper`
  MODIFY `idship` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idtt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idsp`) REFERENCES `monan` (`idsp`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`user`) REFERENCES `taikhoan` (`user`);

--
-- Constraints for table `chitiet_dathang`
--
ALTER TABLE `chitiet_dathang`
  ADD CONSTRAINT `chitiet_dathang_ibfk_1` FOREIGN KEY (`madat`) REFERENCES `dat_hang` (`madat`),
  ADD CONSTRAINT `chitiet_dathang_ibfk_2` FOREIGN KEY (`idsp`) REFERENCES `monan` (`idsp`);

--
-- Constraints for table `dat_hang`
--
ALTER TABLE `dat_hang`
  ADD CONSTRAINT `dat_hang_ibfk_1` FOREIGN KEY (`user`) REFERENCES `taikhoan` (`user`),
  ADD CONSTRAINT `dat_hang_ibfk_2` FOREIGN KEY (`idnh`) REFERENCES `nhahang` (`idnh`);

--
-- Constraints for table `monan`
--
ALTER TABLE `monan`
  ADD CONSTRAINT `monan_ibfk_2` FOREIGN KEY (`idnh`) REFERENCES `nhahang` (`idnh`);

--
-- Constraints for table `nhahang`
--
ALTER TABLE `nhahang`
  ADD CONSTRAINT `nhahang_ibfk_2` FOREIGN KEY (`user`) REFERENCES `taikhoan` (`user`),
  ADD CONSTRAINT `nhahang_ibfk_4` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`iddm`);

--
-- Constraints for table `shipper`
--
ALTER TABLE `shipper`
  ADD CONSTRAINT `shipper_ibfk_1` FOREIGN KEY (`user`) REFERENCES `taikhoan` (`user`),
  ADD CONSTRAINT `shipper_ibfk_2` FOREIGN KEY (`madat`) REFERENCES `dat_hang` (`madat`);

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`user`) REFERENCES `taikhoan` (`user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
