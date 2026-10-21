use vendas_informatica;

select * from 'produto' where 1

select marca,estoque from produto;

select nome_produto, categoria, preco_unitario, data_cadastro from produto order by nome_produto, categoria, preco_unitario, data_cadastro asc;

select nome_produto, marca, estoque,data_cadastro from produto order by data_cadastro asc;

select * from cliente where 1;

select nome_cliente,email,cidade,estado from cliente;

select nome_cliente,email,cidade,estado from cliente order by estado asc; 

select nome_cliente,email,cidade,estado,data_cadastro from cliente order by data_cadastro asc; 

select * from venda where 1;

select cliente.nome_cliente,data_venda,preco_unitario_venda,forma_pagamento from venda inner join cliente on venda.id_cliente = cliente.id_cliente;

select produto.nome_produto,data_venda,quantidade,status_venda from venda inner join produto on venda.id_produto = produto.id_produto;

select produto.nome_produto,preco_unitario_venda,forma_pagamento from venda inner join produto on venda.id_produto = produto.id_produto where forma_pagamento in ("pix", "boleto");

select cliente.nome_cliente,data_venda,preco_unitario_venda,forma_pagamento from venda inner join cliente on venda.id_cliente = cliente.id_cliente inner join produto on venda.id_produto = produto.id_produto;

select produto.nome_produto,desconto_percentual,forma_pagamento,data_venda from venda inner join produto on venda.id_produto = produto.id_produto order by data_venda desc;

select produto.nome_produto, cliente.nome_cliente, desconto_percentual, forma_pagamento, status_venda
from venda 
inner join produto on venda.id_produto = produto.id_produto
inner join cliente on venda.id_cliente = cliente.id_cliente
order by produto.nome_produto, cliente.nome_cliente, desconto_percentual, forma_pagamento ASC;


select produto.nome_produto, cliente.nome_cliente, desconto_percentual, forma_pagamento, status_venda, cliente.email, produto.marca, produto.categoria
from venda 
inner join produto on venda.id_produto = produto.id_produto
inner join cliente on venda.id_cliente = cliente.id_cliente
where status_venda in ("Cancelada", "Concluida")
order by preco_unitario_venda ASC;


