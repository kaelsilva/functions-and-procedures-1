DROP USER IF EXISTS 'empresa_admim'@'%';

CREATE USER 'empresa_admim'@'%' IDENTIFIED BY 'password';

GRANT ALL ON EmpresaDB.* TO 'empresa_admim'@'%';

FLUSH PRIVILEGES;