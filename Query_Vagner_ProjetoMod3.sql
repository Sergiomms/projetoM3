

-- Questão 7: Mais jogados + Gênero
select name as Nome,  (average_playtime/60)  as Tempo_Médio_jogado, genres 
from steam 
order by Tempo_Médio_Jogado DESC LIMIT 100;

-- Questão 8: Porcentagem de sistemas operacionais
select ((w.Jogos_De_Windows*100)/3430) as Jogos_De_Windows, ((l.Jogos_De_Linux*100)/3430) as Jogos_De_Linux, ((m.Jogos_De_Mac*100)/3430) as Jogos_De_Mac
from (select sum(w.Quantidade_de_Jogos) as Jogos_De_Windows from (select count(platforms) as Quantidade_De_Jogos from steam where platforms like '%windows%' group by platforms order by Quantidade_de_Jogos DESC) as w) as w
left join (select sum(l.Quantidade_de_Jogos) as Jogos_De_Linux from (select count(platforms) as Quantidade_De_Jogos from steam where platforms like '%linux%' group by platforms order by Quantidade_de_Jogos DESC)as l) as l
ON true
left join (select sum(m.Quantidade_de_Jogos) as Jogos_De_Mac from (select count(platforms) as Quantidade_De_Jogos from steam where platforms like '%mac%' group by platforms order by Quantidade_de_Jogos DESC) as m) as m
ON true;