DROP DATABASE IF EXISTS `toDoDB`;
CREATE SCHEMA IF EXISTS `toDoDB`;

USE `toDoDB`;

CREATE TABLE IF NOT EXISTS `user`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(90) NOT NULL,
    `password` VARCHAR(90) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `toDo`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `task` VARCHAR(600) NOT NULL,
    `status` VARCHAR(15) NOT NULL,
    `user_id` INT NOT NULL FOREIGN KEY,
);