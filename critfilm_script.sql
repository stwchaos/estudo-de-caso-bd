CREATE database critfilm;

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
	id_genero INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);


CREATE TABLE filme (
	id_filme INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome_do_filme VARCHAR(255) NOT NULL,
	classificacao_idade INT NOT NULL,
	data_lancamento DATE NOT NULL,
	data_saida DATE NOT NULL
);

CREATE TABLE sessao_filme (
	id_sessao_filme INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    sala VARCHAR (45) NOT NULL,
    data_sessao DATETIME NOT NULL,
    FOREIGN KEY (cinema_id_cinema) REFERENCES cinema (id_cinema),
    FOREIGN KEY (filme_id_filme) REFERENCES filme (id_filme)
);

CREATE TABLE filme_has_genero (
    FOREIGN KEY (filme_id_filme) REFERENCES cinema (id_filme),
    FOREIGN KEY (genero_id_genero) REFERENCES filme (id_genero)
);


CREATE TABLE ingresso (
	id_ingresso INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_compra DATE NOT NULL,
    forma_pagamento VARCHAR (45) NOT NULL,
    numero_ingresso INT NOT NULL,
    assento VARCHAR (5) NOT NULL,
    FOREIGN KEY (usuario_id_cliente) REFERENCES cliente (id_cliente),
    FOREIGN KEY (sessao_filme_id_sessao_filme) REFERENCES sessao_filme (id_sessao_filme)
);