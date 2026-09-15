CREATE USER 'marco.ramirez'@'%' IDENTIFIED BY 'qwerty123';
CREATE USER 'aaron.carballo'@'%' IDENTIFIED BY '240045';
CREATE USER 'mario.banda'@'%' IDENTIFIED BY '240597';
CREATE USER 'samuel.vargas'@'%' IDENTIFIED BY '240023';

/*Asignar los privilegios de super usuario Importante*/
GRANT ALL PRIVILEGES ON "." TO 'aaron.carballo'@'%';

/* Asignar Privilegios de seleccion, insercion, actualizacion y eliminacion de usuario de la izquierda*/
GRANT SELECT, UPDATE, INSERT, DELETE ON test_database* TO 'mario.banda'@'%';

/*Creacion de Roles para el sistema de ecomerce*/
CREATE ROLE 'admin';
CREATE ROLE 'seller';
CREATE ROLE 'buyer';
CREATE ROLE 'guest';
CREATE ROLE 'support';
CREATE ROLE 'common';
CREATE ROLE 'user_not_registered';

GRANT 'admin' TO 'marco.ramirez'@'%';
GRANT ALL PRIVILEGES ON test_database* TO 'admin';
GRANT SELECT, UPDATE, INSERT ON test_database* TO 'support';



