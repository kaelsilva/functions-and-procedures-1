DROP FUNCTION IF EXISTS contarPorcPartic;

DELIMITER //
CREATE FUNCTION contarPorcPartic(codProjeto INT, codMembro INT)
	RETURNS INT
	BEGIN
    
        DECLARE resultado INT;
        
        SET resultado = (	contarParticipacoes(codMembro) /
							(SELECT COUNT(ap.codAtividade)
							FROM atividade_projeto ap
							WHERE ap.codProjeto = codProjeto));
        
		RETURN resultado;
        
        
	END; //

DELIMITER ;