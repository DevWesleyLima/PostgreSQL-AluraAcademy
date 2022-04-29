/*
 *	[...] 1.0 - Criando tabela com chave primária
 */

SELECT * FROM CURSO;

CREATE TABLE curso (
    id INTEGER,
        nome VARCHAR(255)
);

DROP TABLE curso;

CREATE TABLE curso (
    id INTEGER NOT NULL,
        nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (1, 'Javascript');

DROP TABLE curso;

CREATE TABLE curso (
    id INTEGER PRIMARY KEY,
        nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');