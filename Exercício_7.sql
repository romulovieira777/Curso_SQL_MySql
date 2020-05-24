/* Escolhendo o Banco de Dados */
USE curso_sql_softblue;

/* Criando uma Tabela no Banco de Dados */
CREATE TABLE pilotos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    equipe CHAR(1) NOT NULL,
    pontos INT NOT NULL,
    PRIMARY KEY (id)
);

/* Inserindo Dados em Uma Tabela no Banco de Dados */
INSERT INTO pilotos (
    id,
    nome,
    equipe,
    pontos
) 
VALUES (
    1,
    'Fernando',
    'A',
    2
);

INSERT INTO pilotos (
    id,
    nome,
    equipe,
    pontos
) 
VALUES (
    2,
    'Paulo',
    'B',
    5
);

INSERT INTO pilotos (
	id,
    nome,
    equipe,
    pontos
)
VALUES (
    3,
    'Richa',
    'A',
    3
);

INSERT INTO pilotos (
    id,
    nome,
    equipe,
    pontos
) 
VALUES (
    4,
    'Gomes',
    'C',
    6
);

INSERT INTO pilotos (
    id,
    nome,
    equipe,
    pontos
) 
VALUES (
    5,
    'Fred',
    'B',
    7
);

/* Selecionando Dados de Uma Tabela Utilizando Where - Count  */
SELECT
	COUNT(pontos)
FROM
	pilotos
WHERE
	equipe = 'B';
    
/* Selecionando Dados de Uma Tabela Utilizando Order By - Limit */
SELECT
	*
FROM
	pilotos
ORDER BY
	pontos DESC
LIMIT
	1;
    
/* Selecionando Dados de Uma Tabela Utilizando Where - Max */
SELECT
	MAX(pontos)
FROM
	pilotos
WHERE
	equipe != 'B';

/* Selecionando Dados de Uma Tabela Utilizando Subqueri - Where - In - Group By - Having - Sum */
SELECT
	*
FROM
	pilotos
WHERE
	equipe
IN (
	SELECT
		equipe
	FROM
		pilotos
	GROUP BY
		equipe
	HAVING
		SUM(pontos) > 5
);

/* Selecionando Dados de Uma Tabela Utilizando Where */
SELECT
	COUNT(*)
FROM
	pilotos
WHERE
	equipe != 'C';
	
