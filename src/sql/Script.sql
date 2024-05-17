-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Role` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Role` (
  `Role.id` INT NOT NULL,
  `Role.name` VARCHAR(45) NULL,
  PRIMARY KEY (`Role.id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`User` ;

CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `User.id` INT NOT NULL,
  `User.username` VARCHAR(45) NULL,
  `User.email` VARCHAR(45) NULL,
  `User.password` VARCHAR(45) NULL,
  `User.firstname` VARCHAR(45) NULL,
  `User.lastname` VARCHAR(45) NULL,
  `Usercol` VARCHAR(45) NULL,
  `Role_Role.id` INT NOT NULL,
  PRIMARY KEY (`User.id`),
  INDEX `fk_User_Role1_idx` (`Role_Role.id` ASC) VISIBLE,
  CONSTRAINT `fk_User_Role1`
    FOREIGN KEY (`Role_Role.id`)
    REFERENCES `mydb`.`Role` (`Role.id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Datafile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Datafile` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Datafile` (
  `Datafile.id` INT NOT NULL,
  `Datafile.name` VARCHAR(45) NULL,
  `Datafile.content` VARCHAR(45) NULL,
  `Datafile.description` VARCHAR(45) NULL,
  `Datafile.format` VARCHAR(45) NULL,
  `Datafile.date` DATETIME NULL,
  PRIMARY KEY (`Datafile.id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Access`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Access` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Access` (
  `Access.id` INT NOT NULL,
  `User_User.id` INT NOT NULL,
  `Datafile_Datafile.id` INT NOT NULL,
  PRIMARY KEY (`Access.id`),
  INDEX `fk_Access_User1_idx` (`User_User.id` ASC) VISIBLE,
  INDEX `fk_Access_Datafile1_idx` (`Datafile_Datafile.id` ASC) VISIBLE,
  CONSTRAINT `fk_Access_User1`
    FOREIGN KEY (`User_User.id`)
    REFERENCES `mydb`.`User` (`User.id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Access_Datafile1`
    FOREIGN KEY (`Datafile_Datafile.id`)
    REFERENCES `mydb`.`Datafile` (`Datafile.id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Request`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Request` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Request` (
  `Request.id` INT NOT NULL,
  `Request.type` VARCHAR(45) NULL,
  `Request.message` VARCHAR(45) NULL,
  `User_User.id` INT NOT NULL,
  `Access_Access.id` INT NOT NULL,
  PRIMARY KEY (`Request.id`, `User_User.id`, `Access_Access.id`),
  INDEX `fk_Request_User1_idx` (`User_User.id` ASC) VISIBLE,
  INDEX `fk_Request_Access1_idx` (`Access_Access.id` ASC) VISIBLE,
  CONSTRAINT `fk_Request_User1`
    FOREIGN KEY (`User_User.id`)
    REFERENCES `mydb`.`User` (`User.id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Request_Access1`
    FOREIGN KEY (`Access_Access.id`)
    REFERENCES `mydb`.`Access` (`Access.id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Tag` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Tag` (
  `Tag.name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Tag.name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Datafile_tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Datafile_tag` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Datafile_tag` (
  `Datafile_Datafile.id` INT NOT NULL,
  `Tag_Tag.name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Datafile_Datafile.id`, `Tag_Tag.name`),
  INDEX `fk_Datafile_tag_Tag1_idx` (`Tag_Tag.name` ASC) VISIBLE,
  CONSTRAINT `fk_Datafile_tag_Datafile1`
    FOREIGN KEY (`Datafile_Datafile.id`)
    REFERENCES `mydb`.`Datafile` (`Datafile.id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Datafile_tag_Tag1`
    FOREIGN KEY (`Tag_Tag.name`)
    REFERENCES `mydb`.`Tag` (`Tag.name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Permission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Permission` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Permission` (
  `Permission.id` INT NOT NULL,
  `Permission.name` VARCHAR(45) NULL,
  PRIMARY KEY (`Permission.id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Grant_ Permission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Grant_ Permission` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Grant_ Permission` (
  `Permission_Permission.id` INT NOT NULL,
  `Role_Role.id` INT NOT NULL,
  PRIMARY KEY (`Permission_Permission.id`, `Role_Role.id`),
  INDEX `fk_Grant_ Permission_Role1_idx` (`Role_Role.id` ASC) VISIBLE,
  CONSTRAINT `fk_Grant_ Permission_Permission`
    FOREIGN KEY (`Permission_Permission.id`)
    REFERENCES `mydb`.`Permission` (`Permission.id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Grant_ Permission_Role1`
    FOREIGN KEY (`Role_Role.id`)
    REFERENCES `mydb`.`Role` (`Role.id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`Role`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Role` (`Role.id`, `Role.name`) VALUES (1, 'sadmin');
INSERT INTO `mydb`.`Role` (`Role.id`, `Role.name`) VALUES (2, 'developer');
INSERT INTO `mydb`.`Role` (`Role.id`, `Role.name`) VALUES (3, 'moderator');
INSERT INTO `mydb`.`Role` (`Role.id`, `Role.name`) VALUES (4, 'user');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`User`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`User` (`User.id`, `User.username`, `User.email`, `User.password`, `User.firstname`, `User.lastname`, `Usercol`, `Role_Role.id`) VALUES (1, 'user1', 'user1@gmal.com', 'abcdfg', 'Guy', 'Ritchie', 'a', 1);
INSERT INTO `mydb`.`User` (`User.id`, `User.username`, `User.email`, `User.password`, `User.firstname`, `User.lastname`, `Usercol`, `Role_Role.id`) VALUES (2, 'user2', 'user2@gmal.com', 'abcdfo', 'Big', 'Lebovski', 'b', 3);
INSERT INTO `mydb`.`User` (`User.id`, `User.username`, `User.email`, `User.password`, `User.firstname`, `User.lastname`, `Usercol`, `Role_Role.id`) VALUES (3, 'user3', 'user3@gmal.com', 'abcdfp', 'Quentin', 'Tarantino', 'c', 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Datafile`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Datafile` (`Datafile.id`, `Datafile.name`, `Datafile.content`, `Datafile.description`, `Datafile.format`, `Datafile.date`) VALUES (1, 'Schema', 'photo', 'schema of relations', 'png', '2024-5-12');
INSERT INTO `mydb`.`Datafile` (`Datafile.id`, `Datafile.name`, `Datafile.content`, `Datafile.description`, `Datafile.format`, `Datafile.date`) VALUES (2, 'Docs', 'information', 'information about team', 'word', '2024-5-13');
INSERT INTO `mydb`.`Datafile` (`Datafile.id`, `Datafile.name`, `Datafile.content`, `Datafile.description`, `Datafile.format`, `Datafile.date`) VALUES (3, 'Docs', 'information', 'development information', 'word', '2024-5-14');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Access`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Access` (`Access.id`, `User_User.id`, `Datafile_Datafile.id`) VALUES (1, 1, 1);
INSERT INTO `mydb`.`Access` (`Access.id`, `User_User.id`, `Datafile_Datafile.id`) VALUES (2, 2, 2);
INSERT INTO `mydb`.`Access` (`Access.id`, `User_User.id`, `Datafile_Datafile.id`) VALUES (3, 3, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Request`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Request` (`Request.id`, `Request.type`, `Request.message`, `User_User.id`, `Access_Access.id`) VALUES (1, 'login', 'You are logined', 1, 1);
INSERT INTO `mydb`.`Request` (`Request.id`, `Request.type`, `Request.message`, `User_User.id`, `Access_Access.id`) VALUES (2, 'login', 'You are logined', 2, 2);
INSERT INTO `mydb`.`Request` (`Request.id`, `Request.type`, `Request.message`, `User_User.id`, `Access_Access.id`) VALUES (3, 'registration', 'You are registered', 3, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Tag`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Tag` (`Tag.name`) VALUES ('abc');
INSERT INTO `mydb`.`Tag` (`Tag.name`) VALUES ('abd');
INSERT INTO `mydb`.`Tag` (`Tag.name`) VALUES ('abh');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Datafile_tag`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Datafile_tag` (`Datafile_Datafile.id`, `Tag_Tag.name`) VALUES (1, 'abc');
INSERT INTO `mydb`.`Datafile_tag` (`Datafile_Datafile.id`, `Tag_Tag.name`) VALUES (2, 'abd');
INSERT INTO `mydb`.`Datafile_tag` (`Datafile_Datafile.id`, `Tag_Tag.name`) VALUES (3, 'abh');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Permission`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Permission` (`Permission.id`, `Permission.name`) VALUES (1, 'Create');
INSERT INTO `mydb`.`Permission` (`Permission.id`, `Permission.name`) VALUES (2, 'Edit');
INSERT INTO `mydb`.`Permission` (`Permission.id`, `Permission.name`) VALUES (3, 'Delete');
INSERT INTO `mydb`.`Permission` (`Permission.id`, `Permission.name`) VALUES (4, 'Execute');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Grant_ Permission`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Grant_ Permission` (`Permission_Permission.id`, `Role_Role.id`) VALUES (1, 1);
INSERT INTO `mydb`.`Grant_ Permission` (`Permission_Permission.id`, `Role_Role.id`) VALUES (1, 2);
INSERT INTO `mydb`.`Grant_ Permission` (`Permission_Permission.id`, `Role_Role.id`) VALUES (1, 3);
INSERT INTO `mydb`.`Grant_ Permission` (`Permission_Permission.id`, `Role_Role.id`) VALUES (2, 1);
INSERT INTO `mydb`.`Grant_ Permission` (`Permission_Permission.id`, `Role_Role.id`) VALUES (2, 2);
INSERT INTO `mydb`.`Grant_ Permission` (`Permission_Permission.id`, `Role_Role.id`) VALUES (2, 3);
INSERT INTO `mydb`.`Grant_ Permission` (`Permission_Permission.id`, `Role_Role.id`) VALUES (2, 4);
INSERT INTO `mydb`.`Grant_ Permission` (`Permission_Permission.id`, `Role_Role.id`) VALUES (3, 1);
INSERT INTO `mydb`.`Grant_ Permission` (`Permission_Permission.id`, `Role_Role.id`) VALUES (3, 3);

COMMIT;
