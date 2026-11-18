use vendas_informatica;

select * from produto where nome_produto like 'd%';

/* 2 - consultar nome, marca, preço que a marca tenha "e"*/
use vendas_informatica;
select nome_produto, marca, preco_unitario from produto where marca like 'e%';

/* 3 - consultar nome, marca, preço com um nome que tenha "gamer" */
use vendas_informatica;
select nome_produto, marca, preco_unitario from produto where nome_produto like '%gamer%';

/* 4 - consultar todos do nome quais tiverem sobrenome "barbosa" */
use vendas_informatica;
select * from cliente where nome_cliente like '%barbosa%';

/* 5 - consulte nome, data, preço e forma de pagamente onde o nome começa com "c" */
use vendas_informatica;
select cliente.nome_cliente, venda.data_venda, produto.preco_unitario, venda.forma_pagamento
from cliente
join venda on cliente.id_cliente = venda.id_cliente
join produto on venda.id_produto = produto.id_produto
where cliente.nome_cliente like 'c%';

/* 6 - consulte nome, preço, venda e forma de pagamento onde seja pix e boleto com o nome 
polegada */
use vendas_informatica;
select produto.nome_produto, produto.preco_unitario, venda.id_venda, venda.forma_pagamento
from produto
join venda on produto.id_produto = venda.id_produto
where venda.forma_pagamento in ('pix', 'boleto')
and produto.nome_produto like '%polegada%';

/* 7 - nome produto, nome venda, desconto e forma de pagamento onde nome produto tenha
placa, notebook ou que o nome do cliente seja ana com status seja em forma de afalbeto (crescente)*/ 
use vendas_informatica;
select produto.nome_produto, cliente.nome_cliente, venda.desconto_percentual, venda.forma_pagamento
from produto
join venda on produto.id_produto = venda.id_produto
join cliente on venda.id_venda = cliente.id_cliente
where produto.nome_produto like 'placa%' 
or produto.nome_produto like 'notebook%' 
or cliente.nome_cliente like '%ana%'
order by venda.status_venda asc;

/* between */

