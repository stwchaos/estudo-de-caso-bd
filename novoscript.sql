-- DROP DATABASE critfilm;
CREATE database critfilm;

use critfilm;

CREATE TABLE cinema (
    id_cinema INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_cinema VARCHAR(150) NOT NULL
);

CREATE TABLE cliente (
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR (8) NOT NULL,
    cpf VARCHAR(11) NOT NULL
);

CREATE TABLE genero (
    id_genero INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_genero VARCHAR(255)
);

CREATE TABLE filme (
    id_filme INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_do_filme VARCHAR(255) NOT NULL,
    classificacao_idade VARCHAR(5) NOT NULL,
    data_lancamento DATE NOT NULL,
    data_saida DATE NOT NULL
);

CREATE TABLE sessao_filme (
    id_sessao_filme INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    sala VARCHAR (45) NOT NULL,
    data_sessao DATETIME NOT NULL,
    cinema_id_cinema INT NOT NULL,
    filme_id_filme INT NOT NULL,
    FOREIGN KEY (cinema_id_cinema) REFERENCES cinema (id_cinema),
    FOREIGN KEY (filme_id_filme) REFERENCES filme (id_filme)
);

CREATE TABLE filme_has_genero (
    filme_id_filme INT NOT NULL,
    genero_id_genero INT NOT NULL,
    FOREIGN KEY (filme_id_filme) REFERENCES filme (id_filme),
    FOREIGN KEY (genero_id_genero) REFERENCES genero (id_genero)
);

CREATE TABLE ingresso (
    id_ingresso INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_compra DATE NOT NULL,
    forma_pagamento VARCHAR (45) NOT NULL,
    numero_ingresso INT NOT NULL,
    assento VARCHAR (5) NOT NULL,
    usuario_id_cliente INT NOT NULL,
    sessao_filme_id_sessao_filme INT NOT NULL,
    FOREIGN KEY (usuario_id_cliente) REFERENCES cliente (id_cliente),
    FOREIGN KEY (sessao_filme_id_sessao_filme) REFERENCES sessao_filme (id_sessao_filme)
);

insert into
    cinema (id_cinema, nome_cinema)
values
    (1, 'Caleb');

insert into
    cinema (id_cinema, nome_cinema)
values
    (2, 'Beale');

insert into
    cinema (id_cinema, nome_cinema)
values
    (3, 'Rosie');

insert into
    cinema (id_cinema, nome_cinema)
values
    (4, 'Romeo');

insert into
    cinema (id_cinema, nome_cinema)
values
    (5, 'Marrilee');

insert into
    cinema (id_cinema, nome_cinema)
values
    (6, 'Kora');

insert into
    cinema (id_cinema, nome_cinema)
values
    (7, 'Rudie');

insert into
    cinema (id_cinema, nome_cinema)
values
    (8, 'Nichols');

insert into
    cinema (id_cinema, nome_cinema)
values
    (9, 'Newmarketing');

insert into
    cinema (id_cinema, nome_cinema)
values
    (10, 'Sheela');

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (
        1,
        'efranzewitch0@google.co.uk',
        'mXq1b1Qvhd',
        35461924121
    );

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (
        2,
        'ppitney1@indiatimes.com',
        'W2FmDNTY',
        54069604057
    );

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (
        3,
        'fscotchford2@phpbb.com',
        'vNEzsh',
        80353324590
    );

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (
        4,
        'ssehorsch3@google.pl',
        'Rn1tVQ8m07w',
        12324557703
    );

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (5, 'mgarrie4@topsy.com', 'a7OoDN2a', 17341539981);

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (
        6,
        'lgullan5@amazonaws.com',
        '9GKFjfbAc',
        74210848274
    );

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (
        7,
        'lvanetti6@google.co.uk',
        'a1i1ltv1',
        70443934328
    );

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (
        8,
        'syoslowitz7@drupal.org',
        '6FVXR6',
        76653381408
    );

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (9, 'ssimes8@digg.com', 'iKVaiqQqe', 73324869779);

insert into
    cliente (id_cliente, email, senha, cpf)
