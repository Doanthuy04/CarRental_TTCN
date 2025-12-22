-- MySQL Data Only - Chỉ chứa dữ liệu INSERT (không có CREATE TABLE)
-- Sử dụng file này khi các bảng đã được tạo sẵn

USE DbRenalCar;

-- Xóa dữ liệu cũ nếu cần (tùy chọn - comment nếu muốn giữ dữ liệu cũ)
-- SET FOREIGN_KEY_CHECKS = 0;
-- TRUNCATE TABLE OrderDetails;
-- TRUNCATE TABLE CarRentalOrders;
-- TRUNCATE TABLE CarReviews;
-- TRUNCATE TABLE BlogComment;
-- TRUNCATE TABLE NewsComment;
-- TRUNCATE TABLE Contact;
-- TRUNCATE TABLE Cars;
-- TRUNCATE TABLE Blog;
-- TRUNCATE TABLE News;
-- TRUNCATE TABLE Customers;
-- TRUNCATE TABLE Account;
-- TRUNCATE TABLE Users;
-- SET FOREIGN_KEY_CHECKS = 1;

-- Insert data into Account (chỉ insert nếu chưa có dữ liệu)
INSERT IGNORE INTO Account (AccountId, Username, Password, FullName, Phone, Email, RoleId, LastLogin, IsActive) VALUES 
(2, 'quan', '124', 'nguyenhongquan', '2424242', 'sdfdfdfdsfd', 1, NULL, 1),
(3, 'thanh thuy', 'd0afd43f169f68af6d56cf454d74b167', NULL, '123456789', 'thanh@gmail.com', NULL, NULL, NULL),
(4, 'quan', 'd0afd43f169f68af6d56cf454d74b167', NULL, NULL, 'quan@gmail.com', NULL, NULL, NULL);

