-- Questão 01. Quantas linhas da tabela fato_vendas não têm cliente identificado (id_cliente vazio)?

SELECT COUNT (id_venda)
FROM fato_vendas
WHERE id_cliente is NULL;

-- R: 906 linhas

-- Questão 02. Quantos clientes diferentes aparecem na tabela fato_vendas?

SELECT COUNT (DISTINCT id_cliente)
FROM fato_vendas;

-- R: 746 clientes

-- Questão 03. Qual foi o faturamento total (soma de valor_total) de todas as vendas de 2025?

SELECT SUM (valor_total)
FROM fato_vendas;

-- R: 769785.29

-- Questão 04. Liste, sem repetição e em ordem alfabética, as marcas dos produtos da categoria Higiene.

SELECT DISTINCT marca
FROM produtos
WHERE categoria = 'Higiene'
ORDER BY marca;

/*
"Colgate"
"Dove"
"Elseve"
"Huggies"
"Lux"
"Mili"
"Neve"
"Nivea"
"Oral-B"
"Pampers"
"Pantene"
"Personal"
"Protex"
"Rexona"
"Seda"
"Sorriso"
*/

-- Questão 05. Qual é o valor médio de valor_total das vendas do canal Aplicativo?

SELECT AVG(valor_total)
FROM fato_vendas
WHERE canal = 'Aplicativo';

-- R: 52.2665833630846126

-- Questão 06. Quantos produtos da categoria Bebidas têm preco_tabela acima de R$ 10,00?

SELECT COUNT (id_produto)
FROM dim_produto
WHERE preco_tabela > 10;

-- R: 139

-- Questão 07. Mostre o nome, a marca e o preço de tabela do produto mais caro do catálogo. Em caso de empate no preço, traga o primeiro em ordem alfabética de nome.

SELECT nome_produto, marca, preco_tabela
FROM dim_produto
WHERE preco_tabela = (
    SELECT MAX(preco_tabela)
    FROM dim_produto
)
ORDER BY preco_tabela;

-- R: "Ração para Cães 10kg"	"Premier"	140.29

-- Questão 08. Quantos produtos existem em cada categoria? Ordene da categoria com mais produtos para a com menos; em caso de empate, por nome da categoria (A–Z).

SELECT categoria, COUNT (DISTINCT marca)
FROM dim_produto
GROUP BY categoria
ORDER BY COUNT DESC, categoria;

/*
"Mercearia"	21
"Bebidas"	20
"Higiene"	16
"Laticínios"	12
"Limpeza"	11
"Padaria"	9
"Carnes"	7
"Congelados"	7
"Pet"	6
"Hortifruti"	1
*/

-- Questão 09. Qual é o preço médio de tabela de cada categoria? ordene do maior preço médio para o menor.

SELECT categoria, AVG(preco_tabela)
FROM dim_produto
GROUP BY categoria
ORDER BY AVG(preco_tabela) DESC;

/*
"Pet"	76.1500000000000000
"Carnes"	37.8230769230769231
"Congelados"	33.1800000000000000
"Higiene"	25.8452941176470588
"Bebidas"	19.2646153846153846
"Limpeza"	17.5674074074074074
"Laticínios"	14.5062500000000000
"Mercearia"	14.4977551020408163
"Padaria"	8.2220000000000000
"Hortifruti"	6.2400000000000000
*/

-- Questão 10. Quantos clientes há em cada cidade? Mostre apenas as cidades com pelo menos 60 clientes, da maior quantidade para a menor; em caso de empate, por nome da cidade (A–Z).

SELECT cidade, COUNT(*) AS quantidade_clientes
FROM dim_cliente
GROUP BY cidade
HAVING COUNT(*) >= 60
ORDER BY quantidade_clientes DESC, cidade;

/*
"Brasília"	245
"Taguatinga"	92
"Ceilândia"	81
"Goiânia"	68
"Águas Claras"	64
"Samambaia"	63
*/

-- Questão 11. Quantos clientes não informaram e-mail?

SELECT COUNT (id_cliente)
FROM dim_cliente
WHERE email is NULL;

-- R: 75

-- Questão 12. Quantas clientes do sexo feminino nasceram entre 01/01/1990 e 31/12/1999 ?

