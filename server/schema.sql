DROP DATABASE if exists chat; 

CREATE DATABASE chat;

USE chat;

CREATE TABLE rooms (
  id INTEGER AUTO_INCREMENT NOT NULL,
  roomname VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INTEGER AUTO_INCREMENT NOT NULL,
  username VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE messages (
  id INTEGER AUTO_INCREMENT NOT NULL,
  user_id INTEGER NOT NULL,
  text text,
  room_id INTEGER NOT NULL,
  createdAt timestamp DEFAULT now() ON UPDATE now(),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (room_id) REFERENCES rooms(id)  
);

-- INSERT INTO messages (username, text, roomname)
-- VALUES ('Diane', 'Where is puffball?!', 'main'), ('Sam', 'Taking so many classes', 'main'), ('Steve', 'Oh', 'main');




/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

