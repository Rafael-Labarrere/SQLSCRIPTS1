-- Active: 1792674019271@@127.0.0.1@5432@biblioteca
-- =============================================================================
-- MODELO 1: Biblioteca
-- =============================================================================

CREATE TABLE editoras (
    id_editora SERIAL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE autores (
    id_autor SERIAL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL
);

CREATE TABLE livros (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(80) NOT NULL,
    ano INT,
    id_editora INT NOT NULL REFERENCES editoras(id_editora),
    id_autor INT NOT NULL REFERENCES autores(id_autor)
);

-- =============================================================================
-- DATABASE: biblioteca inserts
-- =============================================================================

INSERT INTO editoras (nome) VALUES
('Companhia das Letras'),
('Grupo Editorial Record'),
('Editora Intrínseca'),
('Editora Rocco'),
('Editora Sextante'),
('HarperCollins Brasil'),
('Editora Aleph'),
('Editora Nova Fronteira'),
('Editora DarkSide Books'),
('Editora Martin Claret');

INSERT INTO autores (nome) VALUES
('Machado de Assis'),
('Clarice Lispector'),
('Jorge Amado'),
('Eça de Queirós'),
('Fernando Pessoa'),
('José Saramago'),
('Guimarães Rosa'),
('Graciliano Ramos'),
('Carlos Drummond de Andrade'),
('Cecília Meireles'),
('Lygia Fagundes Telles'),
('Rachel de Queiroz'),
('Mário de Andrade'),
('Manuel Bandeira'),
('Lima Barreto'),
('José de Alencar'),
('Aluísio Azevedo'),
('Castro Alves'),
('Monteiro Lobato'),
('Rubem Fonseca'),
('Dalton Trevisan'),
('Autran Dourado'),
('Ariano Suassuna'),
('João Cabral de Melo Neto'),
('Adélia Prado'),
('Cora Coralina'),
('Mia Couto'),
('Valter Hugo Mãe'),
('Sophia de Mello Breyner'),
('Antero de Quental');

INSERT INTO livros (titulo, ano, id_editora, id_autor) VALUES
('Livro Exemplo 1', 1951, 1, 1),
('Livro Exemplo 2', 1952, 2, 2),
('Livro Exemplo 3', 1953, 3, 3),
('Livro Exemplo 4', 1954, 4, 4),
('Livro Exemplo 5', 1955, 5, 5),
('Livro Exemplo 6', 1956, 6, 6),
('Livro Exemplo 7', 1957, 7, 7),
('Livro Exemplo 8', 1958, 8, 8),
('Livro Exemplo 9', 1959, 9, 9),
('Livro Exemplo 10', 1960, 10, 10),
('Livro Exemplo 11', 1961, 1, 11),
('Livro Exemplo 12', 1962, 2, 12),
('Livro Exemplo 13', 1963, 3, 13),
('Livro Exemplo 14', 1964, 4, 14),
('Livro Exemplo 15', 1965, 5, 15),
('Livro Exemplo 16', 1966, 6, 16),
('Livro Exemplo 17', 1967, 7, 17),
('Livro Exemplo 18', 1968, 8, 18),
('Livro Exemplo 19', 1969, 9, 19),
('Livro Exemplo 20', 1970, 10, 20),
('Livro Exemplo 21', 1971, 1, 21),
('Livro Exemplo 22', 1972, 2, 22),
('Livro Exemplo 23', 1973, 3, 23),
('Livro Exemplo 24', 1974, 4, 24),
('Livro Exemplo 25', 1975, 5, 25),
('Livro Exemplo 26', 1976, 6, 26),
('Livro Exemplo 27', 1977, 7, 27),
('Livro Exemplo 28', 1978, 8, 28),
('Livro Exemplo 29', 1979, 9, 29),
('Livro Exemplo 30', 1980, 10, 30),
('Livro Exemplo 31', 1981, 1, 1),
('Livro Exemplo 32', 1982, 2, 2),
('Livro Exemplo 33', 1983, 3, 3),
('Livro Exemplo 34', 1984, 4, 4),
('Livro Exemplo 35', 1985, 5, 5),
('Livro Exemplo 36', 1986, 6, 6),
('Livro Exemplo 37', 1987, 7, 7),
('Livro Exemplo 38', 1988, 8, 8),
('Livro Exemplo 39', 1989, 9, 9),
('Livro Exemplo 40', 1990, 10, 10),
('Livro Exemplo 41', 1991, 1, 11),
('Livro Exemplo 42', 1992, 2, 12),
('Livro Exemplo 43', 1993, 3, 13),
('Livro Exemplo 44', 1994, 4, 14),
('Livro Exemplo 45', 1995, 5, 15),
('Livro Exemplo 46', 1996, 6, 16),
('Livro Exemplo 47', 1997, 7, 17),
('Livro Exemplo 48', 1998, 8, 18),
('Livro Exemplo 49', 1999, 9, 19),
('Livro Exemplo 50', 2000, 10, 20),
('Livro Exemplo 51', 2001, 1, 21),
('Livro Exemplo 52', 2002, 2, 22),
('Livro Exemplo 53', 2003, 3, 23),
('Livro Exemplo 54', 2004, 4, 24),
('Livro Exemplo 55', 2005, 5, 25),
('Livro Exemplo 56', 2006, 6, 26),
('Livro Exemplo 57', 2007, 7, 27),
('Livro Exemplo 58', 2008, 8, 28),
('Livro Exemplo 59', 2009, 9, 29),
('Livro Exemplo 60', 2010, 10, 30),
('Livro Exemplo 61', 2011, 1, 1),
('Livro Exemplo 62', 2012, 2, 2),
('Livro Exemplo 63', 2013, 3, 3),
('Livro Exemplo 64', 2014, 4, 4),
('Livro Exemplo 65', 2015, 5, 5),
('Livro Exemplo 66', 2016, 6, 6),
('Livro Exemplo 67', 2017, 7, 7),
('Livro Exemplo 68', 2018, 8, 8),
('Livro Exemplo 69', 2019, 9, 9),
('Livro Exemplo 70', 2020, 10, 10),
('Livro Exemplo 71', 2021, 1, 11),
('Livro Exemplo 72', 2022, 2, 12),
('Livro Exemplo 73', 2023, 3, 13),
('Livro Exemplo 74', 2024, 4, 14),
('Livro Exemplo 75', 1950, 5, 15),
('Livro Exemplo 76', 1951, 6, 16),
('Livro Exemplo 77', 1952, 7, 17),
('Livro Exemplo 78', 1953, 8, 18),
('Livro Exemplo 79', 1954, 9, 19),
('Livro Exemplo 80', 1955, 10, 20),
('Livro Exemplo 81', 1956, 1, 21),
('Livro Exemplo 82', 1957, 2, 22),
('Livro Exemplo 83', 1958, 3, 23),
('Livro Exemplo 84', 1959, 4, 24),
('Livro Exemplo 85', 1960, 5, 25),
('Livro Exemplo 86', 1961, 6, 26),
('Livro Exemplo 87', 1962, 7, 27),
('Livro Exemplo 88', 1963, 8, 28),
('Livro Exemplo 89', 1964, 9, 29),
('Livro Exemplo 90', 1965, 10, 30),
('Livro Exemplo 91', 1966, 1, 1),
('Livro Exemplo 92', 1967, 2, 2),
('Livro Exemplo 93', 1968, 3, 3),
('Livro Exemplo 94', 1969, 4, 4),
('Livro Exemplo 95', 1970, 5, 5),
('Livro Exemplo 96', 1971, 6, 6),
('Livro Exemplo 97', 1972, 7, 7),
('Livro Exemplo 98', 1973, 8, 8),
('Livro Exemplo 99', 1974, 9, 9),
('Livro Exemplo 100', 1975, 10, 10);

SELECT * FROM editoras

SELECT * FROM autores

SELECT * FROM livros