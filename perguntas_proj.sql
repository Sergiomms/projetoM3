/*
GÊneros de jogos mais jogados
Questão 3
*/
select genres, count(genres) as total from steam
group by genres
order by count(genres) desc limit 10;

/*
Questão 4
TOTAL ARRECADADO PELA PUBLISHER COM RELAÇÃO PREÇO E TOTAL JOGAFORES
*/
SELECT publisher,
ROUND(SUM(substring_index(owners, '-', -1) * price), 2) AS TOT_GANHO,
SUM(positive_ratings) AS TOT_AVA
FROM steam
GROUP BY publisher
ORDER BY TOT_GANHO DESC LIMIT 10;