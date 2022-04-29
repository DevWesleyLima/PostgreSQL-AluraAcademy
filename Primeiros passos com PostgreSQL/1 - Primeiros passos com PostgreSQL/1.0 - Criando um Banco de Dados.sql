/*
 *	[...] 1.0 - Criando um Banco de Dados
 */

Create database alura;

-- or

CREATE DATABASE alura
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;