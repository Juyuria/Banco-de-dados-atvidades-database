DROP DATABASE IF EXISTS db_generation_game_online;
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(255) NOT NULL,      
    funcao VARCHAR(255) NOT NULL,           
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL, 
    poder_defesa INT NOT NULL, 
    experiencia BIGINT,       
    vida INT,                  
    classe_id BIGINT,          
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, funcao) VALUES
('Guerreiro', 'Tanque'),     
('Mago', 'Dano Mágico'),      
('Arqueiro', 'Dano Físico'),    
('Curandeiro', 'Suporte'),   
('Ladrão', 'Dano Físico');   


INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, experiencia, vida, classe_id) VALUES
('Athur', 60, 2500, 3500, 15000, 1200, 1),
('Lysandra', 45, 3000, 1200, 10000, 800, 2),
('Crono', 80, 1800, 4500, 25000, 1500, 1),
('Shadow', 55, 2200, 950, 11000, 750, 5),
('Cler', 70, 1950, 1100, 18000, 900, 3),
('Merlin', 99, 5000, 2500, 50000, 1000, 2),
('Seraphina', 40, 800, 1500, 8000, 1100, 4),
('Garra', 50, 2100, 1900, 9500, 950, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT
    p.nome,
    p.nivel,
    p.poder_ataque,
    p.poder_defesa,
    c.nome_classe,
    c.funcao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT
    p.nome,
    p.nivel,
    c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome_classe = 'Arqueiro';