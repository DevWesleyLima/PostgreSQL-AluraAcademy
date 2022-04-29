/*
 *	[...] 4.0 - Filtrando utilizando operadores E e OU
 */

SELECT 
	*
 FROM aluno
 WHERE nome LIKE 'D%'
 	AND cpf IS NOT NULL;

SELECT 
	*
 FROM aluno
  WHERE nome LIKE 'Diogo'
    OR nome LIKE 'Rodrigo';

SELECT 
	*
 FROM aluno
  WHERE nome LIKE 'Diogo'
    AND nome LIKE 'Nico%';

SELECT 
	*
 FROM aluno
 WHERE nome LIKE 'Thiago'
    OR nome LIKE 'Miguel';