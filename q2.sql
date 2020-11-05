DROP VIEW IF EXISTS mediaDasIdadesPorDepto CASCADE;
DROP VIEW IF EXISTS dataNascPorDepto CASCADE;

CREATE VIEW dataNascPorDepto AS
SELECT f.dataNasc, f.depto
FROM funcionario f LEFT JOIN departamento d
ON f.depto = d.codigo
ORDER BY f.depto ASC;


CREATE VIEW mediaDasIdadesPorDepto AS
SELECT AVG(idadeDoFuncionario(dn.dataNasc)) AS 'Média de idades', dn.depto AS 'Departamento'
FROM dataNascPorDepto dn
GROUP BY dn.depto
ORDER BY 'Departamento' ASC;

SELECT * FROM mediaDasIdadesPorDepto;