-- 1. Creación de usuarios
CREATE USER IF NOT EXISTS 'marco.ramirez'@'%' IDENTIFIED BY 'qwerty123';
CREATE USER IF NOT EXISTS 'aaron.carballo'@'%' IDENTIFIED BY '240045';
CREATE USER IF NOT EXISTS 'mario.banda'@'%' IDENTIFIED BY '240597';
CREATE USER IF NOT EXISTS 'samuel.vargas'@'%' IDENTIFIED BY '240023';
CREATE USER IF NOT EXISTS 'ricardin.gabriel'@'%' IDENTIFIED BY '240349';

-- 2. Creación de roles
CREATE ROLE IF NOT EXISTS 'superadmin';
CREATE ROLE IF NOT EXISTS 'admin';
CREATE ROLE IF NOT EXISTS 'seller';
CREATE ROLE IF NOT EXISTS 'buyer';
CREATE ROLE IF NOT EXISTS 'support';
CREATE ROLE IF NOT EXISTS 'common';
CREATE ROLE IF NOT EXISTS 'user_not_registered';

-- 3. Asignación de permisos a los roles
GRANT ALL PRIVILEGES ON db_test.* TO 'admin';

-- Permisos del rol Support: administración global de usuarios/roles y lectura de esquemas
GRANT SHOW DATABASES, CREATE USER, ROLE_ADMIN ON *.* TO 'support';

-- Permisos sobre la base de datos
GRANT SELECT, INSERT, UPDATE, SHOW VIEW ON db_test.* TO 'support';

-- 4. Asignación de permisos y roles a usuarios directos
GRANT ALL PRIVILEGES ON *.* TO 'aaron.carballo'@'%';
GRANT SELECT, UPDATE, INSERT, DELETE ON db_test.* TO 'mario.banda'@'%';

-- Asignación de roles a usuarios
GRANT 'admin' TO 'marco.ramirez'@'%';
GRANT 'support' TO 'ricardin.gabriel'@'%';

-- 5. Definir roles activos por defecto al iniciar sesión
SET DEFAULT ROLE ALL TO 'marco.ramirez'@'%';
SET DEFAULT ROLE ALL TO 'ricardin.gabriel'@'%';
SET DEFAULT ROLE ALL TO 'mario.banda'@'%';

-- 6. Permisos para el rol seller
GRANT SELECT, INSERT, UPDATE ON db_test.tb_products TO 'seller';
GRANT 'seller' TO 'mario.banda'@'%';

-- 7. Aplicar cambios
FLUSH PRIVILEGES;