-- Insert data into Blog
INSERT IGNORE INTO Blog (BlogId, Title, Alias, CategoryId, Description, Detail, Image, SeoTitle, SeoDescription, SeoKeywords, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy, AccountId, IsActive) VALUES 
(3, 'Range Rover Velar 2025 Chào Sân: Hybrid cắm sạc 398 mã lực, giá từ 3,7 tỉ đồng', 'range-rover-velar-2025-chao-san-hybrid-cam-sac-398-ma-luc-gia-tu-37-ti-dong', NULL, 'Range Rover Velar bản nâng cấp chính thức trình làng tại Việt Nam: Đột phá trang bị, nâng tầm đẳng cấp SUV hạng sang.', '<p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;">Ngày 22-11,&nbsp;<a href="https://www.carmudi.vn/blog-xe-hoi/range-rover-velar-2024-gia-xe-thong-so-va-uu-dai-moi-thang-062024/">Range Rover Velar&nbsp;</a>2025 chính thức ra mắt tại Việt Nam với 3 phiên bản: S, Dynamic SE và Dynamic HSE.</p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;">Cả ba phiên bản đều được trang bị hai tùy chọn động cơ, bao gồm P250 sử dụng máy 2.0L và P340 MHEV kết hợp giữa máy 3.0L và mô-tơ điện. Riêng bản cao cấp Dynamic HSE được bổ sung thêm tùy chọn động cơ P400e, một hệ thống hybrid sạc ngoài với máy 2.0L và mô-tơ điện. Mức giá khởi điểm dao động từ 3,729 tỉ đồng cho bản tiêu chuẩn và lên tới 5,689 tỉ đồng cho bản cao nhất.</p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;"><img src="/files/Blog/blog2-1_1.jpg" style="width: 1084px;"><br></p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;">Range Rover Velar 2025 thực chất là phiên bản facelift giữa chu kỳ sản phẩm, được cải tiến từ thế hệ đã ra mắt toàn cầu từ năm 2017. Những nâng cấp đáng chú ý tập trung vào thiết kế hiện đại hơn cùng các trang bị tiện nghi, nâng tầm trải nghiệm cho người dùng.</p><h2 id="Thi+t+k++ngo+i+th+t+c+a+Range+Rover+Velar+2025" name="Thi+t+k++ngo+i+th+t+c+a+Range+Rover+Velar+2025" style="font-family: Roboto, sans-serif; font-weight: 700; color: rgb(34, 34, 34); font-size: 20px;">Thiết kế ngoại thất của Range Rover Velar 2025</h2><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;">Range Rover Velar 2025 mang đến diện mạo ngoại thất hiện đại và tinh tế. Phần đầu xe nổi bật với lưới tản nhiệt mới, lấy cảm hứng từ&nbsp;<a href="https://www.carmudi.vn/blog-xe-hoi/range-rover-sport-sv-edition-two-2025-bo-sung-tuy-chon-voi-mau-sac-moi/">Range Rover</a>, tạo hiệu ứng thị giác và thẩm mỹ cao. Hệ thống đèn pha Pixel LED siêu mỏng, kết hợp với dải đèn LED ban ngày đặc trưng, mang đến vẻ ngoài sắc sảo và hiện đại.</p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;"><img src="/files/Blog/blog2-2_1.jpg" style="width: 1084px;"><br></p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;">Thân xe giữ nguyên thiết kế thanh lịch, với các đường nét mềm mại và bề mặt phẳng. Xe được bổ sung 3 màu sơn ngoại thất mới: xanh Varensine, xám Arroios và xám Zadar, cùng với 4 thiết kế mâm xe mới, tăng thêm sự lựa chọn cho khách hàng. Phần đuôi xe được tinh chỉnh với cụm đèn hậu LED 3D mới, tạo hiệu ứng ánh sáng nổi bật và liền mạch hơn so với phiên bản trước. Cản sau được thiết kế lại, tích hợp ống xả ẩn, mang đến vẻ ngoài gọn gàng và thanh lịch.</p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;"><img src="/files/Blog/blog2-3_1.jpg" style="width: 1082px;"><br></p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;">Những cải tiến này giúp Range Rover Velar 2025 duy trì phong cách sang trọng, đồng thời mang đến sự mới mẻ và hiện đại cho dòng SUV hạng sang này.</p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;"><br></p>', '/files/Blog/blog2-4_1.jpg', NULL, NULL, NULL, '2024-12-01 11:34:04', 'thanh', '2024-12-01 11:47:04', 'thanh', NULL, 1),
(7, 'Phiên bản cuối cùng của Porsche 911 Dakar: Đỉnh cao của sự đặc biệt', 'phien-ban-cuoi-cung-cua-porsche-911-dakar-dinh-cao-cua-su-dac-biet', NULL, 'Đỉnh cao của sự đặc biệt', '<h2 id="Thi+t+k++ngo+i+th+t+c+a+Porsche+911+Dakar" name="Thi+t+k++ngo+i+th+t+c+a+Porsche+911+Dakar" style="font-family: Roboto, sans-serif; font-weight: 700; color: rgb(34, 34, 34); font-size: 20px;">Thiết kế ngoại thất của Porsche 911 Dakar</h2><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;">Chiếc&nbsp;<a href="https://www.carmudi.vn/blog-xe-hoi/porsche-911-gt3-2022-mau-la-mat-trang-bi-so-san-dau-tien-tai-viet-nam/">Porsche 911</a>&nbsp;Dakar cuối cùng xuất xưởng được thiết kế ngoại thất độc đáo, tôn vinh chiến thắng tại giải đua Paris-Dakar năm 1984. Phần trên của xe được sơn màu vàng Signal, trong khi phần dưới mang sắc xanh Gentian Blue Metallic, tạo nên sự tương phản nổi bật. Hai tông màu này được ngăn cách bởi đường kẻ xanh dương nhạt Lampedusa Blue, lấy cảm hứng từ hòn đảo Lampedusa ở Địa Trung Hải.</p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;"><img src="/files/Blog/blog1.jpeg" style="width: 1038px;"></p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;">Đặc biệt, bộ mâm xe cũng được sơn màu vàng Signal, kết hợp với viền xanh Lampedusa Blue, tạo nên sự hài hòa và tinh tế. Các chi tiết bằng thép không gỉ ở cản trước, cản sau và ngưỡng cửa bên hông được sơn đen, tăng thêm vẻ mạnh mẽ cho xe. Ngoài ra, viền đèn pha cũng được trang trí bằng màu xanh Lampedusa Blue, tạo điểm nhấn độc đáo cho phần đầu xe.</p><p style="color: rgb(34, 34, 34); font-family: Roboto, sans-serif;">Toàn bộ quá trình sơn ngoại thất được thực hiện thủ công, thể hiện sự tỉ mỉ và đẳng cấp của Porsche trong việc cá nhân hóa sản phẩm. Thiết kế này không chỉ tôn vinh lịch sử huy hoàng của hãng mà còn mang đến cho chủ sở hữu một chiếc xe độc nhất vô nhị, kết hợp giữa di sản và phong cách hiện đại.</p>', '/files/Blog/blog1.jpeg', NULL, NULL, NULL, '2024-12-01 11:34:04', 'thanh', '2024-12-01 11:34:08', '', NULL, 1);

-- Insert data into BlogComment
INSERT IGNORE INTO BlogComment (CommentId, Name, Phone, Email, CreatedDate, Detail, BlogId, IsActive) VALUES 
(2, 'nguyễn Hồng quân', 'Phone', 'quan@gmail.com', '2014-11-22 00:00:00', 'this is blog details', 3, 1);

