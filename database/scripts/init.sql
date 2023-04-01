CREATE DATABASE lportal;

CREATE USER 'albertlportal'@'127.0.0.1' IDENTIFIED WITH mysql_native_password BY 'pass';

GRANT ALL ON lportal.* TO 'albertlportal'@'127.0.0.1';

/* Make sure the privileges are installed */
FLUSH PRIVILEGES;

USE lportal;

ALTER USER 'albertlportal'@'localhost' IDENTIFIED BY 'pass';