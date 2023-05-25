-- phase 9
CREATE USER 'john_doe'@'localhost' identified by 'johndoe2000johndoe';
REVOKE ALL, GRANT OPTION FROM 'john_doe'@'localhost';
GRANT SELECT ON * TO 'john_doe'@'localhost';

SELECT user FROM mysql.user;
show grants for 'john_doe'@'localhost'