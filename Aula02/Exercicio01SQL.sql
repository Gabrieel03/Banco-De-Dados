-- 1. Criação do Banco de Dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- 2. Criação da Tabela tb_classes
CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    habilidade VARCHAR(255)
);

-- 3. Criação da Tabela tb_personagens com Foreign Key
CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- 4. Insere 5 registros na tabela tb_classes
INSERT INTO tb_classes (nome, habilidade) VALUES
('Guerreiro', 'Espada de Duas Mãos'),
('Mago', 'Bola de Fogo'),
('Arqueiro', 'Flecha Precisa'),
('Ladino', 'Furtividade'),
('Clérigo', 'Cura Divina');

-- 5. Insere 8 registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Thorin', 50, 2500, 1800, 1),       -- Guerreiro (Ataque > 2000)
('Gandalf', 60, 3000, 1200, 2),      -- Mago (Defesa entre 1000 e 2000)
('Legolas', 45, 2200, 1000, 3),      -- Arqueiro (Ataque > 2000)
('Bilbo', 20, 1200, 800, 4),         -- Ladino
('Shadowheart', 30, 1500, 1300, 5),  -- Clérigo (Defesa entre 1000 e 2000)
('Conan', 55, 2800, 2100, 1),        -- Guerreiro
('Merlin', 65, 3200, 1100, 2),       -- Mago
('Robin Hood', 40, 2100, 900, 3);    -- Arqueiro

-- 6. SELECT personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- 7. SELECT personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- 8. SELECT personagens que possuem a letra C no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- 9. Inner Join entre tb_personagens e tb_classes
SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

-- 10. Inner Join filtrando por uma classe específica
SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';