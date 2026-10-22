-- Active: 1792674019271@@127.0.0.1@5432@streaming
-- =============================================================================
-- MODELO 4: Serviço de Streaming
-- =============================================================================

CREATE TABLE planos (
    id_plano SERIAL PRIMARY KEY,
    preco DECIMAL(8,2) NOT NULL
);

CREATE TABLE diretores (
    id_diretor SERIAL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL
);

CREATE TABLE generos (
    id_genero SERIAL PRIMARY KEY,
    nome VARCHAR(40) NOT NULL
);

CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    email VARCHAR(120) NOT NULL,
    id_plano INT NOT NULL REFERENCES planos(id_plano)
);

CREATE TABLE filmes (
    id_filme SERIAL PRIMARY KEY,
    titulo VARCHAR(80) NOT NULL,
    ano INT,
    id_genero INT NOT NULL REFERENCES generos(id_genero),
    id_diretor INT NOT NULL REFERENCES diretores(id_diretor)
);

CREATE TABLE assistidos (
    id_usuario INT REFERENCES usuarios(id_usuario),
    id_filme INT REFERENCES filmes(id_filme),
    PRIMARY KEY (id_usuario, id_filme)
);

-- =============================================================================
-- DATABASE: streaming inserts
-- =============================================================================

INSERT INTO planos (preco) VALUES
(19.90),
(29.90),
(39.90),
(54.90);

INSERT INTO generos (nome) VALUES
('Ação'),
('Comédia'),
('Drama'),
('Terror'),
('Documentário'),
('Animação'),
('Ficção Científica'),
('Suspense'),
('Romance'),
('Aventura');

INSERT INTO diretores (nome) VALUES
('Diretor 1'), ('Diretor 2'), ('Diretor 3'), ('Diretor 4'), ('Diretor 5'),
('Diretor 6'), ('Diretor 7'), ('Diretor 8'), ('Diretor 9'), ('Diretor 10'),
('Diretor 11'), ('Diretor 12'), ('Diretor 13'), ('Diretor 14'), ('Diretor 15'),
('Diretor 16'), ('Diretor 17'), ('Diretor 18'), ('Diretor 19'), ('Diretor 20'),
('Diretor 21'), ('Diretor 22'), ('Diretor 23'), ('Diretor 24'), ('Diretor 25'),
('Diretor 26'), ('Diretor 27'), ('Diretor 28'), ('Diretor 29'), ('Diretor 30');

