-- Este arquivo � um teste para o SQL Server, contendo v�rios comandos b�sicos e exemplos de como utiliz�-los.

-- Cria o banco de dados
CREATE DATABASE EmpresaCJ302847X;
GO

USE EmpresaCJ302847X;
GO

-- Cria a tabela
CREATE TABLE FUNCIONARIOS (
	ID INT PRIMARY KEY,
	Nome VARCHAR(25) NOT NULL,
	Sexo CHAR(1) NULL,
	Admissao DATE NOT NULL,
	Salario DECIMAL(10,2) NOT NULL,
);
GO

-- Estabelece o formato para o tipo de dado DATE
SET DATEFORMAT DMY;
GO

-- Insere informa��es na tabela
INSERT INTO FUNCIONARIOS (
	ID,
	Nome,
	Sexo,
	Admissao,
	Salario)
VALUES (1, 'Maria da Silva', 'F', '10/01/2018', 2500.00);
GO

-- Diferentes formas de inserir informa��es na tabela
INSERT INTO FUNCIONARIOS VALUES (2, 'Pedro Pereira', 'M', '25/05/2015', 990.00);
GO

INSERT INTO FUNCIONARIOS VALUES (3, 'Maria Cristina', 'F', '10/09/2015', 1200.00);
GO

INSERT INTO FUNCIONARIOS VALUES (4, 'Ant�nio Carlos', 'M', '15/05/2015', 990.00);
GO

INSERT INTO FUNCIONARIOS VALUES
	(5, 'Marcelo Augusto', 'M', '09/12/2017', 1900.00),
	(6, 'Pedro Silva', 'M', '15/11/2015', 1050.00),
	(7, 'M�nica da Silva', 'F', '12/10/2014', 3000.00),
	(8, 'Tiago Lima', 'M', '10/05/2016', 1350.00);
GO

INSERT INTO FUNCIONARIOS VALUES
	(9, 'Maria Cristina', 'F', '21/09/2012', 1700.00),
	(10, 'Maria Cristina', 'F', '10/10/2017', 1400.00);
GO

-- Diferentes exemplos de selecionamento de informa��es da tabela a serem exibidas
SELECT ID AS 'C�digo do Funcion�rio',
	Nome,
	Sexo,
	Salario AS 'Sal�rio'
FROM FUNCIONARIOS;
GO

SELECT * FROM FUNCIONARIOS;
GO

SELECT TOP 3 *
FROM FUNCIONARIOS;
GO

SELECT TOP 3
	ID, Nome
FROM FUNCIONARIOS;
GO

SELECT * FROM FUNCIONARIOS
WHERE Sexo = 'M' AND Salario > 1000;
GO

-- Ordenando os resultados
SELECT * FROM FUNCIONARIOS
ORDER BY Nome;
GO

SELECT * FROM FUNCIONARIOS
ORDER BY Nome DESC;
GO

SELECT * FROM FUNCIONARIOS
WHERE Salario < 3000
ORDER BY Nome, Salario DESC;
GO

-- Cria��o de uma tabela para testes
CREATE TABLE TESTE (
	ID INT,
	Nome CHAR(10)
);
GO

-- Comando espec�fico do SQL Server para exibir a estrutura da tabela
EXEC sp_columns TESTE;
GO

-- Renomeando informa��es do sistema para o usu�rio
SELECT TABLE_CATALOG AS 'Banco de Dados',
	   TABLE_NAME AS 'Tabela',
	   ORDINAL_POSITION AS 'Posi��o',
	   COLUMN_NAME AS 'Coluna',
	   DATA_TYPE AS 'Tipo de Dados',
	   COLLATION_NAME AS 'Idioma da Coluna',
	   IS_NULLABLE AS 'Aceita Nulo'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'TESTE';
GO

-- Altera informa��es da tabela
ALTER TABLE TESTE
	ALTER COLUMN Nome CHAR(50);
GO

ALTER TABLE TESTE
	ADD Sexo CHAR(1);
GO

ALTER TABLE TESTE
	ADD DataNascimento CHAR(10);
GO

ALTER TABLE TESTE
	DROP COLUMN DataNascimento; -- Remove uma coluna
GO

ALTER TABLE TESTE
	ALTER COLUMN ID INT NOT NULL;
GO

ALTER TABLE TESTE
	ADD CONSTRAINT pk_id PRIMARY KEY (ID); -- Adiciona uma restri��o
GO

-- Comando espec�fico do SQL Server para exibir as restri��es
EXEC sp_helpconstraint TESTE;
GO

-- Exclui uma tabela
DROP TABLE TESTE;
GO

-- Aplicando os conceitos anteriores em tabelas "reais"
CREATE TABLE CLIENTES (
	ID INT PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Sexo CHAR(1) NULL,
	Idade INT CHECK (Idade > 18) NOT NULL,
	CPF CHAR(11) UNIQUE NOT NULL,
	Email VARCHAR(200) DEFAULT 'meu@email.com' NOT NULL
);
GO

CREATE TABLE #TabelaA (
	ID INT NOT NULL,
	Nome VARCHAR(25) NOT NULL,
	Sexo CHAR(1) NULL,
	PRIMARY KEY (ID)
);
GO

INSERT INTO #TabelaA VALUES
	(1, 'Marcelo Augusto', 'M'),
	(2, 'Paula Maur�cia', 'F');
GO

SELECT * FROM #TabelaA
GO

CREATE TABLE #TabelaB (
	ID INT NOT NULL,
	Nome VARCHAR(25) NOT NULL,
	Sexo CHAR(1) NULL,
	PRIMARY KEY (ID)
);
GO

INSERT INTO #TabelaB VALUES
	(1, 'Marcelo Augusto', 'M'),
	(2, 'Maria Cristina', 'F');
GO

SELECT * FROM #TabelaB
GO

INSERT INTO #TabelaA
	SELECT ID,
		   Nome,
		   Sexo 
	FROM FUNCIONARIOS
	WHERE ID > 2;
GO

SELECT CONSTRAINT_CATALOG AS 'Banco de Dados',
	   TABLE_NAME AS 'Tabela',
	   CONSTRAINT_TYPE AS 'Tipo de Restri��o',
	   CONSTRAINT_NAME AS 'Nome da Restri��o'
FROM tempdb.INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME LIKE '#TabelaA';
GO

-- Criando uma c�pia de uma determinada tabela
SELECT *
	INTO FuncionariosCOPIA
FROM FUNCIONARIOS;
GO

SELECT * FROM FuncionariosCOPIA;
GO

SELECT TABLE_CATALOG AS 'Banco de Dados',
	   TABLE_NAME AS 'Tabela',
	   ORDINAL_POSITION AS 'Posi��o',
	   COLUMN_NAME AS 'Coluna',
	   DATA_TYPE AS 'Tipo de Dados',
	   COLLATION_NAME AS 'Idioma da Coluna',
	   IS_NULLABLE AS 'Aceita Nulo'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'FuncionariosCOPIA';
GO

SELECT CONSTRAINT_CATALOG AS 'Banco de Dados',
	   TABLE_NAME AS 'Tabela',
	   CONSTRAINT_TYPE AS 'Tipo de Restri��o',
	   CONSTRAINT_NAME AS 'Nome da Restri��o'
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME IN ('Funcionarios', 'FuncionariosCOPIA');
GO

ALTER TABLE FuncionariosCOPIA
	ADD CONSTRAINT pk_id PRIMARY KEY (ID);
GO

-- Comando espec�fico do SQL Server para exibir ajuda sobre algo
EXEC sp_help 'CLIENTES';
GO