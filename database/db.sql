CREATE DATABASE db_links;

USE heroku_59998a32e2b66ce;

--Tabla de usuarios
CREATE TABLE users(
    id INT(10) NOT NULL,
    username VARCHAR(20) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY (id);

ALTER TABLE users 
    MODIFY id INT(10) NOT NULL AUTO_INCREMENT;

DESCRIBE users;

--Tabla de enlaces
CREATE TABLE links(
    id INT(10) NOT NULL,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT(10),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE links 
    ADD PRIMARY KEY (id);

ALTER TABLE links
    MODIFY id INT(10) NOT NULL AUTO_INCREMENT;

DESCRIBE links;