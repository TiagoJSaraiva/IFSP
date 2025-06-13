IF DB_ID (N'LojaIFSP') IS NULL
	CREATE DATABASE LojaIFSP;
ELSE
	USE LojaIFSP;
GO

SELECT create_date AS 'Data de criação',
	   name		   AS 'Nome da tabela'
FROM sys.tables;
GO

CREATE TABLE CLIENTES (
	ID INT PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Sexo CHAR(1) NULL,
	Idade INT CHECK (Idade > 18) NOT NULL,
	CPF CHAR(11) UNIQUE NOT NULL,
	Email VARCHAR(200) DEFAULT 'meu@gmail.com' NOT NULL
);
GO

INSERT INTO CLIENTES VALUES
	(1, 'Ana Cristina', 'F', 20, '11111111111', 'ana@gmail.com');
GO

-- ERRO. CHAVE PRIMÁRIA JÁ USADA
INSERT INTO CLIENTES VALUES
	(1, 'Marcos Paulo', 'M', 45, '22222222222', 'marcos@gmail.com');
GO

-- ERRO. IDADE INFERIOR A 18
INSERT INTO CLIENTES VALUES
	(3, 'André Luiz', 'M', 15, '33333333333', 'andre@gmail.com');
GO


INSERT INTO CLIENTES VALUES
	(4, 'Maria Clara', NULL, 22, '44444444444', 'maria@gmail.com');
GO

-- ERRO. CPF REPITIDO
INSERT INTO CLIENTES VALUES
	(5, 'Pedro Augusto', 'M', 45, '11111111111', 'pedro@gmail.com');
GO

-- ERRO. CPF NULO
INSERT INTO CLIENTES VALUES
	(6, 'Ricardo Lima', 'M', 52, NULL, 'ricardo@gmail.com');
GO

-- ERRO. CHAVE PRIMÁRIA NULA
INSERT INTO CLIENTES VALUES
	(NULL, 'José Pereira', 'M', 45, '77777777777', 'marcos@gmail.com');
GO

-- ERRO. QUANTIDADE DE CARACTERES ACEITOS EXCEDIDOS EM 'Sexo'
INSERT INTO CLIENTES VALUES
	(8, 'Marcelo Souza', 'Masculino', 56, '88888888888', 'marcelo@gmail.com');
GO

-- OUTRA FORMA DE REALIZAR AS ENTRADAS ACIMA
INSERT INTO CLIENTES (ID, Nome, Sexo, Idade, CPF)
	VALUES (9, 'Daphne Lima', 'F', 32, '99999999999');
GO

SELECT * FROM CLIENTES; 
GO

-- INSERE OS REGISTROS, CORRIGINDO ERROS
INSERT INTO CLIENTES VALUES
	(2, 'Marcos Paulo', 'M', 45, '22222222222', 'marcos@gmail.com'),
	(3, 'André Luiz', 'M', 25, '33333333333', 'andre@gmail.com'),
	(5, 'Pedro Augusto', 'M', 45, '55555555555', 'pedro@gmail.com'),
	(6, 'Ricardo Lima', 'M', 52, '66666666666', 'ricardo@gmail.com'),
	(7, 'José Pereira', 'M', 45, '77777777777', 'jose@gmail.com'),
	(8, 'Marcelo Souza', 'M', 56, '88888888888', 'marcelo@gmail.com'),
	(10, 'Sheila Pereira', NULL, 21, '10101010101', 'sheila@yahoo.com'),
	(11, 'Tiago Augusto', NULL, 70, '20202020202', 'tiago@yahoo.com'),
	(12, 'Maria Pereira', 'F', 45, '30303030303', 'maria@bol.com');
GO

SELECT * FROM CLIENTES;
GO

-- INSERE OS REGISTROS DOS CLIENTES SEM E-MAIL
INSERT INTO CLIENTES (ID, Nome, Sexo, Idade, CPF)
	VALUES
		(13, 'Lucas Silva', 'M', 19, '40404040404'),
		(14, 'Benedito Silva', NULL, 44, '50505050505'),
		(15, 'Fernanda Pereira', 'F', 31, '60606060606');
GO

-- EXIBE INFORMAÇÕES SOBRE A ESTRUTURA DA TABELA
SELECT TABLE_CATALOG	AS 'Banco de dados',
	   TABLE_NAME		AS 'Tabela',
	   ORDINAL_POSITION AS 'Posição',
	   COLUMN_NAME		AS 'Coluna',
	   DATA_TYPE		AS 'Tipo de dado',
	   COLLATION_NAME	AS 'Idioma da Coluna',
	   IS_NULLABLE		AS 'Aceita Nulo?'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'CLIENTES';
GO

-- EXIBE INFORMAÇÕES SOBRE AS RESTRIÇÕES DA TABELA
SELECT CONSTRAINT_CATALOG AS 'Banco de dados',
	   TABLE_NAME		  AS 'Tabela',
	   CONSTRAINT_TYPE	  AS 'Tipo de restrição',
	   CONSTRAINT_NAME	  AS 'Nome de restrição'
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'CLIENTES';
GO

-- VERIFICA A ESTRUTURA DA TABELA, UTILIZANDO O COMANDO SP_HELP
EXEC sp_help 'CLIENTES';
GO

--EXERCÍCIOS

-- 1.
SELECT * FROM CLIENTES;
GO
-- 2.
SELECT * FROM CLIENTES
ORDER BY Nome;
GO
-- 3.
SELECT * FROM CLIENTES
ORDER BY Idade;
GO
-- 4.
SELECT * FROM CLIENTES
ORDER BY Idade DESC;
GO
-- 5.
SELECT * FROM CLIENTES
ORDER BY Sexo DESC, Idade;
GO
-- 6.
SELECT Nome, Idade, Email FROM CLIENTES;
GO
-- 7.
SELECT Nome, Idade, Email FROM CLIENTES
ORDER BY Nome;
-- 8.
SELECT ID AS "Codigo do cliente", Nome, Idade, Email FROM CLIENTES
WHERE ID >= 10;
-- 9.
SELECT TOP 5 ID AS "Codigo do cliente", Nome, Idade, Email FROM CLIENTES
ORDER BY Nome;
-- 10.
SELECT ID AS "Codigo do cliente", Nome, Sexo, Idade, Email AS "E-mail" FROM CLIENTES
WHERE Idade > 30
ORDER BY Nome;






	   


