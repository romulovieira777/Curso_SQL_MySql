/* CRIANDO UM BANCO DE DADOS */
CREATE DATABASE SOFTBLUE DEFAULT CHARSET = LATIN1;

/* ESCOLHENDO O BANCO DE DADOS */
USE SOFTBLUE;

/* CRIANDO TABELAS */
CREATE TABLE Tipo (
	codigo integer unsigned not null auto_increment,
    tipo varchar(32) not null,
    primary key (codigo)
);

CREATE TABLE Instrutor (
	codigo integer unsigned not null auto_increment,
    instrutor varchar(64) not null,
    telefone varchar(9) null,
    primary key (codigo)
);

CREATE TABLE Curso (
	codigo integer unsigned not null auto_increment,
	curso varchar(64) not null,
    tipo integer unsigned not null,
    instrutor integer unsigned not null,
    valor double not null,
    primary key (codigo),
    index Fk_Tipo (tipo),
    index Fk_Instrutor (instrutor),
    foreign key (tipo) references tipo (codigo),
    foreign key (instrutor) references instrutor (codigo)
);

CREATE TABLE Aluno (
	codigo integer unsigned not null auto_increment,
    aluno varchar(64) not null,
    endereco varchar(230) not null,
    email varchar(128)  not null,
    primary key (codigo)
);

CREATE TABLE Pedido (
	codigo integer unsigned not null auto_increment,
    aluno integer unsigned not null,
    dataHora datetime not null,    
    primary key (codigo),
    index Fk_Aluno (aluno),
    foreign key (aluno) references Aluno (codigo)
);

CREATE TABLE Pedido_Detalhe (
	pedido integer unsigned not null,
    curso integer unsigned not null,
    valor double not null,
    index Fk_Pedido (Pedido),
    index Fk_Curso (Curso),
    primary key (pedido, curso),
    foreign key (pedido) references Pedido (codigo),
    foreign key (curso) references Curso (codigo)
);

/* Adicionando Coluna */
ALTER TABLE
	Aluno
ADD
	data_nascimento varchar(10);
 
/* Alterando Dados de uma Tabela */
ALTER TABLE
	Aluno
CHANGE
	data_nascimento nascimento date null;

/* Criando um Index */
ALTER TABLE
	Aluno
ADD INDEX
	Index_Aluno (Aluno);


	





