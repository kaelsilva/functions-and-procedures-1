DROP FUNCTION IF EXISTS idadeDoFuncionario;

DELIMITER //

CREATE FUNCTION idadeDoFuncionario ( dataDeNasc DATE)
RETURNS INT

BEGIN

	DECLARE idade INT;
    
    SET idade = FLOOR(DATEDIFF(CURDATE(), dataDeNasc)/365);
    
	RETURN idade;

END; //

DELIMITER ;

-- SELECT idadeDoFuncionario('1978-03-31');