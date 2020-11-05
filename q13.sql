DROP INDEX IF EXISTS sigla_ix ON departamento WAIT 1;
DROP INDEX IF EXISTS situacao_ix ON atividade WAIT 1;

CREATE INDEX sigla_ix ON departamento (
	sigla
);

CREATE INDEX situacao_ix ON atividade (
	situacao
);