-- Insert data into CarRentalOrders
INSERT IGNORE INTO CarRentalOrders (OrderID, CustomerID, OrderDate, Deposit, Payment, StatusID, ReturnDate, Notes) VALUES 
(1, 5, '2024-12-29', 0.00, 200.00, 1, '2024-12-28', NULL),
(2, 5, '2024-12-29', 0.00, 200.00, 1, '2024-12-28', NULL),
(3, 5, '2024-12-29', 0.00, 200.00, 1, '2024-12-26', NULL),
(4, 5, '2024-12-29', 200.00, 200.00, 1, '2024-12-31', NULL),
(5, 5, '2024-12-29', 120000.00, 2.00, 1, '2024-12-30', NULL),
(6, 5, '2024-12-29', 200000.00, 12.00, 1, '2024-12-31', NULL),
(7, 1011, '2024-12-29', 10000000.00, 1022.00, 2, NULL, NULL),
(8, 6, '2024-12-30', 200000.00, 207.00, 1, '2025-01-05', NULL),
(9, 7, '2024-12-30', 200.00, 6.00, 1, '2024-12-31', NULL),
(10, 8, '2024-12-30', 200.00, 200.00, 1, '2025-01-01', NULL),
(11, 9, '2024-12-30', 200.00, 200.00, 1, '2025-01-01', NULL),
(12, 9, '2024-12-30', 300000.00, 23.00, 1, '2025-01-04', NULL),
(13, 6, '2025-01-09', 10.20, 23.80, 1, NULL, 'n ỏn'),
(14, 6, '2025-01-09', 186.00, 434.00, 1, NULL, 'nhậ xe lúc 8h sáng'),
(15, 6, '2025-01-09', 60.00, 140.00, 1, NULL, 'nhận xe lúc 8h'),
(16, 6, '2025-01-09', 21000.90, 49002.10, 1, NULL, ' xin chào'),
(17, 6, '2025-01-10', 120.00, 280.00, 2, NULL, ''),
(18, 6, '2025-01-10', 360.00, 840.00, 1, NULL, ''),
(19, 6, '2025-01-10', 12600.00, 29400.00, 1, NULL, 'testvnpay'),
(20, 6, '2025-01-10', 60.00, 140.00, 2, NULL, ''),
(21, 6, '2025-01-10', 120000.00, 280000.00, 2, NULL, 'test vn pay'),
(22, 6, '2025-01-10', 240000.00, 560000.00, 2, NULL, 'no vnpay'),
(23, 6, '2025-01-10', 30000.00, 70000.00, 3, NULL, 'test'),
(24, 1012, '2025-01-10', 60000.00, 140000.00, 2, NULL, 'test vn'),
(25, 1013, '2025-01-10', 1050000.00, 2450000.00, 1, NULL, 'cod'),
(26, 6, '2025-01-11', 420000.00, 980000.00, 2, NULL, 'news'),
(27, 3, '2025-01-12', 60000.00, 140000.00, 3, NULL, 'fsfv'),
(28, 3, '2025-01-12', 60000.00, 140000.00, 1, NULL, 'fsfv'),
(1027, 3, '2025-01-13', 240000.00, 560000.00, 2, NULL, 'dsgs'),
(1028, 3, '2025-01-13', 60000.00, 140000.00, 2, NULL, 'ưgwrth'),
(1029, 3, '2025-12-18', 75000.00, 175000.00, 2, NULL, 'thủy ');

-- Insert data into CarReviews
INSERT IGNORE INTO CarReviews (CarReviewID, Name, Phone, Email, CreatedDate, Detail, CarID, Star, IsActive) VALUES 
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

