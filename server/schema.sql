DROP DATABASE chat; 

CREATE DATABASE chat;

USE chat;

  -- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'
-- 
-- ---

DROP TABLE IF EXISTS messages;
    
CREATE TABLE messages (
  id INTEGER AUTO_INCREMENT NOT NULL,
  username VARCHAR(20),
  text text,
  roomname VARCHAR(20),
  PRIMARY KEY (`id`)  
);

INSERT INTO messages (username, text, roomname)
VALUES ('Duss', 'Hello!', 'main'), ('Sam', 'Hi Sam!', 'main');

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`username`,`text`,`roomname`) VALUES
-- ('','','','');


/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

