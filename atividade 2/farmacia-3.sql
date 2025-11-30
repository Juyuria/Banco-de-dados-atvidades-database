DROP DATABASE IF EXISTS db_farmacia_bem;
CREATE DATABASE db_farmacia_bem;
USE db_farmacia_bem;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    setor VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    receita_obrigatoria BOOLEAN,
    estoque INT,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (setor, descricao) VALUES
('Medicamentos', 'Produtos tarjados e de uso controlado.'),       
('Cosméticos', 'Beleza, maquiagem e cuidados com a pele.'),        
('Higiene', 'Produtos para limpeza e cuidado pessoal.'),            
('Suplementos', 'Vitaminas e complementos alimentares.'),           
('Infantil', 'Produtos destinados a bebês e crianças.');           

INSERT INTO tb_produtos (nome, valor, receita_obrigatoria, estoque, categoria_id) VALUES
('Antibiótico Forte', 85.50, TRUE, 50, 1),
('Xampu Anticaspa', 45.00, FALSE, 150, 3),
('Protetor Solar FPS 70', 65.90, FALSE, 100, 2),
('Creme Antirrugas', 120.00, FALSE, 30, 2),
('Vitamina C Pura', 55.00, FALSE, 80, 4),
('Fralda Descartável P', 35.75, FALSE, 200, 5),
('Analgésico Genérico', 9.90, FALSE, 500, 1),
('Escova de Dente Macia', 15.00, FALSE, 300, 3);


SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT
    p.nome AS Nome_Produto,
    p.valor,
    c.setor AS Setor_Categoria,
    c.descricao AS Descricao_Categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT
    p.nome AS Nome_Produto,
    p.valor,
    c.setor AS Setor_Categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.setor = 'Cosméticos';