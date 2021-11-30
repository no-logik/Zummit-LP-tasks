CREATE SCHEMA `lp-task` ;

USE `lp-task`;

CREATE TABLE `lp-task`.`product` (
  `Product id` INT NOT NULL,
  `Name` VARCHAR(90) NULL,
  `stock` INT NULL,
  PRIMARY KEY (`Product id`));
INSERT INTO `lp-task`.`product`
(`Product id`,
`Name`,
`stock`)
VALUES
(1,'Dell-display-1080p',423),
(2,'Dell-keyboard-bu',211),
(3,'Kingston-flash-drive-64GB',18);

CREATE TABLE `lp-task`.`customer` (
  `Customer id` INT NOT NULL,
  `First Name` VARCHAR(45) NULL,
  `Surname` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Mobile` VARCHAR(45) NULL,
  PRIMARY KEY (`Customer id`),
  UNIQUE INDEX `Mobile_UNIQUE` (`Mobile` ASC) VISIBLE);

INSERT INTO `lp-task`.`customer`
(`Customer id`,
`First Name`,
`Surname`,
`City`,
`Mobile`)
VALUES
(1,'Abhijeet','Singh','Mumbai',9718246181),
(2,'Saksham','Gambhir','Faridabad',9321236724),
(3,'Aditi','Khatri','New Delhi',9673123682),
(4,'Akansha','Chopra','Chandigarh',9868721239);

