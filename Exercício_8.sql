/* Escolhendo o Banco de Dados */
USE softblue;

/* Selecionando Dados de Uma Tabela Utilizando Distinct - Inner Join - On */
SELECT
	DISTINCT(aluno.aluno)
FROM
	pedido
INNER JOIN
	aluno
ON
	pedido.aluno = aluno.codigo;

/* Selecionando Dados de Uma Tabela Utilizando Distinct - Inner Join - On - Order By - Asc - Limit */
SELECT
	DISTINCT(aluno.aluno)
FROM
	pedido
INNER JOIN
	aluno
ON
	pedido.aluno = aluno.codigo
ORDER BY
	dataHora ASC
LIMIT 1;

/* Selecionando Dados de Uma Tabela Utilizando Distinct - Inner Join - On - Order By - Desc - Limit */
SELECT
	DISTINCT(aluno.aluno)
FROM
	pedido
INNER JOIN
	aluno
ON
	pedido.aluno = aluno.codigo
ORDER BY
	dataHora DESC
LIMIT 1;

/* Selecionando Dados de Uma Tabela Utilizando Distinct - Inner Join - On - Order By - Desc - Limit - Offset */
SELECT
	DISTINCT(aluno.aluno)
FROM
	pedido
INNER JOIN
	aluno
ON
	pedido.aluno = aluno.codigo
ORDER BY
	dataHora ASC
LIMIT
	1
OFFSET
	2;

/* Selecionando Dados de Uma Tabela Utilizando Count */
SELECT
	COUNT(*)
FROM
	pedido_detalhe;

/* Selecionando Dados de Uma Tabela Utilizando Sum */
SELECT
	SUM(valor)
FROM
	pedido_detalhe;

/* Selecionando Dados de Uma Tabela Utilizando Avg - Where */
SELECT
	AVG(valor)
FROM
	pedido_detalhe
WHERE
	curso = 2;

/* Selecionando Dados de Uma Tabela Utilizando Max */
SELECT
	MAX(valor)
FROM
	curso;

/* Selecionando Dados de Uma Tabela Utilizando Min */
SELECT
	MIN(valor)
FROM
	curso;

/* Selecionando Dados de Uma Tabela Utilizando Sum - Group By */
SELECT 
    pedido,
    SUM(valor)
FROM
    pedido_detalhe
GROUP BY
	pedido;

/* Selecionando Dados de Uma Tabela Utilizando Count - Inner Join - On - Group By */
SELECT
	instrutor.instrutor,
    COUNT(*)
FROM
	curso
INNER JOIN
	instrutor
ON
	curso.instrutor = instrutor.codigo
GROUP BY
	instrutor;

/* Selecionando Dados de Uma Tabela Utilizando Sum - Inner Join - On - Group By - Having */
SELECT
	pedido_detalhe.pedido,
    aluno.aluno,
    SUM(valor)
FROM
	pedido_detalhe
INNER JOIN
	pedido
ON
	pedido_detalhe.pedido = pedido.codigo
INNER JOIN
	aluno
ON
	pedido.aluno = aluno.codigo
GROUP BY
	pedido
HAVING
	SUM(valor) > 500;

/* Selecionando Dados de Uma Tabela Utilizando Count - Inner Join - On - Group By - Having */
SELECT
	pedido_detalhe.pedido,
    aluno.aluno,
    COUNT(*)
FROM
	pedido_detalhe
INNER JOIN
	pedido
ON
	pedido_detalhe.pedido = pedido.codigo
INNER JOIN
	aluno
ON
	pedido.aluno = aluno.codigo
GROUP BY
	pedido
HAVING
	COUNT(*) > 1;

/* Selecionando Dados de Uma Tabela Utilizando Where - Like */
SELECT
	aluno,
    endereco
FROM
	aluno
WHERE
	endereco like 'Av.%';

/* Selecionando Dados de Uma Tabela Utilizando Where - Like */
SELECT
	curso
FROM
	curso
WHERE
	curso like 'Java%';