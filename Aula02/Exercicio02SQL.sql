-- 1. Criação do Banco de Dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- 2. Criação da Tabela tb_categorias
CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

-- 3. Criação da Tabela tb_pizzas com Foreign Key
CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255),
    preco DECIMAL(10, 2),
    tamanho VARCHAR(50),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- 4. Insere 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada Tradicional', 'Pizzas clássicas salgadas'),
('Salgada Especial', 'Ingredientes premium'),
('Doce', 'Pizzas de sobremesa'),
('Vegana', 'Sem produtos de origem animal'),
('Vegetariana', 'Sem carne');

-- 5. Insere 8 registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, ingredientes, preco, tamanho, categoria_id) VALUES
('Mussarela', 'Queijo e tomate', 40.00, 'Grande', 1),
('Calabresa', 'Calabresa e cebola', 42.00, 'Grande', 1),
('Marguerita Premium', 'Mussarela de búfala e manjericão', 60.00, 'Grande', 2), -- Preço > 45, Entre 50 e 100
('Chocolate com Morango', 'Chocolate ao leite e morango', 55.00, 'Média', 3),     -- Preço > 45, Entre 50 e 100
('Brócolis com Alho', 'Brócolis e alho frito', 48.00, 'Grande', 5),               -- Preço > 45
('Vegana de Palmito', 'Palmito e queijo vegano', 65.00, 'Grande', 4),             -- Preço > 45, Entre 50 e 100
('Romeu e Julieta', 'Goiabada e queijo', 52.00, 'Média', 3),                      -- Preço > 45, Entre 50 e 100
('Portuguesa', 'Presunto, ovo e ervilha', 44.00, 'Grande', 1);

-- 6. SELECT pizzas com valor maior que 45.00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- 7. SELECT pizzas com valor entre 50.00 e 100.00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- 8. SELECT pizzas que possuem a letra M no nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- 9. Inner Join entre tb_pizzas e tb_categorias
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

-- 10. Inner Join filtrando por categoria específica
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Doce';