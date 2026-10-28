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

use venda_informatica;
update cliete set cidade ='senailandia' where estado in ("DF","ES");

update ciente set data_cadastro ="2026-01-01" WHERE cidade in ("manaus");

update cliente set nome_clinte = "micheal jackson" where id_cliente in (10);

update produto set nome_produto = "carro voador" where id_produto in (1);

update produto set preco_unitario = 5,000 where marca in (1);

update venda set desconto_persentual = 0.01 where quantidade in (1);

use venda_informatica;

delete from Cliente where id_cliente = 5;

delete from Cliente where estado = 'SC';

delete from Produto where marca = 'LG';

delete from Produto where id_produto IN (3, 5, 10);

delete from Venda where desconto_percentual = 0;

delete from Venda where status_venda = 'Cancelada';

insert into cliente (nome_cliente,email,cidade,estado,data_cadastro) 
  value (
    'Rubervaldo Sesiano',
    'ruber.sesi@gmail.com',
    'Jaguaríuna',
    'SP',
  curdate() 
);

insert into produto(
    nome_produto,
    categoria,
    marca,
    preco_unitario,
    estoque,
    ativo,
    data_cadastro
) value (
    'Mouse Pad 5POL',
    'Acessórios',
    'Lumix',
    59.98,
    35,
    1,
  CURDATE()
);

insert into venda (
    id_produto,
    id_cliente,
    data_venda,
    quantidade,
    preco_uitario_venda,
    desconto_percentual,
    forma_pagamento,
    status_venda
)
select p.id_produto, c.id_cliente,'2026-10-21',10,p.preco_unitario,1.33,'PIX''concluida'
from produto inner join cliente on c.email = 'ruber.sesi@gmail.com' where p.nome_produto = 'mouse pad 5pol'
and p.marca = 'linux';