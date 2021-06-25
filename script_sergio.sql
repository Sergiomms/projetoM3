#Questão 09
select date_format(release_date, '%Y') as ano_lançamento, 
count(release_date) as total_ano 
from steam 
group by date_format(release_date, '%Y')
order by total_ano desc
limit 10;


#Questão 10
select date_format(release_date, '%M') as mes_lançamento, 
count(release_date) as total_mes 
from steam 
group by date_format(release_date, '%M')
order by total_mes desc
limit 6;
