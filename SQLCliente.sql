--SELECT * FROM Clientes
--WHERE Nome LIKE '%R%'
--ORDER BY Nome, Sobrenome

--INSERT INTO Clientes (Sobrenome, Nome, Email, AceitaComunicados, DataCadastro)
--VALUES ('Antonio', 'Joao', 'email@email.com', 1, GETDATE() )

--INSERT INTO Clientes VALUES ( 'Leo', 'Buta', 'email@email.com' , 0, GETDATE() )

--SELECT * FROM Clientes WHERE Nome = 'Leo'

-- SELECT * FROM Clientes WHERE Nome = 'Joao'

-- BEGIN TRAN TEM QUE EXECUTAR ANTES DE FAZER A ALTERAÇÃO
-- ROLLBACK

-- UPDATE Clientes
-- SET Email = 'novoemailTeste@gmail.com',
-- 	AceitaComunicados = 0
-- WHERE Id = 7
-- Sem o WHERE deu bosta kkkkkk ATUALIZATUDO DENTRO DO DB

--SELECT * FROM Clientes WHERE Nome = 'Joao'

--DELETE Clientes
--WHERE Id = 6

--SELECT * FROM Clientes WHERE Id = 4
--SELECT * FROM Enderecos WHERE IdCliente = 4

--INSERT INTO Enderecos VALUES (4, 'Rua Teste', 'Bairro Teste', 'Cidade Teste', 'MG')

--CREATE TABLE Enderecos(
--	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	IdCliente INT NULL,
--	Rua VARCHAR(255) NULL,
--	Bairro VARCHAR (255) NULL,
--	Cidade VARCHAR (255) NULL,
--	Estado CHAR(2) NULL,

--	CONSTRAINT Fk_Edereco_Cliente FOREIGN KEY (IdCliente)
--	REFERENCES Clientes(Id)
--)

SELECT 
	*
FROM
	Clientes
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
WHERE Clientes.Id = 4