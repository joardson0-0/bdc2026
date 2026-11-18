
-- =========================================
-- CADASTRO DE DADOS
-- =========================================

-- Cadastra um novo cliente com a data atual
INSERT INTO cliente (
    nome_cliente, email, cidade, estado, data_cadastro
)
VALUES (
    'Rubervaldo Sesiano',
    'ruber.sesi@gmail.com',
    'Jaguaríuna',
    'SP',
    CURDATE()
);

-- Cadastra o produto Mouse Pad 5POL
-- com preço de 59.98, estoque de 35 e status ativo
INSERT INTO produto (
    nome_produto, categoria, marca, preco_unitario,
    estoque, ativo, data_cadastro
)
VALUES (
    'Mouse Pad 5POL',
    'Acessórios',
    'Lumix',
    59.98,
    35,
    1,
    CURDATE()
);

-- Cadastra uma venda para o cliente Rubervaldo
-- utilizando o produto Mouse Pad 5POL
-- A venda tem data 21/10/2026, quantidade 10,
-- desconto registrado como 1.33, pagamento PIX
-- e status Concluída
INSERT INTO venda (
    id_produto, id_cliente, data_venda, quantidade,
    preco_unitario_venda, desconto_percentual,
    forma_pagamento, status_venda
)
SELECT
    p.id_produto,
    c.id_cliente,
    '2026-10-21',
    10,
    p.preco_unitario,
    1.33,
    'PIX',
    'Concluída'
FROM produto AS p
INNER JOIN cliente AS c
    ON c.email = 'ruber.sesi@gmail.com'
WHERE p.nome_produto = 'Mouse Pad 5POL'
  AND p.marca = 'Lumix';
