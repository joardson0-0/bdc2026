CREATE DATABASE bcd_senai;

USE bcd_senai

CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    id_telefone INT NOT NULL
);

CREATE TABLE produto(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    dt_entrega DATE NOT NULL,
    preco_uni DECIMAL (10,2),
    qtd INT NOT NULL
);

CREATE TABLE venda(
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    dt_entrada DATE NOT NULL
);

INSERT INTO bcd_cliente(nome_cliente, email, id_telefone) VALUES
("PEDRO TAKEOO", "pedrotakeo123@gmail.com", "999453534" )
INSERT INTO bcd_cliente(nome_cliente, email, id_telefone) VALUES
("JULIOOO", "juliogabriel345@gmail.com", "994157089")
INSERT INTO bcd_cliente(nome_cliente, email, id_telefone) VALUES
("SAYURII", "jsayuri678@gmail.com", "991543567") VALUES
SELECT * FROM bcd_cliente

USE bcd_senai
INSERT INTO bcd_produto(nome_produto, dt_entrega, qtd, preco_uni) VALUES
("CALCA JEANS, 2026-10-11" 500,90, 200)
INSERT INTO bcd_produto(nome_produto, dt_entrega, qtd, preco_uni) VALUES
("MOLETOM, 2026-02-12" 250,50, 150 )
INSERT INTO bcd_produto(nome_produto, dt_entrega, qtd, preco_uni) VALUES
("TENIS, 2026-01-11" 150,90, 400)
SELECT * FROM bcd_produto

USE bcd_senai
INSERT INTO bcd_venda(id_cliente, id_produto, dt_entrada) VALUES
(1, 2, "2026-10-12")
INSERT INTO bcd_venda(id_cliente, id_produto, dt_entrada) VALUES
(2, 1, "2026-10-12")
INSERT INTO bcd_venda(id_cliente, id_produto, dt_entrada) VALUES
(3, 2, "2026-10-12")
SELECT * FROM bcd_venda

USE bcd_senai


