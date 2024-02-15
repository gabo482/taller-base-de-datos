-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema academia
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `academia` ;

-- -----------------------------------------------------
-- Schema academia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `academia` DEFAULT CHARACTER SET utf8mb4 ;
USE `academia` ;

-- -----------------------------------------------------
-- Table `academia`.`estado_region`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `academia`.`estado` (
  `id_estado` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `academia`.`municipio_alcaldia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `academia`.`localidad` (
  `id_localidad` INT(3) NOT NULL AUTO_INCREMENT,
  `localidad` VARCHAR(50) NULL DEFAULT NULL
  )  
ENGINE = InnoDB
AUTO_INCREMENT = 142
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `academia`.`alumnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `academia`.`alumnos` (
  `id_Alumno` INT(11) NOT NULL,
  `nombres` VARCHAR(200) NOT NULL,
  `PRIMER_APELLIDO_ALUMNO` VARCHAR(100) NOT NULL,
  `SEGUNDO_APELLIDO_ALUMNO` VARCHAR(100) NOT NULL,
  `FCH_NAC_ALUMNO` DATE NULL DEFAULT NULL,
  `alumno_municipio_alcaldia` INT(3) NOT NULL,
  PRIMARY KEY (`id_Alumno`))
ENGINE = InnoDB
AUTO_INCREMENT = 24
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `academia`.`asignaturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `academia`.`asignaturas` (
  `ID_ASIGNATURA` INT(11) NOT NULL AUTO_INCREMENT,
  `ASIGNATURA` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ID_ASIGNATURA`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8mb4;