SELECT COUNT (id_cliente)
FROM dim_cliente
WHERE sexo = 'F' and data_nascimento BETWEEN DATE '01/01/1990' AND DATE '31/12/1999';

-- R: 74

-- Questão 13. Quantos clientes têm Ana como primeiro nome? (Atenção: nomes como Analu ou Anabela não contam.)

SELECT COUNT (id_cliente)
FROM dim_cliente
WHERE nome_cliente = 'Ana %';

-- R: 11

-- Questão 14. Quantas lojas existem em cada UF? Mostre apenas as UFs com mais de 3 lojas, da maior quantidade para a menor.

SELECT uf, COUNT(*) AS quantidade_lojas
FROM dim_loja
GROUP BY uf
HAVING COUNT(*) > 3
ORDER BY quantidade_lojas DESC;

/*
"DF"	56
"GO"	41
"MG"	4
*/

-- Questão 15. Liste o nome, a cidade e a data de inauguração das lojas inauguradas antes de 01/01/2007, da mais antiga para a mais recente.

SELECT nome_loja, cidade, data_inauguracao
FROM dim_loja
WHERE data_inauguracao < DATE '01/01/2007'
ORDER BY data_inauguracao;

/*
"Bom Dia Cruzeiro"	"Brasília"	"2005-01-20"
"Bom Dia Jardim Tiradentes"	"Aparecida de Goiânia"	"2005-03-14"
"Bom Dia Sobradinho I"	"Sobradinho"	"2005-04-15"
"Bom Dia Aparecida Centro"	"Aparecida de Goiânia"	"2005-06-04"
"Bom Dia Colônia Agrícola Samambaia"	"Vicente Pires"	"2005-08-07"
"Bom Dia Octogonal"	"Brasília"	"2005-08-21"
"Bom Dia Sobradinho II"	"Sobradinho"	"2005-10-15"
"Bom Dia Samambaia Norte"	"Samambaia"	"2006-04-07"
"Bom Dia Centro Uberlândia"	"Uberlândia"	"2006-04-12"
"Bom Dia Pistão Sul"	"Taguatinga"	"2006-08-12"
"Bom Dia Jardim Goiás"	"Goiânia"	"2006-12-06"
"Bom Dia Luziânia Centro"	"Luziânia"	"2006-12-07"
"Bom Dia Taguatinga Centro"	"Taguatinga"	"2006-12-16"
"Bom Dia P Norte"	"Ceilândia"	"2006-12-20"
*/

-- Questão 16. Qual foi o faturamento de cada canal de venda em 2025? Ordene do maior faturamento para o menor.

SELECT SUM(valor_total), canal
FROM fato_vendas
WHERE data_venda BETWEEN DATE '2025-01-01' AND DATE '2025-12-31'
GROUP BY canal
ORDER BY SUM(valor_total) DESC;

/*
276534.24	"Loja física"
76340.05	"Aplicativo"
35376.02	"Site"
*/

-- Questão 17. Considerando apenas o canal Loja física, mostre, para cada forma de pagamento, a quantidade de linhas de venda e o faturamento. Ordene do maior faturamento para o menor.

SELECT forma_pagamento, COUNT(id_venda) as linhas, SUM(valor_total) as faturamento
FROM fato_vendas
WHERE canal = 'Loja física'
GROUP BY forma_pagamento
ORDER BY faturamento DESC;

/*
"Cartão de crédito"	3237	166687.46
"Cartão de débito"	3222	163300.11
"Pix"	2684	141486.51
"Dinheiro"	1627	80073.40
*/

-- Questão 18. Quais são os 10 produtos (id_produto) com mais unidades vendidas (soma de quantidade)? Ordene da maior soma para a menor; em caso de empate, pelo menor id_produto.

SELECT id_produto, SUM(quantidade) AS unidades_vendidas
FROM fato_vendas
GROUP BY id_produto
ORDER BY unidades_vendidas DESC, id_produto ASC
LIMIT 10;

/*
61423.83	28
29330.01	87
25056.76	237
21368.96	85
19847.10	89
15962.34	136
15537.61	140
14134.37	31
11325.27	236
10281.69	88
*/