-- Insert data into Cars
INSERT IGNORE INTO Cars (CarID, CarName, Seat, LicensePlate, Price, Color, Model, Rate, CarBrand, Image, SalePrice, Alias, IsSale, IsActive, Details, Descriptions, TypeID) VALUES 
(1, 'MAZDA CX8 LUXURY 2021', NULL, '37a', 300000.00, 'red', 2013, 4, 'Mec', '/files/Carimage/car-rent-6.png', 250000.00, 'mazda-cx8-luxury-2021', 0, 0, '<pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);">Mazda CX8 7 chỗ cao nhất phân khúc tại Việt Nam, xe mới 2021 giá 1.2 tỷ vì xe đi gia đình nên giữ kỹ, luôn vệ sinh xe sạch sẽ thơm khi nhận xe, đảm bảo đi xa không bị say xe &amp; mệt.\n+ Nội thất da Nappa cừu non sang trọng 0 lỗi thời, có sửi ấm ghế.\n+ Gạt gương tự động khi có mưa, hiển thị tốc độ trên kính lái.\n+ Xe số tự động nhiều công nghệ mới tiện lợi: LED nội thất 64 màu , Auto hold, 4 chế độ chạy từ êm ái đến sport tăng tốc mạnh mẽ, ghế chỉnh điện, loa Bose xịn nghe cực hay như Mec, đèn chiếu siêu sáng tự động, Cruise control giữ tốc độ chạy trên cao tốc.\n+ Xe được phủ nano ceramic bóng sáng như mới mua hôm qua, nhìn bắt mắt sang trọng. (Đặt cọc xe ngay AC nhé)\n+ Điều khiển giọng nói mở đúng bài nhạc ưa thích và dẫn đường đến như google (Apple carplay, Auto android)\n*** Trang bị cao cấp thêm của chủ xe: Dán film cách nhiệt Icool siêu cấp giúp giảm tia UV 99% nên xe rất mát và tiết kiệm xăng, 0 cháy rát hại da mặt hoặc tay, có bệ điện thoại-ipad, sàn thảm 3D sạch đẹp, có đủ dây sạc điện thoại, TK Epass khi qua trạm cao tốc làn ETC, bảo hiểm. Áp suất lốp cảnh báo 4 bánh xe nếu xì hơi biết ngay để có phương án kịp thời.\n+ Xe gầm cao đi được nhiều địa hình, đầm xe máy bốc 2,5L ít hao xăng, 2 dàn lạnh độc lập hàng ghế 123\n+ Cốp xe tự động, đá cốp. Không đi 7 người thì hàng 3 rộng đểđồ rất thoải mái cho gia đình nhiều vali.\n+ Xe mới được bảo dưỡng định kỳ nên hạn chế trục trặc 0 bị dừng giữa đường &amp; nơi vắng vẻ đêm khuya.\n*** Bạn sẽ có chuyến đi vui hơn khi đi xe sạch êm ái không mùi hôi tránh gây say xe ( rất nhiều khách hàng đã kiểm chứng đánh giá 5 sao)\nXin chào Anh Chị, hy vọng được đồng hành cùng gia đình mình trải nghiệm kỳ nghỉ vui vẻ và đầy tiếng cười hạnh phúc 100%\n- Cho thuê xe theo giờ, tuần, tháng giá tốt nhất (có bổ trợ tập lái cuối tuần. Cafe khi giới thiệu)\nCòn chần chừ gì nữa AC ơi. Giá thuê tốt nhất thị trường rồi AC nha. \nXác nhận thuê liền đi ạ</pre>', '• Quận Bình Thạnh, TP. Hồ Chí Minh', 2),
(2, 'TOYOTA VELOZ CROSS 2022', NULL, '112a', 600000.00, 'blue', 2015, 5, 'mec', '/files/Carimage/car-rent-4.png', 400000.00, 'toyota-veloz-cross-2022', 0, 1, '<pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);">TOYOTA VELOZ CROSS 2022</pre>', 'TOYOTA VELOZ CROSS 2022', 6),
(3, 'CHEVROLET SPARK 2013', NULL, '23er', 700000.00, 'red', 2015, 5, NULL, '/files/Carimage/car-rent-1.png', 600000.00, 'chevrolet-spark-2013', 0, 1, '<pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);">CHEVROLET SPARK 2013\nSố tự động, Nội thất sạch sẽ, camera trước sau, căn lề, màn hình DVD , cảnh báo tốc độ và chỉ dẫn hành trình đi lại…</pre>', ' Quận 1, TP. Hồ Chí Minh', 3),
(4, 'MITSUBISHI XPANDER 2021', NULL, '23er', 800000.00, 'red', 2015, 1, NULL, '/files/Carimage/car_img1.png', 700000.00, 'mitsubishi-xpander-2021', 0, 1, '<pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);">Xe mới đăng kí 2/2022. Mua kết hợp đi gia đình và cho thuê. Ưu tiên gia đình hàng đầu nên đảm bảo sạch sẽ, cho khách hàng có những chuyến du lịch thú vị  cùng người thân của mình.</pre>', ' Quận 4, TP. Hồ Chí Minh', 1),
(8, 'MITSUBISHI XPANDER CROSS 2024', NULL, NULL, 1000000.00, NULL, NULL, 5, NULL, '/files/Carimage/car_img1.png', 500000.00, 'mitsubishi-xpander-cross-2024', 0, 1, '<pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);">MITSUBISHI XPANDER CROSS (AT) số tự động đăng ký tháng 06/2024\nXe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách.\nXe rộng rãi, an toàn, tiện nghi, phù hợp cho gia đình du lịch.\nXe trang bị hệ thống cảm biến lùi, gạt mưa tự động, đèn pha tự động, camera hành trình, hệ thống giải trí AV cùng nhiều tiện nghi khác…</pre>', 'Quận 4, TP. Hồ Chí Minh', 1),
(9, 'VINFAST VF E34 2022', NULL, NULL, 3400000.00, NULL, NULL, NULL, NULL, '/files/Carimage/car_img2.png', 200000.00, 'vinfast-vf-e34-2022', 1, 1, '<div class="info-car-desc" bis_skin_checked="1" style="margin: 24px 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Manrope, &quot;Encode Sans Expanded&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; display: flex; flex-direction: column; scroll-margin-top: 24px; color: rgb(0, 0, 0);"><pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);"> Xe phân khúc C-SUV rộng rãi hàng sau. Xe gia đình mới đẹp. Tiết kiệm hơn xe xăng\nXe trang bị hàng loạt tính năng như sạc cực nhanh tại trạm sạc Vinfast toàn quốc, an toàn nhiều túi khí, camera 360, cảm biến va chạm, camera lùi, áp suất lốp, gương chỉnh điện tự gập khi khóa, cốp điện đóng mở bằng nút bấm, trợ lý ảo kể chuyện cười, màn hình trung tâm to, hỗ trợ Android Auto, được chủ xe trang bị film 3m xịn cách âm ổn. led gầm tăng sáng vào đêm hay sương mù khí đến tây nguyên...\nĐặc biệt: Chủ xe có ưu đãi thêm cho khách thuê xe từ lần 2 trở đi nếu lần 1 được chủ xe đánh giá lái xe và giữ gìn xe tốt.\n</pre><div><br></div></div><p><br></p>', 'Quận 1, TP. Hồ Chí Minh', 7),
(10, 'HONDA CRV L 2020', NULL, NULL, 2300000.00, NULL, NULL, NULL, NULL, '/files/Carimage/car-rent-4.png', 200000.00, 'honda-crv-l-2020', 1, 1, '<pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);">HONDA CRV L (AT) số tự động đăng ký tháng 08/2020\nXe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách.\nXe rộng rãi, an toàn, tiện nghi, phù hợp cho gia đình du lịch.\nXe trang bị hệ thống cảm biến lùi, gạt mưa tự động, đèn pha tự động, camera hành trình, hệ thống giải trí AV cùng nhiều tiện nghi khác…</pre>', 'Quận 4, TP. Hồ Chí Minh', 6),
(11, 'KIA CARNIVAL PREMIUM 2023', NULL, '23er', 1000000.00, 'red', 2015, 4, 'toyota', '/files/Carimage/car-rent-3.png', 500000.00, 'kia-carnival-premium-2023', 0, 1, '<pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);">Xe mới đẹp</pre>', 'Quận 3, TP. Hồ Chí Minh', 8),
(12, 'TOYOTA YARIS 2013', NULL, '334', 600000.00, 'red', 2015, 5, 'toyota', '/files/Carimage/carousel-2.jpg', 400000.00, 'toyota-yaris-2013', 1, 0, '<pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);">Xe Toyota 5 chỗ số tự động dễ dàng sử dụng. Phù hợp cho việc chạy trong Thành phố, cho gia đình, nội thất nguyên bản, có màn hình cảnh báo tốc độ và điều hướng, tiết kiệm xăng.\nXe có dán cách nhiệt, vệ sinh, khử mùi sạch sẽ.</pre>', 'Quận 4, TP. Hồ Chí Minh', 3),
(13, 'HYUNDAI ACCENT 2023', NULL, '123a', 200000.00, 'blue', 2014, 5, 'toyota', '/files/Carimage/car-rent-5.png', 100000.00, 'hyundai-accent-2023', 1, 0, '<pre class="" style="margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: initial; text-wrap-mode: wrap; overflow-wrap: break-word; position: relative; color: rgb(118, 118, 118);">Huyndai Accent AT phiên bản Đặt Biệt 2023.\nXe màu đỏ nổi bật, động cơ 1.4 lít số tự động.\nXe được trang bị hệ thống điều hoà tự động, đề nổ từ xa.\nMàng hình cảm ứng 12inch, có kết nối Android Auto - Apple Carplay. Kế nối Blubletooh với điện thoại.\nVới bản đặt biệt xe có hệ thông Gas tự động Cruise Control.\nĐặt biệt xe có cửa sổ trời tự động thoáng mát.\nThời gian có thể linh động thoải mái cho khách hàng nhận xe và trả xe.</pre>', 'Quận 4, TP. Hồ Chí Minh', 5);

