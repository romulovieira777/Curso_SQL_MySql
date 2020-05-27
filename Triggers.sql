/* Escolhendo um Banco de Dados */
USE curso_sql_softblue;

/* Criando uma Tabela */
CREATE TABLE pedidos (
	id int unsigned not null auto_increment,
    descricao varchar(100) not null,
    valor double not null default '0',
    pago varchar(3) not null default 'Não',
    primary key (id)
);

/* Inserindo Dados em uma Tabela */
INSERT INTO pedidos (
	id,
    descricao,
    valor
)
VALUES (
	1,
    'TV',
    3000
);

INSERT INTO pedidos (
	id,
	descricao,
    valor
)
VALUES (
	2,
    'Geladeira',
    1400
);

INSERT INTO pedidos (
	id,
    descricao,
    valor
)
VALUES (
	3,
    'DVD Player',
    300
);

/* Selecionando uma Tabela */
SELECT
	*
FROM
	pedidos;
    
/* Criando uma Procedure */
DROP procedure IF EXISTS `limpa_pedidos`;
DELIMITER $$
USE `curso_sql_softblue`$$
CREATE PROCEDURE limpa_pedidos ()
BEGIN
	DELETE FROM 
		pedidos
	WHERE
		pago = 'Não';
END$$
DELIMITER ;

/* Chamando uma Procedure */
CALL
	limpa_pedidos ();

/* Criando uma Tabela */
CREATE TABLE estoque (
	id int unsigned not null auto_increment,
    descricao varchar(50) not null,
    quantidade int not null,
    primary key (id)
);

/* Criando uma Trigger */
CREATE TRIGGER
	gatilho_limpa_pedidos
BEFORE INSERT
ON
	estoque
FOR EACH ROW
	CALL limpa_pedidos ();

/* Inserindo Dados em uma Tabela */
INSERT INTO estoque (
	descricao,
    quantidade
)
VALUES (
	'Fogão',
    5
);

INSERT INTO estoque (
	descricao,
    quantidade
)
VALUES (
	'Forno',
	3
);

/* Selecionando uma Tabela */
SELECT
	*
FROM
	estoque;

/* Atualizando uma Tabela */
UPDATE
	pedidos
SET
	pago = 'Sim'
WHERE
	id = 2;

/* Excluindo Dados de uma Tabela */
DELETE FROM
	estoque
WHERE
	id = 4;

DELETE FROM
	estoque
WHERE
	id = 3;