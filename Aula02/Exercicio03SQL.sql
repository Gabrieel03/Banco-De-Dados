-- 1. Criação do Banco de Dados
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- 2. Criação da Tabela tb_categorias
CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ativo BOOLEAN
);

-- 3. Criação da Tabela tb_produtos com Foreign Key
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2),
    estoque INT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- 4. Insere 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, ativo) VALUES
('Medicamento', true),
('Cosmético', true),
('Higiene Pessoal', true),
('Vitamina', true),
('Infantil', true);

-- 5. Insere 8 registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
('Dorflex', 'Relaxante muscular', 20.00, 100, 1),            -- Entre 5 e 60
('Creme Hidratante Facial', 'Pele seca', 80.00, 30, 2),      -- Maior que 50
('Shampoo Anticaspa', 'Limpeza profunda', 25.00, 50, 3),     -- Entre 5 e 60
('Vitamina C', 'Imunidade', 40.00, 80, 4),                   -- Entre 5 e 60
('Fralda P', 'Pacote com 20', 55.00, 40, 5),                 -- Maior que 50, Entre 5 e 60
('Protetor Solar', 'FPS 50', 70.00, 25, 2),                  -- Maior que 50
('Dipirona', 'Analgésico', 8.00, 200, 1),                    -- Entre 5 e 60
('Condicionador', 'Hidratação', 28.00, 45, 3);               -- Entre 5 e 60

-- 6. SELECT produtos com valor maior que 50.00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- 7. SELECT produtos com valor entre 5.00 e 60.00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- 8. SELECT produtos que possuem a letra C no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- 9. Inner Join entre tb_produtos e tb_categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- 10. Inner Join filtrando por categoria específica
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Cosmético';