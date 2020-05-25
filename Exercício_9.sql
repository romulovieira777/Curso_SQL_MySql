/* Escolhendo o Banco de Dados */
USE softblue;

/* Selecionando Dados de Uma Tabela Utilizando Min - Where - As */
SELECT
	curso,
    (SELECT MIN(valor)
FROM
	pedido_detalhe
WHERE
	pedido_detalhe.curso = curso.codigo) AS Menos_Valor
FROM
	curso;

/* Selecionando Dados de Uma Tabela Utilizando Where - In */
SELECT
	curso
FROM
	curso
WHERE
	tipo
IN
	(SELECT
		codigo
	FROM
		tipo
	WHERE
		tipo = 'Programação'
);

/* Selecionando Dados de Uma Tabela Utilizando Where - Exists - And */
SELECT
	curso
FROM
	curso
WHERE	
EXISTS
	(SELECT
		codigo
	FROM
		tipo
	WHERE
		tipo.codigo = curso.tipo
	AND
		tipo.tipo = 'Programação'
);

/* Selecionando Dados de Uma Tabela Utilizando Sum - Inner Join - On - Where */
SELECT
	instrutor,
    (SELECT
		SUM(pedido_detalhe.valor)
	FROM
		pedido_detalhe
	INNER JOIN
		curso
	ON
		pedido_detalhe.curso = curso.codigo
	WHERE
		curso.instrutor = instrutor.codigo) AS Total_de_Vendas
FROM
	instrutor;

/* Criando Uma View Utilizando View - Sum - Inner Join - On - Where - As */
CREATE VIEW
	ALUNOS_E_COMPRAS
AS
	SELECT
		aluno,
	(SELECT
		SUM(pedido_detalhe.valor)
	FROM
		pedido_detalhe
	INNER JOIN
		pedido
	ON
		pedido_detalhe.pedido = pedido.codigo
	WHERE
		pedido.aluno = aluno.codigo)
	AS
		Total_de_Compras
FROM
	aluno;