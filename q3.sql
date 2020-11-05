DROP PROCEDURE IF EXISTS funcionariosVelhos;

DELIMITER //

CREATE PROCEDURE funcionariosVelhos ()
 BEGIN

	SELECT f.*
    FROM funcionario f, mediaDasIdadesPorDepto m
    WHERE idadeDoFuncionario(f.dataNasc) > m.`Média de idades` && f.depto = m.`Departamento`;
 
 END;
//

DELIMITER ;


CALL funcionariosVelhos();