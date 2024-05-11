--SELECT * FROM Atores

--SELECT * FROM ElencoFilme

--SELECT * FROM Filmes

--SELECT * FROM FilmesGenero

--SELECT * FROM Generos

-- 1) NomeFilme + AnoFilme 
SELECT
	Nome, Ano
	FROM Filmes;

-- 2) NomeFilme e AnoFilme em ordem crescente
SELECT
	Nome, Ano, Duracao
	FROM Filmes
	ORDER BY Ano ASC; -- DESC decrescente

-- 3) De Volta Para o Futuro -> Nome, Ano e Duraçâo
SELECT
	Nome, Ano, Duracao
	FROM Filmes
	WHERE Nome = 'De Volta Para o Futuro'; -- Com a adição do LIKE a busca sera feita por um trecho sinalizado pelo % em qualquer parte do "nome"

-- 4) Buscar pelo Ano 1997, trazer Nome, Ano, Duração
SELECT
	Nome, Ano, Duracao
	FROM Filmes
	WHERE Ano = 1997;

-- 5) Buscar pelos filmes lançados apos o ano 2000, trazer Nome, Ano, Duração
SELECT
	Nome, Ano, Duracao
	FROM Filmes
	WHERE Ano >= 2000;

-- 6) Buscar pelos filmes com duração maior que 100 e menor 150 em ordem crescente
SELECT * 
	FROM Filmes
	WHERE  Duracao >= 100 AND Duracao <= 150
	ORDER BY DURACAO ASC;

-- 7) Qnt filmes no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, Count(*) AS Quantidade
	FROM Filmes
	GROUP BY Ano
	ORDER BY Quantidade DESC;

-- 8) Atores masculinos, retorna nome e UltimoNome
SELECT *
	FROM Atores
	WHERE Atores.Genero = 'M';

-- 9) Atores famininas, retornar nome e UltimoNome
SELECT
	PrimeiroNome, UltimoNome
	FROM Atores
	WHERE Atores.Genero = 'F'
	ORDER BY PrimeiroNome ASC;

-- 10) Buscar o nome do filme e o genero
SELECT Filmes.Nome, Generos.Genero
	FROM Filmes
	JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
	JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11) Buscar o nome do filme e o genero Misterio
SELECT Filmes.Nome, Generos.Genero
	FROM Filmes
	JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
	JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
	WHERE Generos.Genero = 'Mistério';

-- 12) Buscarr o nome do filme, nomes atores e papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
	FROM Filmes
	JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
	JOIN Atores ON Atores.Id = Atores.Id