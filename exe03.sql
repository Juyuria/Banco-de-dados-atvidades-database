-- 1. CRIAÇÃO E SELEÇÃO DO BANCO DE DADOS
-- Comando para apagar o banco de dados se ele já existir (para testes limpos).
-- DROP DATABASE IF EXISTS db_escola; -- Já executado

-- Cria o banco de dados chamado "db_escola"
CREATE DATABASE db_escola;

-- Seleciona o banco de dados para começar a trabalhar nele
USE db_escola;

-- 2. CRIAÇÃO DA TABELA DE ESTUDANTES
-- Tabela com 5 atributos relevantes (id, nome, turma, nota, data_nascimento)
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT, -- Chave primária: ID único e automático.
    nome VARCHAR(255) NOT NULL, -- Nome do estudante.
    turma VARCHAR(50), -- Turma ou Série (e.g., "7A", "3 Ensino Médio").
    nota DECIMAL(4, 2) NOT NULL, -- Nota do estudante (DECIMAL para precisão, e.g., 9.50).
    data_nascimento DATE, -- Data de nascimento do estudante.
    PRIMARY KEY (id) -- Define 'id' como a chave primária da tabela.
);

-- 3. INSERÇÃO DE DADOS (NO MÍNIMO 8 REGISTROS)
INSERT INTO tb_estudantes (nome, turma, nota, data_nascimento) VALUES
('Pedro Alves', '8A', 9.50, '2009-05-15'),  -- Aprovado
('Maria Silva', '8A', 6.80, '2009-11-20'),  -- Reprovado
('João Souza', '7B', 8.90, '2010-02-10'),   -- Aprovado
('Clara Mendes', '9C', 7.00, '2008-08-01'),  -- Aprovado (na linha de corte)
('Lucas Santos', '6A', 5.50, '2011-03-25'),  -- Reprovado
('Laura Oliveira', '8A', 10.00, '2009-01-05'), -- Aprovado
('Rafael Costa', '7B', 4.10, '2010-09-12'),  -- Reprovado
('Sofia Pereira', '9C', 8.20, '2008-07-30'); -- Aprovado

-- Comando SELECT para ver o conteúdo da tabela:
SELECT * FROM tb_estudantes;

-- 4. SELECT QUE RETORNE TODOS OS ESTUDANTES COM A NOTA MAIOR DO QUE 7.0 (APROVADOS)
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- 5. SELECT QUE RETORNE TODOS OS ESTUDANTES COM A NOTA MENOR DO QUE 7.0 (REPROVADOS)
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- 6. ATUALIZAÇÃO DE UM REGISTRO
-- Comando para alterar a nota do estudante com ID 2 (Maria Silva) para 7.10 (após uma recuperação)
UPDATE tb_estudantes SET nota = 7.10 WHERE id = 2;

-- Opcional: Verifica se a atualização foi realizada no registro específico
SELECT * FROM tb_estudantes WHERE id = 2;

-- Opcional: Exibe a tabela completa após a atualização
SELECT * FROM tb_estudantes;
