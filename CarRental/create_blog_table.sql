-- Script tạo bảng Blog cho MySQL
-- Chạy script này trong MySQL Workbench hoặc MySQL Command Line

USE DbRenalCar;

CREATE TABLE IF NOT EXISTS `Blog` (
    `BlogId` INT NOT NULL AUTO_INCREMENT,
    `Title` VARCHAR(250) NULL,
    `Alias` VARCHAR(250) NULL,
    `CategoryId` INT NULL,
    `Description` VARCHAR(4000) NULL,
    `Detail` LONGTEXT NULL,
    `Image` VARCHAR(500) NULL,
    `SeoTitle` VARCHAR(250) NULL,
    `SeoDescription` VARCHAR(500) NULL,
    `SeoKeywords` VARCHAR(250) NULL,
    `CreatedDate` DATETIME NULL,
    `CreatedBy` VARCHAR(150) NULL,
    `ModifiedDate` DATETIME NULL,
    `ModifiedBy` VARCHAR(150) NULL,
    `AccountId` INT NULL,
    `IsActive` TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`BlogId`),
    INDEX `FK_Blog_Account` (`AccountId`),
    CONSTRAINT `FK_Blog_Account` FOREIGN KEY (`AccountId`) REFERENCES `Account` (`AccountId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


