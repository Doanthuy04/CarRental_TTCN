-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2025 lúc 04:34 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbrenalcar`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `AccountId` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `FullName` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `LastLogin` char(10) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`AccountId`, `Username`, `Password`, `FullName`, `Phone`, `Email`, `RoleId`, `LastLogin`, `IsActive`) VALUES
(5, 'binh', 'd411cf68bd7f71d13fb053154f455651', 'bình', '4234234', 'binh@gmail.com', 3, '2025-12-21', 0),
(6, 'quan123', 'd0afd43f169f68af6d56cf454d74b167', 'Đậu Công Quân', '12334', 'quan123@gmail.com', 3, '2025-12-21', 1),
(7, 'Admin', '93893acf0c705336677073e806d09e5c', 'Administrator', NULL, 'admin@system.local', 1, '2025-12-22', 1),
(8, 'thuy123', '72631d8a190e188b4e116163d0c04ab5', 'Doan thanh thuy', NULL, 'thuy123@gmail.com', 3, '2025-12-22', 1),
(9, 'quan1', '123', 'thuy', '12334', 'quan@gmail.com', 2, NULL, 1),
(10, 'dauquan', 'd0afd43f169f68af6d56cf454d74b167', 'Đậu Công Quân', '12334', 'dauquan@gmail.com', 2, NULL, 1),
(11, 'thuy', 'd0afd43f169f68af6d56cf454d74b167', 'thuy', '12334', 'thuy@gmail.com', 2, NULL, 1),
(12, 'Q', 'd0afd43f169f68af6d56cf454d74b167', 'Nguyễn Hồng Quân', '0353675457', 'Q@gmail.com', 2, NULL, 1),
(13, 'Huyen', 'ca3ea7a65775384c0aa2249769adb543', 'Hoàng Thanh Huyền cute', '0123345678', 'Huyen@gmail.com', 2, NULL, 1),
(14, 'Dau', 'd0afd43f169f68af6d56cf454d74b167', 'Doan thanh thuy', '1234353445', 'Dau@gmailcom', 2, NULL, 1),
(15, 'T', 'd0afd43f169f68af6d56cf454d74b167', 'Doãn thị thanh thuỷ', '131243243', 'T@gmail.com', 2, NULL, 1),
(16, 'anh', 'd0afd43f169f68af6d56cf454d74b167', 'Minh Anh', NULL, 'anh@gmail.com', 2, NULL, 1),
(17, 'tt', 'd0afd43f169f68af6d56cf454d74b167', NULL, NULL, 'tt@gmail.com', 2, NULL, 1),
(19, 'bintest', 'd411cf68bd7f71d13fb053154f455651', 'binhtest1', '', 'bintest@gmail.com', 2, NULL, 1),
(20, 'binhtest1', 'd411cf68bd7f71d13fb053154f455651', 'Bình Hidro', '0339772881', 'binhtest1@gmail.com', 2, NULL, 1),
(21, 't12', 'd0afd43f169f68af6d56cf454d74b167', 'ẻgeergge', NULL, 't12@gmail.com', 2, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `BlogId` int(11) NOT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Alias` varchar(250) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Description` varchar(4000) DEFAULT NULL,
  `Detail` longtext DEFAULT NULL,
  `Image` varchar(500) DEFAULT NULL,
  `SeoTitle` varchar(250) DEFAULT NULL,
  `SeoDescription` varchar(500) DEFAULT NULL,
  `SeoKeywords` varchar(250) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(150) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(150) DEFAULT NULL,
  `AccountId` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`BlogId`, `Title`, `Alias`, `CategoryId`, `Description`, `Detail`, `Image`, `SeoTitle`, `SeoDescription`, `SeoKeywords`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `AccountId`, `IsActive`) VALUES
(3, 'Range Rover Velar 2025 Chào Sân: Hybrid cắm sạc 398 mã lực, giá từ 3,7 tỉ đồng', 'range-rover-velar-2025-chao-san-hybrid-cam-sac-398-ma-luc-gia-tu-37-ti-dong', NULL, 'Range Rover Velar bản nâng cấp chính thức trình làng tại Việt Nam: Đột phá trang bị, nâng tầm đẳng cấp SUV hạng sang.', '<p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Ngày 22-11,&nbsp;<a href=\"https://www.carmudi.vn/blog-xe-hoi/range-rover-velar-2024-gia-xe-thong-so-va-uu-dai-moi-thang-062024/\">Range Rover Velar&nbsp;</a>2025 chính thức ra mắt tại Việt Nam với 3 phiên bản: S, Dynamic SE và Dynamic HSE.</p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Cả ba phiên bản đều được trang bị hai tùy chọn động cơ, bao gồm P250 sử dụng máy 2.0L và P340 MHEV kết hợp giữa máy 3.0L và mô-tơ điện. Riêng bản cao cấp Dynamic HSE được bổ sung thêm tùy chọn động cơ P400e, một hệ thống hybrid sạc ngoài với máy 2.0L và mô-tơ điện. Mức giá khởi điểm dao động từ 3,729 tỉ đồng cho bản tiêu chuẩn và lên tới 5,689 tỉ đồng cho bản cao nhất.</p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\"><img src=\"/files/Blog/blog2-1_1.jpg\" style=\"width: 1084px;\"><br></p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Range Rover Velar 2025 thực chất là phiên bản facelift giữa chu kỳ sản phẩm, được cải tiến từ thế hệ đã ra mắt toàn cầu từ năm 2017. Những nâng cấp đáng chú ý tập trung vào thiết kế hiện đại hơn cùng các trang bị tiện nghi, nâng tầm trải nghiệm cho người dùng.</p><h2 id=\"Thi+t+k++ngo+i+th+t+c+a+Range+Rover+Velar+2025\" name=\"Thi+t+k++ngo+i+th+t+c+a+Range+Rover+Velar+2025\" style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(34, 34, 34); font-size: 20px;\">Thiết kế ngoại thất của Range Rover Velar 2025</h2><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Range Rover Velar 2025 mang đến diện mạo ngoại thất hiện đại và tinh tế. Phần đầu xe nổi bật với lưới tản nhiệt mới, lấy cảm hứng từ&nbsp;<a href=\"https://www.carmudi.vn/blog-xe-hoi/range-rover-sport-sv-edition-two-2025-bo-sung-tuy-chon-voi-mau-sac-moi/\">Range Rover</a>, tạo hiệu ứng thị giác và thẩm mỹ cao. Hệ thống đèn pha Pixel LED siêu mỏng, kết hợp với dải đèn LED ban ngày đặc trưng, mang đến vẻ ngoài sắc sảo và hiện đại.</p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\"><img src=\"/files/Blog/blog2-2_1.jpg\" style=\"width: 1084px;\"><br></p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Thân xe giữ nguyên thiết kế thanh lịch, với các đường nét mềm mại và bề mặt phẳng. Xe được bổ sung 3 màu sơn ngoại thất mới: xanh Varensine, xám Arroios và xám Zadar, cùng với 4 thiết kế mâm xe mới, tăng thêm sự lựa chọn cho khách hàng. Phần đuôi xe được tinh chỉnh với cụm đèn hậu LED 3D mới, tạo hiệu ứng ánh sáng nổi bật và liền mạch hơn so với phiên bản trước. Cản sau được thiết kế lại, tích hợp ống xả ẩn, mang đến vẻ ngoài gọn gàng và thanh lịch.</p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\"><img src=\"/files/Blog/blog2-3_1.jpg\" style=\"width: 1082px;\"><br></p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Những cải tiến này giúp Range Rover Velar 2025 duy trì phong cách sang trọng, đồng thời mang đến sự mới mẻ và hiện đại cho dòng SUV hạng sang này.</p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\"><br></p>', '/files/Blog/blog2-4_1.jpg', NULL, NULL, NULL, '2024-12-01 11:34:04', 'thanh', '2024-12-01 11:47:04', 'thanh', NULL, 1),
(7, 'Phiên bản cuối cùng của Porsche 911 Dakar: Đỉnh cao của sự đặc biệt', 'phien-ban-cuoi-cung-cua-porsche-911-dakar-dinh-cao-cua-su-dac-biet', NULL, 'Đỉnh cao của sự đặc biệt', '<h2 id=\"Thi+t+k++ngo+i+th+t+c+a+Porsche+911+Dakar\" name=\"Thi+t+k++ngo+i+th+t+c+a+Porsche+911+Dakar\" style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(34, 34, 34); font-size: 20px;\">Thiết kế ngoại thất của Porsche 911 Dakar</h2><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Chiếc&nbsp;<a href=\"https://www.carmudi.vn/blog-xe-hoi/porsche-911-gt3-2022-mau-la-mat-trang-bi-so-san-dau-tien-tai-viet-nam/\">Porsche 911</a>&nbsp;Dakar cuối cùng xuất xưởng được thiết kế ngoại thất độc đáo, tôn vinh chiến thắng tại giải đua Paris-Dakar năm 1984. Phần trên của xe được sơn màu vàng Signal, trong khi phần dưới mang sắc xanh Gentian Blue Metallic, tạo nên sự tương phản nổi bật. Hai tông màu này được ngăn cách bởi đường kẻ xanh dương nhạt Lampedusa Blue, lấy cảm hứng từ hòn đảo Lampedusa ở Địa Trung Hải.</p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\"><img src=\"/files/Blog/blog1.jpeg\" style=\"width: 1038px;\"></p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Đặc biệt, bộ mâm xe cũng được sơn màu vàng Signal, kết hợp với viền xanh Lampedusa Blue, tạo nên sự hài hòa và tinh tế. Các chi tiết bằng thép không gỉ ở cản trước, cản sau và ngưỡng cửa bên hông được sơn đen, tăng thêm vẻ mạnh mẽ cho xe. Ngoài ra, viền đèn pha cũng được trang trí bằng màu xanh Lampedusa Blue, tạo điểm nhấn độc đáo cho phần đầu xe.</p><p style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Toàn bộ quá trình sơn ngoại thất được thực hiện thủ công, thể hiện sự tỉ mỉ và đẳng cấp của Porsche trong việc cá nhân hóa sản phẩm. Thiết kế này không chỉ tôn vinh lịch sử huy hoàng của hãng mà còn mang đến cho chủ sở hữu một chiếc xe độc nhất vô nhị, kết hợp giữa di sản và phong cách hiện đại.</p>', '/files/Blog/blog1.jpeg', NULL, NULL, NULL, '2024-12-01 11:34:04', 'thanh', '2024-12-01 11:34:08', '', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogcomment`
--

