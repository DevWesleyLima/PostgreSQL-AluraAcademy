/*
 *	[...] 2.0 - Update Cascade
 */

UPDATE 
	aluno
 SET id = 10
 WHERE id = 2;
 
UPDATE 
	aluno
 SET id = 20
 WHERE id = 4;
 
 
SELECT 
	*
 FROM aluno
 WHERE id = 2;

SELECT 
	*
 FROM aluno
 WHERE id = 4;
 
DROP TABLE aluno_curso;

SELECT 
	*
 FROM aluno_curso;

CREATE TABLE aluno_curso
(
	aluno_id INTEGER,
    curso_id INTEGER,
    PRIMARY KEY (aluno_id, curso_id),
    FOREIGN KEY (aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE
    ON  UPDATE CASCADE,
	
    FOREIGN KEY (curso_id)
    REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) values (3,2);
INSERT INTO aluno_curso (aluno_id, curso_id) values (2,1);

SELECT 
	aluno.id as aluno_id,
    aluno.nome as "Nome do Aluno",
    curso.id as "curso_id",
    curso.nome as "Nome do Curso"
 FROM aluno
 JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
 JOIN curso ON curso.id = aluno_curso.curso_id