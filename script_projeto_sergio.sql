use projeto;

select * from steam;

select developer, count(developer) as Total from steam
group by developer order by Total desc
limit 10;

select publisher, count(publisher) as Total from steam
group by publisher order by Total desc
limit 10;

select count(appid) as total_de_jogos from steam;

#Pra ver o total por ano 1
select date_format(release_date, '%Y'), 
count(release_date) as total_ano 
from steam 
group by date_format(release_date, '%Y');

# 2
select date_format(release_date, '%Y') as ano_lançamento, 
count(release_date) as total_ano 
from steam 
group by date_format(release_date, '%Y')
order by total_ano desc
limit 10;

#Pra ver o total de um ano especifico
select count(date_format(release_date, '%Y')) from steam
where date_format(release_date, '%Y') like '2006%';

select date_format(release_date, '%M') as mes_lançamento, 
count(release_date) as total_mes 
from steam 
group by date_format(release_date, '%M')
order by total_mes desc
limit 6;

select * from steam where publisher like 'ubisoft';


select platforms, count(platforms) as total_jogos from steam
where publisher like 'ubisoft'
group by  platforms
order by count(platforms);

select genres, count(genres) as total from steam
where publisher like 'ubisoft'
group by genres
order by count(genres) desc limit 10;

select * from steam where publisher like 'ubisoft'
order by positive_ratings desc;

select * from steam;

select genres, count(genres) as total from steam
where genres like 'action'
group by genres
order by count(genres) desc;

select name, publisher, developer, release_date from steam where genres like 'action';

select count(genres) as total, publisher 
from steam
where genres like 'action'
group by publisher
order by total desc;

select * from steam where publisher like 'square enix'
order by positive_ratings desc;

select genres, count(genres) as total from steam
where publisher like 'square enix'
group by genres
order by count(genres) desc;


select genres, count(genres) as total from steam
group by genres
order by count(genres) desc limit 10;

SELECT publisher,
round(SUM(substring_index(owners, '-', -1)price), 2) AS TOT_GANHO,
SUM(positive_ratings) AS TOT_AVA
FROM steam
GROUP BY publisher
ORDER BY TOT_GANHO DESC LIMIT 10;

select ((w.Jogos_De_Windows*100)/3430) as Jogos_De_Windows, ((l.Jogos_De_Linux*100)/3430) as Jogos_De_Linux, ((m.Jogos_De_Mac*100)/3430) as Jogos_De_Mac
from (select sum(w.Quantidade_de_Jogos) as Jogos_De_Windows from (select count(platforms) as Quantidade_De_Jogos from steam where platforms like '%windows%' group by platforms order by Quantidade_de_Jogos DESC) as w) as w
left join (select sum(l.Quantidade_de_Jogos) as Jogos_De_Linux from (select count(platforms) as Quantidade_De_Jogos from steam where platforms like '%linux%' group by platforms order by Quantidade_de_Jogos DESC)as l) as l
ON true
left join (select sum(m.Quantidade_de_Jogos) as Jogos_De_Mac from (select count(platforms) as Quantidade_De_Jogos from steam where platforms like '%mac%' group by platforms order by Quantidade_de_Jogos DESC) as m) as m
ON true;

SELECT publisher,
ROUND(SUM(substring_index(owners, '-', -1) * price), 2) AS TOT_GANHO,
SUM(positive_ratings) AS TOT_AVA
FROM steam
GROUP BY publisher
ORDER BY TOT_GANHO DESC LIMIT 10;





