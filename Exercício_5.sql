/* ESCOLHENDO O BANCO DE DADOS */
USE SOFTBLUE;

/* Fazendo o Relacionamento entre Duas Tabelas com Inner Join */
SELECT
	curso.curso,
    tipo.tipo
FROM
	curso
INNER JOIN
	tipo ON curso.tipo = tipo.codigo;

/* Fazendo o Relacionamento entre Três Tabelas Inner Join */
SELECT
	curso.curso,
    tipo.tipo,
    instrutor.instrutor,
    instrutor.telefone
FROM
	curso
INNER JOIN
	tipo ON curso.tipo = tipo.codigo
INNER JOIN
	instrutor ON curso.instrutor = instrutor.codigo;

/* Fazendo o Relacionamento entre Duas Tabelas com Inner Join */
SELECT
	pedido.codigo,
    pedido.dataHora,
    pedido_detalhe.curso
FROM
	pedido
INNER JOIN
	pedido_detalhe ON pedido.codigo = pedido_detalhe.pedido;
    
/* Fazendo o Relacionamento entre Três Tabelas Inner Join */
SELECT
	pedido.codigo,
    pedido.dataHora,
    curso.curso
   /* curso.curso*/
FROM
	pedido
INNER JOIN
	pedido_detalhe ON pedido.codigo = pedido_detalhe.pedido
INNER JOIN
	curso ON pedido_detalhe.curso = curso.codigo;

/* Fazendo o Relacionamento entre Três Tabelas Inner Join */
SELECT
	pedido.codigo,
    pedido.dataHora,
    aluno.aluno,
    curso.curso
FROM
	pedido
INNER JOIN
	pedido_detalhe ON pedido.codigo = pedido_detalhe.pedido
INNER JOIN
	curso ON pedido_detalhe.curso = curso.codigo
INNER JOIN
	aluno ON pedido.aluno = aluno.codigo;
