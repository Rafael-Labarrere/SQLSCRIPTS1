-- Active: 1792674019271@@127.0.0.1@5432@escola_idiomas
-- =============================================================================
-- MODELO 2: Escola de Idiomas
-- =============================================================================

CREATE TABLE professores (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(80) NOT NULL
);

CREATE TABLE disciplinas (
    id_disciplina SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE turmas (
    id_turma SERIAL PRIMARY KEY,
    sala VARCHAR(20) NOT NULL,
    cpf_prof CHAR(11) NOT NULL REFERENCES professores(cpf),
    id_disciplina INT NOT NULL REFERENCES disciplinas(id_disciplina)
);

CREATE TABLE alunos (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    id_turma INT NOT NULL REFERENCES turmas(id_turma)
);

-- =============================================================================
-- DATABASE: escola_idiomas inserts
-- =============================================================================

INSERT INTO disciplinas (nome) VALUES
('Inglês'),
('Espanhol'),
('Francês'),
('Alemão'),
('Japonês'),
('Mandarim');

INSERT INTO professores (cpf, nome) VALUES
('00000000001', 'Professor 1'),
('00000000002', 'Professor 2'),
('00000000003', 'Professor 3'),
('00000000004', 'Professor 4'),
('00000000005', 'Professor 5'),
('00000000006', 'Professor 6'),
('00000000007', 'Professor 7'),
('00000000008', 'Professor 8'),
('00000000009', 'Professor 9'),
('00000000010', 'Professor 10'),
('00000000011', 'Professor 11'),
('00000000012', 'Professor 12'),
('00000000013', 'Professor 13'),
('00000000014', 'Professor 14'),
('00000000015', 'Professor 15');

INSERT INTO turmas (sala, cpf_prof, id_disciplina) VALUES
('Sala 101', '00000000001', 1),
('Sala 102', '00000000002', 2),
('Sala 103', '00000000003', 3),
('Sala 104', '00000000004', 4),
('Sala 105', '00000000005', 5),
('Sala 106', '00000000006', 6),
('Sala 107', '00000000007', 1),
('Sala 108', '00000000008', 2),
('Sala 109', '00000000009', 3),
('Sala 110', '00000000010', 4),
('Sala 111', '00000000011', 5),
('Sala 112', '00000000012', 6),
('Sala 113', '00000000013', 1),
('Sala 114', '00000000014', 2),
('Sala 115', '00000000015', 3),
('Sala 116', '00000000001', 4),
('Sala 117', '00000000002', 5),
('Sala 118', '00000000003', 6),
('Sala 119', '00000000004', 1),
('Sala 120', '00000000005', 2),
('Sala 121', '00000000006', 3),
('Sala 122', '00000000007', 4),
('Sala 123', '00000000008', 5),
('Sala 124', '00000000009', 6),
('Sala 125', '00000000010', 1),
('Sala 126', '00000000011', 2),
('Sala 127', '00000000012', 3),
('Sala 128', '00000000013', 4),
('Sala 129', '00000000014', 5),
('Sala 130', '00000000015', 6);

INSERT INTO alunos (nome, id_turma) VALUES
('Aluno 1', 1), ('Aluno 2', 2), ('Aluno 3', 3), ('Aluno 4', 4), ('Aluno 5', 5),
('Aluno 6', 6), ('Aluno 7', 7), ('Aluno 8', 8), ('Aluno 9', 9), ('Aluno 10', 10),
('Aluno 11', 11), ('Aluno 12', 12), ('Aluno 13', 13), ('Aluno 14', 14), ('Aluno 15', 15),
('Aluno 16', 16), ('Aluno 17', 17), ('Aluno 18', 18), ('Aluno 19', 19), ('Aluno 20', 20),
('Aluno 21', 21), ('Aluno 22', 22), ('Aluno 23', 23), ('Aluno 24', 24), ('Aluno 25', 25),
('Aluno 26', 26), ('Aluno 27', 27), ('Aluno 28', 28), ('Aluno 29', 29), ('Aluno 30', 30),
('Aluno 31', 1), ('Aluno 32', 2), ('Aluno 33', 3), ('Aluno 34', 4), ('Aluno 35', 5),
('Aluno 36', 6), ('Aluno 37', 7), ('Aluno 38', 8), ('Aluno 39', 9), ('Aluno 40', 10),
('Aluno 41', 11), ('Aluno 42', 12), ('Aluno 43', 13), ('Aluno 44', 14), ('Aluno 45', 15),
('Aluno 46', 16), ('Aluno 47', 17), ('Aluno 48', 18), ('Aluno 49', 19), ('Aluno 50', 20),
('Aluno 51', 21), ('Aluno 52', 22), ('Aluno 53', 23), ('Aluno 54', 24), ('Aluno 55', 25),
('Aluno 56', 26), ('Aluno 57', 27), ('Aluno 58', 28), ('Aluno 59', 29), ('Aluno 60', 30),
('Aluno 61', 1), ('Aluno 62', 2), ('Aluno 63', 3), ('Aluno 64', 4), ('Aluno 65', 5),
('Aluno 66', 6), ('Aluno 67', 7), ('Aluno 68', 8), ('Aluno 69', 9), ('Aluno 70', 10),
('Aluno 71', 11), ('Aluno 72', 12), ('Aluno 73', 13), ('Aluno 74', 14), ('Aluno 75', 15),
('Aluno 76', 16), ('Aluno 77', 17), ('Aluno 78', 18), ('Aluno 79', 19), ('Aluno 80', 20),
('Aluno 81', 21), ('Aluno 82', 22), ('Aluno 83', 23), ('Aluno 84', 24), ('Aluno 85', 25),
('Aluno 86', 26), ('Aluno 87', 27), ('Aluno 88', 28), ('Aluno 89', 29), ('Aluno 90', 30),
('Aluno 91', 1), ('Aluno 92', 2), ('Aluno 93', 3), ('Aluno 94', 4), ('Aluno 95', 5),
('Aluno 96', 6), ('Aluno 97', 7), ('Aluno 98', 8), ('Aluno 99', 9), ('Aluno 100', 10);

