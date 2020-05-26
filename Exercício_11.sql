/* Escolhendo um Banco de Dados */
USE softblue;

/* Criando Tabelas */
CREATE TABLE conta_bancaria (
	codigo integer unsigned not null auto_increment,
    titular varchar(32) not null,
    saldo double not null,
    primary key (codigo)
);

/* Inserindo Dados em Uma Tabela */
INSERT INTO conta_bancaria (
	codigo,
    titular,
    saldo
)
VALUES (
	1,
    'André',
    213
);

INSERT INTO conta_bancaria (
	codigo,
    titular,
    saldo
)
VALUES (
	2,
    'Diogo',
    489
);

INSERT INTO conta_bancaria (
	codigo,
    titular,
    saldo
)
VALUES (
	3,
    'Rafael',
    568
);

INSERT INTO conta_bancaria (
	codigo,
	titular,
    saldo
)
VALUES (
	4,
    'Carlos',
    712
);

INSERT INTO conta_bancaria (
	codigo,
    titular,
    saldo
)
VALUES (
	5,
    'Peter',
    -38
);

/* Selecionando Uma Tabela */
SELECT 
    *
FROM
    conta_bancaria;

/* Construindo Uma Transação Financeira */
START TRANSACTION;
UPDATE
	conta_bancaria
SET
	saldo = saldo + (saldo / 100 * 3)
WHERE
	saldo > 0;
COMMIT;