DROP USER IF EXISTS 'empresa_admim_local'@'localhost';

CREATE USER 'empresa_admim_local'@'localhost' IDENTIFIED BY 'password';

GRANT ALL ON EmpresaDB.* TO 'empresa_admim_local'@'localhost';

FLUSH PRIVILEGES;