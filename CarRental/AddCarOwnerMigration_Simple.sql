-- Migration script đơn giản để thêm tính năng Chủ xe
-- Chạy script này trong MySQL (phpMyAdmin hoặc MySQL command line)

USE DbRenalCar;

-- 1. Thêm role "Chủ xe" nếu chưa có
INSERT IGNORE INTO Role (RoleId, RoleName, Description) VALUES 
(3, 'Chủ xe', 'chủ xe cung cấp xe cho hệ thống');

-- 2. Thêm cột OwnerID vào bảng Cars
-- Nếu cột đã tồn tại, bỏ qua lỗi và tiếp tục
ALTER TABLE Cars ADD COLUMN OwnerID INT NULL AFTER TypeID;

-- 3. Thêm foreign key constraint
-- Nếu constraint đã tồn tại, bỏ qua lỗi
ALTER TABLE Cars 
ADD CONSTRAINT FK_Cars_Account 
FOREIGN KEY (OwnerID) REFERENCES Account(AccountId) 
ON DELETE SET NULL ON UPDATE CASCADE;

-- 4. Tạo index để tối ưu truy vấn
CREATE INDEX idx_cars_owner ON Cars(OwnerID);

