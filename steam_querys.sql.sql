#Questão 01 (minhas questoes
select * from steam;
select publisher, count(publisher) as Total from steam
group by publisher order by Total desc
limit 10;


#Questão 02 (minhas questoes
select * from steam;
select developer, count(developer) as Total from steam
group by developer order by Total desc
limit 10;