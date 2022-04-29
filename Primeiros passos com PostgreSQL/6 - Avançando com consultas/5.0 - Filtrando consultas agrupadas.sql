/*
 *	[...] 5.0 - Filtrando consultas agrupadas
 */

SELECT *
    FROM curso
    LEFT JOIN aluno_curso ON aluno.curso_id = curso.id
    LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id

SELECT *
        COUNT (aluno.id)
    FROM curso
    LEFT JOIN aluno_curso ON aluno.curso_id = curso.id
    LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
GROUP BY 1

SELECT *
    FROM curso
    LEFT JOIN aluno_curso ON aluno.curso_id = curso.id
    LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
    WHERE COUNT(aluno.id) = 0
GROUP BY 1

SELECT *
    FROM curso
    LEFT JOIN aluno_curso ON aluno.curso_id = curso.id
    LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
    --WHERE COUNT(aluno.id) = 0
GROUP BY 1
    HAVING COUNT (aluno.id) = 0

SELECT nome
    FROM funcionarios
    GROUP BY nome
    HAVING COUNT(id) > 1;

SELECT nome,
       COUNT(id)
    FROM funcionarios
    GROUP BY nome
    HAVING COUNT(id) > 1;