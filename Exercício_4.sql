/* Escolhendo um Banco de Dados */
USE softblue;

/* Alterando Dados de uma Tabela */
UPDATE 
	aluno 
SET 
    endereco = 'Av. Brasil 778'
WHERE
    codigo = 1;
    
UPDATE 
	aluno 
SET 
    email = 'cristiano@softblue.com.br'
WHERE
    codigo = 4;

UPDATE
	curso 
SET 
    valor = valor * 1.1
WHERE
    valor < 300;

UPDATE 
	curso 
SET 
    curso = 'Php Fundamentos'
WHERE
    curso = 'Php Básico';

