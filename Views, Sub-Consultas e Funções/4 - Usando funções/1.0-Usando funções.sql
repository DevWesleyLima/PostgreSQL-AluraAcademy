/*
 *	[...] Usando funções
 * 	Read More: https://www.postgresql.org/docs/current/functions.html
 */
 
-- Funções de String
-- Read more: https://www.postgresql.org/docs/9.1/functions-string.html
Select
	primeiro_nome || ' ' || ultimo_nome as nome_completo
 from aluno;
 
Select
	'Wesley' || ' ' || 'Lima';
 
Select
	concat('Wesley',' ','Lima');
	
Select
	upper(concat('Wesley',' ','Lima'));
	
Select
	initcap(concat('Wesley',' ','Lima'));

Select
	initcap(concat('Wesley',' ','Lima') || ' x         x');
	
Select
	'          1 2 3 x          ';
	
Select
	TRIM('          1 2 3 x          ');

-- Funções de Data
-- Read more: https://www.postgresql.org/docs/9.1/functions-datetime.html
Select
	primeiro_nome || ' ' || ultimo_nome as nome_completo,
	now()::date as hoje,
	data_nascimento,
	now()::date - data_nascimento || ' dias' as diferenca_dias,
	((now()::date - data_nascimento) / 365) || ' anos' as idade_aproximada,
	extract(year from age(data_nascimento)) || ' anos' as idade_exata
 from aluno;

-- Funções Matemáticas
-- Read More: https://www.postgresql.org/docs/9.5/functions-math.html
Select
	1 + 2 as sum,
	19 - 1 as sub,
	50 / 2 as div,
	20 * 10 as mul,
	pi() as pi_value;
	
Select 
	@ '17234825123134165465465465489465186465145646546546874814',
	'17234825123134165465465465489465186465145646546546874814';

-- Conversão de Dados
-- Read More: https://www.postgresql.org/docs/9.5/functions-formatting.html
Select 
	now() as normal_date_now,
	to_char(now(), 'dd/mm/yyyy') as formated_date_now,
	to_char(now(), 'dd, month,yyyy') as formated_date_now_month_name;

SELECT 128.3::REAL;
SELECT TO_CHAR(128.3::REAL,'9999099');
