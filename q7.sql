DROP FUNCTION IF EXISTS contarParticipacoes;

DELIMITER //
CREATE FUNCTION contarParticipacoes(codMembro INT)
	RETURNS INT
	BEGIN
    
        DECLARE resultado INT;
        
        SET resultado = (	SELECT COUNT(am.codAtividade)
							FROM membro m LEFT JOIN atividade_membro am
                            ON m.codigo = codMembro);
        
		RETURN resultado;
        
        
	END; //

DELIMITER ;