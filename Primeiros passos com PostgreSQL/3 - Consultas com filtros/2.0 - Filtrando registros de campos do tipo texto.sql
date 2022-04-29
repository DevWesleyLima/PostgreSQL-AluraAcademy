/*
 *	[...] 2.0 - Filtrando registros de campos do tipo texto
 */

INSERT INTO aluno (nome) VALUES ('Vinícius Dias');
INSERT INTO aluno (nome) VALUES ('Nico Steppat');
INSERT INTO aluno (nome) VALUES ('João Roberto');
INSERT INTO aluno (nome) VALUES ('Diego');

SELECT *
    FROM aluno
 WHERE nome = 'Diogo';

SELECT 
	* 
 FROM aluno
 WHERE nome LIKE 'Di_go';

SELECT 
	*
 FROM aluno
 WHERE nome LIKE 'D%';

SELECT
	* 
 FROM aluno
 WHERE nome LIKE '% %';

SELECT 
	* 
 FROM aluno
 WHERE nome LIKE '%i%a%';