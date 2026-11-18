select * from produto where data_cadastro between "2024-03-01" and "2024-03-30";

select nome_produto,marca,estoque,data_cadastro from produto where data_cadastro between "2024-01-01" and "2024-03-01";

select * from cliente where data_cadastro between "2023-01-01" and "2023-01-31";

select nome_cliente,email,cidade,estado,data_cadastro from cliente where data_cadastro between "2023-06-01" and "2023-06-15";

select * from venda where data_venda between "2025-04-01" and "2025-04-31";

select nome_cliente,data_venda,preco_unitario_venda,forma_pagamento from cliente where data_venda between "2025-12-24" and "2026-01-15" order by preco_unitario_venda asc;

select cliente.nome_cliente,cliente.email produto.nome_produto produto.marca produto.categoria produto.forma_pagamento venda.data_venda venda.status_venda 
from cliente
inner join cliente on venda.id_cliente = cliente.id_cliente
inner join produto on venda.id_produto = produto.id_produto

where venda.status in ("cancelada" "concluida")
and venda.data_venda between '2025-12-01' and '2025-12-31'
order by venda.preco_unitario_venda desc;
