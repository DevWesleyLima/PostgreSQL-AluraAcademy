/*
 *	[...] 3.0 - Fun��es de agrega��o
 */

-- COUNT - Retorna a quantidade de registros
-- SUM -   Retorna a soma dos registros
-- MAX -   Retorna o maior valor dos registros
-- MIN -   Retorna o menor valor dos registros
-- AVG -   Retorna a m�dia dos registros

SELECT COUNT (id),
       SUM(id),
       MAX(id),
       MIN(id),
       ROUND(AVG(id),0)
  FROM funcionarios;