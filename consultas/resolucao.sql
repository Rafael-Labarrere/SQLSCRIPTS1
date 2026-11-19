-- Questão 1: Quais foram as 5 UFs com mais clientes em janeiro de 2024, da maior para a menor quantidade?
SELECT uf, COUNT(*) AS clientes
FROM   clientes_banco
WHERE  data_referencia = '2024-01-15'
GROUP  BY uf
ORDER  BY clientes DESC
LIMIT  5;

-- Questão 2: Qual é o nome do cliente com o maior saldo registrado em 15/04/2024?
SELECT nome, saldo
FROM   clientes_banco
WHERE  data_referencia = '2024-04-15'
ORDER  BY saldo DESC
LIMIT  1;

-- Questão 3: Quantos clientes diferentes aparecem na base?
SELECT COUNT(DISTINCT id_cliente) AS clientes_distintos
FROM   clientes_banco;

-- Questão 4: Qual é a renda mensal média dos clientes do segmento Prime em dezembro de 2024 (arredondada para 2 casas decimais)?
SELECT ROUND(AVG(renda_mensal), 2) AS renda_media
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
AND    segmento = 'Prime';

-- Questão 5: Quais são as 3 profissões com mais clientes em dezembro de 2024, da maior para a menor quantidade?
SELECT profissao, COUNT(*) AS clientes
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
GROUP  BY profissao
ORDER  BY clientes DESC
LIMIT  3;

-- Questão 6: Em qual data de referência houve mais contas com status Bloqueada?
SELECT data_referencia, COUNT(*) AS contas_bloqueadas
FROM   clientes_banco
WHERE  status_conta = 'Bloqueada'
GROUP  BY data_referencia
ORDER  BY contas_bloqueadas DESC
LIMIT  1;

-- Questão 7: Em setembro de 2024, considerando apenas as cidades com pelo menos 50 clientes, qual cidade teve o maior saldo médio?
SELECT cidade, ROUND(AVG(saldo), 2) AS saldo_medio
FROM   clientes_banco
WHERE  data_referencia = '2024-09-15'
GROUP  BY cidade
HAVING COUNT(*) >= 50
ORDER  BY saldo_medio DESC
LIMIT  1;

-- Questão 8: Qual é a soma dos saldos dos clientes do segmento Private em dezembro de 2024?
SELECT SUM(saldo) AS saldo_total
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
AND    segmento = 'Private';

-- Questão 9: Qual agência tinha mais clientes em dezembro de 2024?
SELECT agencia, COUNT(*) AS clientes
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
GROUP  BY agencia
ORDER  BY clientes DESC
LIMIT  1;

-- Questão 10: Em qual data de referência a soma dos saldos de todos os clientes foi a maior?
SELECT data_referencia, SUM(saldo) AS saldo_total
FROM   clientes_banco
GROUP  BY data_referencia
ORDER  BY saldo_total DESC
LIMIT  1;

-- Questão 11: Ao longo de 2024, mais de 200 contas foram encerradas.
SELECT COUNT(*) AS contas_encerradas
FROM   clientes_banco
WHERE  status_conta = 'Encerrada';

-- Questão 12: Em junho de 2024, o score de crédito médio dos clientes do DF era maior que 650.
SELECT ROUND(AVG(score_credito), 1) AS score_medio
FROM   clientes_banco
WHERE  data_referencia = '2024-06-15'
AND    uf = 'DF';

-- Questão 13: Em março de 2024, mais de 100 clientes tinham score de crédito igual ou maior que 700 e não possuíam cartão.
SELECT COUNT(*) AS clientes
FROM   clientes_banco
WHERE  data_referencia = '2024-03-15'
AND    score_credito >= 700
AND    possui_cartao = FALSE;

-- Questão 14: Em dezembro de 2024, o App era o canal preferido de mais da metade dos clientes.
SELECT COUNT(*)
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15';

SELECT COUNT(*)
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
AND    canal_preferido = 'App';

-- Questão 15: Mais de 700 clientes abriram conta em 2024. (DICA: aqui use DISTINCT para contar cada cliente apenas uma vez)
SELECT COUNT(DISTINCT id_cliente) AS novos_clientes
FROM   clientes_banco
WHERE  data_abertura BETWEEN '2024-01-01' AND '2024-12-31';

-- Questão 16: Em dezembro de 2024, o saldo médio das contas Poupança era maior que o das contas Corrente.
SELECT tipo_conta, ROUND(AVG(saldo), 2) AS saldo_medio
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
GROUP  BY tipo_conta
ORDER  BY saldo_medio DESC;

-- Questão 17: Em dezembro de 2024, o maior limite de crédito do segmento Varejo era inferior a R$ 30.000,00.
SELECT MAX(limite_credito) AS maior_limite
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
AND    segmento = 'Varejo';

-- Questão 18: Em dezembro de 2024, entre os clientes que possuíam investimento, os homens eram maioria.
SELECT sexo, COUNT(*) AS clientes
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
AND    possui_investimento = TRUE
GROUP  BY sexo;

-- Questão 19: Em dezembro de 2024, exatamente 3 UFs tinham menos de 13 clientes.
SELECT uf, COUNT(*) AS clientes
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
GROUP  BY uf
HAVING COUNT(*) < 13
ORDER  BY clientes;

-- Questão 20: Em dezembro de 2024, mais de 550 clientes nasceram antes de 01/01/1960.
SELECT COUNT(*) AS clientes
FROM   clientes_banco
WHERE  data_referencia = '2024-12-15'
AND    data_nascimento < '1960-01-01';