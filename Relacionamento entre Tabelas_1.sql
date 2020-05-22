/* Escolhendo um Banco de Dados */
USE softblue;

/* Fazendo o Relacionamento entre Duas Tabelas com Inner Join */
SELECT 
    *
FROM
    instrutor
INNER JOIN
    curso USING (codigo);

/* Fazendo o Relacionamento entre Duas Tabelas com Left Join */
SELECT 
    *
FROM
    instrutor
LEFT JOIN
    curso ON instrutor.codigo = curso.instrutor;
    
/* Fazendo o Relacionamento entre Duas Tabelas com Inner Join */    
SELECT 
    *
FROM
    instrutor
INNER JOIN
    curso ON instrutor.codigo = curso.instrutor;
    
/* Fazendo o Relacionamento entre Duas Tabelas com Full Join */    
SELECT 
    *
FROM
    instrutor
LEFT JOIN
    curso ON instrutor.codigo = curso.instrutor 
UNION SELECT 
    *
FROM
    instrutor
RIGHT JOIN
    curso ON instrutor.codigo = curso.instrutor;