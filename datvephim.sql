-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 20, 2021 lúc 02:46 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datvephim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `Acount` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID`, `HoTen`, `Acount`, `Password`) VALUES
(1, 'Ngô Lâm Quang Tín', 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `ID` int(11) NOT NULL,
  `TenGhe` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ghe`
--

INSERT INTO `ghe` (`ID`, `TenGhe`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'A4'),
(5, 'A5'),
(6, 'A6'),
(7, 'B1'),
(8, 'B2'),
(9, 'B3'),
(10, 'B4'),
(11, 'B5'),
(12, 'B6'),
(13, 'B7'),
(14, 'B8'),
(15, 'C1'),
(16, 'C2'),
(17, 'C3'),
(18, 'C4'),
(19, 'C5'),
(20, 'C6'),
(21, 'C7'),
(22, 'C8'),
(23, 'D1'),
(24, 'D2'),
(25, 'D3'),
(26, 'D4'),
(27, 'D5'),
(28, 'D6'),
(29, 'D7'),
(30, 'D8'),
(31, 'E1'),
(32, 'E2'),
(33, 'E3'),
(34, 'E4'),
(35, 'E5'),
(36, 'E6'),
(37, 'E7'),
(38, 'E8'),
(39, 'F1'),
(40, 'F2'),
(41, 'F3'),
(42, 'F4'),
(43, 'F5'),
(44, 'F6'),
(45, 'F7'),
(46, 'F8'),
(47, 'G1'),
(48, 'G2'),
(49, 'G3'),
(50, 'G4'),
(51, 'G5'),
(52, 'G6'),
(53, 'G7'),
(54, 'G8'),
(55, 'H1'),
(56, 'H2'),
(57, 'H3'),
(58, 'H4'),
(59, 'H5'),
(60, 'H6'),
(61, 'H7'),
(62, 'H8'),
(63, 'I1'),
(64, 'I2'),
(65, 'I3'),
(66, 'I4'),
(67, 'I5'),
(68, 'I6'),
(69, 'I7'),
(70, 'I8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe_phong`
--

CREATE TABLE `ghe_phong` (
  `ID_Ghe` int(11) NOT NULL,
  `ID_Phong` int(11) NOT NULL,
  `ID_suatchieu` int(11) NOT NULL DEFAULT 1,
  `TrangThai` varchar(200) NOT NULL DEFAULT 'Trống',
  `NgayDat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ghe_phong`
--

INSERT INTO `ghe_phong` (`ID_Ghe`, `ID_Phong`, `ID_suatchieu`, `TrangThai`, `NgayDat`) VALUES
(1, 1, 29, 'Đã đặt', '2020-12-05'),
(1, 1, 46, 'Đã đặt', '2021-01-08'),
(2, 1, 30, 'Đã đặt', '2020-12-07'),
(2, 1, 31, 'Đã hủy', '2020-12-08'),
(2, 1, 33, 'Đã đặt', '2020-12-14'),
(2, 1, 36, 'Đã hủy', '2020-12-19'),
(2, 1, 37, 'Đã hủy', '2020-12-20'),
(2, 1, 38, 'Đã đặt', '2020-12-21'),
(2, 1, 45, 'Đã hủy', '2021-01-06'),
(2, 3, 34, 'Đã hủy', '2020-12-15'),
(3, 1, 29, 'Đã đặt', '2020-12-05'),
(3, 1, 31, 'Đã hủy', '2020-12-08'),
(3, 1, 33, 'Đã hủy', '2020-12-14'),
(3, 1, 37, 'Đã hủy', '2020-12-20'),
(3, 1, 38, 'Đã hủy', '2020-12-21'),
(3, 1, 42, 'Đã hủy', '2020-12-27'),
(3, 1, 43, 'Đã hủy', '2020-12-27'),
(3, 1, 45, 'Đã hủy', '2021-01-06'),
(4, 1, 31, 'Đã hủy', '2020-12-08'),
(4, 1, 32, 'Đã hủy', '2020-12-09'),
(4, 1, 35, 'Đã đặt', '2020-12-18'),
(4, 1, 36, 'Đã hủy', '2020-12-19'),
(4, 1, 45, 'Đã đặt', '2021-01-06'),
(4, 1, 46, 'Đã đặt', '2021-01-08'),
(5, 1, 29, 'Đã đặt', '2020-12-05'),
(5, 1, 43, 'Đã đặt', '2020-12-27'),
(8, 1, 29, 'Đã đặt', '2020-12-05'),
(8, 3, 20, 'Đã đặt', '2020-11-03'),
(8, 3, 34, 'Đã hủy', '2020-12-15'),
(9, 1, 38, 'Đã hủy', '2020-12-21'),
(10, 1, 45, 'Đã đặt', '2021-01-06'),
(11, 1, 30, 'Đã hủy', '2020-12-07'),
(11, 1, 31, 'Đã hủy', '2020-12-08'),
(17, 1, 29, 'undefined', '2020-12-05'),
(17, 1, 43, 'Đã đặt', '2020-12-27'),
(18, 1, 29, 'undefined', '2020-12-05'),
(18, 1, 36, 'Đã hủy', '2020-12-19'),
(18, 1, 38, 'Đã hủy', '2020-12-21'),
(26, 1, 38, 'Đã hủy', '2020-12-21'),
(27, 1, 36, 'Đã hủy', '2020-12-19'),
(28, 1, 29, 'Đã đặt', '2020-12-05'),
(28, 1, 35, 'Đã hủy', '2020-12-18'),
(40, 1, 37, 'Đã hủy', '2020-12-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `ID` int(11) NOT NULL,
  `Ngày` date NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `ID_KhachHang` int(11) NOT NULL,
  `TrangThai` varchar(250) NOT NULL DEFAULT 'Chưa thanh toán'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`ID`, `Ngày`, `ThanhTien`, `ID_KhachHang`, `TrangThai`) VALUES
(15, '2020-11-02', 45000, 1, 'Chưa thanh toán'),
(16, '2020-11-03', 45000, 1, 'Chưa thanh toán'),
(17, '2020-12-05', 45000, 1, 'Chưa thanh toán'),
(18, '2020-12-05', 45000, 1, 'Chưa thanh toán'),
(19, '2020-12-05', 45000, 1, 'Chưa thanh toán'),
(20, '2020-12-05', 45000, 1, 'Chưa thanh toán'),
(21, '2020-12-05', 45000, 1, 'Chưa thanh toán'),
(22, '2020-12-05', 45000, 1, 'Chưa thanh toán'),
(23, '2020-12-07', 45000, 1, 'Chưa thanh toán'),
(24, '2020-12-07', 45000, 1, 'Chưa thanh toán'),
(25, '2020-12-07', 45000, 1, 'Đã hủy'),
(26, '2020-12-08', 45000, 1, 'Đã hủy'),
(27, '2020-12-08', 45000, 1, 'Đã hủy'),
(28, '2020-12-08', 45000, 1, 'Đã hủy'),
(29, '2020-12-08', 45000, 1, 'Chưa thanh toán'),
(30, '2020-12-08', 45000, 1, 'Chưa thanh toán'),
(31, '2020-12-08', 45000, 1, 'Đã hủy'),
(32, '2020-12-08', 45000, 1, 'Chưa thanh toán'),
(33, '2020-12-08', 45000, 1, 'Đã hủy'),
(34, '2020-12-08', 45000, 1, 'Đã hủy'),
(35, '2020-12-08', 45000, 1, 'Chưa thanh toán'),
(36, '2020-12-08', 45000, 1, 'Chưa thanh toán'),
(37, '2020-12-08', 45000, 1, 'Chưa thanh toán'),
(38, '2020-12-08', 45000, 1, 'Chưa thanh toán'),
(39, '2020-12-08', 45000, 1, 'Chưa thanh toán'),
(40, '2020-12-08', 45000, 1, 'Đã hủy'),
(41, '2020-12-08', 45000, 1, 'Đã hủy'),
(42, '2020-12-09', 45000, 1, 'Đã hủy'),
(43, '2020-12-14', 45000, 1, 'Chưa thanh toán'),
(44, '2020-12-14', 45000, 1, 'Đã hủy'),
(45, '2020-12-15', 45000, 1, 'Đã hủy'),
(46, '2020-12-15', 45000, 1, 'Đã hủy'),
(47, '2020-12-15', 45000, 1, 'Đã hủy'),
(48, '2020-12-18', 45000, 1, 'Chưa thanh toán'),
(49, '2020-12-18', 45000, 1, 'Đã hủy'),
(50, '2020-12-19', 45000, 2, 'Đã hủy'),
(51, '2020-12-19', 45000, 2, 'Đã hủy'),
(52, '2020-12-19', 45000, 2, 'Đã hủy'),
(53, '2020-12-19', 45000, 2, 'Đã hủy'),
(54, '2020-12-19', 45000, 1, 'Đã hủy'),
(55, '2020-12-20', 45000, 8, 'Đã hủy'),
(56, '2020-12-20', 45000, 1, 'Đã hủy'),
(57, '2020-12-20', 45000, 1, 'Đã hủy'),
(58, '2020-12-20', 45000, 1, 'Đã hủy'),
(59, '2020-12-21', 45000, 1, 'Đã hủy'),
(60, '2020-12-21', 45000, 1, 'Đã hủy'),
(61, '2020-12-21', 45000, 1, 'Đã hủy'),
(62, '2020-12-21', 45000, 1, 'Đã hủy'),
(63, '2020-12-21', 45000, 1, 'Đã hủy'),
(64, '2020-12-21', 45000, 1, 'Chưa thanh toán'),
(65, '2020-12-21', 45000, 1, 'Chưa thanh toán'),
(66, '2020-12-21', 45000, 1, 'Chưa thanh toán'),
(67, '2020-12-21', 45000, 1, 'Đã hủy'),
(68, '2020-12-21', 45000, 1, 'Đã hủy'),
(69, '2020-12-27', 45000, 2, 'Đã hủy'),
(70, '2020-12-27', 45000, 2, 'Đã hủy'),
(71, '2020-12-27', 45000, 1, 'Chưa thanh toán'),
(72, '2020-12-27', 45000, 1, 'Chưa thanh toán'),
(73, '2021-01-06', 45000, 1, 'Đã hủy'),
(74, '2021-01-06', 45000, 1, 'Chưa thanh toán'),
(75, '2021-01-06', 45000, 1, 'Đã hủy'),
(76, '2021-01-06', 45000, 1, 'Chưa thanh toán'),
(77, '2021-01-06', 45000, 1, 'Chưa thanh toán'),
(78, '2021-01-06', 45000, 1, 'Chưa thanh toán'),
(79, '2021-01-06', 45000, 1, 'Chưa thanh toán'),
(80, '2021-01-06', 45000, 1, 'Chưa thanh toán'),
(81, '2021-01-08', 45000, 1, 'Chưa thanh toán'),
(82, '2021-01-08', 45000, 1, 'Chưa thanh toán'),
(83, '2021-01-08', 45000, 1, 'Chưa thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `NgaySinh` date NOT NULL,
  `SDT` varchar(200) NOT NULL,
  `Account` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ID`, `HoTen`, `Email`, `NgaySinh`, `SDT`, `Account`, `Password`) VALUES
(1, 'Ngô Lâm Quang Tín', 'quangtin131299@gmail.com', '1999-12-13', '0843331299', 'quang_tin', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Trịnh Phước Tín', 'trinhphuoctin@gmail.com', '1999-10-12', '0767816651', 'trinhtin1210', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Ngô Thiện Vinh', 'vinhngo@gmail.com', '1999-10-23', '0767243825', 'vinhngo', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'Trần Ngọc Thiên', 'ngocthien@gmail.com', '1999-06-23', '0752835271', 'ngocthien', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'Trần Quốc Hùng', 'quochung@gmail.com', '1999-07-17', '075725372', 'quochung', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'thành công', 'thanhcong@exmaple.com', '1998-10-10', '0123456789', 'test', '202cb962ac59075b964b07152d234b70'),
(8, 'tinka', 'tinka@example.com', '2009-12-18', '0843331299', 'tin_ka', '202cb962ac59075b964b07152d234b70'),
(9, '67', 'mnb@gmail.com', '2008-12-04', '0123456789', 'mnb098', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichchieu`
--

CREATE TABLE `lichchieu` (
  `ID` int(11) NOT NULL,
  `Ngay` date NOT NULL,
  `ID_Rap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lichchieu`
--

INSERT INTO `lichchieu` (`ID`, `Ngay`, `ID_Rap`) VALUES
(1, '2020-10-17', 1),
(2, '2020-10-20', 8),
(3, '2020-10-20', 10),
(6, '2020-10-21', 9),
(7, '2020-10-22', 12),
(8, '2020-10-24', 1),
(9, '2020-10-25', 5),
(10, '2020-10-25', 1),
(11, '2020-10-27', 1),
(12, '2020-10-29', 1),
(13, '2020-10-30', 2),
(14, '2020-10-31', 3),
(15, '2020-11-01', 1),
(16, '2020-11-02', 2),
(17, '2020-11-03', 1),
(18, '2020-11-12', 1),
(26, '2020-11-14', 1),
(27, '2020-11-23', 1),
(28, '2020-12-05', 1),
(29, '2020-12-07', 1),
(30, '2020-12-08', 1),
(31, '2020-12-09', 2),
(32, '2020-12-14', 1),
(33, '2020-12-15', 1),
(34, '2020-12-18', 1),
(35, '2020-12-19', 1),
(36, '2020-12-20', 1),
(37, '2020-12-21', 1),
(38, '2020-12-23', 1),
(39, '2020-12-26', 1),
(40, '2020-12-27', 1),
(41, '2020-12-27', 1),
(42, '2020-12-27', 1),
(43, '2020-12-27', 1),
(44, '2021-01-06', 1),
(45, '2021-01-08', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphim`
--

CREATE TABLE `loaiphim` (
  `ID` int(11) NOT NULL,
  `TenLoai` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaiphim`
--

INSERT INTO `loaiphim` (`ID`, `TenLoai`) VALUES
(1, 'Hành Động'),
(2, 'Hài Hước'),
(3, 'Khoa học viễn tưởng'),
(4, 'Kinh Dị'),
(5, 'Tình Cảm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `ID` int(11) NOT NULL,
  `TenPhim` varchar(200) NOT NULL,
  `Hinh` varchar(200) NOT NULL,
  `TrangThai` varchar(200) NOT NULL,
  `ThoiGian` int(11) NOT NULL,
  `Trailer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`ID`, `TenPhim`, `Hinh`, `TrangThai`, `ThoiGian`, `Trailer`) VALUES
(1, 'Cô Gái Đến Từ Hôm Qua', 'https://galaxycine.vn/media/c/o/cogai_2.jpg', 'Đang chiếu', 120, 'NYowPGxSLzU'),
(2, 'Chiến Binh Hồi Sinh', 'https://www.galaxycine.vn/media/2020/10/12/300wx450h_1602471905147.jpg', 'Đang chiếu', 77, 'kRgnhrmh0Jg'),
(3, 'Cục Nợ Hóa Cục Cưng', 'https://galaxycine.vn/media/2020/10/1/pawn300x450_1601539721012.jpg', 'Đang chiếu', 113, '2zSzDlaN-9w'),
(4, 'Quái Vật Săn Đêm', 'https://galaxycine.vn/media/2020/10/12/300-quai-vat_1602488184254.jpg', 'Đang chiếu', 114, '48SFFMP9dl0'),
(5, 'Ròm', 'https://galaxycine.vn/media/2020/9/10/470wx700h_1599711347553.jpg', 'Đang chiếu', 79, 'XRm1P7oGpMQ'),
(6, 'Sóng Thần Ở HAEUNDAE', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgPhim/SongThanOHaeundae.jpg', 'Đang chiếu', 120, 'FwtK6FG_Hvg'),
(7, 'Đồi Tuyết Máu', 'https://galaxycine.vn/media/2020/9/30/trtr_1601438372450.jpg', 'Sắp chiếu', 87, ''),
(8, 'Trại Xác Sống', 'https://galaxycine.vn/media/2020/10/5/clearing-poster_1601866213186.jpg', 'Sắp chiếu', 87, ''),
(9, 'Đại Dịch Xác Sống', 'https://galaxycine.vn/media/2020/10/17/300wx450h_1602913757424.jpg', 'Sắp chiếu', 93, ''),
(10, 'Tiệc Trăng Máu', 'https://galaxycine.vn/media/2020/10/2/300x450_1601622736171.jpg', 'Sắp chiếu', 118, ''),
(21, 'cc', 'cc', '', 5, '55'),
(22, 'cc', 'cc', '', 5, '55'),
(23, 'vvv', 'gggg', '', 5, '555555'),
(24, 'vvv', 'gggg', '', 5, '555555'),
(25, 'vvv', 'gggg', '', 5555, '555555'),
(26, 'vvv', 'gggg', '', 5555, '555555'),
(27, 'vvv', 'gggg', '', 55555, '555555'),
(28, 'vvv', 'gggg', '', 55555, '555555'),
(29, 'vvv', 'gggg', '', 55555, '555555');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim_lichchieu`
--

CREATE TABLE `phim_lichchieu` (
  `ID_Phim` int(11) NOT NULL,
  `ID_LichChieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phim_lichchieu`
--

INSERT INTO `phim_lichchieu` (`ID_Phim`, `ID_LichChieu`) VALUES
(1, 8),
(1, 9),
(1, 11),
(1, 16),
(1, 17),
(1, 18),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(2, 15),
(3, 9),
(3, 12),
(3, 33),
(4, 14),
(5, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim_loaiphim`
--

CREATE TABLE `phim_loaiphim` (
  `ID_Phim` int(11) NOT NULL,
  `ID_Loai` int(11) NOT NULL,
  `MoTa` varchar(500) NOT NULL,
  `NgayKhoiChieu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phim_loaiphim`
--

INSERT INTO `phim_loaiphim` (`ID_Phim`, `ID_Loai`, `MoTa`, `NgayKhoiChieu`) VALUES
(1, 2, 'Là một trong những tác phẩm nổi tiếng nhất của nhà văn Nguyễn Nhật Ánh, Cô Gái Đến Từ Hôm Qua được coi là quyển sách gối đầu giường của nhiều thế hệ học trò Việt Nam suốt mấy mươi năm kể từ ngày ra đời. Cô Gái Đến Từ Hôm Qua là câu chuyện hấp dẫn đan xen giữa quá khứ và hiện tại qua lời kể của cậu học trò láu lỉnh – Thư.\r\n', '2017-07-27'),
(1, 5, 'Là một trong những tác phẩm nổi tiếng nhất của nhà văn Nguyễn Nhật Ánh, Cô Gái Đến Từ Hôm Qua được coi là quyển sách gối đầu giường của nhiều thế hệ học trò Việt Nam suốt mấy mươi năm kể từ ngày ra đời. Cô Gái Đến Từ Hôm Qua là câu chuyện hấp dẫn đan xen giữa quá khứ và hiện tại qua lời kể của cậu học trò láu lỉnh – Thư.\r\n', '2020-10-20'),
(2, 1, 'The Doorman bắt đầu khi nữ quân nhân Ali trở về quê hương New York để hồi phục những chấn thương trong thời gian phục vụ quân ngũ. Được người thân nhờ làm gác cửa tại một căn biệt thự chứa nhiều tài sản quý giá, Ali vô tình trở thành người bảo vệ nơi này trước kế hoạch tấn công được tính toán kỹ lưỡng của một nhóm trộm chuyên nghiệp.\r\n', '2020-10-21'),
(3, 5, 'Cục Nợ Hóa Cục Cưng là câu chuyện về một gia đình “kì lạ” lấy bối cảnh vào năm 1993 ở Incheon. Du-seok và Jong-bae là hai gã chuyên đòi nợ thuê có máu mặt. Để uy hiếp một con nợ, cả hai đã giữ Seung-yi - một bé gái 9 tuổi làm vật thế chấp cho số nợ của mẹ cô bé. Tuy nhiên, mẹ của Seung-yi lại bị trục xuất, và hai ông chú đành nhận trách nhiệm trông chừng Seung-yi đến khi cô bé được một gia đình giàu có và tử tế nhận nuôi.', '2020-10-19'),
(4, 3, 'LIÊN XÔ, 1983. Anh hùng phi hành gia Liên Xô Vladimir Veshnyakov mang một sinh vật ngoài hành tinh đến thế gian... trong cơ thể của mình. Trong phòng thí nghiệm bí mật của thành phố chế độ, nhà thần kinh học Tatyana Klimova cố gắng cứu các phi hành gia từ con quái vật, phát hiện ra rằng cô đang trải qua nhiều hơn sự quan tâm chuyên nghiệp trong bệnh nhân của cô.', '2020-10-20'),
(5, 5, 'Lấy bối cảnh một khu chung cư cũ đang chờ giải tỏa tại Sài Gòn, Ròm kể câu chuyện về cuộc sống của những người dân lao động nơi đây. Họ đều chơi số đề với hy vọng kiếm được một khoản tiền lớn để đổi đời. Ròm là cậu bé làm “cò đề” để kiếm sống qua ngày, chuyên tư vấn cho người dân những con số may mắn để họ có cơ may trúng đề', '2020-10-20'),
(6, 3, 'Man-sik (Sol Kyung-gu) đã từng sống sót sau trận sóng thần tồi tệ nhất trong lịch sử diễn ra vào năm 2004 cướp đi sinh mạng của hơn 300,000 người. Tất cả thuỷ thủ trên tàu cá của Man-sik đều được cứu sống chỉ trừ duy nhất một người, đó là bố của cô gái anh hằng yêu thương Yeon-hee (Ha Ji-won). Đã bốn năm trôi qua song Man-sik vẫn luôn tự trách mình và không thể mở lòng với Yeon-hee vì mặc cảm tội lỗi. ', '2020-10-20'),
(7, 1, 'Đồi Tuyết Máu’ xoay quanh chuyến du lịch “chết chóc” của cô gái trẻ Mia và chồng sắp cưới của mình. Vô tình lạc nhau tại một đồi tuyết hoang vắng, cả hai phải tìm cách sống sót trước điều kiện thiên nhiên vô cùng khắc nghiệt', '2020-10-24'),
(8, 3, 'Chuyến đi cắm trại vui vẻ của Tom và con gái Mira bỗng chốc trở thành cơn ác mộng khi những xác sống khát máu bủa vây xung quanh họ chỉ sau 1 đêm. Điều rùng rợn hơn cả là những xác sống đó lại chính là những gia đình cùng cắm trại với cha con họ', '2020-10-27'),
(9, 4, 'Đại Dịch Xác Sống là câu chuyện đấu tranh để sinh tồn đầy kịch tính của nam thanh niên Aidan, khi bỗng một ngày những người hàng xóm xung quanh anh bị nhiễm một chủng virus lạ và trở thành xác sống. Bị cô lập trong căn hộ với lượng thức ăn có giới hạn, Aidan phải lựa chọn giữa việc cố thủ tại đây hoặc ra ngoài tìm kiếm sự trợ giúp giữa sự bủa vây của lũ quái vật khát máu.', '2020-10-29'),
(10, 4, 'Trong buổi họp mặt của nhóm bạn thân, một thành viên bất ngờ đề xuất trò chơi chia sẻ điện thoại nhằm tăng tinh thần “đoàn kết”. Từ đó, những góc khuất của từng người dần hé lộ và khiến cho mối quan hệ vốn khắng khít của họ bắt đầu lay chuyển', '2020-10-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim_phong_xuat`
--

CREATE TABLE `phim_phong_xuat` (
  `ID_Phim` int(11) NOT NULL,
  `ID_Phong` int(11) NOT NULL,
  `ID_XuatChieu` int(11) NOT NULL,
  `Ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phim_phong_xuat`
--

INSERT INTO `phim_phong_xuat` (`ID_Phim`, `ID_Phong`, `ID_XuatChieu`, `Ngay`) VALUES
(1, 1, 1, '2020-10-17'),
(1, 1, 2, '2020-10-17'),
(1, 1, 9, '2020-10-17'),
(1, 1, 21, '2020-11-12'),
(1, 1, 22, '2020-11-12'),
(1, 1, 27, '2020-11-14'),
(1, 1, 28, '2020-11-23'),
(1, 1, 29, '2020-12-05'),
(1, 1, 30, '2020-12-07'),
(1, 1, 31, '2020-12-08'),
(1, 1, 32, '2020-12-09'),
(1, 1, 35, '2020-12-18'),
(1, 1, 36, '2020-12-19'),
(1, 1, 37, '2020-12-20'),
(1, 1, 38, '2020-12-21'),
(1, 1, 39, '2020-12-23'),
(1, 1, 40, '2020-12-26'),
(1, 1, 41, '2020-12-27'),
(1, 1, 42, '2020-12-27'),
(1, 1, 43, '2020-12-27'),
(1, 1, 44, '2020-12-27'),
(1, 1, 45, '2021-01-06'),
(1, 1, 46, '2021-01-08'),
(1, 2, 8, '2020-10-25'),
(1, 3, 19, '2020-11-02'),
(1, 3, 20, '2020-11-03'),
(1, 4, 10, '2020-10-27'),
(2, 1, 18, '2020-11-01'),
(2, 1, 33, '2020-12-14'),
(2, 2, 22, '2020-11-12'),
(3, 1, 8, '2020-10-25'),
(3, 3, 13, '2020-10-29'),
(3, 3, 13, '2020-10-30'),
(3, 3, 34, '2020-12-15'),
(4, 2, 16, '2020-10-31'),
(4, 2, 17, '2020-10-31'),
(4, 4, 3, '2020-10-24'),
(5, 2, 13, '2020-10-30'),
(5, 2, 14, '2020-10-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `ID` int(11) NOT NULL,
  `TenPhong` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`ID`, `TenPhong`) VALUES
(1, 'Phòng 1'),
(2, 'Phong 2'),
(3, 'Phòng 3'),
(4, 'Phòng 4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_lichchieu`
--

CREATE TABLE `phong_lichchieu` (
  `ID_Phong` int(11) NOT NULL,
  `ID_LichChieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phong_lichchieu`
--

INSERT INTO `phong_lichchieu` (`ID_Phong`, `ID_LichChieu`) VALUES
(1, 1),
(1, 9),
(1, 15),
(1, 18),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(2, 1),
(2, 9),
(2, 13),
(2, 14),
(3, 12),
(3, 16),
(3, 17),
(3, 33),
(4, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_rap`
--

CREATE TABLE `phong_rap` (
  `ID_Phong` int(11) NOT NULL,
  `ID_Rap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phong_rap`
--

INSERT INTO `phong_rap` (`ID_Phong`, `ID_Rap`) VALUES
(1, 1),
(1, 2),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(3, 1),
(3, 2),
(3, 5),
(4, 1),
(4, 2),
(4, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rapphim`
--

CREATE TABLE `rapphim` (
  `ID` int(11) NOT NULL,
  `TenRap` varchar(200) NOT NULL,
  `Hinh` varchar(200) NOT NULL,
  `DiaChi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rapphim`
--

INSERT INTO `rapphim` (`ID`, `TenRap`, `Hinh`, `DiaChi`) VALUES
(1, 'Cinema Hùng Vương Plaza', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap1.jpg', 'Tầng 7 | Hùng Vương Plaza 126 Hùng Vương Quận 5 Tp. Hồ Chí Minh'),
(2, 'Cinema Vivo City', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap2.jpg', 'Lầu 5, Trung tâm thương mại SC VivoCity - 1058 Nguyễn Văn Linh, Quận 7'),
(3, 'Cinemas Trường Sơn', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap3.jpg', 'Tầng 10, Tòa nhà Vietjet Plaza, 60A Trường Sơn, P.2, Q. Tân Bình, TP.HCM, Việt Nam'),
(4, 'Cinemas Hoàng Văn Thụ', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap4.jpg', 'Tầng 1 và 2, Gala Center, số 415, Hoàng Văn Thụ, Phường 2, Quận Tân Bình, TPHCM'),
(5, 'Cinemas Sư Vạn Hạnh', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap5.jpg', 'Tầng 6, Vạn Hạnh Mall, 11 Sư Vạn Hạnh, Phường 12, Quận 10'),
(6, 'Cinemas Crescent Mall', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap6.jpg', 'Lầu 5, Crescent Mall Đại lộ Nguyễn Văn Linh, Phú Mỹ Hưng Quận 7 TP. Hồ Chí Minh'),
(7, 'Cinemas Pearl Plaza\r\n', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap7.jpg', 'Tầng 5, Pearl Plaza, 561A Điện Biên Phủ, P.25, Q.Bình Thạnh, TP.HCM'),
(8, 'Cinemas Pandora City', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap8.jpg', 'Lầu 3, Pandora City 1/1 Trường Chinh Quận Tân Phú TP. Hồ Chí Minh'),
(9, 'Cinemas Aeon Bình Tân', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap9.jpg', 'Tầng 3, Trung tâm thương mại Aeon Mall Bình Tân, Số 1 đường số 17A, khu phố 11, phường Bình Trị Đông B, quận Bình Tân, TPHCM'),
(10, 'Cinemas Thảo Điền Pearl', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap10.jpg', 'Tầng 2, Thảo Điền Mall, 12 Quốc Hương, Phường Thảo Điền, Quận 2, TP. Hồ Chí Minh'),
(11, 'Cinemas Vincom Center Landmark 81', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap11.jpg', 'Tầng B1 , TTTM Vincom Center Landmark 81, 772 Điện Biên Phủ, P.22, Q. Bình Thạnh, HCM'),
(12, 'Cinemas Vincom Thủ Đức', 'https://trinhphuoctin.000webhostapp.com/imgAPPDat_phim/imgRapPhim/Rap12.jpg', 'Tầng 5, TTTM Vincom Thủ Đức, 216 Võ Văn Ngân, Phường Bình Thọ, Quận Thủ Đức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suatchieu`
--

CREATE TABLE `suatchieu` (
  `ID` int(11) NOT NULL,
  `Gio` time NOT NULL,
  `ID_LichChieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `suatchieu`
--

INSERT INTO `suatchieu` (`ID`, `Gio`, `ID_LichChieu`) VALUES
(1, '20:30:00', 1),
(2, '21:30:00', 1),
(3, '18:15:00', 2),
(4, '15:30:00', 2),
(5, '17:30:00', 7),
(6, '22:00:00', 6),
(7, '20:30:00', 8),
(8, '14:00:00', 9),
(9, '18:15:00', 1),
(10, '21:00:00', 11),
(13, '21:00:00', 13),
(14, '18:15:00', 13),
(15, '20:00:00', 13),
(16, '19:00:00', 14),
(17, '20:00:00', 14),
(18, '17:00:00', 15),
(19, '19:00:00', 16),
(20, '15:00:00', 17),
(21, '20:30:00', 18),
(22, '22:00:00', 18),
(27, '17:24:00', 26),
(28, '18:55:00', 27),
(29, '16:04:00', 28),
(30, '10:31:00', 29),
(31, '15:00:00', 30),
(32, '15:18:00', 31),
(33, '22:21:00', 32),
(34, '22:23:00', 33),
(35, '15:07:00', 34),
(36, '10:33:00', 35),
(37, '18:27:00', 36),
(38, '09:49:00', 37),
(39, '16:12:00', 38),
(40, '21:00:00', 39),
(41, '12:00:00', 40),
(42, '14:00:00', 41),
(43, '16:00:00', 42),
(44, '13:27:00', 43),
(45, '19:26:00', 44),
(46, '20:55:00', 45);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vedat`
--

CREATE TABLE `vedat` (
  `ID` int(11) NOT NULL,
  `NgayDat` date NOT NULL,
  `ID_Suat` int(11) NOT NULL,
  `ID_Ghe` int(11) NOT NULL,
  `ID_Phim` int(11) NOT NULL,
  `ID_KhachHang` int(11) NOT NULL,
  `ID_Rap` int(11) NOT NULL,
  `ID_HoaDon` int(11) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `ID_Phong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vedat`
--

INSERT INTO `vedat` (`ID`, `NgayDat`, `ID_Suat`, `ID_Ghe`, `ID_Phim`, `ID_KhachHang`, `ID_Rap`, `ID_HoaDon`, `Status`, `ID_Phong`) VALUES
(2, '2020-11-03', 20, 8, 1, 1, 1, 16, 'Đã đặt', 3),
(3, '2020-12-05', 29, 5, 1, 1, 1, 17, 'Đã đặt', 1),
(4, '2020-12-05', 29, 3, 1, 1, 1, 18, 'Đã đặt', 1),
(5, '2020-12-05', 29, 8, 1, 1, 1, 19, 'Đã đặt', 1),
(6, '2020-12-05', 29, 18, 1, 1, 1, 20, 'undefined', 1),
(7, '2020-12-05', 29, 17, 1, 1, 1, 21, 'undefined', 1),
(8, '2020-12-05', 29, 28, 1, 1, 1, 22, 'Đã đặt', 1),
(9, '2020-12-07', 30, 2, 1, 1, 1, 23, 'Đã đặt', 1),
(10, '2020-12-07', 30, 11, 1, 1, 1, 24, 'Đã đặt', 1),
(11, '2020-12-07', 30, 11, 1, 1, 1, 25, 'Đã hủy', 1),
(12, '2020-12-08', 31, 2, 1, 1, 1, 26, 'Đã hủy', 1),
(13, '2020-12-08', 31, 4, 1, 1, 1, 27, 'Đã hủy', 1),
(14, '2020-12-08', 31, 4, 1, 1, 1, 28, 'Đã hủy', 1),
(15, '2020-12-08', 31, 4, 1, 1, 1, 29, 'Đã đặt', 1),
(16, '2020-12-08', 31, 4, 1, 1, 1, 30, 'Đã đặt', 1),
(17, '2020-12-08', 31, 4, 1, 1, 1, 31, 'Đã hủy', 1),
(18, '2020-12-08', 31, 4, 1, 1, 1, 32, 'Đã đặt', 1),
(19, '2020-12-08', 31, 3, 1, 1, 1, 33, 'Đã hủy', 1),
(20, '2020-12-08', 31, 3, 1, 1, 1, 34, 'Đã hủy', 1),
(21, '2020-12-08', 31, 3, 1, 1, 1, 36, 'Đã đặt', 1),
(22, '2020-12-08', 31, 3, 1, 1, 1, 38, 'Đã đặt', 1),
(23, '2020-12-08', 31, 3, 1, 1, 1, 38, 'Đã đặt', 1),
(24, '2020-12-08', 31, 3, 1, 1, 1, 38, 'Đã đặt', 1),
(25, '2020-12-08', 31, 3, 1, 1, 1, 39, 'Đã đặt', 1),
(26, '2020-12-08', 31, 3, 1, 1, 1, 40, 'Đã hủy', 1),
(27, '2020-12-08', 31, 11, 1, 1, 1, 41, 'Đã hủy', 1),
(28, '2020-12-09', 32, 4, 1, 1, 2, 42, 'Đã hủy', 1),
(29, '2020-12-14', 33, 2, 2, 1, 1, 43, 'Đã đặt', 1),
(30, '2020-12-14', 33, 3, 2, 1, 1, 44, 'Đã hủy', 1),
(31, '2020-12-15', 34, 8, 3, 1, 1, 45, 'Đã hủy', 3),
(32, '2020-12-15', 34, 2, 3, 1, 1, 46, 'Đã hủy', 3),
(33, '2020-12-15', 34, 2, 3, 1, 1, 47, 'Đã hủy', 3),
(34, '2020-12-18', 35, 4, 1, 1, 1, 48, 'Đã đặt', 1),
(35, '2020-12-18', 35, 28, 1, 1, 1, 49, 'Đã hủy', 1),
(36, '2020-12-19', 36, 2, 1, 2, 1, 50, 'Đã hủy', 1),
(37, '2020-12-19', 36, 18, 1, 2, 1, 51, 'Đã hủy', 1),
(38, '2020-12-19', 36, 27, 1, 2, 1, 52, 'Đã hủy', 1),
(39, '2020-12-19', 36, 18, 1, 2, 1, 53, 'Đã hủy', 1),
(40, '2020-12-19', 36, 4, 1, 1, 1, 54, 'Đã hủy', 1),
(41, '2020-12-20', 37, 40, 1, 8, 1, 55, 'Đã hủy', 1),
(42, '2020-12-20', 37, 2, 1, 1, 1, 56, 'Đã hủy', 1),
(43, '2020-12-20', 37, 3, 1, 1, 1, 57, 'Đã hủy', 1),
(44, '2020-12-20', 37, 3, 1, 1, 1, 58, 'Đã hủy', 1),
(45, '2020-12-21', 38, 18, 1, 1, 1, 59, 'Đã hủy', 1),
(46, '2020-12-21', 38, 3, 1, 1, 1, 60, 'Đã hủy', 1),
(47, '2020-12-21', 38, 3, 1, 1, 1, 61, 'Đã hủy', 1),
(48, '2020-12-21', 38, 9, 1, 1, 1, 62, 'Đã hủy', 1),
(49, '2020-12-21', 38, 3, 1, 1, 1, 63, 'Đã hủy', 1),
(50, '2020-12-21', 38, 3, 1, 1, 1, 64, 'Đã đặt', 1),
(51, '2020-12-21', 38, 2, 1, 1, 1, 65, 'Đã đặt', 1),
(52, '2020-12-21', 38, 18, 1, 1, 1, 66, 'Đã đặt', 1),
(53, '2020-12-21', 38, 18, 1, 1, 1, 67, 'Đã hủy', 1),
(54, '2020-12-21', 38, 26, 1, 1, 1, 68, 'Đã hủy', 1),
(55, '2020-12-27', 42, 3, 1, 2, 1, 69, 'Đã hủy', 1),
(56, '2020-12-27', 43, 3, 1, 2, 1, 70, 'Đã hủy', 1),
(57, '2020-12-27', 43, 5, 1, 1, 1, 71, 'Đã đặt', 1),
(58, '2020-12-27', 43, 17, 1, 1, 1, 72, 'Đã đặt', 1),
(59, '2021-01-06', 45, 3, 1, 1, 1, 73, 'Đã hủy', 1),
(60, '2021-01-06', 45, 3, 1, 1, 1, 74, 'Đã đặt', 1),
(61, '2021-01-06', 45, 2, 1, 1, 1, 75, 'Đã hủy', 1),
(62, '2021-01-06', 45, 4, 1, 1, 1, 76, 'Đã đặt', 1),
(63, '2021-01-06', 45, 2, 1, 1, 1, 77, 'Đã đặt', 1),
(64, '2021-01-06', 45, 2, 1, 1, 1, 78, 'Đã đặt', 1),
(65, '2021-01-06', 45, 2, 1, 1, 1, 79, 'Đã đặt', 1),
(66, '2021-01-06', 45, 10, 1, 1, 1, 80, 'Đã đặt', 1),
(67, '2021-01-08', 46, 3, 1, 1, 1, 81, 'Đã đặt', 1),
(68, '2021-01-08', 46, 4, 1, 1, 1, 82, 'Đã đặt', 1),
(69, '2021-01-08', 46, 1, 1, 1, 1, 83, 'Đã đặt', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `ghe_phong`
--
ALTER TABLE `ghe_phong`
  ADD PRIMARY KEY (`ID_Ghe`,`ID_Phong`,`ID_suatchieu`,`NgayDat`),
  ADD KEY `ID_Phong` (`ID_Phong`),
  ADD KEY `ID_suatchieu` (`ID_suatchieu`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_KhachHang` (`ID_KhachHang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Account` (`Account`);

--
-- Chỉ mục cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Rap` (`ID_Rap`);

--
-- Chỉ mục cho bảng `loaiphim`
--
ALTER TABLE `loaiphim`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `phim_lichchieu`
--
ALTER TABLE `phim_lichchieu`
  ADD PRIMARY KEY (`ID_Phim`,`ID_LichChieu`),
  ADD KEY `ID_LichChieu` (`ID_LichChieu`);

--
-- Chỉ mục cho bảng `phim_loaiphim`
--
ALTER TABLE `phim_loaiphim`
  ADD PRIMARY KEY (`ID_Phim`,`ID_Loai`),
  ADD KEY `ID_Loai` (`ID_Loai`);

--
-- Chỉ mục cho bảng `phim_phong_xuat`
--
ALTER TABLE `phim_phong_xuat`
  ADD PRIMARY KEY (`ID_Phim`,`ID_Phong`,`ID_XuatChieu`,`Ngay`),
  ADD KEY `ID_Phong` (`ID_Phong`),
  ADD KEY `ID_XuatChieu` (`ID_XuatChieu`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `phong_lichchieu`
--
ALTER TABLE `phong_lichchieu`
  ADD PRIMARY KEY (`ID_Phong`,`ID_LichChieu`),
  ADD KEY `ID_LichChieu` (`ID_LichChieu`);

--
-- Chỉ mục cho bảng `phong_rap`
--
ALTER TABLE `phong_rap`
  ADD PRIMARY KEY (`ID_Phong`,`ID_Rap`),
  ADD KEY `ID_Rap` (`ID_Rap`);

--
-- Chỉ mục cho bảng `rapphim`
--
ALTER TABLE `rapphim`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_LichChieu` (`ID_LichChieu`);

--
-- Chỉ mục cho bảng `vedat`
--
ALTER TABLE `vedat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Ghe` (`ID_Ghe`),
  ADD KEY `ID_Phim` (`ID_Phim`),
  ADD KEY `ID_KhachHang` (`ID_KhachHang`),
  ADD KEY `ID_Rap` (`ID_Rap`),
  ADD KEY `ID_Suat` (`ID_Suat`),
  ADD KEY `ID_HoaDon` (`ID_HoaDon`),
  ADD KEY `ID_Phong` (`ID_Phong`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ghe`
--
ALTER TABLE `ghe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `loaiphim`
--
ALTER TABLE `loaiphim`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `rapphim`
--
ALTER TABLE `rapphim`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `vedat`
--
ALTER TABLE `vedat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ghe_phong`
--
ALTER TABLE `ghe_phong`
  ADD CONSTRAINT `ghe_phong_ibfk_1` FOREIGN KEY (`ID_Ghe`) REFERENCES `ghe` (`ID`),
  ADD CONSTRAINT `ghe_phong_ibfk_2` FOREIGN KEY (`ID_Phong`) REFERENCES `phong` (`ID`),
  ADD CONSTRAINT `ghe_phong_ibfk_3` FOREIGN KEY (`ID_suatchieu`) REFERENCES `suatchieu` (`ID`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`ID_KhachHang`) REFERENCES `khachhang` (`ID`);

--
-- Các ràng buộc cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD CONSTRAINT `lichchieu_ibfk_1` FOREIGN KEY (`ID_Rap`) REFERENCES `rapphim` (`ID`);

--
-- Các ràng buộc cho bảng `phim_lichchieu`
--
ALTER TABLE `phim_lichchieu`
  ADD CONSTRAINT `phim_lichchieu_ibfk_1` FOREIGN KEY (`ID_LichChieu`) REFERENCES `lichchieu` (`ID`),
  ADD CONSTRAINT `phim_lichchieu_ibfk_2` FOREIGN KEY (`ID_Phim`) REFERENCES `phim` (`ID`);

--
-- Các ràng buộc cho bảng `phim_loaiphim`
--
ALTER TABLE `phim_loaiphim`
  ADD CONSTRAINT `phim_loaiphim_ibfk_1` FOREIGN KEY (`ID_Phim`) REFERENCES `phim` (`ID`),
  ADD CONSTRAINT `phim_loaiphim_ibfk_2` FOREIGN KEY (`ID_Loai`) REFERENCES `loaiphim` (`ID`);

--
-- Các ràng buộc cho bảng `phim_phong_xuat`
--
ALTER TABLE `phim_phong_xuat`
  ADD CONSTRAINT `phim_phong_xuat_ibfk_1` FOREIGN KEY (`ID_Phim`) REFERENCES `phim` (`ID`),
  ADD CONSTRAINT `phim_phong_xuat_ibfk_2` FOREIGN KEY (`ID_Phong`) REFERENCES `phong` (`ID`),
  ADD CONSTRAINT `phim_phong_xuat_ibfk_3` FOREIGN KEY (`ID_XuatChieu`) REFERENCES `suatchieu` (`ID`);

--
-- Các ràng buộc cho bảng `phong_lichchieu`
--
ALTER TABLE `phong_lichchieu`
  ADD CONSTRAINT `phong_lichchieu_ibfk_1` FOREIGN KEY (`ID_Phong`) REFERENCES `phong` (`ID`),
  ADD CONSTRAINT `phong_lichchieu_ibfk_2` FOREIGN KEY (`ID_LichChieu`) REFERENCES `lichchieu` (`ID`);

--
-- Các ràng buộc cho bảng `phong_rap`
--
ALTER TABLE `phong_rap`
  ADD CONSTRAINT `phong_rap_ibfk_1` FOREIGN KEY (`ID_Phong`) REFERENCES `phong` (`ID`),
  ADD CONSTRAINT `phong_rap_ibfk_2` FOREIGN KEY (`ID_Rap`) REFERENCES `rapphim` (`ID`);

--
-- Các ràng buộc cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD CONSTRAINT `suatchieu_ibfk_1` FOREIGN KEY (`ID_LichChieu`) REFERENCES `lichchieu` (`ID`);

--
-- Các ràng buộc cho bảng `vedat`
--
ALTER TABLE `vedat`
  ADD CONSTRAINT `vedat_ibfk_1` FOREIGN KEY (`ID_Ghe`) REFERENCES `ghe` (`ID`),
  ADD CONSTRAINT `vedat_ibfk_3` FOREIGN KEY (`ID_Phim`) REFERENCES `phim` (`ID`),
  ADD CONSTRAINT `vedat_ibfk_4` FOREIGN KEY (`ID_KhachHang`) REFERENCES `khachhang` (`ID`),
  ADD CONSTRAINT `vedat_ibfk_5` FOREIGN KEY (`ID_Rap`) REFERENCES `rapphim` (`ID`),
  ADD CONSTRAINT `vedat_ibfk_6` FOREIGN KEY (`ID_Suat`) REFERENCES `suatchieu` (`ID`),
  ADD CONSTRAINT `vedat_ibfk_7` FOREIGN KEY (`ID_HoaDon`) REFERENCES `hoadon` (`ID`),
  ADD CONSTRAINT `vedat_ibfk_8` FOREIGN KEY (`ID_Phong`) REFERENCES `phong` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
