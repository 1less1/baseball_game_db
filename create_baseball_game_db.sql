-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema baseball_game_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `baseball_game_db` ;

-- -----------------------------------------------------
-- Schema baseball_game_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `baseball_game_db` DEFAULT CHARACTER SET utf8mb3 ;
SHOW WARNINGS;
USE `baseball_game_db` ;

-- -----------------------------------------------------
-- Table `stadium`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stadium` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `stadium` (
  `Stadium_ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(25) NOT NULL,
  `Field_Size` INT NOT NULL,
  `Ticket_Cost` DECIMAL(9,2) NOT NULL,
  `Max_Capacity` INT NOT NULL,
  PRIMARY KEY (`Stadium_ID`),
  UNIQUE INDEX `ID_UNIQUE` (`Stadium_ID` ASC) VISIBLE,
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `team`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `team` (
  `Team_ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(25) NOT NULL,
  `Home_Town` VARCHAR(25) NOT NULL,
  `League` CHAR(2) NOT NULL CHECK (League IN ('AL', 'NL')),
  `Salary_Cap` DECIMAL(9,2) NOT NULL,
  `Stadium_ID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Team_ID`),
  UNIQUE INDEX `ID_UNIQUE` (`Team_ID` ASC) VISIBLE,
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC) VISIBLE,
  UNIQUE INDEX `HomeTown_UNIQUE` (`Home_Town` ASC) VISIBLE,
  INDEX `fk_Team_Stadium1_idx` (`Stadium_ID` ASC) VISIBLE,
  CONSTRAINT `FK_Team_Stadium`
    FOREIGN KEY (`Stadium_ID`)
    REFERENCES `stadium` (`Stadium_ID`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `coach`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `coach` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `coach` (
  `Coach_ID` INT NOT NULL AUTO_INCREMENT,
  `First_Name` VARCHAR(25) NOT NULL,
  `Last_Name` VARCHAR(25) NOT NULL,
  `Team_ID` INT NULL DEFAULT NULL,
  `Motivator` VARCHAR(8) NULL CHECK (Motivator IN ('Hitting', 'Pitching')),
  PRIMARY KEY (`Coach_ID`),
  UNIQUE INDEX `Coach_ID_UNIQUE` (`Coach_ID` ASC) VISIBLE,
  INDEX `fk_Coach_Team1_idx` (`Team_ID` ASC) VISIBLE,
  CONSTRAINT `FK_Coach_Team`
    FOREIGN KEY (`Team_ID`)
    REFERENCES `team` (`Team_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `countries`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `countries` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `countries` (
  `Country_ID` CHAR(3) NOT NULL,
  `Country_Name` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`Country_ID`),
  UNIQUE INDEX `Country_ID_UNIQUE` (`Country_ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `season`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `season` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `season` (
  `Season_ID` INT NOT NULL,
  `Year` YEAR NOT NULL,
  PRIMARY KEY (`Season_ID`),
  UNIQUE INDEX `Season_ID_UNIQUE` (`Season_ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `game`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `game` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `game` (
  `GameID` INT NOT NULL AUTO_INCREMENT,
  `Season_ID` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Home_Team` INT NULL DEFAULT NULL,
  `Home_Score` TINYINT NOT NULL,
  `Away_Team` INT NULL DEFAULT NULL,
  `Away_Score` TINYINT NOT NULL,
  `Winner` INT NULL DEFAULT NULL,
  PRIMARY KEY (`GameID`),
  UNIQUE INDEX `GameID_UNIQUE` (`GameID` ASC) VISIBLE,
  INDEX `AwayTeam_idx` (`Away_Team` ASC) VISIBLE,
  INDEX `Winner_idx` (`Winner` ASC) VISIBLE,
  INDEX `fk_Game_Season1_idx` (`Season_ID` ASC) VISIBLE,
  INDEX `HomeTeam_idx` (`Home_Team` ASC) VISIBLE,
  CONSTRAINT `FK_Game_Away_Team`
    FOREIGN KEY (`Away_Team`)
    REFERENCES `team` (`Team_ID`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `FK_Game_Season`
    FOREIGN KEY (`Season_ID`)
    REFERENCES `season` (`Season_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_Game_Home_Team`
    FOREIGN KEY (`Home_Team`)
    REFERENCES `team` (`Team_ID`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `FK_Game_Winner`
    FOREIGN KEY (`Winner`)
    REFERENCES `team` (`Team_ID`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `position`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `position` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `position` (
  `Position_ID` INT NOT NULL,
  `Code` VARCHAR(2) NOT NULL,
  `Name` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`Position_ID`),
  UNIQUE INDEX `BatterPositions_ID_UNIQUE` (`Position_ID` ASC) VISIBLE,
  UNIQUE INDEX `PositionCode_UNIQUE` (`Code` ASC) VISIBLE,
  UNIQUE INDEX `PositionName_UNIQUE` (`Name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `player`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `player` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `player` (
  `Player_ID` INT NOT NULL AUTO_INCREMENT,
  `First_Name` VARCHAR(25) NOT NULL,
  `Last_Name` VARCHAR(25) NOT NULL,
  `Position_ID` INT NOT NULL,
  `Team_ID` INT NULL DEFAULT NULL,
  `Age` INT NOT NULL,
  `Country_ID` CHAR(3) NOT NULL,
  PRIMARY KEY (`Player_ID`),
  UNIQUE INDEX `ID_UNIQUE` (`Player_ID` ASC) VISIBLE,
  INDEX `fk_Player_Position1_idx` (`Position_ID` ASC) VISIBLE,
  INDEX `fk_Player_Team1_idx` (`Team_ID` ASC) VISIBLE,
  INDEX `fk_Player_Countries1_idx` (`Country_ID` ASC) VISIBLE,
  CONSTRAINT `FK_Player_Country`
    FOREIGN KEY (`Country_ID`)
    REFERENCES `countries` (`Country_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_Player_Position`
    FOREIGN KEY (`Position_ID`)
    REFERENCES `position` (`Position_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_Player_Team`
    FOREIGN KEY (`Team_ID`)
    REFERENCES `team` (`Team_ID`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `gamestats`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gamestats` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `gamestats` (
  `Player_ID` INT NOT NULL,
  `Season_ID` INT NOT NULL,
  `Games_Played` INT NULL DEFAULT '0',
  `At_Bats` INT NULL DEFAULT '0',
  `Hits` INT NULL DEFAULT '0',
  `RBIs` INT NULL DEFAULT '0',
  `Runs` INT NULL DEFAULT '0',
  `Innings_Pitched` INT NULL DEFAULT '0',
  `Earned_Runs` INT NULL DEFAULT '0',
  `Strikeouts` INT NULL DEFAULT '0',
  `Walks` INT NULL DEFAULT '0',
  PRIMARY KEY (`Player_ID`, `Season_ID`),
  INDEX `fk_Stats_Player1_idx` (`Player_ID` ASC) VISIBLE,
  INDEX `fk_Stats_Season1_idx` (`Season_ID` ASC) VISIBLE,
  CONSTRAINT `FK_Gamestats_Player`
    FOREIGN KEY (`Player_ID`)
    REFERENCES `player` (`Player_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_Gamestats_Season`
    FOREIGN KEY (`Season_ID`)
    REFERENCES `season` (`Season_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ratings` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ratings` (
  `Player_ID` INT NOT NULL,
  `Contact` TINYINT NOT NULL,
  `Power` TINYINT NOT NULL,
  `Eye` TINYINT NOT NULL,
  `Speed` TINYINT NOT NULL,
  `K_Per_Nine` TINYINT NOT NULL,
  `BB_Per_Nine` TINYINT NOT NULL,
  `HR_Per_Nine` TINYINT NOT NULL,
  PRIMARY KEY (`Player_ID`),
  CONSTRAINT `FK_Ratings_Player`
    FOREIGN KEY (`Player_ID`)
    REFERENCES `player` (`Player_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