INSERT INTO usuarios (email, id_plano) VALUES
('usuario1@streaming.com', 1), ('usuario2@streaming.com', 2),
('usuario3@streaming.com', 3), ('usuario4@streaming.com', 4),
('usuario5@streaming.com', 1), ('usuario6@streaming.com', 2),
('usuario7@streaming.com', 3), ('usuario8@streaming.com', 4),
('usuario9@streaming.com', 1), ('usuario10@streaming.com', 2),
('usuario11@streaming.com', 3), ('usuario12@streaming.com', 4),
('usuario13@streaming.com', 1), ('usuario14@streaming.com', 2),
('usuario15@streaming.com', 3), ('usuario16@streaming.com', 4),
('usuario17@streaming.com', 1), ('usuario18@streaming.com', 2),
('usuario19@streaming.com', 3), ('usuario20@streaming.com', 4),
('usuario21@streaming.com', 1), ('usuario22@streaming.com', 2),
('usuario23@streaming.com', 3), ('usuario24@streaming.com', 4),
('usuario25@streaming.com', 1), ('usuario26@streaming.com', 2),
('usuario27@streaming.com', 3), ('usuario28@streaming.com', 4),
('usuario29@streaming.com', 1), ('usuario30@streaming.com', 2),
('usuario31@streaming.com', 3), ('usuario32@streaming.com', 4),
('usuario33@streaming.com', 1), ('usuario34@streaming.com', 2),
('usuario35@streaming.com', 3), ('usuario36@streaming.com', 4),
('usuario37@streaming.com', 1), ('usuario38@streaming.com', 2),
('usuario39@streaming.com', 3), ('usuario40@streaming.com', 4),
('usuario41@streaming.com', 1), ('usuario42@streaming.com', 2),
('usuario43@streaming.com', 3), ('usuario44@streaming.com', 4),
('usuario45@streaming.com', 1), ('usuario46@streaming.com', 2),
('usuario47@streaming.com', 3), ('usuario48@streaming.com', 4),
('usuario49@streaming.com', 1), ('usuario50@streaming.com', 2),
('usuario51@streaming.com', 3), ('usuario52@streaming.com', 4),
('usuario53@streaming.com', 1), ('usuario54@streaming.com', 2),
('usuario55@streaming.com', 3), ('usuario56@streaming.com', 4),
('usuario57@streaming.com', 1), ('usuario58@streaming.com', 2),
('usuario59@streaming.com', 3), ('usuario60@streaming.com', 4),
('usuario61@streaming.com', 1), ('usuario62@streaming.com', 2),
('usuario63@streaming.com', 3), ('usuario64@streaming.com', 4),
('usuario65@streaming.com', 1), ('usuario66@streaming.com', 2),
('usuario67@streaming.com', 3), ('usuario68@streaming.com', 4),
('usuario69@streaming.com', 1), ('usuario70@streaming.com', 2),
('usuario71@streaming.com', 3), ('usuario72@streaming.com', 4),
('usuario73@streaming.com', 1), ('usuario74@streaming.com', 2),
('usuario75@streaming.com', 3), ('usuario76@streaming.com', 4),
('usuario77@streaming.com', 1), ('usuario78@streaming.com', 2),
('usuario79@streaming.com', 3), ('usuario80@streaming.com', 4),
('usuario81@streaming.com', 1), ('usuario82@streaming.com', 2),
('usuario83@streaming.com', 3), ('usuario84@streaming.com', 4),
('usuario85@streaming.com', 1), ('usuario86@streaming.com', 2),
('usuario87@streaming.com', 3), ('usuario88@streaming.com', 4),
('usuario89@streaming.com', 1), ('usuario90@streaming.com', 2),
('usuario91@streaming.com', 3), ('usuario92@streaming.com', 4),
('usuario93@streaming.com', 1), ('usuario94@streaming.com', 2),
('usuario95@streaming.com', 3), ('usuario96@streaming.com', 4),
('usuario97@streaming.com', 1), ('usuario98@streaming.com', 2),
('usuario99@streaming.com', 3), ('usuario100@streaming.com', 4);

