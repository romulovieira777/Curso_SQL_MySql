/* Escolhendo um Banco de Dados */
USE softblue;

/* Inserindo Valores nas Tabelas */
INSERT INTO Tipo (
	codigo,
    tipo
)
VALUES (
	1,
    'Banco de Dados'
);

INSERT INTO Tipo (
	codigo,
    tipo
)
VALUES (
	2,
    'Programação'
);

INSERT INTO Tipo (
	codigo,
    tipo
)
VALUES (
	3,
    'Modelagem de Dados'
);

INSERT INTO Instrutor (
	codigo,
    instrutor,
    telefone
)
VALUES (
	1,
    'André Milani',
    '1111-1111'
);

INSERT INTO Instrutor (
	codigo,
    instrutor,
    telefone
    )
    VALUES (
	2,
	'Carlos Tosin',
	'1212-1212'
);

INSERT INTO Curso (
	codigo, 
    curso, 
    tipo, 
    instrutor, 
    valor) 
VALUES (
	1,
    'Java Fundamentos',
    2, 
    2, 
    270
);

INSERT INTO Curso (
	codigo,
    curso, 
    tipo, 
    instrutor,
    valor
) 
VALUES (
	2, 
    'Java Avançado',
    2,
    2, 
    330
);

INSERT INTO Curso (
	codigo,
    curso,
    tipo,
    instrutor,
    valor
) 
VALUES (
	3,
    'SQL Completo', 
    1,
    1, 
    170
);

INSERT INTO Curso (
	codigo,
    curso,
    tipo, 
    instrutor,
    valor
) 
VALUES (
	4, 
    'Php Básico',
    2,
    1,
    270
);

INSERT INTO Aluno (
	codigo,
    aluno,
    endereco,
    email
) 
VALUES (
	1,
    'José',
    'Rua XV de Novembro 72',
    'jose@softblue.com.br'
);

INSERT INTO Aluno (
	codigo, 
    aluno, 
    endereco,
    email
) 
VALUES (
	2, 
    'Wagner', 
    'Av. Paulista', 
    'wagner@softblue.com.br'
);

INSERT INTO Aluno (
	codigo,
    aluno, 
    endereco, 
    email
) 
VALUES (
	3,
    'Emílio', 
    'Rua Lajes 103, ap: 701',
    'emilio@softblue.com.br'
);

INSERT INTO Aluno (
	codigo, 
    aluno, 
    endereco,
    email
) 
VALUES (
	4,
    'Cris', 
    'Rua Tauney 22',
    'cris@softblue.com.br'
);

INSERT INTO Aluno (
	codigo,
    aluno,
    endereco, 
    email
) 
VALUES (
	5, 
    'Regina',
    'Rua Salles 305',
    'regina@softblue.com.br'
);

INSERT INTO Aluno (
	codigo, 
    aluno,
    endereco,
    email
) 
VALUES (
	6,
    'Fernando',
    'Av. Central 30', 
    'fernando@softblue.com.br'
);

INSERT INTO Pedido (
	codigo, 
    aluno, 
    datahora
) 
VALUES (
	1, 
    2, 
    '2010-04-15 11:23:32'
);

INSERT INTO Pedido (
	codigo, 
    aluno, 
    datahora
) 
VALUES (
	2,
    2,
    '2010-04-15 14:36:21'
);

INSERT INTO Pedido (
	codigo, 
    aluno, 
    datahora
)
VALUES (
	3, 
    3, 
    '2010-04-16 11:17:45'
);

INSERT INTO Pedido (
	codigo,
    aluno,
    datahora
) 
VALUES (
	4,
    4, 
    '2010-04-17 14:27:22'
);

INSERT INTO Pedido (
	codigo,
    aluno,
    datahora
) 
VALUES (
	5, 
    5,
    '2010-04-18 11:18:19'
);

INSERT INTO Pedido (
	codigo, 
    aluno,
    datahora
) 
VALUES (
	6,
    6,
    '2010-04-19 13:47:35'
);

INSERT INTO Pedido (
	codigo,
    aluno,
    datahora
) 
VALUES (
	7,
    6, 
    '2010-04-20 18:13:44'
);

INSERT INTO	pedido_detalhe (
    pedido,
    curso, 
    valor
) 
VALUES (
	1,
    1,
    270
);

INSERT INTO pedido_detalhe (
	pedido, 
    curso,
    valor
)
VALUES (
	1, 
    2,
    330
);

INSERT INTO pedido_detalhe (
	pedido, 
    curso,
    valor
)
VALUES (
	2, 
    1,
    270
);

INSERT INTO pedido_detalhe (
	pedido,
    curso,
    valor
)
VALUES (
	2, 
    2, 
    330
);

INSERT INTO pedido_detalhe (
	pedido, 
    curso,
    valor
)
VALUES (
	2, 
    3, 
    170
);

INSERT INTO pedido_detalhe (
	pedido,
    curso,
    valor
)
VALUES (
	3, 
    4,
    270
);

INSERT INTO pedido_detalhe (
	pedido,
    curso,
    valor
)
VALUES (
	4,
    2, 
    330
);

INSERT INTO pedido_detalhe (
	pedido, 
    curso,
    valor
)
VALUES (
	4, 
    4,
    270
);

INSERT INTO pedido_detalhe (
	pedido,
    curso,
    valor)
VALUES (
	5,
    3,
    170
);

INSERT INTO pedido_detalhe (
	pedido, 
    curso, 
    valor
)
VALUES (
	6, 
    3,
    170
);

INSERT INTO pedido_detalhe (
	pedido,
    curso,
    valor
)
VALUES (
	7,
    4,
    270
);