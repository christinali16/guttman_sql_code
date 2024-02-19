DROP TABLE IF EXISTS
  `categories`;
CREATE TABLE categories(
  `categoryID` INT AUTO_INCREMENT PRIMARY KEY,
  `categoryName` VARCHAR(100) UNIQUE NOT NULL
);

SHOW CREATE TABLE categories \G

DROP TABLE IF EXISTS
  `vendors`;
CREATE TABLE vendors(
  `vendorID` INT AUTO_INCREMENT PRIMARY KEY,
  `vendorname` varchar(25) UNIQUE NOT NULL
);
SHOW CREATE TABLE vendors \G
DROP TABLE IF EXISTS
  `products`;
CREATE TABLE `products` (
  `productID` INT AUTO_INCREMENT PRIMARY KEY,
  `productName` varchar(100) UNIQUE NOT NULL,
  `categoryId` INT,
  `vendorID` INT,

  CONSTRAINT `fk_category`
    FOREIGN KEY (categoryID)
    REFERENCES categories(categoryID),
  CONSTRAINT `fk_vendors`
    FOREIGN KEY (vendorID)
    REFERENCES vendors(vendorID)
);

SHOW CREATE TABLE products \G

DROP TABLE IF EXISTS `departments`;
CREATE TABLE departments (
    `deptID` INT AUTO_INCREMENT PRIMARY KEY,
    `deptname` VARCHAR(50) UNIQUE
);
SHOW CREATE TABLE departments \G
