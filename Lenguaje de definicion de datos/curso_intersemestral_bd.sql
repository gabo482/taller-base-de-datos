-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema curso_intersemestral
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema curso_intersemestral
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `curso_intersemestral` DEFAULT CHARACTER SET utf8mb3 ;
SHOW WARNINGS;
USE `curso_intersemestral` ;

-- -----------------------------------------------------
-- Table `curso_intersemestral`.`localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `curso_intersemestral`.`localidad` (
  `id_localidad` INT NOT NULL,
  `localidad` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_localidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `curso_intersemestral`.`alumnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `curso_intersemestral`.`alumnos` (
  `ID` CHAR(10) NOT NULL,
  `NOMBRE` VARCHAR(100) NOT NULL,
  `id_localidad` INT NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;
CREATE INDEX `fk_alumnos_localidad` ON `curso_intersemestral`.`alumnos` (`id_localidad` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `curso_intersemestral`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `curso_intersemestral`.`cursos` (
  `curso` CHAR(6) NOT NULL,
  `tutor` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`curso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `curso_intersemestral`.`matriculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `curso_intersemestral`.`matriculas` (
  `fecha_matricula` DATE NULL DEFAULT NULL,
  `ID` CHAR(10) NULL DEFAULT NULL,
  `CURSO` CHAR(6) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;
CREATE INDEX `FK_id_alumno` ON `curso_intersemestral`.`matriculas` (`ID` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `FK_CURSO` ON `curso_intersemestral`.`matriculas` (`CURSO` ASC) VISIBLE;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
