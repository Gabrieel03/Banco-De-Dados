-- 1. Criação do Banco de Dados
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

-- 2. Criação da Tabela com 5 atributos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT
);

-- 3. Inserção de 8 registros
INSERT INTO tb_produtos (nome, categoria, preco, estoque) VALUES 
('Smartphone X', 'Eletrônicos', 2500.00, 50),
('Capa de Celular', 'Acessórios', 30.00, 200),
('Notebook Gamer', 'Informática', 4500.00, 15),
('Mouse Sem Fio', 'Periféricos', 85.00, 100),
('Teclado Mecânico', 'Periféricos', 350.00, 60),
('Monitor 24pol', 'Informática', 800.00, 30),
('Cabo HDMI', 'Acessórios', 25.00, 150),
('Smart TV 50', 'Eletrônicos', 3200.00, 20);

-- 4. SELECT para produtos com valor maior que 500
SELECT * FROM tb_produtos WHERE preco > 500;

-- 5. SELECT para produtos com valor menor que 500
SELECT * FROM tb_produtos WHERE preco < 500;

-- 6. Atualização de um registro (Mudando o preço do Mouse)
UPDATE tb_produtos SET preco = 75.00 WHERE id = 4;