values
    (
        10,
        'cfairbridge9@pagesperso-orange.fr',
        'nDLPCt9',
        99635568047
    );

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (
        1,
        'Unreasonable Man, An',
        'livre',
        '17/06/2022',
        '24/06/2022'
    );

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (2, 'Scarface', '18', '26/06/2022', '02/02/2022');

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (
        3,
        'Nothing''s All Bad',
        'livre',
        '23/07/2022',
        '22/06/2022'
    );

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (
        4,
        'Pauline at the Beach (Pauline à la Plage)',
        '15',
        '21/01/2022',
        '28/06/2022'
    );

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (
        5,
        'Perfect Game, The',
        '16',
        '03/09/2022',
        '01/01/2022'
    );

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (6, 'Choose', 'livre', '15/05/2022', '26/09/2022');

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (
        7,
        'Blank Check',
        '12',
        '19/02/2022',
        '06/11/2022'
    );

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (
        8,
        'Homeward Bound: The Incredible Journey',
        '10',
        '21/08/2022',
        '19/10/2022'
    );

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (9, 'If....', 'livre', '27/12/2021', '17/12/2021');

insert into
    filme (
        id_filme,
        nome_do_filme,
        classificacao_idade,
        data_lancamento,
        data_saida
    )
values
    (
        10,
        'Daylight (Daglicht)',
        'livre',
        '07/12/2021',
        '29/10/2022'
    );

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (1, 'Sessão 34', '11/01/2022');

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (2, 'Sessão 30', '19/02/2022');

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (3, 'Sessão 45', '04/09/2022');

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (4, 'Sessão 44', '09/06/2022');

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (5, 'Sessão 40', '28/06/2022');

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (6, 'Sessão 50', '25/08/2022');

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (7, 'Sessão 55', '16/05/2022');

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (8, 'Sessão 54', '08/10/2022');

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (9, 'Sessão 35', '14/09/2022');

insert into
    sessao_filme (id_sessao_filme, sala, data_sessao)
values
    (10, 'Sessão 20', '07/07/2022');

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (1, '08/01/2022', 'cartão de crédito', 1, 34);

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (2, '15/07/2022', 'cartão de débito', 2, 20);

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (3, '12/01/2022', 'dinheiro', 3, 35);

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (4, '06/05/2022', 'pix', 4, 40);

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (5, '23/05/2022', 'pix', 5, 55);

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (6, '21/07/2022', 'pix', 6, 45);

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (7, '09/04/2022', 'pix', 7, 44);

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (8, '20/04/2022', 'pix', 8, 30);

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (9, '02/01/2022', 'pix', 9, 50);

insert into
    ingresso (
        id_ingresso,
        data_compra,
        forma_pagamento,
        numero_ingresso,
        assento
    )
values
    (10, '27/03/2022', 'pix', 10, 54);

/*UPDATES*/
update
    filme
set
    id_filme = 18,
    nome_do_filme = 'Rango',
    classificacao = '10'
where
    id_filme = 1;

update
    filme
set
    id_filme = 180,
    nome_do_filme = 'Pulp Fiction',
    classificacao = '16'
where
    id_filme = 2;

update
    filme
set
    id_filme = 10,
    nome_do_filme = 'The thing',
    classificacao = '17'
where
    id_filme = 3;

update
    filme
set
    id_filme = 1087,
    nome_do_filme = 'Cidade de deus',
    classificacao = '18'
where
    id_filme = 4;

update
    filme
set
    id_filme = 65,
    nome_do_filme = 'Central do Brasil',
    classificacao = '18'
where
    id_filme = 5;

update
    cinema
set
    id_cinema = 187,
    nome_cinema = 'Cinema temática'
where
    id_cinema = 1;

update
    cinema
set
    id_cinema = 17,
    nome_cinema = 'abulebule'
where
    id_cinema = 2;

update
    cinema
set
    id_cinema = 170,
    nome_cinema = 'bastião do filme'
where
    id_cinema = 3;

update
    cinema
set
    id_cinema = 135,
    nome_cinema = 'jesusSocorro'
where
    id_cinema = 4;

update
    cinema
set
    id_cinema = 107,
    nome_cinema = 'filme e tals'
where
    id_cinema = 5;

update
    cliente
set
    id_cliente = 864,
    email = 'abulebule@gmail.com'
where
    id_cliente = 1;

update
    cliente
set
    id_cliente = 876,
    email = 'metiradaqui@gmail.com'
where
    id_cliente = 2;

update
    cliente
set
    id_cliente = 2434,
    email = 'ntanko@gmail.com'
where
    id_cliente = 3;

update
    cliente
