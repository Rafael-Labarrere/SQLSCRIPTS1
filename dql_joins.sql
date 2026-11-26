/* Questão 01. Quais são os 5 instrutores com mais cursos? Mostre o nome do instrutor e a quantidade
de cursos, da maior para a menor; em caso de empate, por nome (A–Z).
 */

SELECT i.nome, COUNT(c.id_instrutor)
FROM instrutores i
INNER JOIN cursos c on i.id_instrutor = c.id_instrutor
GROUP BY i.id_instrutor, i.nome
ORDER BY COUNT(c.id_instrutor) DESC, i.nome
LIMIT 5; 

/* Questão 02. Quais instrutores não têm nenhum curso? Mostre o nome e a especialidade, em ordem
alfabética de nome.
 */

SELECT i.norme 
FROM instrutores i 
INNER JOIN cursos c on 

/* Questão 03. Quais cursos nunca tiveram matrícula? Mostre o título e a categoria, em ordem
alfabética de título.
 */



/* Questão 04. Qual é o faturamento (soma de valor_pago) de cada categoria de curso,
desconsiderando as matrículas com status Cancelada? Ordene do maior faturamento para o
menor. */



/* Questão 05. Quais são os 5 alunos que mais gastaram na plataforma (soma de valor_pago),
desconsiderando as matrículas canceladas? Mostre o nome do aluno e o total, do maior para o menor;
em caso de empate, por nome (A–Z). */



/* Questão 06. Quantas matrículas com status Concluída feitas em 2025 há em cada UF dos alunos?
Ordene da maior quantidade para a menor; em caso de empate, por UF (A–Z).
*/



/* Questão 07. Quais são os 5 cursos com a maior nota média nas avaliações, considerando apenas
os cursos com pelo menos 5 avaliações? Mostre o título, a nota média arredondada para 2 casas
decimais e a quantidade de avaliações. Ordene da maior nota média para a menor; em caso de empate,
por título (A–Z). */



/* Questão 08. Quais são os 5 instrutores com a maior nota média nas avaliações dos seus cursos,
considerando apenas os instrutores com pelo menos 10 avaliações? Mostre o nome e a nota média
arredondada para 2 casas decimais. Ordene da maior nota média para a menor; em caso de empate,
por nome (A–Z). */



/* Questão 09. Usando FULL JOIN entre instrutores e cursos, liste apenas as linhas sem
correspondência: instrutores sem curso e cursos sem instrutor. Mostre o nome do instrutor e
o título do curso, ordenados por nome do instrutor e depois por título. */



/* Questão 10. Usando RIGHT JOIN, com matriculas no FROM e alunos no JOIN, mostre todos os
alunos da cidade de Recife e a quantidade de matrículas de cada um, incluindo os que têm zero.
Ordene da maior quantidade para a menor; em caso de empate, por nome (A–Z). */
 