DROP VIEW IF EXISTS funcEDeptos CASCADE;

CREATE VIEW funcEDeptos AS
SELECT f.codigo, f.nome, f.salario, d.descricao
FROM funcionario f LEFT JOIN departamento d
ON f.depto = d.codigo;

SELECT fd.nome, fd.descricao
FROM funcEDeptos fd
WHERE fd.codigo NOT IN (SELECT f.codigo
						FROM funcionario f, departamento d
						WHERE f.codigo = d.gerente) && 
		fd.salario > (	SELECT MIN(f.salario)
						FROM funcionario f, departamento d
						WHERE f.codigo = d.gerente);
