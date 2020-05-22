/* ESCOLHENDO O BANCO DE DADOS */
USE SOFTBLUE;

/* Criando Uma View */
CREATE VIEW Curso_Programacao AS
SELECT
	curso.curso,
	curso.valor
FROM
	curso
INNER JOIN
	tipo ON curso.tipo = tipo.codigo
WHERE
	tipo.tipo = 'Programação';

/* Selecionado Dados de Uma View */
SELECT 
    *
FROM
    Curso_Programacao;

/* Criando Uma View */
CREATE VIEW Cursos_Programacao_Completo AS
SELECT
	curso.curso,
    tipo.tipo,
    instrutor.instrutor
FROM
	curso
INNER JOIN
	tipo ON curso.tipo = tipo.codigo
INNER JOIN
	instrutor ON curso.instrutor = instrutor.codigo;

/* Selecionado Dados de Uma View */
SELECT
	*
FROM
	Cursos_Programacao_Completo;

/* Selecionado Dados de Uma View */
/*CREATE VIEW Pedidos_Realizados AS*/
SELECT
	pedido.codigo,    
    pedido.dataHora,
    aluno.aluno
FROM
	pedido
INNER JOIN
	aluno ON pedido.aluno = aluno.codigo;
	







