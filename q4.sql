DROP FUNCTION IF EXISTS atrasoAtividade;

DELIMITER //

CREATE FUNCTION atrasoAtividade (dataInicio DATE, dataFim DATE, dataConclusao DATE)
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


-- obs.: nos scripts de criação e população do banco fornecidos, 
-- não foram inseridas nenhuma linha na tabela de atividade. Deixo
-- aqui dois exemplos de teste da função, caso necessário.

-- EXEMPLO 1 
-- A atividade foi concluída em 24/02/2020, teve início em 02/02/2020 
-- e seu limite final seria 03/03/2020, resultando no saldo positivo 
-- de 8 dias.
-- SELECT atrasoAtividade('2020-02-02','2020-03-03','2020-02-24');


-- EXEMPLO 2
-- A atividade foi concluída em 20/03/2020, teve início em 02/02/2020 
-- e seu limite final seria 03/03/2020, resultando no saldo negativo 
-- de -17 dias.
-- SELECT atrasoAtividade('2020-02-02','2020-03-03','2020-03-20');