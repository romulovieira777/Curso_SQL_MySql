/* Criando um Usuário */
CREATE USER
	'andre'@'200.200.190.190'
IDENTIFIED BY
	'milani123456';

CREATE USER
	'andre'@'localhost'
IDENTIFIED BY
	'milani123456';

CREATE USER
	'andre'@'%'
IDENTIFIED BY
	'milani123456';

/* Criação de Acesso do Usuário */
GRANT ALL ON 
	curso_sql_softblue.*
TO
	'andre'@'localhost';

/* Criando um Usuário */
CREATE USER
	'andre'@'%'
IDENTIFIED BY
	'andreviagem';
    
/* Criação de Acesso do Usuário */
GRANT SELECT ON
	curso_sql_softblue.*
TO
	'andre'@'%';

GRANT INSERT ON
	curso_sql_softblue.*
TO
	'andre'@'%';
    
GRANT INSERT ON
	curso_sql_softblue.funcionarios
TO
	'andre'@'%';

/* Removendo os Acessos Criados */
REVOKE INSERT ON
	curso_sql_softblue.funcionarios
FROM
	'andre'@'%';

REVOKE SELECT ON
	curso_sql_softblue.*
FROM
	'andre'@'%';

/* Criação de Acesso do Usuário */
GRANT INSERT ON
	curso_sql_softblue.funcionarios
TO
	'andre'@'%';

GRANT INSERT ON
	curso_sql_softblue.veiculos
TO
	'andre'@'%';

/* Removendo os Acessos Criados */
REVOKE INSERT ON
	curso_sql_softblue.funcionarios
FROM
	'andre'@'%';

REVOKE INSERT ON
	curso_sql_softblue.veiculos
FROM
	'andre'@'%';

REVOKE ALL ON
	curso_sql_softblue.*
FROM
	'andre'@'localhost';

/* Deletando um Usuário */
DROP USER
	'andre'@'%';

DROP USER
	'andre'@'localhost';

/* Consulta de Usuários e Acessos no Banco de Dados */
SELECT USER FROM 
	mysql.user;

/* Consultando Todos os Privilégios do Usuário no Banco de Dados */
SHOW GRANTS FOR
	'andre'@'%';