INSERT INTO filmes (titulo, ano, id_genero, id_diretor) VALUES
('Filme 1', 1981, 1, 1), ('Filme 2', 1982, 2, 2), ('Filme 3', 1983, 3, 3), ('Filme 4', 1984, 4, 4),
('Filme 5', 1985, 5, 5), ('Filme 6', 1986, 6, 6), ('Filme 7', 1987, 7, 7), ('Filme 8', 1988, 8, 8),
('Filme 9', 1989, 9, 9), ('Filme 10', 1990, 10, 10), ('Filme 11', 1991, 1, 11), ('Filme 12', 1992, 2, 12),
('Filme 13', 1993, 3, 13), ('Filme 14', 1994, 4, 14), ('Filme 15', 1995, 5, 15), ('Filme 16', 1996, 6, 16),
('Filme 17', 1997, 7, 17), ('Filme 18', 1998, 8, 18), ('Filme 19', 1999, 9, 19), ('Filme 20', 2000, 10, 20),
('Filme 21', 2001, 1, 21), ('Filme 22', 2002, 2, 22), ('Filme 23', 2003, 3, 23), ('Filme 24', 2004, 4, 24),
('Filme 25', 2005, 5, 25), ('Filme 26', 2006, 6, 26), ('Filme 27', 2007, 7, 27), ('Filme 28', 2008, 8, 28),
('Filme 29', 2009, 9, 29), ('Filme 30', 2010, 10, 30), ('Filme 31', 2011, 1, 1), ('Filme 32', 2012, 2, 2),
('Filme 33', 2013, 3, 3), ('Filme 34', 2014, 4, 4), ('Filme 35', 2015, 5, 5), ('Filme 36', 2016, 6, 6),
('Filme 37', 2017, 7, 7), ('Filme 38', 2018, 8, 8), ('Filme 39', 2019, 9, 9), ('Filme 40', 2020, 10, 10),
('Filme 41', 2021, 1, 11), ('Filme 42', 2022, 2, 12), ('Filme 43', 2023, 3, 13), ('Filme 44', 2024, 4, 14),
('Filme 45', 2025, 5, 15), ('Filme 46', 1980, 6, 16), ('Filme 47', 1981, 7, 17), ('Filme 48', 1982, 8, 18),
('Filme 49', 1983, 9, 19), ('Filme 50', 1984, 10, 20), ('Filme 51', 1985, 1, 21), ('Filme 52', 1986, 2, 22),
('Filme 53', 1987, 3, 23), ('Filme 54', 1988, 4, 24), ('Filme 55', 1989, 5, 25), ('Filme 56', 1990, 6, 26),
('Filme 57', 1991, 7, 27), ('Filme 58', 1992, 8, 28), ('Filme 59', 1993, 9, 29), ('Filme 60', 1994, 10, 30),
('Filme 61', 1995, 1, 1), ('Filme 62', 1996, 2, 2), ('Filme 63', 1997, 3, 3), ('Filme 64', 1998, 4, 4),
('Filme 65', 1999, 5, 5), ('Filme 66', 2000, 6, 6), ('Filme 67', 2001, 7, 7), ('Filme 68', 2002, 8, 8),
('Filme 69', 2003, 9, 9), ('Filme 70', 2004, 10, 10), ('Filme 71', 2005, 1, 11), ('Filme 72', 2006, 2, 12),
('Filme 73', 2007, 3, 13), ('Filme 74', 2008, 4, 14), ('Filme 75', 2009, 5, 15), ('Filme 76', 2010, 6, 16),
('Filme 77', 2011, 7, 17), ('Filme 78', 2012, 8, 18), ('Filme 79', 2013, 9, 19), ('Filme 80', 2014, 10, 20),
('Filme 81', 2015, 1, 21), ('Filme 82', 2016, 2, 22), ('Filme 83', 2017, 3, 23), ('Filme 84', 2018, 4, 24),
('Filme 85', 2019, 5, 25), ('Filme 86', 2020, 6, 26), ('Filme 87', 2021, 7, 27), ('Filme 88', 2022, 8, 28),
('Filme 89', 2023, 9, 29), ('Filme 90', 2024, 10, 30), ('Filme 91', 2025, 1, 1), ('Filme 92', 1980, 2, 2),
('Filme 93', 1981, 3, 3), ('Filme 94', 1982, 4, 4), ('Filme 95', 1983, 5, 5), ('Filme 96', 1984, 6, 6),
('Filme 97', 1985, 7, 7), ('Filme 98', 1986, 8, 8), ('Filme 99', 1987, 9, 9), ('Filme 100', 1988, 10, 10);

INSERT INTO assistidos (id_usuario, id_filme) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
(31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
(41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
(51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (56, 56), (57, 57), (58, 58), (59, 59), (60, 60),
(61, 61), (62, 62), (63, 63), (64, 64), (65, 65), (66, 66), (67, 67), (68, 68), (69, 69), (70, 70),
(71, 71), (72, 72), (73, 73), (74, 74), (75, 75), (76, 76), (77, 77), (78, 78), (79, 79), (80, 80),
(81, 81), (82, 82), (83, 83), (84, 84), (85, 85), (86, 86), (87, 87), (88, 88), (89, 89), (90, 90),
(91, 91), (92, 92), (93, 93), (94, 94), (95, 95), (96, 96), (97, 97), (98, 98), (99, 99), (100, 100);