set
    id_cliente = 34,
    email = 'amem@gmail.com'
where
    id_cliente = 4;

update
    cliente
set
    id_cliente = 8645,
    email = 'aaaa@gmail.com'
where
    id_cliente = 5;

update
    sessao_filme
set
    id_sessao_filme = 8664,
    sala = 'sala da perdição'
where
    id_sessao_filme = 1;

update
    sessao_filme
set
    id_sessao_filme = 664,
    sala = 'jorge lacerda'
where
    id_sessao_filme = 2;

update
    sessao_filme
set
    id_sessao_filme = 666,
    sala = 'sessão 69 infantil'
where
    id_sessao_filme = 3;

update
    sessao_filme
set
    id_sessao_filme = 6661,
    sala = 'masarope'
where
    id_sessao_filme = 4;

update
    sessao_filme
set
    id_sessao_filme = 676,
    sala = 'meripoppins'
where
    id_sessao_filme = 5;

update
    ingreso
set
    id_ingresso = 666,
    numero_ingresso = 1
where
    id_ingresso = 1;

update
    ingreso
set
    id_ingresso = 98,
    numero_ingresso = 67
where
    id_ingresso = 2;

update
    ingreso
set
    id_ingresso = 653,
    numero_ingresso = 198
where
    id_ingresso = 3;

update
    ingreso
set
    id_ingresso = 696,
    numero_ingresso = 761
where
    id_ingresso = 4;

update
    ingreso
set
    id_ingresso = 69,
    numero_ingresso = 155
where
    id_ingresso = 5;

/*DELETE*/
DELETE FROM
    filme
WHERE
    id_filme = 6;

DELETE FROM
    filme
WHERE
    id_filme = 7;

DELETE FROM
    filme
WHERE
    id_filme = 8;

DELETE FROM
    filme
WHERE
    id_filme = 9;

DELETE FROM
    filme
WHERE
    id_filme = 10;

DELETE FROM
    cinema
WHERE
    id_cinema = 6;

DELETE FROM
    cinema
WHERE
    id_cinema = 7;

DELETE FROM
    cinema
WHERE
    id_cinema = 8;

DELETE FROM
    cinema
WHERE
    id_cinema = 9;

DELETE FROM
    cinema
WHERE
    id_cinema = 10;

DELETE FROM
    cliente
WHERE
    id_cliente = 6;

DELETE FROM
    cliente
WHERE
    id_cliente = 7;

DELETE FROM
    cliente
WHERE
    id_cliente = 8;

DELETE FROM
    cliente
WHERE
    id_cliente = 9;

DELETE FROM
    cliente
WHERE
    id_cliente = 10;

DELETE FROM
    sessao_filme
WHERE
    id_sessao_filme = 6;

DELETE FROM
    sessao_filme
WHERE
    id_sessao_filme = 7;

DELETE FROM
    sessao_filme
WHERE
    id_sessao_filme = 8;

DELETE FROM
    sessao_filme
WHERE
    id_sessao_filme = 9;

DELETE FROM
    sessao_filme
WHERE
    id_sessao_filme = 10;

DELETE FROM
    ingresso
WHERE
    id_ingresso = 6;

DELETE FROM
    ingresso
WHERE
    id_ingresso = 7;

DELETE FROM
    ingresso
WHERE
    id_ingresso = 8;

DELETE FROM
    ingresso
WHERE
    id_ingresso = 9;

DELETE FROM
    ingresso
WHERE
    id_ingresso = 10;

/*SELECTS*/
select
    *
from
    filme
ORDER BY
    data_lancamento asc;

select
    *
from
    cliente
ORDER BY
    cpf asc;

select
    *
from
    cinema
ORDER BY
    nome_cinema asc;

select
    *
from
    sessao_filme
ORDER BY
    sala asc;

select
    *
from
    ingresso
ORDER BY
    numero_ingresso asc;

select
    nome_cinema
from
    cinema
where
    id_cinema = 187;

select
    numero_ingresso
from
    ingresso
where
    id_ingresso = 666;

select
    cpf
from
    cliente
where
    id_cliente = 864;

select
    sala
from
    sessao_filme
where
    id_sessao_filme = 666;

select
    nome_do_filme
from
    filme
where
    id_filme = 18;

SELECT
    *
FROM
    ingresso i
    INNER JOIN cliente c ON i.usuario_id_cliente = c.id_cliente;