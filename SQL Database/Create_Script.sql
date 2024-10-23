-- MySQL Script generated by MySQL Workbench
-- Wed Oct 23 14:36:04 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema covid_vax_events
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema covid_vax_events
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `covid_vax_events` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `covid_vax_events` ;

-- -----------------------------------------------------
-- Table `covid_vax_events`.`sample_sympt_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `covid_vax_events`.`sample_sympt_data` (
  `VAERS_ID` INT NULL DEFAULT NULL,
  `SYMPTOM1` TEXT NULL DEFAULT NULL,
  `SYMPTOM2` TEXT NULL DEFAULT NULL,
  `SYMPTOM3` TEXT NULL DEFAULT NULL,
  `SYMPTOM4` TEXT NULL DEFAULT NULL,
  `SYMPTOM5` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `covid_vax_events`.`sample_vax_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `covid_vax_events`.`sample_vax_data` (
  `VAERS_ID` INT NULL DEFAULT NULL,
  `VAX_MANU` TEXT NULL DEFAULT NULL,
  `VAX_LOT` TEXT NULL DEFAULT NULL,
  `VAX_DOSE_SERIES` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `covid_vax_events`.`event_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `covid_vax_events`.`event_data` (
  `VAERS_ID` INT NOT NULL,
  `STATE` TEXT NULL DEFAULT NULL,
  `AGE_YRS` DOUBLE NULL DEFAULT NULL,
  `SEX` INT NULL DEFAULT NULL,
  `DIED` INT NULL DEFAULT NULL,
  `L_THREAT` INT NULL DEFAULT NULL,
  `HOSPITAL` INT NULL DEFAULT NULL,
  `DISABLE` INT NULL DEFAULT NULL,
  `RECOVD` INT NULL DEFAULT NULL,
  `VAX_DATE` TEXT NULL DEFAULT NULL,
  `BIRTH_DEFECT` INT NULL DEFAULT NULL,
  PRIMARY KEY (`VAERS_ID`),
  CONSTRAINT `VAERS_ID`
    FOREIGN KEY ()
    REFERENCES `covid_vax_events`.`sample_sympt_data` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `VAERS_ID`
    FOREIGN KEY ()
    REFERENCES `covid_vax_events`.`sample_vax_data` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;