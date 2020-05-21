/* Escolhendo um Banco de Dados */
USE softblue;

/* Selecionando Informações das Tabelas */
SELECT 
    *
FROM
    aluno;

SELECT 
    curso
FROM
    curso;
    
SELECT 
    curso, valor
FROM
    curso
WHERE
    valor > 200;
    
SELECT 
    curso, valor
FROM
    curso
WHERE
  valor > 200 AND valor < 300;

SELECT 
    *
FROM
    curso
WHERE
    valor BETWEEN 200 AND 300;
 
 SELECT 
    *
FROM
    pedido
WHERE
    datahora > '2010-04-15' AND datahora < '2010-04-18';
    
 SELECT 
    *
FROM
    pedido
WHERE
    datahora BETWEEN '2010-04-15' AND '2010-04-18';
    
SELECT 
    *
FROM
    pedido
WHERE
    DATE(dataHora) = '2010-04-15';