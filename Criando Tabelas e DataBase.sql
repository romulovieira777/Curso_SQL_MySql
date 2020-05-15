-- Criando Banco de Dados
CREATE DATABASE curso_sql_softblue;

-- Escolhendo o Banco de Dados
USE curso_sql_softblue;

-- Criando Tabelas
CREATE TABLE funcionarios (
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null default '0',
    departamento varchar(45) not null,
    primary key (id)
);

CREATE TABLE veiculos (
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar(45) not null default '',
    placa varchar(10) not null default '',
    primary key (id),
    constraint fk_veiculos_funcionarios	foreign key (funcionario_id) references funcionarios (id)
);

CREATE TABLE salarios (
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    primary key (faixa)
);

-- Alterando os Dados de uma Tabela
ALTER TABLE funcionarios CHANGE COLUMN nome nome_func varchar(45) not null;
ALTER TABLE funcionarios CHANGE COLUMN nome_func nome varchar(45) not null;

-- Deletando uma Tabela
DROP TABLE salarios;

-- Criando Índices
CREATE INDEX departamentos ON funcionarios (departamento);
CREATE INDEX nomes ON funcionarios (nome(6));