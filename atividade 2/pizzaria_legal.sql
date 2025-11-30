DROP DATABASE IF EXISTS db_pizzaria_legal;
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL, 
    tamanho VARCHAR(255) NOT NULL, 
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(6, 2) NOT NULL,
    ingredientes VARCHAR(255),
    borda_recheada BOOLEAN,
    categoria_id BIGINT, 
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) 
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias (tipo, tamanho) VALUES
('Salgada Tradicional', 'Grande'),
('Salgada Especial', 'Média'),
('Doce', 'Brotinho'),
('Vegetariana', 'Grande'),
('Vegana', 'Média');

INSERT INTO tb_pizzas (nome, valor, ingredientes, borda_recheada, categoria_id) VALUES
('Mussarela', 40.00, 'Queijo, Tomate', FALSE, 1),
('Calabresa', 48.00, 'Calabresa, Cebola', FALSE, 1),
('Frango com Catupiry', 65.00, 'Frango, Catupiry', TRUE, 2),
('Marguerita Premium', 85.00, 'Mussarela de Búfala', FALSE, 2),
('Chocolate Branco', 55.00, 'Choc. Branco, Morango', TRUE, 3),
('Banana com Canela', 42.00, 'Banana, Canela, Leite Cond.', FALSE, 3),
('Quatro Queijos Veg', 75.00, 'Queijos veganos, Tomate', FALSE, 5),
('Palmito Especial', 52.00, 'Palmito, Queijo, Azeite', TRUE, 4);

SELECT * FROM tb_pizzas;

-- 6. SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- 7. SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

-- 8. SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- 9. SELECT utilizando a cláusula INNER JOIN (unindo tb_pizzas e tb_categorias).
SELECT
    tb_pizzas.nome,
    tb_pizzas.valor,
    tb_pizzas.ingredientes,
    tb_categorias.tipo,
    tb_categorias.tamanho
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

-- 10. SELECT utilizando INNER JOIN, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas Doce).
SELECT
    tb_pizzas.nome,
    tb_pizzas.valor,
    tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = 'Doce';

