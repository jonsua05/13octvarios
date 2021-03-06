-- MySQL Script generated by MySQL Workbench
-- Thu Aug 22 21:31:39 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema prueba1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema prueba1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prueba1` DEFAULT CHARACTER SET utf8 ;
USE `prueba1` ;

-- -----------------------------------------------------
-- Table `prueba1`.`tb_users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prueba1`.`tb_users` (
  `USER_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` VARCHAR(45) NOT NULL,
  `USER_EMAIL` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`USER_ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
