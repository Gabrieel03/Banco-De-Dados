-- 1. Criação do Banco de Dados
CREATE DATABASE db_escola;

USE db_escola;

-- 2. Criação da Tabela com 5 atributos
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    turma VARCHAR(50),
    nota DECIMAL(4, 2) NOT NULL
);

-- 3. Inserção de 8 registros
INSERT INTO tb_estudantes (nome, idade, turma, nota) VALUES 
('Beatriz Lima', 15, '1A', 8.5),
('Carlos Rocha', 16, '2B', 5.0),
('Daniela Alves', 15, '1A', 9.0),
('Eduardo Mello', 16, '2B', 6.5),
('Fernanda Dias', 15, '1A', 7.5),
('Gabriel Nunes', 17, '3C', 4.5),
('Helena Martins', 17, '3C', 10.0),
('Igor Paiva', 16, '2B', 6.8);

-- 4. SELECT para estudantes com nota maior que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- 5. SELECT para estudantes com nota menor que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- 6. Atualização de um registro (Corrigindo a nota do Eduardo)
UPDATE tb_estudantes SET nota = 7.0 WHERE id = 4;