-- MySQL Script generated by MySQL Workbench
-- Tue Feb 14 14:28:56 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema rt20g
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `rt20g` ;

-- -----------------------------------------------------
-- Schema rt20g
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rt20g` DEFAULT CHARACTER SET utf8mb4 ;
SHOW WARNINGS;
USE `rt20g` ;

-- -----------------------------------------------------
-- Table `rt20g`.`petstore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rt20g`.`petstore` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `rt20g`.`petstore` (
  `pst_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_name` VARCHAR(30) NOT NULL,
  `pst_street` VARCHAR(30) NOT NULL,
  `pst_city` VARCHAR(30) NOT NULL,
  `pst_state` CHAR(2) NOT NULL,
  `pst_zip` CHAR(9) NOT NULL,
  `pst_phone` BIGINT UNSIGNED NOT NULL,
  `pst_email` VARCHAR(100) NOT NULL,
  `pst_url` VARCHAR(100) NOT NULL,
  `pst_ytd_sales` DECIMAL(10,2) NOT NULL,
  `pst_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pst_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `rt20g`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rt20g`.`customer` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `rt20g`.`customer` (
  `cus_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_fname` VARCHAR(15) NOT NULL,
  `cus_lname` VARCHAR(30) NOT NULL,
  `cus_street` VARCHAR(30) NOT NULL,
  `cus_city` VARCHAR(30) NOT NULL,
  `cus_state` CHAR(2) NOT NULL,
  `cus_zip` CHAR(9) NOT NULL,
  `cus_phone` BIGINT UNSIGNED NOT NULL,
  `cus_email` VARCHAR(100) NOT NULL,
  `cus_balance` DECIMAL(8,2) NOT NULL,
  `cus_total_sales` DECIMAL(8,2) NOT NULL,
  `cus_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`cus_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `rt20g`.`pet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rt20g`.`pet` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `rt20g`.`pet` (
  `pet_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_id` SMALLINT UNSIGNED NOT NULL,
  `cus_id` SMALLINT UNSIGNED NULL,
  `pet_type` VARCHAR(45) NOT NULL,
  `pet_sex` ENUM('m', 'f') NOT NULL,
  `pet_cost` DECIMAL(6,2) NOT NULL,
  `pet_price` DECIMAL(6,2) NOT NULL,
  `pet_age` TINYINT NOT NULL,
  `pet_color` VARCHAR(30) NOT NULL,
  `pet_sale_date` DATE NULL,
  `pet_vaccine` ENUM('y', 'n') NOT NULL,
  `pet_neuter` ENUM('y', 'n') NOT NULL,
  `pet_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pet_id`),
  INDEX `fk_pet_petstore_idx` (`pst_id` ASC) VISIBLE,
  INDEX `fk_pet_customer1_idx` (`cus_id` ASC) VISIBLE,
  CONSTRAINT `fk_pet_petstore`
    FOREIGN KEY (`pst_id`)
    REFERENCES `rt20g`.`petstore` (`pst_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pet_customer1`
    FOREIGN KEY (`cus_id`)
    REFERENCES `rt20g`.`customer` (`cus_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `rt20g`.`petstore`
-- -----------------------------------------------------
START TRANSACTION;
USE `rt20g`;
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Claws and Paws', '123 Main St.', 'L.A.', 'CA', '191812121', 7814929431, 'clawspaws@aol.com', 'http://clawspaws.com', 50000, 'notes1');
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Furry Friends', '1435 Chase Dr.', 'Chicago', 'IL', '618989349', 4049329119, 'furryfriends@hotmail.com', 'http://furryfriends.com', 65000, 'notes2');
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Pet Partners', '811 4th St.', 'NY', 'NY', '221123455', 7718628910, 'petpartners@yahoo.com', 'http://petpartners.com', 87000, 'notes3');
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Pet Palace', '18903 Tennessee St.', 'Tallahassee', 'FL', '123412345', 6784928810, 'petpalace@gmail.com', 'http://petpalace.com', 34000, 'notes4');
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Purrs and Grrs', '751 Lois Lane', 'Phoenix', 'AZ', '852891345', 5058901234, 'purrsandgrrs@msn.com', 'http://purrsandgurrs.com', 97500, 'notes5');
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Furry Friends Emporium', '123 Main St.', 'Orlando', 'FL', '921281234', 5556768901, 'info@furryfriendsemporium.com', 'http://www.furryfriendsemporium.com', 100000, 'notes6');
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Purrfect Paradise Pet Shop', '456 Ocean Ave.', 'Atlanta ', 'GA', '234556789', 1234567890, 'hello@purrfectparadisepetshop.com', 'http://www.purrfectparadisepetshop.com', 110000, 'notes7');
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Woof & Meow World', ' 789 Dogwood Lane', 'Boston', 'MA', '678971234', 4567890123, 'contact@woofandmeowworld.com', 'http://www.woofandmeowworld.com', 115000, 'notes8');
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'The Critter Corner', '111 Animal Ave.', 'Dallas', 'TX', '555345678', 5553456789, 'thecrittercorner@gmail.com', 'http://www.thecrittercorner.com', 60000, 'notes9');
INSERT INTO `rt20g`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Tails & Scales Pet Supply', '222 Fish St.', 'Houston', 'TX', '891123123', 5554567890, 'info@tailsandscales.com', 'http://www.tailsandscales.com', 80000, 'notes10');

