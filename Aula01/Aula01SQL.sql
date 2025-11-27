CREATE DATABASE db_quitanda; -- Comentarios 

USE db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Abacaxi",10, "2023-12-15", 7.99);


SELECT * FROM tb_produtos; -- SELECIONAR OS DADOS DA TABELA

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE preco > 5;

-- ALTERAR A ESTRUTURA DA TABELA
ALTER TABLE tb_produtos MODIFY preco DECIMAL (6,2); -- 0000,00 -> 9999,99

-- ATUALIZAÇÃO DOS DADOS DA TABELA
UPDATE tb_produtos SET preco = 2.99 WHERE id = 6;

-- EXCLUIR OS DADOS DA TABELA
DELETE FROM tb_produtos WHERE id = 2;