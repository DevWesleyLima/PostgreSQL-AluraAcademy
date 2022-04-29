/*
 *	[...] 3.0 - Filtrando registros de campos do tipo numérico, data e booleano
 */

SELECT 
	*
 FROM aluno
 WHERE cpf IS NULL;
 
 
SELECT 
	*
 FROM aluno
 WHERE idade BETWEEN 10 AND 35;
 

SELECT 
	*
 FROM aluno
 WHERE idade BETWEEN 10 AND 20;

SELECT 
	*
 FROM aluno
 WHERE idade > 10 and idade <= 35;