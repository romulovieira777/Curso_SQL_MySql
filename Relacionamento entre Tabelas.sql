/* Escolhendo um Banco de Dados */
USE curso_sql_softblue;

/* Selecionando Dados de uma Tabela */
SELECT 
    *
FROM
    funcionarios;
    
SELECT 
    *
FROM
    veiculos;
 
/* Fazendo o Relacionamento entre Duas Tabelas com Inner Join */
SELECT 
    *
FROM
    funcionarios
INNER JOIN
	veiculos ON veiculos.funcionario_id = funcionarios.id;

 /* Outra Forma de Fazer o Relacionamento entre Duas Tabelas com Inner Join */
 SELECT 
    *
FROM
    funcionarios f
INNER JOIN
	veiculos v ON v.funcionario_id = f.id;

/* Fazendo o Relacionamento entre Duas Tabelas com Left Join */
SELECT 
    *
FROM
    funcionarios f
LEFT JOIN
    veiculos v ON v.funcionario_id = f.id;

/* Fazendo o Relacionamento entre Duas Tabelas com Right Join */
SELECT 
    *
FROM
    funcionarios f
RIGHT JOIN
    veiculos v ON v.funcionario_id = f.id;

/* Inserindo Dados em Uma Tabela */
INSERT INTO veiculos (
	funcionario_id,
    veiculo,
    placa
)
VALUES (
	null,
    'Moto',
    'SB-0003'
);
    
/* Fazendo o Relacionamento entre Duas Tabelas com Full Join */
SELECT 
    *
FROM
    funcionarios f
LEFT JOIN
    veiculos v ON v.funcionario_id = f.id
UNION
SELECT
	*
FROM
	funcionarios f
RIGHT JOIN
	veiculos v on v.funcionario_id = f.id;

/* Criando Tabelas */
CREATE TABLE cpfs (
	id int unsigned not null,
    cpf varchar(14) not null,
    primary key (id),
    constraint fk_cpf foreign key (id) references funcionarios (id)
);

/* Inserindo Dados em Uma Tabela */
INSERT INTO cpfs (
	id,
    cpf
) 
VALUES (
	1,
    '111.111.111-11'
);

INSERT INTO cpfs (
	id,
    cpf
) 
VALUES (
	2,
    '222.222.222-22'
);

INSERT INTO cpfs (
	id,
    cpf
) 
VALUES (
	3,
    '333.333.333-33'
);

INSERT INTO cpfs (
	id,
    cpf
) 
VALUES (
	5,
	'555.555.555-55'
);   

/* Selecionado Dados de Uma Tabela */
SELECT
	*
FROM
	cpfs;

/* Fazendo o Relacionamento entre Duas Tabelas com Equi Join */
 SELECT
	* 
FROM
	funcionarios
INNER JOIN 
	cpfs ON funcionarios.id = cpfs.id;   
    
/*Outra Forma de Fazer o Relacionamento entre Duas Tabelas com Equi Join */   
SELECT
	*
FROM
	funcionarios
INNER JOIN cpfs USING (id);

 /* Criando Tabelas */
 CREATE TABLE clientes (
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    quem_indicou int unsigned,
    primary key (id),
    constraint fk_quem_indcou foreign key (quem_indicou) references clientes (id)
 );
 
 /* Inserindo Dados em Uma Tabela */
 INSERT INTO clientes (
	id,
    nome,
    quem_indicou
 ) 
 VALUES (
	1,
    'André',
    null
);

INSERT INTO clientes (
	id,
    nome,
    quem_indicou
 ) 
VALUES (
	2,
    'Samuel',
    1
);

INSERT INTO clientes (
	id,
    nome,
    quem_indicou
 ) 
 VALUES (
	3,
    'Carlos',
    2
);

 INSERT INTO clientes (
	id,
    nome,
    quem_indicou
 ) 
 VALUES (
	4,
    'Rafael',
    1
);

/* Selecionado Dados de Uma Tabela */
SELECT
	*
FROM
	clientes;

SELECT
	a.nome as Cliente,
    b.nome as Quem_Indicou
FROM
	clientes a
JOIN
	clientes b ON a.quem_indicou = b.id;

/* Fazendo o Relacionamento entre Três Tabelas Inner Join */
SELECT
	*
FROM
	funcionarios
INNER JOIN
	veiculos ON veiculos.funcionario_id = funcionarios.id
INNER JOIN
	cpfs ON cpfs.id = funcionarios.id;

/* Criando Uma View */
CREATE VIEW funcionarios_a AS
SELECT
	*
FROM
	funcionarios
WHERE
	salario >= 1700;

/* Selecionado Dados de Uma View */
SELECT
	*
FROM
	funcionarios_a;

/* Alterando Dados de Uma Tabela */
UPDATE
	funcionarios
SET
	salario = 1500
WHERE
	id = 3;