-- Insert data into CarTypes (chỉ insert nếu chưa có)
INSERT IGNORE INTO CarTypes (TypeID, CarTypeName, Seats, Manufacturer, Image) VALUES 
(1, 'Mini Class Vehicles', 4, 'pinlk', 'A.jpg'),
(2, 'Small Class Vehicles', NULL, NULL, 'B.jpg'),
(3, 'Sub-Medium Class Vehicles', NULL, NULL, 'C.jpg'),
(4, 'Top-Middle Class Vehicles', NULL, NULL, 'D.jpg'),
(5, 'Upper Class Vehicles', NULL, NULL, 'E.jpg'),
(6, 'Luxury Class Vehicles', NULL, NULL, 'F.jpg'),
(7, 'Multi Purpose Cars', NULL, NULL, 'M.jpg'),
(8, 'Crossover Utility Vehicle ', NULL, NULL, 'J.jpg'),
(9, 'Super Luxury Vehicle', NULL, NULL, 'S.jpg');

-- Insert data into Contact
INSERT IGNORE INTO Contact (ContactId, Name, Phone, Email, Message, IsRead, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy) VALUES 
(1, 'quan', '123', NULL, '123', NULL, '2024-12-02 12:21:50', NULL, NULL, NULL),
(2, 'hanh', '1234', NULL, '1244', NULL, '2024-12-02 12:24:18', NULL, NULL, NULL),
(3, 'quan', '03534682', NULL, 'liên hệ với tôi ngay', NULL, '2024-12-02 14:21:59', NULL, NULL, NULL);

