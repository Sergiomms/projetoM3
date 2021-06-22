select * from steam;
select * from steam_requirements_data;

select name, positive_ratings from steam where positive_ratings >  negative_ratings order by positive_ratings desc limit 10;

select name as Nome, (average_playtime/60) as Tempo_Médio_jogado, positive_ratings as Notas_Positivas from steam where positive_ratings > negative_ratings order by Notas_Positivas DESC;
select name as Nome, (median_playtime/60) as Horas_de_Jogo , positive_ratings as Notas_Positivas from steam where positive_ratings > negative_ratings order by Notas_Positivas desc;

select count(platforms) as windows from steam where platforms like '%windows%';

select name, steam_requirements_data.pc_requirements from steam left join steam_requirements_data on steam.appid = steam_requirements_data.steam_appid;
