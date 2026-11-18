-- Seleciona o banco de dados que será utilizado
USE vendas_informatica;

-- Mostra todos os produtos cadastrados
SELECT * FROM produto;

-- Mostra apenas a marca e o estoque dos produtos
SELECT marca, estoque FROM produto;

-- Mostra os dados dos produtos e organiza por nome, categoria,
-- preço e data de cadastro, em ordem crescente
SELECT nome_produto, categoria, preco_unitario, data_cadastro
FROM produto
ORDER BY nome_produto, categoria, preco_unitario, data_cadastro ASC;

-- Mostra nome, marca, estoque e data dos produtos,
-- começando pelos mais antigos
SELECT nome_produto, marca, estoque, data_cadastro
FROM produto
ORDER BY data_cadastro ASC;

-- Mostra todos os clientes cadastrados
SELECT * FROM cliente;

-- Mostra nome, e-mail, cidade e estado dos clientes
SELECT nome_cliente, email, cidade, estado
FROM cliente;

-- Organiza os clientes pela sigla do estado
SELECT nome_cliente, email, cidade, estado
FROM cliente
ORDER BY estado ASC;

-- Mostra os clientes e suas datas de cadastro,
-- começando pelos mais antigos
SELECT nome_cliente, email, cidade, estado, data_cadastro
FROM cliente
ORDER BY data_cadastro ASC;

-- Mostra todas as vendas cadastradas
SELECT * FROM venda;

-- Mostra o nome do cliente, a data da venda,
-- o preço unitário e a forma de pagamento
SELECT cliente.nome_cliente, data_venda,
       preco_unitario_venda, forma_pagamento
FROM venda
INNER JOIN cliente
    ON venda.id_cliente = cliente.id_cliente;

-- Mostra o produto vendido, a data, a quantidade e o status
SELECT produto.nome_produto, data_venda,
       quantidade, status_venda
FROM venda
INNER JOIN produto
    ON venda.id_produto = produto.id_produto;

-- Mostra produtos vendidos por PIX ou boleto
SELECT produto.nome_produto, preco_unitario_venda, forma_pagamento
FROM venda
INNER JOIN produto
    ON venda.id_produto = produto.id_produto
WHERE forma_pagamento IN ('PIX', 'boleto');

-- Relaciona vendas, clientes e produtos
-- para mostrar o cliente e os dados da venda
SELECT cliente.nome_cliente, data_venda,
       preco_unitario_venda, forma_pagamento
FROM venda
INNER JOIN cliente
    ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto
    ON venda.id_produto = produto.id_produto;

-- Mostra produto, desconto, pagamento e data,
-- ordenando pelas vendas mais recentes
SELECT produto.nome_produto, desconto_percentual,
       forma_pagamento, data_venda
FROM venda
INNER JOIN produto
    ON venda.id_produto = produto.id_produto
ORDER BY data_venda DESC;

-- Mostra produto, cliente, desconto, pagamento e status
-- Organiza os resultados pelos campos indicados
SELECT produto.nome_produto, cliente.nome_cliente,
       desconto_percentual, forma_pagamento, status_venda
FROM venda
INNER JOIN produto
    ON venda.id_produto = produto.id_produto
INNER JOIN cliente
    ON venda.id_cliente = cliente.id_cliente
ORDER BY produto.nome_produto, cliente.nome_cliente,
         desconto_percentual, forma_pagamento ASC;

-- Mostra informações do produto e do cliente
-- somente para vendas canceladas ou concluídas
-- Organiza as vendas pelo preço unitário, do menor para o maior
SELECT produto.nome_produto, cliente.nome_cliente,
       desconto_percentual, forma_pagamento, status_venda,
       cliente.email, produto.marca, produto.categoria
FROM venda
INNER JOIN produto
    ON venda.id_produto = produto.id_produto
INNER JOIN cliente
    ON venda.id_cliente = cliente.id_cliente
WHERE status_venda IN ('Cancelada', 'Concluída')
ORDER BY preco_unitario_venda ASC;


