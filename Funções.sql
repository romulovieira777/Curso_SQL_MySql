/* Eescolhendi o Banco de Dados */
USE curso_sql_softblue;

/* Selecionando Dados de uma Tabela Utilizando o Count - Where - And */
SELECT 
    COUNT(*)
FROM
    funcionarios;

SELECT 
    COUNT(*)
FROM
    funcionarios
WHERE
    salario > 1600;

SELECT
	COUNT(*)
FROM
	funcionarios
WHERE
	salario > 1600
AND departamento = 'Jurídico';

SELECT
	*
FROM
	funcionarios
WHERE
	salario > 1600
AND departamento = 'Jurídico';

/* Selecionando Dados de uma Tabela Utilizando Sum - Where */
SELECT 
    SUM(salario)
FROM
    funcionarios;

SELECT 
    SUM(salario)
FROM
    funcionarios
WHERE
    departamento = 'TI';

/* Selecionando Dados de uma Tabela Utilizando AVG - Where */
SELECT 
    AVG(salario)
FROM
    funcionarios;
    
SELECT 
    AVG(salario)
FROM
    funcionarios
WHERE
    departamento = 'TI';
  
/* Selecionando Dados de uma Tabela Utilizando Max - Where */ 
SELECT 
    MAX(salario)
FROM
    funcionarios;

SELECT 
    MAX(salario)
FROM
    funcionarios
WHERE
    departamento = 'TI';
    
/* Selecionando Dados de uma Tabela Utilizando Min - Where */ 
SELECT 
    MIN(salario)
FROM
    funcionarios;

SELECT 
    MIN(salario)
FROM
    funcionarios
WHERE
    departamento = 'TI';

/* Selecionando Dados de uma Tabela Utilizando Distinct */ 
SELECT
	departamento
FROM
	funcionarios;

SELECT 
	DISTINCT(departamento)
FROM
    funcionarios;

/* Selecionando Dados de uma Tabela Utilizando Order By - ASC - DESC */ 
SELECT 
    *
FROM
    funcionarios;

SELECT 
    *
FROM
    funcionarios
ORDER BY 
	nome;

SELECT 
    *
FROM
    funcionarios
ORDER BY
	nome DESC;

SELECT
	*
FROM
	funcionarios
ORDER BY
	salario;

SELECT
	*
FROM
	funcionarios
ORDER BY
	departamento;

SELECT
	*
FROM
	funcionarios
ORDER BY
	departamento,
    salario;

SELECT 
    *
FROM
    funcionarios
ORDER BY
	departamento DESC ,
    salario DESC;

/* Selecionando Dados de uma Tabela Utilizando Limit - Offset */ 
SELECT
	*
FROM
	funcionarios;

SELECT
	*
FROM
	funcionarios
LIMIT
	2;

SELECT
	*
FROM
	funcionarios
LIMIT
	2
OFFSET
	1;

SELECT 
    *
FROM
    funcionarios
LIMIT 
	1,
	2;

/* Selecionando Dados de uma Tabela Utilizando Group By - Having - Avg - Where - Count */ 
SELECT
	AVG(salario)
FROM
	funcionarios;

SELECT
	AVG(salario)
FROM
	funcionarios
WHERE
	departamento = 'TI';

SELECT
	AVG(salario)
FROM
	funcionarios
WHERE
	departamento = 'jurídico';

SELECT
	departamento,
	AVG(salario)
FROM
	funcionarios
GROUP BY
	departamento;

SELECT
	departamento,
    ACG(salario)
FROM
	funcionarios
GROUP BY
	departamento
HAVING
	AVG(salario) > 2000;

SELECT
	departamento,
    COUNT(*)
FROM
	funcionarios
GROUP BY
	departamento;

/* Selecionando Dados de uma Tabela Utilizando Subqueri - Group By - Where - Or - In - Having */
SELECT
	departamento,
    AVG(salario)
FROM
	funcionarios
GROUP BY
	departamento;

SELECT
	nome
FROM
	funcionarios
WHERE
	departamento = 'TI'
OR
	departamento = 'jurídico';

SELECT
	nome
FROM
	funcionarios
WHERE
	departamento
IN (
	'Ti', 'Jurídico'
);

SELECT
	nome
FROM
	funcionarios
WHERE
	departamento
IN (
	SELECT
		departamento
	FROM
		funcionarios
	GROUP BY
		departamento
	HAVING
		AVG(salario) > 2000
);