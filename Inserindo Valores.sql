USE curso_sql_softblue;

-- Inserindo Valores na Tabela
INSERT INTO funcionarios (
	id, 
    nome, 
    salario, 
    departamento
)
VALUES (
	1, 
    'Romulo',
    1400,
    'TI');
INSERT INTO funcionarios (
	id,
	nome,
	salario,
	departamento
)
VALUES (
	2,
    'Mateus',
    2500,
    'Jurídico'
);

INSERT INTO funcionarios (
	nome,
    salario,
    departamento
)
VALUES (
	'Fábio',
    1700,
    'TI'
);

INSERT INTO funcionarios (
	nome,
    salario,
    departamento
)
VALUES (
	'Jose',
    1800,
    'Marketing'
);

INSERT INTO funcionarios (
	nome,
    salario,
    departamento
)
VALUES (
	'Isabela',
    2200,
    'Jurídico'
);

-- Selecionadno informaçãoes da Tabela
select 
	*
from
	funcionarios;

select
	*
from
	funcionarios
where
	salario > 2000;

select
	*
from
	funcionarios
where
	nome = 'Jose';
    
select
	*
from
	funcionarios
where
	id = 3;
    
-- Alterando Dados de uma Tabela
update
	funcionarios
set
	salario = salario * 1.1
where
	id = 1;

-- Zerando os Salarios
set sql_safe_updates = 0;

-- Atualizando o Salario de Todos
update
	funcionarios
set
	salario = salario * 1.1;
    
update
	funcionarios
set
	salario = round(salario * 1.1, 2);
    
-- Excluindo Dados de uma tabela
delete from
	funcionarios
where
	id = 4;
    
-- Inserindo Dados
insert into veiculos (
	funcionario_id,
    veiculo,
    placa
)
values (
	1,
    'Carro',
    'SB-0001'
);

insert into	veiculos (
	funcionario_id,
    veiculo,
    placa
)
values (
	1,
    'Carro',
    'SB-0002'
);

-- Mudando os Dados
update
	veiculos
set
	funcionario_id = 5
where
	id = 2;
    
-- Selecionado Dados de uma Tabela
select
	*
from
	veiculos;
    
-- Inserindo Dados
insert into salarios (
	faixa,
    inicio,
    fim
)
values (
	'Analista Jr',
    1000,
    4000
);

insert into salarios (
	faixa,
    inicio,
    fim
)
values (
	'Analista Pleno',
    2000,
    4000
);

-- Selecionando Dados
select
	*
from
	salarios;
    
select
	nome as 'Funcionário', salario
from
	funcionarios f
where
	f.salario > 2000;
  
select
	*
from
	funcionarios
where
	nome = 'Romulo'
union all
select
	*
from
	funcionarios
where
	id = 5;