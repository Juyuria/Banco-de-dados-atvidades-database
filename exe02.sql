-- 1. CRIAÇÃO E SELEÇÃO DO BANCO DE DADOS
DROP DATABASE IF EXISTS db_ecommerce;
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- 2. CRIAÇÃO DA TABELA DE PRODUTOS
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100),
    valor DECIMAL(10, 2) NOT NULL,
    estoque INT,
    PRIMARY KEY (id)
);

-- 3. INSERÇÃO DE DADOS (NO MÍNIMO 8 REGISTROS)
INSERT INTO tb_produtos (nome, categoria, valor, estoque) VALUES
('Notebook Gamer X', 'Eletrônicos', 5899.99, 15),
('Smartphone Z Flip', 'Eletrônicos', 499.00, 50),
('E-book de Receitas', 'Livros', 29.90, 500),
('Monitor Ultra HD 4K', 'Eletrônicos', 850.50, 8),
('Fones de Ouvido Bluetooth', 'Acessórios', 150.00, 120),
('Câmera Profissional', 'Eletrônicos', 12500.00, 3),
('Mouse Sem Fio', 'Acessórios', 49.90, 200),
('Teclado Mecânico RGB', 'Acessórios', 510.00, 30);

-- Comando SELECT para ver o conteúdo da tabela:
SELECT * FROM tb_produtos;

-- 4. SELECT QUE RETORNE TODOS OS PRODUTOS COM O VALOR MAIOR DO QUE 500
SELECT * FROM tb_produtos WHERE valor > 500.00;

-- 5. SELECT QUE RETORNE TODOS OS PRODUTOS COM O VALOR MENOR DO QUE 500
SELECT * FROM tb_produtos WHERE valor < 500.00;

-- 6. ATUALIZAÇÃO DE UM REGISTRO
UPDATE tb_produtos SET valor = 650.00, estoque = 45 WHERE id = 2;

-- Opcional: Exibe a tabela completa após a atualização para confirmar o novo valor
SELECT * FROM tb_produtos;