CREATE TABLE `blogcomment` (
  `CommentId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Detail` varchar(200) DEFAULT NULL,
  `BlogId` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogcomment`
--

INSERT INTO `blogcomment` (`CommentId`, `Name`, `Phone`, `Email`, `CreatedDate`, `Detail`, `BlogId`, `IsActive`) VALUES
(2, 'nguyễn Hồng quân', 'Phone', 'quan@gmail.com', '2014-11-22 00:00:00', 'this is blog details', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carimages`
--

CREATE TABLE `carimages` (
  `ImageID` int(11) NOT NULL,
  `Image1` longtext DEFAULT NULL,
  `CarID` int(11) DEFAULT NULL,
  `Image2` longtext DEFAULT NULL,
  `Image3` longtext DEFAULT NULL,
  `Image4` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carimages`
--

INSERT INTO `carimages` (`ImageID`, `Image1`, `CarID`, `Image2`, `Image3`, `Image4`) VALUES
(1, '/files/Blog/blog2-2_1.jpg', 14, NULL, NULL, NULL),
(2, '/files/Blog/blog1.jpeg', 15, NULL, NULL, NULL),
(3, '/files/Blog/blog1.jpeg', 16, NULL, NULL, NULL),
(6, '/files/Carimage/car_img2.png', 17, NULL, NULL, NULL),
(7, '/files/Carimage/car_img3.png', 18, NULL, NULL, NULL),
(8, '/files/Blog/blog2-2_1.jpg', 19, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carrentalorders`
--

CREATE TABLE `carrentalorders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `Deposit` decimal(18,2) DEFAULT NULL,
  `Payment` decimal(18,2) DEFAULT NULL,
  `StatusID` int(11) DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `Notes` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carrentalorders`
--

INSERT INTO `carrentalorders` (`OrderID`, `CustomerID`, `OrderDate`, `Deposit`, `Payment`, `StatusID`, `ReturnDate`, `Notes`) VALUES
(1030, 1, '2025-12-21', 240000.00, 560000.00, 2, NULL, ''),
(1031, 6, '2025-12-21', 120.00, 280.00, 2, NULL, 'th'),
(1032, 6, '2025-12-21', 1500.00, 3500.00, 2, NULL, 'ưg'),
(1033, 5, '2025-12-21', 18000.00, 42000.00, 2, NULL, ''),
(1034, 5, '2025-12-22', 9000.00, 21000.00, 2, NULL, ''),
(1035, 5, '2025-12-22', 60000.00, 140000.00, 1, NULL, ''),
(1036, 1, '2025-12-22', 96.90, 226.10, 2, NULL, ''),
(1037, 1017, '2025-12-22', 193.80, 452.20, 2, NULL, ''),
(1038, 1017, '2025-12-22', 96.90, 226.10, 2, NULL, ''),
(1039, 1017, '2025-12-22', 290.70, 678.30, 1, NULL, ''),
(1040, 1, '2025-12-22', 3000.00, 7000.00, 1, NULL, ''),
(1041, 1, '2025-12-22', 720.00, 1680.00, 1, NULL, ''),
(1042, 8, '2025-12-22', 90000.00, 210000.00, 1, NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carreviews`
--

CREATE TABLE `carreviews` (
  `CarReviewID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Detail` varchar(200) DEFAULT NULL,
  `CarID` int(11) DEFAULT NULL,
  `Star` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carreviews`
--

INSERT INTO `carreviews` (`CarReviewID`, `Name`, `Phone`, `Email`, `CreatedDate`, `Detail`, `CarID`, `Star`, `IsActive`) VALUES
(1, 'NQuân', '1234', 'Q@gmail.com', '2024-12-22 00:00:00', 'sản phẩm tốt', 1, 5, 1),
(2, 'Nthanh', '123', 'thnh@gmai.com', '2023-12-22 00:00:00', 'xe thơm', 1, 3, 1),
(3, 'quan', NULL, NULL, '2024-12-02 16:09:09', '123', 1, NULL, NULL),
(9, 'ef', NULL, NULL, '2024-12-02 19:58:47', 'ưqđư', 13, 2, NULL),
(10, 'quan', NULL, 'quan@gmail.com', '2024-12-02 20:09:08', 'sản phẩm 100 điểm', 13, 0, NULL),
(11, 'q', NULL, 'q', '2024-12-02 20:10:43', 'q', 13, 5, NULL),
(12, 'đư', NULL, 'dưqdư', '2024-12-02 20:12:43', 'qđư', 12, 4, NULL),
(13, 'ưđ', NULL, 'ưdqưd', '2024-12-02 20:14:37', 'qưđ', 12, 0, NULL),
(14, 'dfvdfv', NULL, 'vdfvdf', '2024-12-02 20:14:49', 'vvdf', 12, 0, NULL),
(15, 'dfdf', NULL, 'fsdf', '2024-12-02 20:15:51', 'sdfsdf', 12, 5, NULL),
(16, 'q', NULL, 'q', '2024-12-02 20:37:49', 'q', 13, 0, NULL),
(17, 'nguyễn hồng quân', NULL, 'nguyenquandc37@gmail.com', '2024-12-02 20:38:27', 'bình luận thật là có đầu óc', 13, 0, NULL),
(18, 'ưdf', NULL, 'fwe', '2024-12-02 20:38:41', 'few', 13, 0, NULL),
(19, 'tung', NULL, 'tung@gmail.com', '2024-12-07 19:54:59', 'xe sạch sẽ ,xe quay lại thuê nấu cần', 11, 5, NULL),
(20, 'hanh', NULL, 'hanh@gmail.com', '2024-12-14 12:03:37', 'hanh123', 11, 0, NULL),
(21, '1', NULL, '1', '2024-12-14 12:11:57', '1', 11, 0, NULL),
(22, '2', NULL, '2', '2024-12-14 12:15:31', '2', 11, 0, NULL),
(23, '3', NULL, '3', '2024-12-14 12:15:58', '3', 11, 0, NULL),
(24, 'binh', NULL, 'binh@gmail.com', '2024-12-14 13:01:28', 'binh', 9, 5, NULL),
(25, 'thuy', NULL, 'thuy@gmail.com', '2024-12-14 13:32:32', 'xe thom tho sach se', 10, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cars`
--

CREATE TABLE `cars` (
  `CarID` int(11) NOT NULL,
  `CarName` varchar(100) DEFAULT NULL,
  `Seat` int(11) DEFAULT NULL,
  `LicensePlate` varchar(20) DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Model` int(11) DEFAULT NULL,
  `Rate` double DEFAULT NULL,
  `CarBrand` varchar(50) DEFAULT NULL,
  `Image` longtext DEFAULT NULL,
  `SalePrice` decimal(18,2) DEFAULT NULL,
  `Alias` varchar(50) DEFAULT NULL,
  `IsSale` tinyint(1) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `Details` longtext DEFAULT NULL,
  `Descriptions` longtext DEFAULT NULL,
  `TypeID` int(11) DEFAULT NULL,
  `OwnerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cars`
--

INSERT INTO `cars` (`CarID`, `CarName`, `Seat`, `LicensePlate`, `Price`, `Color`, `Model`, `Rate`, `CarBrand`, `Image`, `SalePrice`, `Alias`, `IsSale`, `IsActive`, `Details`, `Descriptions`, `TypeID`, `OwnerID`) VALUES
(1, 'MAZDA CX8 LUXURY 2021', NULL, '37a', 300000.00, 'red', 2013, 4, 'Mec', '/files/Carimage/car-rent-6.png', 250000.00, 'mazda-cx8-luxury-2021', 0, 0, '<pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\">Mazda CX8 7 chỗ cao nhất phân khúc tại Việt Nam, xe mới 2021 giá 1.2 tỷ vì xe đi gia đình nên giữ kỹ, luôn vệ sinh xe sạch sẽ thơm khi nhận xe, đảm bảo đi xa không bị say xe &amp; mệt.\n+ Nội thất da Nappa cừu non sang trọng 0 lỗi thời, có sửi ấm ghế.\n+ Gạt gương tự động khi có mưa, hiển thị tốc độ trên kính lái.\n+ Xe số tự động nhiều công nghệ mới tiện lợi: LED nội thất 64 màu , Auto hold, 4 chế độ chạy từ êm ái đến sport tăng tốc mạnh mẽ, ghế chỉnh điện, loa Bose xịn nghe cực hay như Mec, đèn chiếu siêu sáng tự động, Cruise control giữ tốc độ chạy trên cao tốc.\n+ Xe được phủ nano ceramic bóng sáng như mới mua hôm qua, nhìn bắt mắt sang trọng. (Đặt cọc xe ngay AC nhé)\n+ Điều khiển giọng nói mở đúng bài nhạc ưa thích và dẫn đường đến như google (Apple carplay, Auto android)\n*** Trang bị cao cấp thêm của chủ xe: Dán film cách nhiệt Icool siêu cấp giúp giảm tia UV 99% nên xe rất mát và tiết kiệm xăng, 0 cháy rát hại da mặt hoặc tay, có bệ điện thoại-ipad, sàn thảm 3D sạch đẹp, có đủ dây sạc điện thoại, TK Epass khi qua trạm cao tốc làn ETC, bảo hiểm. Áp suất lốp cảnh báo 4 bánh xe nếu xì hơi biết ngay để có phương án kịp thời.\n+ Xe gầm cao đi được nhiều địa hình, đầm xe máy bốc 2,5L ít hao xăng, 2 dàn lạnh độc lập hàng ghế 123\n+ Cốp xe tự động, đá cốp. Không đi 7 người thì hàng 3 rộng đểđồ rất thoải mái cho gia đình nhiều vali.\n+ Xe mới được bảo dưỡng định kỳ nên hạn chế trục trặc 0 bị dừng giữa đường &amp; nơi vắng vẻ đêm khuya.\n*** Bạn sẽ có chuyến đi vui hơn khi đi xe sạch êm ái không mùi hôi tránh gây say xe ( rất nhiều khách hàng đã kiểm chứng đánh giá 5 sao)\nXin chào Anh Chị, hy vọng được đồng hành cùng gia đình mình trải nghiệm kỳ nghỉ vui vẻ và đầy tiếng cười hạnh phúc 100%\n- Cho thuê xe theo giờ, tuần, tháng giá tốt nhất (có bổ trợ tập lái cuối tuần. Cafe khi giới thiệu)\nCòn chần chừ gì nữa AC ơi. Giá thuê tốt nhất thị trường rồi AC nha. \nXác nhận thuê liền đi ạ</pre>', '• Quận Bình Thạnh, TP. Hồ Chí Minh', 2, NULL),
(2, 'TOYOTA VELOZ CROSS 2022', NULL, '112a', 600000.00, 'blue', 2015, 5, 'mec', '/files/Carimage/car-rent-4.png', 400000.00, 'toyota-veloz-cross-2022', 0, 1, '<pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\">TOYOTA VELOZ CROSS 2022</pre>', 'TOYOTA VELOZ CROSS 2022', 6, NULL),
(3, 'CHEVROLET SPARK 2013', NULL, '23er', 700000.00, 'red', 2015, 5, NULL, '/files/Carimage/car-rent-1.png', 600000.00, 'chevrolet-spark-2013', 0, 1, '<pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\">CHEVROLET SPARK 2013\nSố tự động, Nội thất sạch sẽ, camera trước sau, căn lề, màn hình DVD , cảnh báo tốc độ và chỉ dẫn hành trình đi lại…</pre>', ' Quận 1, TP. Hồ Chí Minh', 3, NULL),
(4, 'MITSUBISHI XPANDER 2021', NULL, '23er', 800000.00, 'red', 2015, 1, NULL, '/files/Carimage/car_img1.png', 700000.00, 'mitsubishi-xpander-2021', 0, 1, '<pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\">Xe mới đăng kí 2/2022. Mua kết hợp đi gia đình và cho thuê. Ưu tiên gia đình hàng đầu nên đảm bảo sạch sẽ, cho khách hàng có những chuyến du lịch thú vị  cùng người thân của mình.</pre>', ' Quận 4, TP. Hồ Chí Minh', 1, NULL),
(8, 'MITSUBISHI XPANDER CROSS 2024', NULL, NULL, 1000000.00, NULL, NULL, 5, NULL, '/files/Carimage/car_img1.png', 500000.00, 'mitsubishi-xpander-cross-2024', 0, 1, '<pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\">MITSUBISHI XPANDER CROSS (AT) số tự động đăng ký tháng 06/2024\nXe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách.\nXe rộng rãi, an toàn, tiện nghi, phù hợp cho gia đình du lịch.\nXe trang bị hệ thống cảm biến lùi, gạt mưa tự động, đèn pha tự động, camera hành trình, hệ thống giải trí AV cùng nhiều tiện nghi khác…</pre>', 'Quận 4, TP. Hồ Chí Minh', 1, NULL),
(9, 'VINFAST VF E34 2022', NULL, NULL, 3400000.00, NULL, NULL, NULL, NULL, '/files/Carimage/car_img2.png', 200000.00, 'vinfast-vf-e34-2022', 1, 1, '<div class=\"info-car-desc\" bis_skin_checked=\"1\" style=\"margin: 24px 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Manrope, &quot;Encode Sans Expanded&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; display: flex; flex-direction: column; scroll-margin-top: 24px; color: rgb(0, 0, 0);\"><pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\"> Xe phân khúc C-SUV rộng rãi hàng sau. Xe gia đình mới đẹp. Tiết kiệm hơn xe xăng\nXe trang bị hàng loạt tính năng như sạc cực nhanh tại trạm sạc Vinfast toàn quốc, an toàn nhiều túi khí, camera 360, cảm biến va chạm, camera lùi, áp suất lốp, gương chỉnh điện tự gập khi khóa, cốp điện đóng mở bằng nút bấm, trợ lý ảo kể chuyện cười, màn hình trung tâm to, hỗ trợ Android Auto, được chủ xe trang bị film 3m xịn cách âm ổn. led gầm tăng sáng vào đêm hay sương mù khí đến tây nguyên...\nĐặc biệt: Chủ xe có ưu đãi thêm cho khách thuê xe từ lần 2 trở đi nếu lần 1 được chủ xe đánh giá lái xe và giữ gìn xe tốt.\n</pre><div><br></div></div><p><br></p>', 'Quận 1, TP. Hồ Chí Minh', 7, NULL),
(10, 'HONDA CRV L 2020', NULL, NULL, 2300000.00, NULL, NULL, NULL, NULL, '/files/Carimage/car-rent-4.png', 200000.00, 'honda-crv-l-2020', 1, 0, '<pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\">HONDA CRV L (AT) số tự động đăng ký tháng 08/2020\nXe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách.\nXe rộng rãi, an toàn, tiện nghi, phù hợp cho gia đình du lịch.\nXe trang bị hệ thống cảm biến lùi, gạt mưa tự động, đèn pha tự động, camera hành trình, hệ thống giải trí AV cùng nhiều tiện nghi khác…</pre>', 'Quận 4, TP. Hồ Chí Minh', 6, NULL),
(11, 'KIA CARNIVAL PREMIUM 2023', NULL, '23er', 1000000.00, 'red', 2015, 4, 'toyota', '/files/Carimage/car-rent-3.png', 500000.00, 'kia-carnival-premium-2023', 0, 1, '<pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\">Xe mới đẹp</pre>', 'Quận 3, TP. Hồ Chí Minh', 8, NULL),
(12, 'TOYOTA YARIS 2013', NULL, '334', 600000.00, 'red', 2015, 5, 'toyota', '/files/Carimage/carousel-2.jpg', 400000.00, 'toyota-yaris-2013', 1, 0, '<pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\">Xe Toyota 5 chỗ số tự động dễ dàng sử dụng. Phù hợp cho việc chạy trong Thành phố, cho gia đình, nội thất nguyên bản, có màn hình cảnh báo tốc độ và điều hướng, tiết kiệm xăng.\nXe có dán cách nhiệt, vệ sinh, khử mùi sạch sẽ.</pre>', 'Quận 4, TP. Hồ Chí Minh', 3, NULL),
(13, 'HYUNDAI ACCENT 2023', NULL, '123a', 200000.00, 'blue', 2014, 5, 'toyota', '/files/Carimage/car-rent-5.png', 100000.00, 'hyundai-accent-2023', 1, 0, '<pre class=\"\" style=\"margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);\">Huyndai Accent AT phiên bản Đặt Biệt 2023.\nXe màu đỏ nổi bật, động cơ 1.4 lít số tự động.\nXe được trang bị hệ thống điều hoà tự động, đề nổ từ xa.\nMàng hình cảm ứng 12inch, có kết nối Android Auto - Apple Carplay. Kế nối Blubletooh với điện thoại.\nVới bản đặt biệt xe có hệ thông Gas tự động Cruise Control.\nĐặt biệt xe có cửa sổ trời tự động thoáng mát.\nThời gian có thể linh động thoải mái cho khách hàng nhận xe và trả xe.</pre>', 'Quận 4, TP. Hồ Chí Minh', 5, NULL),
(14, 'rdas', 4, '1234', 30000.00, '4A7D4C', 2002, 5, '2fq1r', '/files/Blog/blog2-2_1.jpg', 200.00, 'rdas', 0, 0, 'ehy4', 'êyh', 3, 6),
(15, 'sàdj', 6, '216313', 3000.00, 'xanh', 1009, 4, 'thq', '/files/Blog/blog1.jpeg', 1000.00, 'sadj', 0, 0, 'tưt', 'thăewtw', 1, 6),
(18, 'xe1', 3, '312312', 20000.00, 'đỏ', 2021, 4, 'mec', '/files/Carimage/car_img3.png', 323.00, 'xe1', 0, 0, '321312', '321313', 2, 5),
(19, 'o to', NULL, '12345', 500000.00, 'do', 2003, 5, 'honda', ' /files/Blog/blog2-2_1.jpg', 300000.00, 'o-to', 1, 1, 'có 4 chỗ, màu đỏ', 'xe màu đỏ', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartypes`
--

CREATE TABLE `cartypes` (
  `TypeID` int(11) NOT NULL,
  `CarTypeName` varchar(100) DEFAULT NULL,
  `Seats` int(11) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cartypes`
--

INSERT INTO `cartypes` (`TypeID`, `CarTypeName`, `Seats`, `Manufacturer`, `Image`) VALUES
(1, 'Mini Class Vehicles', 4, 'pinlk', 'A.jpg'),
(2, 'Small Class Vehicles', NULL, NULL, 'B.jpg'),
(3, 'Sub-Medium Class Vehicles', NULL, NULL, 'C.jpg'),
(4, 'Top-Middle Class Vehicles', NULL, NULL, 'D.jpg'),
(5, 'Upper Class Vehicles', NULL, NULL, 'E.jpg'),
(6, 'Luxury Class Vehicles', NULL, NULL, 'F.jpg'),
(7, 'Multi Purpose Cars', NULL, NULL, 'M.jpg'),
(8, 'Crossover Utility Vehicle ', NULL, NULL, 'J.jpg'),
(9, 'Super Luxury Vehicle', NULL, NULL, 'S.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `ContactId` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `IsRead` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(150) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`ContactId`, `Name`, `Phone`, `Email`, `Message`, `IsRead`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 'quan', '123', NULL, '123', NULL, '2024-12-02 12:21:50', NULL, NULL, NULL),
(2, 'hanh', '1234', NULL, '1244', NULL, '2024-12-02 12:24:18', NULL, NULL, NULL),
(3, 'quan', '03534682', NULL, 'liên hệ với tôi ngay', NULL, '2024-12-02 14:21:59', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contract`
--

CREATE TABLE `contract` (
  `ContractID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `GeneralTerms` longtext DEFAULT NULL,
  `SpecificTerms` longtext DEFAULT NULL,
  `AdvancePayment` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contractdetails`
--

CREATE TABLE `contractdetails` (
  `ContractDetailID` int(11) NOT NULL,
  `ContractID` int(11) NOT NULL,
  `CarTypeID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `ReceiveDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `Notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contractsettlementdetails`
--

CREATE TABLE `contractsettlementdetails` (
  `SettlementDetailID` int(11) NOT NULL,
  `SettlementID` int(11) NOT NULL,
  `CarID` int(11) NOT NULL,
  `ReceiveDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `Total` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contractsettlements`
--

CREATE TABLE `contractsettlements` (
  `SettlementID` int(11) NOT NULL,
  `ContractID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `TotalCarsRented` int(11) DEFAULT NULL,
  `AdvancePayment` decimal(18,2) DEFAULT NULL,
  `TotalPayment` decimal(18,2) DEFAULT NULL,
  `PaidAmount` decimal(18,2) DEFAULT NULL,
  `Notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `FullName` varchar(50) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DateofBirth` datetime DEFAULT NULL,
  `Address` longtext DEFAULT NULL,
  `LicenseNumber` varchar(50) DEFAULT NULL,
  `LicenseImage` longtext DEFAULT NULL,
  `IDCard` varchar(20) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `AccountNumber` varchar(50) DEFAULT NULL,
  `Bank` varchar(50) DEFAULT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  `Avartar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`CustomerID`, `FullName`, `Name`, `Password`, `Email`, `DateofBirth`, `Address`, `LicenseNumber`, `LicenseImage`, `IDCard`, `PhoneNumber`, `AccountNumber`, `Bank`, `CompanyName`, `Avartar`) VALUES
(1, 'bình', 'binh', 'd411cf68bd7f71d13fb053154f455651', 'binh@gmail.com', '2025-12-21 00:00:00', '2342', '0123456789101', 'z7312564865026_72b1ba7dd1662b7e127ff0b18e5f4fc5_20251218235607389.jpg', NULL, '4234234', NULL, NULL, NULL, NULL),
(2, NULL, 'thuy', '123', 'quan@gmail.com', NULL, 'nghệ an', NULL, NULL, NULL, '12334', NULL, NULL, NULL, NULL),
(3, 'Đậu Công Quân', 'dauquan', 'd0afd43f169f68af6d56cf454d74b167', 'dauquan@gmail.com', '2004-04-03 00:00:00', 'nghệ an', '1123456789', 'A2_20251218114951560.jpg', NULL, '12334', NULL, NULL, NULL, NULL),
(4, NULL, 'thuy', 'd0afd43f169f68af6d56cf454d74b167', 'thuy@gmail.com', NULL, 'nghệ an', NULL, NULL, NULL, '12334', NULL, NULL, NULL, NULL),
(5, 'Đậu Công Quân', 'quan', 'd0afd43f169f68af6d56cf454d74b167', 'quan123@gmail.com', '2025-12-14 00:00:00', 'nghệ an, diễn châu, quyết thành1234567', '121212321343', 'delete_20251221232537688.png', NULL, '12334', NULL, NULL, NULL, NULL),
(6, 'Nguyễn Hồng Quân', 'Nguyễn Quân 37dc', 'd0afd43f169f68af6d56cf454d74b167', 'Q@gmail.com', '2004-01-12 00:00:00', 'Xóm Quyết Thành, Xã Diễn Bich, Huyển Diễn châu, tỉnh Nghệ An', '123412341231', 'adc_20250108223225438.jpg', NULL, '0353675457', NULL, NULL, NULL, '0.00032029000144429.jpg'),
(7, NULL, 'Hoàng Thanh Huyền cute', 'ca3ea7a65775384c0aa2249769adb543', 'Huyen@gmail.com', NULL, 'Thị xã Hoàng mai, Nghệ an', NULL, NULL, NULL, '0123345678', NULL, NULL, NULL, NULL),
(8, 'Doan thanh thuy', 'Đậu Công Quân', 'd0afd43f169f68af6d56cf454d74b167', 'Dau@gmailcom', '2002-04-08 00:00:00', 'nghệ an, diễn châu, quyết thành1234567', '123456789021', 'OIP_20251222214507362.jpg', NULL, '1234353445', NULL, NULL, NULL, NULL),
(9, NULL, 'Doãn thị thanh thuỷ', 'd0afd43f169f68af6d56cf454d74b167', 'T@gmail.com', NULL, 'Nghi lộc nghệ an', NULL, NULL, NULL, '131243243', NULL, NULL, NULL, NULL),
(10, NULL, 'Minh Anh', 'd0afd43f169f68af6d56cf454d74b167', 'anh@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1010, 'Nguyễn Hồng Quân', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1012, 'Nguyễn Hồng Quân', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1013, 'Nguyễn Hồng Quân', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1014, NULL, NULL, 'd0afd43f169f68af6d56cf454d74b167', 'tt@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1015, NULL, 'ẻgeergge', 'd0afd43f169f68af6d56cf454d74b167', 't12@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1016, NULL, 'binhtest1', 'd411cf68bd7f71d13fb053154f455651', 'bintest@gmail.com', NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL),
(1017, 'Bình Hidro', 'binhtest1', 'd411cf68bd7f71d13fb053154f455651', 'binhtest1@gmail.com', '2025-12-22 00:00:00', 'Hoàng Mai, Hà Nội', '11111111111', 'flutter-app-development-roadmap-by-tarikul_20251222140115648.png', NULL, '0339772881', NULL, NULL, NULL, NULL),
(1018, 'Doan thanh thuy', 'thủy', '72631d8a190e188b4e116163d0c04ab5', 'thuy123@gmail.com', '2004-11-08 00:00:00', NULL, '123456789012', 'get_20251222213520492.png', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `MenuID` int(11) NOT NULL,
  `Title` varchar(150) DEFAULT NULL,
  `Alias` varchar(150) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Levels` int(11) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`MenuID`, `Title`, `Alias`, `Description`, `Levels`, `ParentId`, `Position`, `IsActive`) VALUES
(1, 'Trang chủ', 'home', NULL, 1, NULL, 1, 1),
(2, 'Sản phẩm', 'product', NULL, 1, NULL, 2, 1),
(3, 'Blog', 'blog', NULL, 1, NULL, 3, 1),
(4, 'Contact', 'contact', NULL, 1, NULL, 4, 1),
(6, 'Cart', 'cart', NULL, 1, NULL, 5, 1),
(14, 'New', 'news', 'tin tức', 1, 0, 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `NewsId` int(11) NOT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Alias` varchar(250) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Description` varchar(4000) DEFAULT NULL,
  `Detail` longtext DEFAULT NULL,
  `Image` varchar(500) DEFAULT NULL,
  `SeoTitle` varchar(250) DEFAULT NULL,
  `SeoDescription` varchar(500) DEFAULT NULL,
  `SeoKeywords` varchar(250) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(150) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(150) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`NewsId`, `Title`, `Alias`, `CategoryId`, `Description`, `Detail`, `Image`, `SeoTitle`, `SeoDescription`, `SeoKeywords`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `IsActive`) VALUES
(2, 'VINFAST THÔNG BÁO THAY ĐỔI TÊN GỌI PHIÊN BẢN CỦA MỘT SỐ DÒNG XE', 'vinfast-thong-bao-thay-doi-ten-goi-phien-ban-cua-mot-so-dong-xe', NULL, 'Nhằm phù hợp hơn với định hướng phát triển sản phẩm và giá trị mà từng dòng xe mang lại, VinFast trân trọng thông báo việc thay đổi tên gọi một số phiên bản xe ô tô điện. Đây không chỉ là sự thay đổi về tên gọi, mà còn là bước chuyển mình trong chiến lược, cam kết mang đến những giá trị vượt trội trên hành trình kiến tạo tương lai xanh bền vững của VinFast.', '<p><span style=\"color: rgb(60, 60, 60); font-family: Mulish, serif; font-style: italic; letter-spacing: -0.32px;\">Nhằm phù hợp hơn với định hướng phát triển sản phẩm và giá trị mà từng dòng xe mang lại, VinFast trân trọng thông báo việc thay đổi tên gọi một số phiên bản xe ô tô điện. Đây không chỉ là sự thay đổi về tên gọi, mà còn là bước chuyển mình trong chiến lược, cam kết mang đến những giá trị vượt trội trên hành trình kiến tạo tương lai xanh bền vững của VinFast.</span></p>', '/files/News/xedo.jpg', NULL, NULL, NULL, '2025-01-12 14:59:33', 'thanh', NULL, NULL, 1),
(1002, 'VINFAST THÔNG BÁO THAY ĐỔI TÊN GỌI PHIÊN BẢN CỦA MỘT SỐ DÒNG XE', 'vinfast-thong-bao-thay-doi-ten-goi-phien-ban-cua-mot-so-dong-xe', NULL, 'NNNhằm phù hợp hơn với định hướng phát triển sản phẩm và giá trị mà từng dòng xe mang lại, VinFast trân trọng thông báo việc thay đổi tên gọi một số phiên bản xe ô tô điện. Đây không chỉ là sự thay đổi về tên gọi, mà còn là bước chuyển mình trong chiến lược, cam kết mang đến những giá trị vượt trội trên hành trình kiến tạo tương lai xanh bền vững của VinFast', '<p><span style=\"color: rgb(60, 60, 60); font-family: Mulish, serif; font-style: italic; letter-spacing: -0.32px;\">Nhằm phù hợp hơn với định hướng phát triển sản phẩm và giá trị mà từng dòng xe mang lại, VinFast trân trọng thông báo việc thay đổi tên gọi một số phiên bản xe ô tô điện. Đây không chỉ là sự thay đổi về tên gọi, mà còn là bước chuyển mình trong chiến lược, cam kết mang đến những giá trị vượt trội trên hành trình kiến tạo tương lai xanh bền vững của VinFast.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;\"><span style=\"font-size: 12pt;\"><span style=\"font-family: &quot;times new roman&quot;, serif;\"><span style=\"color: rgb(0, 0, 0);\">Theo đó, các phiên bản sẽ có sự thay đổi tên bao gồm: VinFast VF 6 S, VinFast VF 7 S, VinFast VF 8 S Lux, VinFast VF 8 Lux Plus, VinFast VF e34. Chi tiết thay đổi như sau:</span></span></span></p><ol style=\"list-style: initial; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 15px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;\"><li><span style=\"font-size: 12pt;\"><span style=\"font-family: &quot;times new roman&quot;, serif;\"><span style=\"color: rgb(0, 0, 0);\">VF 6 S đổi tên thành VF 6 Eco</span></span></span></li></ol><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;\"><span style=\"font-size: 12pt;\"><span style=\"font-family: &quot;times new roman&quot;, serif;\"><span style=\"color: rgb(0, 0, 0);\">VinFast VF 6 S - Lựa chọn phù hợp cho gia đình trẻ hoặc cá nhân yêu thích sự tiện nghi với mức giá hợp lý nhất phân khúc xe gầm cao hạng B, sẽ đổi tên thành VinFast VF 6 Eco. Mẫu xe với thiết kế nội thất lấy cảm hứng từ ngôi nhà thứ hai của gia đình cùng không gian rộng rãi, đáp ứng nhu cầu sử dụng hằng ngày mà vẫn tối ưu về chi phí vận hành.</span></span></span></p><ol start=\"2\" style=\"list-style: initial; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 15px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;\"><li><span style=\"font-size: 12pt;\"><span style=\"font-family: &quot;times new roman&quot;, serif;\"><span style=\"color: rgb(0, 0, 0);\">VF 7 S đổi tên thành VF 7 Eco&nbsp;</span></span></span></li></ol><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;\"><span style=\"font-size: 12pt;\"><span style=\"font-family: &quot;times new roman&quot;, serif;\"><span style=\"color: rgb(0, 0, 0);\">VinFast VF 7 S – Mẫu SUV hạng C đẳng cấp, với thiết kế sắc sảo, mạnh mẽ sẽ được đổi tên thành VinFast VF 7 Eco. Chiếc xe được trang bị hiệu suất vận hành vượt trội, cùng hệ thống an toàn tối đa, mang lại trải nghiệm lái đầy thú vị trên mọi nẻo đường bạn đi tới.&nbsp;</span></span></span></p>', '/files/Blog/blog2-1_1.jpg', NULL, NULL, NULL, NULL, NULL, '2025-12-18 10:37:11', 'thanh', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscomment`
--

CREATE TABLE `newscomment` (
  `CommentId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Detail` varchar(200) DEFAULT NULL,
  `NewsId` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `newscomment`
--

INSERT INTO `newscomment` (`CommentId`, `Name`, `Phone`, `Email`, `CreatedDate`, `Detail`, `NewsId`, `isActive`) VALUES
(2, 'thuy', NULL, 'thuy@gjt', '2025-01-12 15:00:31', 'tgsdgvhdm', 2, NULL),
(1002, 'tươi', NULL, 'heo@tuoi', '2025-01-13 12:02:40', 'fyuk', 2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `CarID` int(11) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `PickupDate` datetime DEFAULT NULL,
  `ReturnDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `CarID`, `Description`, `Price`, `Quantity`, `PickupDate`, `ReturnDate`) VALUES
(1037, 1030, 2, NULL, 800000.00, 2, '2025-12-21 00:00:00', '2025-12-22 00:00:00'),
(1038, 1031, 14, NULL, 400.00, 1, '2025-12-21 00:00:00', '2025-12-23 00:00:00'),
(1039, 1032, 15, NULL, 5000.00, 1, '2025-12-26 00:00:00', '2025-12-31 00:00:00'),
(1040, 1033, 16, NULL, 60000.00, 1, '2025-12-21 00:00:00', '2025-12-23 00:00:00'),
(1041, 1034, 16, NULL, 30000.00, 1, '2025-12-22 00:00:00', '2025-12-23 00:00:00'),
(1042, 1035, 10, NULL, 200000.00, 1, '2025-12-22 00:00:00', '2025-12-23 00:00:00'),
(1043, 1036, 17, NULL, 323.00, 1, '2025-12-22 00:00:00', '2025-12-23 00:00:00'),
(1044, 1037, 18, NULL, 646.00, 1, '2025-12-22 00:00:00', '2025-12-24 00:00:00'),
(1045, 1038, 18, NULL, 323.00, 1, '2025-12-22 00:00:00', '2025-12-23 00:00:00'),
(1046, 1039, 18, NULL, 969.00, 1, '2025-12-22 00:00:00', '2025-12-25 00:00:00'),
(1047, 1040, 15, NULL, 10000.00, 1, '2025-12-22 00:00:00', '2026-01-01 00:00:00'),
(1048, 1041, 14, NULL, 2400.00, 2, '2025-12-22 00:00:00', '2025-12-25 00:00:00'),
(1049, 1042, 19, NULL, 300000.00, 1, '2025-12-25 00:00:00', '2025-12-26 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderstatus`
--

CREATE TABLE `orderstatus` (
  `StatusID` int(11) NOT NULL,
  `StatusDescription` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderstatus`
--

INSERT INTO `orderstatus` (`StatusID`, `StatusDescription`) VALUES
(1, ' Đã đặt'),
(2, 'Đã Huỷ'),
(3, 'Đã thanh toán'),
(4, 'Đang giao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `RoleId` int(11) NOT NULL,
  `RoleName` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`RoleId`, `RoleName`, `Description`) VALUES
(1, 'Admin', 'quanli'),
(2, 'guest', 'khách'),
(3, 'Chủ xe', 'chủ xe cung cấp xe cho hệ thống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountId`),
  ADD KEY `FK_Account_Role` (`RoleId`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`BlogId`),
  ADD KEY `FK_Blog_Account` (`AccountId`);

--
-- Chỉ mục cho bảng `blogcomment`
--
ALTER TABLE `blogcomment`
  ADD PRIMARY KEY (`CommentId`),
  ADD KEY `FK_BlogComment_Blog` (`BlogId`);

--
-- Chỉ mục cho bảng `carimages`
--
ALTER TABLE `carimages`
  ADD PRIMARY KEY (`ImageID`);

--
-- Chỉ mục cho bảng `carrentalorders`
--
ALTER TABLE `carrentalorders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `FK_CarRentalOrders_Customer` (`CustomerID`),
  ADD KEY `FK_CarRentalOrders_Status` (`StatusID`);

--
-- Chỉ mục cho bảng `carreviews`
--
ALTER TABLE `carreviews`
  ADD PRIMARY KEY (`CarReviewID`),
  ADD KEY `FK_CarReviews_Cars` (`CarID`);

--
-- Chỉ mục cho bảng `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CarID`),
  ADD KEY `FK_Cars_CarTypes` (`TypeID`),
  ADD KEY `idx_cars_owner` (`OwnerID`);

--
-- Chỉ mục cho bảng `cartypes`
--
ALTER TABLE `cartypes`
  ADD PRIMARY KEY (`TypeID`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ContactId`);

--
-- Chỉ mục cho bảng `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`ContractID`),
  ADD KEY `FK_Contract_Customer` (`CustomerID`);

--
-- Chỉ mục cho bảng `contractdetails`
--
ALTER TABLE `contractdetails`
  ADD PRIMARY KEY (`ContractDetailID`),
  ADD KEY `FK_ContractDetails_Contract` (`ContractID`),
  ADD KEY `FK_ContractDetails_CarType` (`CarTypeID`);

--
-- Chỉ mục cho bảng `contractsettlementdetails`
--
ALTER TABLE `contractsettlementdetails`
  ADD PRIMARY KEY (`SettlementDetailID`),
  ADD KEY `FK_ContractSettlementDetails_Settlement` (`SettlementID`);

--
-- Chỉ mục cho bảng `contractsettlements`
--
ALTER TABLE `contractsettlements`
  ADD PRIMARY KEY (`SettlementID`),
  ADD KEY `FK_ContractSettlements_Contract` (`ContractID`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MenuID`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsId`);

--
-- Chỉ mục cho bảng `newscomment`
--
ALTER TABLE `newscomment`
  ADD PRIMARY KEY (`CommentId`),
  ADD KEY `FK_NewsComment_News` (`NewsId`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `FK_OrderDetails_Order` (`OrderID`);

--
-- Chỉ mục cho bảng `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`StatusID`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `AccountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `BlogId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `blogcomment`
--
ALTER TABLE `blogcomment`
  MODIFY `CommentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `carimages`
--
ALTER TABLE `carimages`
  MODIFY `ImageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `carrentalorders`
--
ALTER TABLE `carrentalorders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1043;

--
-- AUTO_INCREMENT cho bảng `carreviews`
--
ALTER TABLE `carreviews`
  MODIFY `CarReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `cars`
--
ALTER TABLE `cars`
  MODIFY `CarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `cartypes`
--
ALTER TABLE `cartypes`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `ContactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contract`
--
ALTER TABLE `contract`
  MODIFY `ContractID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contractdetails`
--
ALTER TABLE `contractdetails`
  MODIFY `ContractDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contractsettlementdetails`
--
ALTER TABLE `contractsettlementdetails`
  MODIFY `SettlementDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contractsettlements`
--
ALTER TABLE `contractsettlements`
  MODIFY `SettlementID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `MenuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `NewsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT cho bảng `newscomment`
--
ALTER TABLE `newscomment`
  MODIFY `CommentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1050;

--
-- AUTO_INCREMENT cho bảng `orderstatus`
--
ALTER TABLE `orderstatus`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `FK_Account_Role` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleId`);

--
-- Các ràng buộc cho bảng `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `FK_Blog_Account` FOREIGN KEY (`AccountId`) REFERENCES `account` (`AccountId`);

--
-- Các ràng buộc cho bảng `blogcomment`
--
ALTER TABLE `blogcomment`
  ADD CONSTRAINT `FK_BlogComment_Blog` FOREIGN KEY (`BlogId`) REFERENCES `blog` (`BlogId`);

--
-- Các ràng buộc cho bảng `carrentalorders`
--
ALTER TABLE `carrentalorders`
  ADD CONSTRAINT `FK_CarRentalOrders_Customer` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `FK_CarRentalOrders_Status` FOREIGN KEY (`StatusID`) REFERENCES `orderstatus` (`StatusID`),
  ADD CONSTRAINT `FK__CarRental__Custo__2D27B809` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `FK__CarRental__Statu__2E1BDC42` FOREIGN KEY (`StatusID`) REFERENCES `orderstatus` (`StatusID`);

--
-- Các ràng buộc cho bảng `carreviews`
--
ALTER TABLE `carreviews`
  ADD CONSTRAINT `FK_CarReviews_Cars` FOREIGN KEY (`CarID`) REFERENCES `cars` (`CarID`);

--
-- Các ràng buộc cho bảng `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `FK_Cars_CarTypes` FOREIGN KEY (`TypeID`) REFERENCES `cartypes` (`TypeID`);

--
-- Các ràng buộc cho bảng `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `FK_Contract_Customer` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `FK__Contracts__Custo__30F848ED` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);

--
-- Các ràng buộc cho bảng `contractdetails`
--
ALTER TABLE `contractdetails`
  ADD CONSTRAINT `FK_ContractDetails_CarType` FOREIGN KEY (`CarTypeID`) REFERENCES `cartypes` (`TypeID`),
  ADD CONSTRAINT `FK_ContractDetails_Contract` FOREIGN KEY (`ContractID`) REFERENCES `contract` (`ContractID`);

--
-- Các ràng buộc cho bảng `contractsettlementdetails`
--
ALTER TABLE `contractsettlementdetails`
  ADD CONSTRAINT `FK_ContractSettlementDetails_Settlement` FOREIGN KEY (`SettlementID`) REFERENCES `contractsettlements` (`SettlementID`);

--
-- Các ràng buộc cho bảng `contractsettlements`
--
ALTER TABLE `contractsettlements`
  ADD CONSTRAINT `FK_ContractSettlements_Contract` FOREIGN KEY (`ContractID`) REFERENCES `contract` (`ContractID`);

--
-- Các ràng buộc cho bảng `newscomment`
--
ALTER TABLE `newscomment`
  ADD CONSTRAINT `FK_NewsComment_News` FOREIGN KEY (`NewsId`) REFERENCES `news` (`NewsId`);

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK_OrderDetails_Order` FOREIGN KEY (`OrderID`) REFERENCES `carrentalorders` (`OrderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
