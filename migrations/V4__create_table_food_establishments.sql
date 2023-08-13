DROP TABLE IF EXISTS `food_establishments`;

CREATE TABLE `food_establishments` (
    `id` int NOT NULL AUTO_INCREMENT,
    `postal_code_official` varchar(6) DEFAULT NULL,
    `business_name` varchar(255) DEFAULT NULL,
    `sfa_license_no` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `constraint_unique_sfa_license` (`sfa_license_no`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;