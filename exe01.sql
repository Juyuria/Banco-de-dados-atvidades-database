DROP DATABASE IF EXISTS db_rh_empresa;

CREATE DATABASE db_rh_empresa;
USE db_rh_empresa;

-- 2. CRIAÇÃO DA TABELA DE COLABORADORES
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    departamento VARCHAR(100),
    salario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id)
);