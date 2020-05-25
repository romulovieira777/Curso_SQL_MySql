/* Escolhendo um Banco de Dados */
USE curso_sql_softblue;

/* Selecionando Dados de Uma Tabela Utilizando Where - In - Group By - Having */
SELECT
	*
FROM
	pilotos
WHERE
	equipe
IN
	(SELECT
		equipe
	FROM
		pilotos
	GROUP BY
		equipe
	HAVING
		SUM(pontos) > 5
);

/* Selecionando Dados de Uma Tabela Utilizando Order By - Desc - Limit */
SELECT
	*
FROM
	pilotos
ORDER BY
	pontos DESC
LIMIT 1;

/* Selecionando Dados de Uma Tabela Utilizando Where - Count */
SELECT
	COUNT(*)
FROM
	pilotos
WHERE
	equipe != 'C';

/* Selecionando Dados de Uma Tabela Utilizando Where - Count */
SELECT
	COUNT(pontos)
FROM
	pilotos
WHERE
	equipe = 'B';

/* Selecionando Dados de Uma Tabela Utilizando Where - Max */
SELECT 
    MAX(pontos)
FROM
    pilotos
WHERE
    equipe != 'B';