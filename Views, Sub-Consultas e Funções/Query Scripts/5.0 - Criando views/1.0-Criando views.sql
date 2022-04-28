/*
 *	[...] Criando Views
 */
 
Select * from vw_cursos_por_categoria; 
 
CREATE VIEW vw_cursos_por_categoria
	AS SELECT categoria.nome AS categoria,
    COUNT(curso.id) as numero_cursos
 FROM categoria
 JOIN curso ON curso.categoria_id = categoria.id
 GROUP BY categoria;
 
Select * from vw_cursos_por_categoria; 
 
Select categoria
 from vw_cursos_por_categoria as categoria_cursos
 where numero_cursos >= 3;
  
CREATE VIEW vw_cursos_programacao 
	AS SELECT nome 
 FROM curso 
 WHERE categoria_id = 2
 
Select * from vw_cursos_programacao; 

Select * from vw_cursos_programacao where nome like '%PHP%'; 

Select 
	categoria.id AS categoria_id,
	vw_cursos_por_categoria.*
 from vw_cursos_por_categoria
 join categoria on categoria.nome = vw_cursos_por_categoria.categoria;