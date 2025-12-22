-- Migration script để thêm tính năng Chủ xe
-- Chạy script này trong MySQL để cập nhật database

USE DbRenalCar;

-- 1. Thêm role "Chủ xe" nếu chưa có
INSERT IGNORE INTO Role (RoleId, RoleName, Description) VALUES 
(3, 'Chủ xe', 'chủ xe cung cấp xe cho hệ thống');

-- 2. Kiểm tra và thêm cột OwnerID vào bảng Cars (MySQL không hỗ trợ IF NOT EXISTS cho ALTER TABLE)
-- Nếu cột đã tồn tại, sẽ báo lỗi nhưng không ảnh hưởng
SET @dbname = DATABASE();
SET @tablename = 'Cars';
SET @columnname = 'OwnerID';
SET @preparedStatement = (SELECT IF(
  (
    SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS
    WHERE
      (TABLE_SCHEMA = @dbname)
      AND (TABLE_NAME = @tablename)
      AND (COLUMN_NAME = @columnname)
  ) > 0,
  'SELECT 1',
  CONCAT('ALTER TABLE ', @tablename, ' ADD COLUMN ', @columnname, ' INT NULL AFTER TypeID')
));
PREPARE alterIfNotExists FROM @preparedStatement;
EXECUTE alterIfNotExists;
DEALLOCATE PREPARE alterIfNotExists;

-- 3. Thêm foreign key constraint (nếu chưa có)
-- Kiểm tra constraint trước khi thêm
SET @constraint_name = 'FK_Cars_Account';
SET @preparedStatement = (SELECT IF(
  (
    SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    WHERE
      (TABLE_SCHEMA = @dbname)
      AND (TABLE_NAME = @tablename)
      AND (CONSTRAINT_NAME = @constraint_name)
  ) > 0,
  'SELECT 1',
  CONCAT('ALTER TABLE ', @tablename, ' ADD CONSTRAINT ', @constraint_name, 
         ' FOREIGN KEY (OwnerID) REFERENCES Account(AccountId) ON DELETE SET NULL ON UPDATE CASCADE')
));
PREPARE addConstraintIfNotExists FROM @preparedStatement;
EXECUTE addConstraintIfNotExists;
DEALLOCATE PREPARE addConstraintIfNotExists;

-- 4. Tạo index để tối ưu truy vấn (nếu chưa có)
CREATE INDEX IF NOT EXISTS idx_cars_owner ON Cars(OwnerID);
