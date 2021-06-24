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
order by count(genres) desc;

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