-- Insert data into Customers
INSERT IGNORE INTO Customers (CustomerID, FullName, Name, Password, Email, DateofBirth, Address, LicenseNumber, LicenseImage, IDCard, PhoneNumber, AccountNumber, Bank, CompanyName, Avartar) VALUES 
(1, NULL, 'quan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'thuy', '123', 'quan@gmail.com', NULL, 'nghệ an', NULL, NULL, NULL, '12334', NULL, NULL, NULL, NULL),
(3, 'Đậu Công Quân', 'dauquan', 'd0afd43f169f68af6d56cf454d74b167', 'dauquan@gmail.com', '2004-04-03 00:00:00', 'nghệ an', '1123456789', 'A2_20251218114951560.jpg', NULL, '12334', NULL, NULL, NULL, NULL),
(4, NULL, 'thuy', 'd0afd43f169f68af6d56cf454d74b167', 'thuy@gmail.com', NULL, 'nghệ an', NULL, NULL, NULL, '12334', NULL, NULL, NULL, NULL),
(5, NULL, 'quan', 'd0afd43f169f68af6d56cf454d74b167', 'quan123@gmail.com', NULL, 'nghệ an, diễn châu, quyết thành1234567', NULL, NULL, NULL, '12334', NULL, NULL, NULL, NULL),
(6, 'Nguyễn Hồng Quân', 'Nguyễn Quân 37dc', 'd0afd43f169f68af6d56cf454d74b167', 'Q@gmail.com', '2004-01-12 00:00:00', 'Xóm Quyết Thành, Xã Diễn Bich, Huyển Diễn châu, tỉnh Nghệ An', '123412341231', 'adc_20250108223225438.jpg', NULL, '0353675457', NULL, NULL, NULL, '0.00032029000144429.jpg'),
(7, NULL, 'Hoàng Thanh Huyền cute', 'ca3ea7a65775384c0aa2249769adb543', 'Huyen@gmail.com', NULL, 'Thị xã Hoàng mai, Nghệ an', NULL, NULL, NULL, '0123345678', NULL, NULL, NULL, NULL),
(8, NULL, 'Đậu Công Quân', 'd0afd43f169f68af6d56cf454d74b167', 'Dau@gmailcom', NULL, 'nghệ an, diễn châu, quyết thành1234567', NULL, NULL, NULL, '1234353445', NULL, NULL, NULL, NULL),
(9, NULL, 'Doãn thị thanh thuỷ', 'd0afd43f169f68af6d56cf454d74b167', 'T@gmail.com', NULL, 'Nghi lộc nghệ an', NULL, NULL, NULL, '131243243', NULL, NULL, NULL, NULL),
(10, NULL, 'Minh Anh', 'd0afd43f169f68af6d56cf454d74b167', 'anh@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1010, 'Nguyễn Hồng Quân', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1012, 'Nguyễn Hồng Quân', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1013, 'Nguyễn Hồng Quân', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1014, NULL, NULL, 'd0afd43f169f68af6d56cf454d74b167', 'tt@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1015, NULL, 'ẻgeergge', 'd0afd43f169f68af6d56cf454d74b167', 't12@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Insert data into Menu (chỉ insert nếu chưa có)
INSERT IGNORE INTO Menu (MenuID, Title, Alias, Description, Levels, ParentId, Position, IsActive) VALUES 
(1, 'Trang chủ', 'home', NULL, 1, NULL, 1, 1),
(2, 'Sản phẩm', 'product', NULL, 1, NULL, 2, 1),
(3, 'Blog', 'blog', NULL, 1, NULL, 3, 1),
(4, 'Contact', 'contact', NULL, 1, NULL, 4, 1),
(6, 'Cart', 'cart', NULL, 1, NULL, 5, 1),
(14, 'New', 'news', 'tin tức', 1, 0, 7, 1);

-- Insert data into News
INSERT IGNORE INTO News (NewsId, Title, Alias, CategoryId, Description, Detail, Image, SeoTitle, SeoDescription, SeoKeywords, CreatedDate, CreatedBy, ModifiedDate, ModifiedBy, IsActive) VALUES 
(2, 'VINFAST THÔNG BÁO THAY ĐỔI TÊN GỌI PHIÊN BẢN CỦA MỘT SỐ DÒNG XE', 'vinfast-thong-bao-thay-doi-ten-goi-phien-ban-cua-mot-so-dong-xe', NULL, 'Nhằm phù hợp hơn với định hướng phát triển sản phẩm và giá trị mà từng dòng xe mang lại, VinFast trân trọng thông báo việc thay đổi tên gọi một số phiên bản xe ô tô điện. Đây không chỉ là sự thay đổi về tên gọi, mà còn là bước chuyển mình trong chiến lược, cam kết mang đến những giá trị vượt trội trên hành trình kiến tạo tương lai xanh bền vững của VinFast.', '<p><span style="color: rgb(60, 60, 60); font-family: Mulish, serif; font-style: italic; letter-spacing: -0.32px;">Nhằm phù hợp hơn với định hướng phát triển sản phẩm và giá trị mà từng dòng xe mang lại, VinFast trân trọng thông báo việc thay đổi tên gọi một số phiên bản xe ô tô điện. Đây không chỉ là sự thay đổi về tên gọi, mà còn là bước chuyển mình trong chiến lược, cam kết mang đến những giá trị vượt trội trên hành trình kiến tạo tương lai xanh bền vững của VinFast.</span></p>', '/files/News/xedo.jpg', NULL, NULL, NULL, '2025-01-12 14:59:33', 'thanh', NULL, NULL, 1),
(1002, 'VINFAST THÔNG BÁO THAY ĐỔI TÊN GỌI PHIÊN BẢN CỦA MỘT SỐ DÒNG XE', 'vinfast-thong-bao-thay-doi-ten-goi-phien-ban-cua-mot-so-dong-xe', NULL, 'NNNhằm phù hợp hơn với định hướng phát triển sản phẩm và giá trị mà từng dòng xe mang lại, VinFast trân trọng thông báo việc thay đổi tên gọi một số phiên bản xe ô tô điện. Đây không chỉ là sự thay đổi về tên gọi, mà còn là bước chuyển mình trong chiến lược, cam kết mang đến những giá trị vượt trội trên hành trình kiến tạo tương lai xanh bền vững của VinFast', '<p><span style="color: rgb(60, 60, 60); font-family: Mulish, serif; font-style: italic; letter-spacing: -0.32px;">Nhằm phù hợp hơn với định hướng phát triển sản phẩm và giá trị mà từng dòng xe mang lại, VinFast trân trọng thông báo việc thay đổi tên gọi một số phiên bản xe ô tô điện. Đây không chỉ là sự thay đổi về tên gọi, mà còn là bước chuyển mình trong chiến lược, cam kết mang đến những giá trị vượt trội trên hành trình kiến tạo tương lai xanh bền vững của VinFast.</span></p><p style="margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;"><span style="font-size: 12pt;"><span style="font-family: &quot;times new roman&quot;, serif;"><span style="color: rgb(0, 0, 0);">Theo đó, các phiên bản sẽ có sự thay đổi tên bao gồm: VinFast VF 6 S, VinFast VF 7 S, VinFast VF 8 S Lux, VinFast VF 8 Lux Plus, VinFast VF e34. Chi tiết thay đổi như sau:</span></span></span></p><ol style="list-style: initial; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 15px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;"><li><span style="font-size: 12pt;"><span style="font-family: &quot;times new roman&quot;, serif;"><span style="color: rgb(0, 0, 0);">VF 6 S đổi tên thành VF 6 Eco</span></span></span></li></ol><p style="margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;"><span style="font-size: 12pt;"><span style="font-family: &quot;times new roman&quot;, serif;"><span style="color: rgb(0, 0, 0);">VinFast VF 6 S - Lựa chọn phù hợp cho gia đình trẻ hoặc cá nhân yêu thích sự tiện nghi với mức giá hợp lý nhất phân khúc xe gầm cao hạng B, sẽ đổi tên thành VinFast VF 6 Eco. Mẫu xe với thiết kế nội thất lấy cảm hứng từ ngôi nhà thứ hai của gia đình cùng không gian rộng rãi, đáp ứng nhu cầu sử dụng hằng ngày mà vẫn tối ưu về chi phí vận hành.</span></span></span></p><ol start="2" style="list-style: initial; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 15px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;"><li><span style="font-size: 12pt;"><span style="font-family: &quot;times new roman&quot;, serif;"><span style="color: rgb(0, 0, 0);">VF 7 S đổi tên thành VF 7 Eco&nbsp;</span></span></span></li></ol><p style="margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(60, 60, 60); font-family: Mulish, serif; letter-spacing: -0.32px;"><span style="font-size: 12pt;"><span style="font-family: &quot;times new roman&quot;, serif;"><span style="color: rgb(0, 0, 0);">VinFast VF 7 S – Mẫu SUV hạng C đẳng cấp, với thiết kế sắc sảo, mạnh mẽ sẽ được đổi tên thành VinFast VF 7 Eco. Chiếc xe được trang bị hiệu suất vận hành vượt trội, cùng hệ thống an toàn tối đa, mang lại trải nghiệm lái đầy thú vị trên mọi nẻo đường bạn đi tới.&nbsp;</span></span></span></p>', '/files/Blog/blog2-1_1.jpg', NULL, NULL, NULL, NULL, NULL, '2025-12-18 10:37:11', 'thanh', 1);

-- Insert data into NewsComment
INSERT IGNORE INTO NewsComment (CommentId, Name, Phone, Email, CreatedDate, Detail, NewsId, isActive) VALUES 
(2, 'thuy', NULL, 'thuy@gjt', '2025-01-12 15:00:31', 'tgsdgvhdm', 2, NULL),
(1002, 'tươi', NULL, 'heo@tuoi', '2025-01-13 12:02:40', 'fyuk', 2, NULL);

-- Insert data into OrderDetails
INSERT IGNORE INTO OrderDetails (OrderDetailID, OrderID, CarID, Description, Price, Quantity, PickupDate, ReturnDate) VALUES 
(1, 1, 13, NULL, 200.00, 1, NULL, NULL),
(2, 2, 13, NULL, 200.00, 1, NULL, NULL),
(3, 3, 13, NULL, 200.00, 1, NULL, NULL),
(4, 4, 13, NULL, 200.00, 1, NULL, NULL),
(6, 6, 9, NULL, 11.00, 1, NULL, NULL),
(7, 6, 8, NULL, 1.00, 1, NULL, NULL),
(8, 7, 3, NULL, 11.00, 2, NULL, NULL),
(9, 7, 13, NULL, 200.00, 5, NULL, NULL),
(10, 8, 13, NULL, 200.00, 1, NULL, NULL),
(11, 8, 12, NULL, 1.00, 7, NULL, NULL),
(12, 9, 12, NULL, 1.00, 6, NULL, NULL),
(13, 10, 13, NULL, 200.00, 1, NULL, NULL),
(14, 11, 13, NULL, 200.00, 1, NULL, NULL),
(15, 12, 1, NULL, 11.00, 1, NULL, NULL),
(16, 12, 3, NULL, 11.00, 1, NULL, NULL),
(17, 12, 12, NULL, 1.00, 1, NULL, NULL),
(18, 13, 11, NULL, 34.00, 1, '2025-01-11 00:00:00', '2025-01-12 00:00:00'),
(19, 14, 8, NULL, 220.00, 10, '2025-01-09 00:00:00', '2025-01-31 00:00:00'),
(20, 14, 13, NULL, 400.00, 1, '2025-01-09 00:00:00', '2025-01-11 00:00:00'),
(21, 15, 13, NULL, 200.00, 1, '2025-01-09 00:00:00', '2025-01-10 00:00:00'),
(22, 16, 13, NULL, 70000.00, 5, '2025-01-17 00:00:00', '2025-01-31 00:00:00'),
(23, 16, 12, NULL, 3.00, 3, '2025-01-24 00:00:00', '2025-01-25 00:00:00'),
(24, 17, 13, NULL, 400.00, 1, '2025-01-23 00:00:00', '2025-01-25 00:00:00'),
(25, 18, 13, NULL, 1200.00, 1, '2025-01-23 00:00:00', '2025-01-29 00:00:00'),
(26, 19, 13, NULL, 42000.00, 14, '2025-01-11 00:00:00', '2025-01-26 00:00:00'),
(27, 20, 13, NULL, 200.00, 1, '2025-01-10 00:00:00', '2025-01-11 00:00:00'),
(28, 21, 13, NULL, 400000.00, 4, '2025-01-10 00:00:00', '2025-01-11 00:00:00'),
(29, 22, 12, NULL, 800000.00, 2, '2025-01-11 00:00:00', '2025-01-12 00:00:00'),
(30, 23, 13, NULL, 100000.00, 1, '2025-01-11 00:00:00', '2025-01-12 00:00:00'),
(31, 24, 13, NULL, 200000.00, 2, '2025-01-11 00:00:00', '2025-01-12 00:00:00'),
(32, 25, 11, NULL, 3500000.00, 1, '2025-01-12 00:00:00', '2025-01-19 00:00:00'),
(33, 26, 4, NULL, 1400000.00, 2, '2025-01-11 00:00:00', '2025-01-12 00:00:00'),
(34, 27, 13, NULL, 200000.00, 1, '2025-01-12 00:00:00', '2025-01-14 00:00:00'),
(35, 28, 13, NULL, 200000.00, 1, '2025-01-12 00:00:00', '2025-01-14 00:00:00'),
(1034, 1027, 12, NULL, 800000.00, 1, '2025-01-13 00:00:00', '2025-01-15 00:00:00'),
(1035, 1028, 9, NULL, 200000.00, 1, '2025-01-14 00:00:00', '2025-01-15 00:00:00'),
(1036, 1029, 1, NULL, 250000.00, 1, '2025-12-19 00:00:00', '2025-12-20 00:00:00');

-- Insert data into OrderStatus (chỉ insert nếu chưa có)
INSERT IGNORE INTO OrderStatus (StatusID, StatusDescription) VALUES 
(1, ' Đã đặt'),
(2, 'Đã Huỷ'),
(3, 'Đã thanh toán'),
(4, 'Đang giao');

-- Insert data into Role (chỉ insert nếu chưa có)
INSERT IGNORE INTO Role (RoleId, RoleName, Description) VALUES 
(1, 'Admin', 'quanli'),
(2, 'guest', 'khách');

-- Insert data into Users
INSERT IGNORE INTO Users (UserID, UserName, Email, Password) VALUES 
(1, 'qa', 'quan@gmail.com', 'd0afd43f169f68af6d56cf454d74b167');

-- Reset AUTO_INCREMENT values after data insertion
ALTER TABLE Account AUTO_INCREMENT = 5;
ALTER TABLE Blog AUTO_INCREMENT = 8;
ALTER TABLE BlogComment AUTO_INCREMENT = 3;
ALTER TABLE CarRentalOrders AUTO_INCREMENT = 1030;
ALTER TABLE CarReviews AUTO_INCREMENT = 26;
ALTER TABLE Cars AUTO_INCREMENT = 14;
ALTER TABLE CarTypes AUTO_INCREMENT = 10;
ALTER TABLE Contact AUTO_INCREMENT = 4;
ALTER TABLE Contract AUTO_INCREMENT = 1;
ALTER TABLE ContractDetails AUTO_INCREMENT = 1;
ALTER TABLE ContractSettlementDetails AUTO_INCREMENT = 1;
ALTER TABLE ContractSettlements AUTO_INCREMENT = 1;
ALTER TABLE Customers AUTO_INCREMENT = 1016;
ALTER TABLE Menu AUTO_INCREMENT = 15;
ALTER TABLE News AUTO_INCREMENT = 1003;
ALTER TABLE NewsComment AUTO_INCREMENT = 1003;
ALTER TABLE OrderDetails AUTO_INCREMENT = 1037;
ALTER TABLE OrderStatus AUTO_INCREMENT = 5;
ALTER TABLE Users AUTO_INCREMENT = 2;

