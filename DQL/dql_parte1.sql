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
R:
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
R:
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
ORDER BY quantidade_clientes DESC, cidade ASC;

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



-- Questão 14. Quantas lojas existem em cada UF? Mostre apenas as UFs com mais de 3 lojas, da maior quantidade para a menor.



-- Questão 15. Liste o nome, a cidade e a data de inauguração das lojas inauguradas antes de 01/01/2007, da mais antiga para a mais recente.



-- Questão 16. Qual foi o faturamento de cada canal de venda em 2025? Ordene do maior faturamento para o menor.



-- Questão 17. Considerando apenas o canal Loja física, mostre, para cada forma de pagamento, a quantidade de linhas de venda e o faturamento. Ordene do maior faturamento para o menor.



-- Questão 18. Quais são os 10 produtos (id_produto) com mais unidades vendidas (soma de quantidade)? Ordene da maior soma para a menor; em caso de empate, pelo menor id_produto.



-- Questão 19. Quais são as 5 lojas (id_loja) com maior faturamento em 2024? Mostre o id_loja e o faturamento, do maior para o menor.



-- Questão 20. Quantas linhas de venda cada loja (id_loja) tem? Mostre apenas as lojas com mais de 300 linhas, da maior quantidade para a menor.



-- Questão 21. Quais clientes (id_cliente) têm 70 ou mais linhas de venda? Mostre o id_cliente e a quantidade, da maior para a menor; em caso de empate, pelo menor id_cliente. Desconsidere as vendas sem cliente.



-- Questão 22. Quantas linhas de venda tiveram desconto (maior que zero) e qual foi o valor médio desse desconto? Arredonde a média para 2 casas decimais.



-- Questão 23. Qual foi o menor e o maior valor_total de uma linha de venda em dezembro de 2025?



-- Questão 24. Quantas linhas de venda foram registradas no dia 24/12/2025 e qual foi o faturamento desse dia?



/* Questão 25. Considerando as vendas do canal Site em 2025 que tiveram desconto, mostre:
   id_venda, o valor bruto (quantidade × preco_unitario), o desconto, o valor_total e o percentual
   de desconto sobre o valor bruto. Ordene do maior percentual para o menor; em caso de empate, pelo
   menor id_venda. Mostre apenas as 10 primeiras linhas. */