-- Questão 19. Quais são as 5 lojas (id_loja) com maior faturamento em 2024? Mostre o id_loja e o faturamento, do maior para o menor.

SELECT SUM (valor_total) as faturamento, id_loja
FROM fato_vendas
GROUP BY id_loja
ORDER BY faturamento DESC
LIMIT 5;

/*
"faturamento"	"id_loja"
48725.30	3
22593.12	49
22342.40	6
22323.25	4
22194.28	17
*/

-- Questão 20. Quantas linhas de venda cada loja (id_loja) tem? Mostre apenas as lojas com mais de 300 linhas, da maior quantidade para a menor.

SELECT id_loja, COUNT(id_venda) AS linhas
FROM fato_vendas
GROUP BY id_loja
HAVING COUNT(id_venda) > 300
ORDER BY linhas DESC;

/*
3	886
49	476
11	459
6	444
9	440
4	434
56	429
2	420
17	410
23	316
*/

-- Questão 21. Quais clientes (id_cliente) têm 70 ou mais linhas de venda? Mostre o id_cliente e a quantidade, da maior para a menor; em caso de empate, pelo menor id_cliente. Desconsidere as vendas sem cliente.

SELECT id_cliente, COUNT(*) AS linhas
FROM fato_vendas
WHERE id_cliente IS NOT NULL
GROUP BY id_cliente
HAVING COUNT(*) >= 70
ORDER BY linhas DESC, id_cliente;

/*
416	169
684	135
9	126
186	122
563	113
323	97
395	95
290	81
501	78
90	75
129	75
198	71
242	70
*/

-- Questão 22. Quantas linhas de venda tiveram desconto (maior que zero) e qual foi o valor médio desse desconto? Arredonde a média para 2 casas decimais.

SELECT COUNT(*) AS linhas_com_desconto,
       ROUND(AVG(desconto), 2) AS desconto_medio
FROM fato_vendas
WHERE desconto > 0;

/*
2653	5.25
*/

-- Questão 23. Qual foi o menor e o maior valor_total de uma linha de venda em dezembro de 2025?

SELECT MIN(valor_total) AS menor_valor,
       MAX(valor_total) AS maior_valor
FROM fato_vendas
WHERE data_venda BETWEEN DATE '2025-12-01' AND DATE '2025-12-31';

/*
"menor_valor"	"maior_valor"
2.67	654.20
*/

-- Questão 24. Quantas linhas de venda foram registradas no dia 24/12/2025 e qual foi o faturamento desse dia?

SELECT COUNT(*) AS linhas, SUM(valor_total) AS faturamento
FROM fato_vendas
WHERE data_venda = DATE '2025-12-24';

/*
"linhas"	"faturamento"
24	1281.83
*/

/* Questão 25. Considerando as vendas do canal Site em 2025 que tiveram desconto, mostre:
   id_venda, o valor bruto (quantidade × preco_unitario), o desconto, o valor_total e o percentual
   de desconto sobre o valor bruto. Ordene do maior percentual para o menor; em caso de empate, pelo
   menor id_venda. Mostre apenas as 10 primeiras linhas. 
*/

SELECT id_venda, (quantidade*preco_unitario) AS valor_bruto, desconto, valor_total, 
(desconto/(quantidade*preco_unitario)*100) AS percentual_desconto
FROM fato_vendas
WHERE canal = 'Site' AND data_venda BETWEEN DATE '2025-01-01' AND DATE '2025-12-31' AND desconto > 0
ORDER BY percentual_desconto DESC, id_venda
LIMIT 10;

/*
"id_venda"	"valor_bruto"	"desconto"	"valor_total"	"percentual_desconto"
8328	3.45	0.52	2.93	15.07246376811594202900
8282	6.71	1.01	5.70	15.05216095380029806300
13421	7.32	1.10	6.22	15.02732240437158469900
8261	18.04	2.71	15.33	15.02217294900221729500
13288	19.84	2.98	16.86	15.02016129032258064500
9109	25.97	3.90	22.07	15.01732768579129765100
12716	20.38	3.06	17.32	15.01472031403336604500
13839	3.73	0.56	3.17	15.01340482573726541600
14190	3.73	0.56	3.17	15.01340482573726541600
10654	11.06	1.66	9.40	15.00904159132007233300
*/