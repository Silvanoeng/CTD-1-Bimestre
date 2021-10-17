USE musimundosv2;

/*1-a*/
SHOW INDEX FROM cancoes;

SELECT * FROM cancoes;

/*1-b*/
DROP INDEX I_cancoes_nome on cancoes;

/*1-c*/
CREATE INDEX I_cancoes_nome ON cancoes (nome); 

/*2-a*/
EXPLAIN SELECT bytes from cancoes
WHERE nome="Be Yourself";

/*3-a*/
SELECT HIGH_PRIORITY * FROM cancoes;

/*3-b*/
UPDATE LOW_PRIORITY cancoes SET
nome = "I am Crazy"
WHERE nome="Crazy";

/*4-a*/
SELECT BENCHMARK( 100000000, (SELECT compositor FROM cancoes WHERE nome="I am Crazy" LIMIT 1));

/*5-a*/
SELECT * FROM mysql.user;

/*5-b*/
CREATE USER 'silvano'@'localhost' IDENTIFIED BY '123456';

CREATE USER 'isadora'@'localhost' IDENTIFIED BY '456789';

CREATE USER 'marina'@'localhost' IDENTIFIED BY '789123';

/*5-c*/
SELECT * FROM mysql.user;

/*5-d*/
GRANT ALL PRIVILEGES ON *.* TO 'silvano'@'localhost';

/*5-e*/
GRANT INSERT ON *.* TO 'isadora'@'localhost';

/*5-f*/
GRANT SELECT ON musimundosv2.cancoes TO 'marina'@'localhost';

/*5-g*/
SHOW GRANTS FOR 'silvano'@'localhost';

/*5-h*/
REVOKE UPDATE ON *.* FROM 'silvano'@'localhost';

/*5-i*/
SHOW GRANTS FOR 'silvano'@'localhost';

/*5-c*/
DROP USER 'silvano'@'localhost';
SELECT * FROM mysql.user;
