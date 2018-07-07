DROP DATABASE chat; 

CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  id INTEGER AUTO_INCREMENT NOT NULL,
  username VARCHAR(20),
  text text,
  roomname VARCHAR(20),
  PRIMARY KEY (id)  
);

INSERT INTO messages (username, text, roomname)
VALUES ('Diane', 'Where is puffball?!', 'main'), ('Sam', 'Taking so many classes', 'main');




/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