COMMIT;


-- -----------------------------------------------------
-- Data for table `rt20g`.`customer`
-- -----------------------------------------------------
START TRANSACTION;
USE `rt20g`;
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Billy', 'Bob', '502 Shady St.', 'Minneapolis', 'MN', '123456789', 9567489212, 'bbob@aol.com', 139.52, 987.61, 'notes1');
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Bobby ', 'Sue', '19567 Rutherford Cir.', 'Charleston', 'WV', '456789123', 4048921234, 'sbobby@hotmail.com', 49.87, 1356.89, 'notes2');
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Stevie', 'Ray', '8624 Baldwin Dr.', 'Panama City Beach', 'FL', '567891345', 9811234567, 'sray@fsu.edu', 9.34, 567.63, 'notes3');
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Felicia', 'Fuller', '7831 Tempest Ln.', 'Sturgis', 'SD', '678123456', 4049329818, 'ffuller@msn.com', 0.0, 784.29, 'notes4');
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Victoria', 'Valis', '63145 Northshore Dr.', 'Laramie', 'WY', '234567891', 7815921345, 'vvalis@yahoo.com', 1189.40, 19567.89, 'notes5');
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Emily', 'Johnson', '123 Elm St.', 'Austin', 'TX', '567456123', 6785467818, 'emilyj@email.com', 567.23, 2902.44, 'notes6');
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Michael', 'Williams', '456 Oak Ave.', 'Dallas', 'TX', '123451234', 8984491234, 'michaelw@email.com', 551.22, 1234.55, 'notes7');
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Sarah', 'Brown', '789 Maple Dr.', 'Miami', 'FL', '567891231', 9789901918, 'sarahb@email.com', 667.90, 2234.55, 'notes8');
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'David ', 'Davis', '111 Pine St.', 'Juno Beach', 'FL', '678123444', 7709811234, 'davidd@email.com', 56.88, 445.67, 'notes9');
INSERT INTO `rt20g`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Jessica ', 'Smith', '222 Cedar Rd.', 'Sacramento', 'CA', '456781334', 6678931234, 'jessicas@email.com', 344.55, 1234.77, 'notes10');

COMMIT;


-- -----------------------------------------------------
-- Data for table `rt20g`.`pet`
-- -----------------------------------------------------
START TRANSACTION;
USE `rt20g`;
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 1, 1, 'Doberman', 'm', 250, 525, 52, 'black/tan', '2009-07-04', 'y', 'y', 'notes1');
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 2, 2, 'Chiwawa', 'f', 175, 165, 78, 'white/brown', NULL, 'n', 'n', 'notes2');
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 3, 3, 'American Bobtail', 'm', 195, 385, 104, 'black', '2011-12-24', 'y', 'y', 'notes3');
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 4, 4, 'American Longhair', 'm', 165, 275, 15, 'white', '2005-08-01', 'n', 'n', 'notes4');
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, 5, 'British Shorthair', 'f', 155, 145, 28, 'grey', NULL, 'y', 'y', 'notes5');
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 6, 6, 'Rose-Ringed Parakeet', 'f', 18, 32, 2, 'green/yellow', '2010-11-12', 'n', 'n', 'notes6');
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 7, 7, 'African Grey Parrot', 'm', 1295, 1800, 100, 'grey/blue', '2007-09-19', 'n', 'n', 'notes7');
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 8, 8, 'Pitbull', 'm', 664, 800, 50, 'brown', '2001-06-12', 'y', 'y', 'notes8');
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 9, 9, 'Boa Constrictor', 'f', 450, 745, 35, 'grey/green', '2006-07-18', 'n', 'n', 'notes9');
INSERT INTO `rt20g`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 10, 10, 'Giraffe', 'f', 1735, 2495, 70, 'yellow and black spots', NULL, 'n', 'n', 'notes10');

COMMIT;

