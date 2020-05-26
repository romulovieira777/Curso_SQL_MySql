/* Escolhendo o Banco de Dados */
USE curso_sql_softblue;

/* Mecanismo de Suporte ou Armazenamento no Mysql */
SHOW ENGINES;

/* Criando uma Tabela no Banco de Dados */
CREATE TABLE contas_bancarias (
	id int unsigned not null auto_increment,
    titular varchar(45) not null,
    saldo double not null,
    primary key (id)
)
ENGINE = InnoDB;

/* Inserindo Dados em Uma Tabela */
INSERT INTO contas_bancarias (
	id,
    titular,
    saldo
) 
VALUES (
	1,
    'André',
    1000
);

INSERT INTO contas_bancarias (
	id,
    titular,
    saldo
) 
VALUES (
	2,
    'Carlos',
    2000
);

/* Transação de Valores */
START TRANSACTION;
UPDATE
	contas_bancarias
SET
	saldo = saldo - 100
WHERE
	id = 1;

UPDATE
	contas_bancarias
SET
	saldo = saldo + 100
WHERE
	id = 2;
ROLLBACK;

START TRANSACTION;
UPDATE
	contas_bancarias
SET
	saldo = saldo - 100
WHERE
	id = 1;

UPDATE
	contas_bancarias
SET
	saldo = saldo + 100
WHERE
	id = 2;
COMMIT;
