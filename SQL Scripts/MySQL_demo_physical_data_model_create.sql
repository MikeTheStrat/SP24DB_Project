-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-02-13 03:58:24.259

-- tables
-- Table: exercise_data
CREATE TABLE `exercise_data` (
    `id` int  NOT NULL AUTO_INCREMENT,
    `excerise_name` varchar(255)  NOT NULL,
    UNIQUE INDEX `payment_data_ak_1` (`excerise_name`),
    CONSTRAINT `exercise_data_pk` PRIMARY KEY (`id`)
);

-- Table: exercise_details
CREATE TABLE `exercise_details` (
    `id` int  NOT NULL AUTO_INCREMENT,
    `exercise_name_id` int  NOT NULL,
    `muscle_group` char(255)  NOT NULL,
    `equipment` char(255)  NOT NULL,
    `muscle` char(255)  NOT NULL,
    CONSTRAINT `exercise_details_pk` PRIMARY KEY (`id`)
);

-- Table: food_data
CREATE TABLE `food_data` (
    `id` int  NOT NULL AUTO_INCREMENT,
    `food_name` varchar(255)  NOT NULL,
    UNIQUE INDEX `payment_data_ak_1` (`food_name`),
    CONSTRAINT `food_data_pk` PRIMARY KEY (`id`)
);

-- Table: food_details
CREATE TABLE `food_details` (
    `id` int  NOT NULL AUTO_INCREMENT,
    `food_name_id` int  NOT NULL,
    `protein` int  NOT NULL,
    `fat` int  NOT NULL,
    `carb` int  NOT NULL,
    `kcal` int  NOT NULL,
    CONSTRAINT `food_details_pk` PRIMARY KEY (`id`)
);

-- foreign keys
-- Reference: Copy_of_payment_details_payment_data (table: exercise_details)
ALTER TABLE `exercise_details` ADD CONSTRAINT `Copy_of_payment_details_payment_data` FOREIGN KEY `Copy_of_payment_details_payment_data` (`exercise_name_id`)
    REFERENCES `exercise_data` (`id`);

-- Reference: payment_details_payment_data (table: food_details)
ALTER TABLE `food_details` ADD CONSTRAINT `payment_details_payment_data` FOREIGN KEY `payment_details_payment_data` (`food_name_id`)
    REFERENCES `food_data` (`id`);

-- End of file.

