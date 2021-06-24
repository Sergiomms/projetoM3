QUEM SOMOS?

Somos a Steam Labs. Uma empresa de análise de mercado de jogos, baseada em 
plataformas de games, em especial a Steam.

A empresa Joguinhos S.A. nos contatou para uma análise de mercado, baseada 
na plataforma Steam, para uma análise e visualização de dados para responder 
algumas questões pertinentes ao negócio e tentar determinar a nosso cliente 
se vale a pena ou não publicar e desenvolver seus games para esta plataforma.

01 - Quais as 10 empresas que mais publicaram jogos?
(10+ publishers)
Luany

#Questão 01
select publisher, count(publisher) as Total from steam
group by publisher order by Total desc
limit 10;

========================================================================

02 - Quais as 10 desenvolvedoras com mais lançamentos?
(10+ Devs)
Luany

#Questão 02
select developer, count(developer) as Total from steam
group by developer order by Total desc
limit 10;

=========================================================================

03 - Quais são os generos de games mais explorados?
(10+ generos)
Samela

#Questão 03
select genres, count(genres) as total from steam
group by genres
order by count(genres) desc limit 10;

=========================================================================

04 - Qual a relação entre total arrecadado e avaliações positivas?
Samela

#Questão 04
SELECT publisher,
ROUND(SUM(substring_index(owners, '-', -1) * price), 2) AS TOT_GANHO,
SUM(positive_ratings) AS TOT_AVA
FROM steam
GROUP BY publisher
ORDER BY TOT_GANHO DESC LIMIT 10;

==========================================================================

05 - Tempo médio de campanha dos jogos?
(10+)
Barbara

#Questão 05
select name as Nome, (median_playtime/60) as Horas_de_Jogo 
from steam order by Horas_de_Jogo desc LIMIT 10;

===========================================================================

06 - Tempo médio de jogo dos jogadores?
(10+)
Barbara

#Questão 06
select name as Nome,  (average_playtime/60)  as Tempo_Médio_jogado 
from steam  
order by Tempo_Médio_Jogado DESC LIMIT 10;

===========================================================================

07 - Quais são os jogos mais jogados e seus generos?
(100+ jogos)
Vagner

#Questão 07
select name as Nome,  (average_playtime/60)  as Tempo_Médio_jogado, genres 
from steam 
order by Tempo_Médio_Jogado DESC LIMIT 100;

===========================================================================

08 - Qual a porcentagem dos S.O.s utilizados nos jogos?
Vagner

#Questão 08
select ((w.Jogos_De_Windows*100)/3430) as Jogos_De_Windows, ((l.Jogos_De_Linux*100)/3430) as Jogos_De_Linux, ((m.Jogos_De_Mac*100)/3430) as Jogos_De_Mac
from (select sum(w.Quantidade_de_Jogos) as Jogos_De_Windows from (select count(platforms) as Quantidade_De_Jogos from steam where platforms like '%windows%' group by platforms order by Quantidade_de_Jogos DESC) as w) as w
left join (select sum(l.Quantidade_de_Jogos) as Jogos_De_Linux from (select count(platforms) as Quantidade_De_Jogos from steam where platforms like '%linux%' group by platforms order by Quantidade_de_Jogos DESC)as l) as l
ON true
left join (select sum(m.Quantidade_de_Jogos) as Jogos_De_Mac from (select count(platforms) as Quantidade_De_Jogos from steam where platforms like '%mac%' group by platforms order by Quantidade_de_Jogos DESC) as m) as m
ON true;

===========================================================================

09 - Qual o ano com maior lançamento de jogos até o momento?
(Top 10 anos com mais lançamentos)
Sérgio

#Questão 09
select date_format(release_date, '%Y') as ano_lançamento, 
count(release_date) as total_ano 
from steam 
group by date_format(release_date, '%Y')
order by total_ano desc
limit 10;

============================================================================

10 - Quais os meses do ano com maior histórico de lançamentos?
(Top 06 meses com mais lançamentos)
Sérgio

#Questão 10
select date_format(release_date, '%M') as mes_lançamento, 
count(release_date) as total_mes 
from steam 
group by date_format(release_date, '%M')
order by total_mes desc
limit 6;

============================================================================