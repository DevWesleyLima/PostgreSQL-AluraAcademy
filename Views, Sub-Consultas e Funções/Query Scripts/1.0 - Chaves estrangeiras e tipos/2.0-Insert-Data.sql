/*
 *	[...] Insert Data
 */

--	Table aluno
insert into aluno(primeiro_nome, ultimo_nome, data_nascimento)
values('Wesley', 'Lima','1992-12-22')

insert into aluno(primeiro_nome, ultimo_nome, data_nascimento)
values('Wendel', 'Souza','1989-09-01')

insert into aluno(primeiro_nome, ultimo_nome, data_nascimento)
values('Aliare', 'Aliados','2022-03-07')

insert into aluno(primeiro_nome, ultimo_nome, data_nascimento)
values('Alan', 'Casa Grande','1999-01-01')

--	Table categoria
insert into categoria(nome)
values('Categoria_1')

insert into categoria(nome)
values('Categoria_2')

insert into categoria(nome)
values('Categoria_3')

--	Table curso
insert into curso(nome, categoria_id)
values('Curso_1', 1)

insert into curso(nome, categoria_id)
values('Curso_2', 2)

insert into curso(nome, categoria_id)
values('Curso_3', 3)

--	Table aluno_curso
insert into aluno_curso(aluno_id, curso_id)
values(1, 1)

insert into aluno_curso(aluno_id, curso_id)
values(2, 2)

insert into aluno_curso(aluno_id, curso_id)
values(3, 3)

insert into aluno_curso(aluno_id, curso_id)
values(4, 3)






