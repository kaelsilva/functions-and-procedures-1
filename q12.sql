DROP USER IF EXISTS 'empresa_gerente'@'localhost';

CREATE USER 'empresa_gerente'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT ON EmpresaDB.* TO 'empresa_gerente'@'localhost';

GRANT INSERT, UPDATE ON	EmpresaDB.equipe TO 'empresa_gerente'@'localhost';
GRANT INSERT, UPDATE ON	EmpresaDB.membro TO 'empresa_gerente'@'localhost';
GRANT INSERT, UPDATE ON	EmpresaDB.atividade TO 'empresa_gerente'@'localhost';
GRANT INSERT, UPDATE ON	EmpresaDB.atividade_projeto TO 'empresa_gerente'@'localhost';

FLUSH PRIVILEGES;