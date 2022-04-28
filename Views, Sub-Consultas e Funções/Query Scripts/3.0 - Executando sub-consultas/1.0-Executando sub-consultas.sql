/*
 *	[...] Executando sub-consultas
 */

Select * from curso;
Select * from categoria;

Select * from curso where categoria_id in (1,2);


select id from categoria where nome not like '%' || ' ' || '%';

Select curso.nome from curso where categoria_id in
(
	Select id from categoria where nome not like '%' || ' ' || '%'
);

-- ********** --
-- ********** --

Select * 
	from aluno
	join aluno_curso on aluno_curso.aluno_id = aluno.id
	join curso on curso.id = aluno_curso.curso_id]
	
Select 
	k.nome as categoria,
	count(k.id) as numero_cursos
 from categoria k
 join curso c on c.categoria_id = k.id
 group by categoria;
 
Select 
	categoria,
	numero_cursos
 from (
 	Select 
		k.nome as categoria,
		count(k.id) as numero_cursos
 	 from categoria k
 	 join curso c on c.categoria_id = k.id
 	 group by categoria
 ) as categoria_cursos
 where numero_cursos >= 3;