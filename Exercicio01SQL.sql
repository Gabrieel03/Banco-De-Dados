-- 1. Criação do Banco de Dados
CREATE DATABASE db_rh;

-- Seleciona o banco para uso
USE db_rh;

-- 2. Criação da Tabela com 5 atributos
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    data_admissao DATE
);

-- 3. Inserção de 5 registros (Dados variados para teste)
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) VALUES 
('Maria Silva', 'Desenvolvedora Senior', 8500.00, '2020-05-10'),
('João Santos', 'Estagiário de TI', 1500.00, '2023-01-15'),
('Pedro Souza', 'Analista de RH', 3200.00, '2021-11-20'),
('Ana Costa', 'Auxiliar Administrativo', 1800.00, '2022-08-01'),
('Lucas Oliveira', 'Gerente de Projetos', 9000.00, '2019-03-12');

-- 4. SELECT para salários maiores que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- 5. SELECT para salários menores que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- 6. Atualização de um registro (Aumentando o salário do João)
UPDATE tb_colaboradores SET salario = 1600.00 WHERE id = 2;