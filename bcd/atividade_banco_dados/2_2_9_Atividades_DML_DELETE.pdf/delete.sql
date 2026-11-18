
-- =========================================
-- EXCLUSÃO DE DADOS
-- =========================================

-- Exclui o cliente de código 5
DELETE FROM cliente
WHERE id_cliente = 5;

-- Exclui todos os clientes do estado SC
DELETE FROM cliente
WHERE estado = 'SC';

-- Exclui os produtos da marca LG
DELETE FROM produto
WHERE marca = 'LG';

-- Exclui os produtos de códigos 3, 5 e 10
DELETE FROM produto
WHERE id_produto IN (3, 5, 10);

-- Exclui as vendas sem desconto
DELETE FROM venda
WHERE desconto_percentual = 0;

-- Exclui as vendas canceladas
DELETE FROM venda
WHERE status_venda = 'Cancelada';

