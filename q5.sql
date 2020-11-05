DROP FUNCTION IF EXISTS atrasoProjeto;

DELIMITER //

CREATE FUNCTION atrasoProjeto (dataInicio DATE, dataFim DATE, dataConclusao DATE)
RETURNS INT

BEGIN

	DECLARE atraso1 INT;
    DECLARE atraso2 INT;
    DECLARE atraso INT;
    
    SET atraso1 = DATEDIFF(dataConclusao, dataInicio);
    SET atraso2 = DATEDIFF(dataFim, dataInicio);
    
    SET atraso = atraso2 - atraso1;
    
	RETURN atraso;

END; //

DELIMITER ;

-- obs.: como nos scripts de criação fornecidos não há preenchimento
-- da data de conclusão dos projetos, deixo dois exemplos para teste.
-- SELECT atrasoProjeto(p.dataInicio, p.dataFim,'2018-04-01') FROM projeto p WHERE p.codigo = 1;
-- SELECT atrasoProjeto(p.dataInicio, p.dataFim,'2018-07-15') FROM projeto p WHERE p.codigo = 2;