CREATE SCHEMA `lp-task`;
USE `lp-task`;
CREATE TABLE `lp-task`.`product` (
    `Product id` INT NOT NULL,
    `Name` VARCHAR(90) NULL,
    `stock` INT NULL,
    PRIMARY KEY (`Product id`)
);
INSERT INTO `lp-task`.`product` (`Product id`, `Name`, `stock`)
VALUES (1, 'Dell-display-1080p', 423),
    (2, 'Dell-keyboard-bu', 211),
    (3, 'Kingston-flash-drive-64GB', 18);
CREATE TABLE `lp-task`.`customer` (
    `Customer id` INT NOT NULL,
    `First Name` VARCHAR(45) NULL,
    `Surname` VARCHAR(45) NULL,
    `City` VARCHAR(45) NULL,
    `Mobile` VARCHAR(45) NULL,
    `Product id` VARCHAR(25) NULL,
    PRIMARY KEY (`Customer id`),
    UNIQUE INDEX `Mobile_UNIQUE` (`Mobile` ASC) VISIBLE
);
INSERT INTO `lp-task`.`customer` (
        `Customer id`,
        `First Name`,
        `Surname`,
        `City`,
        `Mobile`,
        `Product id`
    )
VALUES (
        1,
        ' Abhijeet ',
        ' Singh ',
        ' Mumbai ',
        9718246181,
        '3'
    ),
    (
        2,
        ' Saksham ',
        ' Gambhir ',
        ' Faridabad ',
        9321236724,
        '2'
    ),
    (
        3,
        ' Aditi ',
        ' Khatri ',
        ' New Delhi ',
        9673123682,
        '1'
    ),
    (
        4,
        ' Akansha ',
        ' Chopra ',
        ' Chandigarh ',
        9868721239,
        '3'
    );
SELECT customer.`Product id`,
    customer.`First Name`,
    customer.Mobile
FROM `lp-task`.customer
    INNER JOIN product ON customer.`Product id` = product.`Product id`;