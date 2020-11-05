DROP VIEW IF EXISTS func_sig CASCADE;
DROP VIEW IF EXISTS depto_cod_sig CASCADE;

DROP PROCEDURE IF EXISTS selecionarEquipe;

CREATE VIEW depto_cod_sig AS
SELECT d.codigo, d.sigla
FROM departamento d
ORDER BY d.codigo ASC;

CREATE VIEW func_sig AS
SELECT f.codigo, f.nome, depto.sigla
FROM funcionario f LEFT JOIN depto_cod_sig depto
ON f.depto = depto.codigo;

SELECT DISTINCT fs.nome, fs.sigla
FROM func_sig fs LEFT JOIN membro m
ON fs.codigo = m.codFuncionario RIGHT JOIN equipe e
ON m.codEquipe = e.codigo;



DELIMITER //

CREATE PROCEDURE selecionarEquipe (codEquipe INT)
 BEGIN

	SELECT DISTINCT fs.nome, fs.sigla
	FROM func_sig fs LEFT JOIN membro m
	ON fs.codigo = m.codFuncionario RIGHT JOIN equipe e
	ON m.codEquipe = codEquipe;
 
 END;
//

DELIMITER ;


-- CALL selecionarEquipe(1);