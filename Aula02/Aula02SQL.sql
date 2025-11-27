-- APAGA O DB
DROP DATABASE db_quitanda;

-- CRIA O DB
CREATE DATABASE db_quitanda;

-- REFERENCIA UTILIZA O DB
USE db_quitanda;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL
);

-- CADASTRAR DADOS
INSERT INTO tb_categorias (descricao) VALUES 
("Frutas"),("Verduras"), ("Legumes"), ("Temperos"), ("Ovos"),('Outros');

SELECT * FROM tb_categorias;

-- CRIANDO A TABELA PRODUTOS
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL,
    categoriaId BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaId) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoriaId) 
values ("tomate",100, "2023-12-15", 8.00, 3);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoriaId) 
values ("maçã",20, "2023-12-15", 5.00, 1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoriaId) 
values ("laranja",50, "2023-12-15", 10.00, 1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoriaId) 
values ("banana",200, "2023-12-15", 12.00, 1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoriaId) 
values ("uva",1200, "2023-12-15", 30.00, 1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoriaId) 
values ("pêra",500, "2023-12-15", 2.99, 1);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaId)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- ORDENAÇÃO POR NOME
SELECT * FROM tb_produtos ORDER BY nome ASC;

SELECT * FROM tb_produtos ORDER BY nome DESC;

-- SELEÇÃO POR LISTA DE CRITERIO
SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00);

-- CONSULTA INNER JOIN

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

-- CONSULTA LEFT JOIN

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;