-- Questão 05
-- Tempo de duração do Jogo
select name as Nome, (median_playtime/60) as Horas_de_Jogo from steam order by Horas_de_Jogo desc LIMIT 10;

-- Questão 06
-- Tempo médio de jogo/Player
select name as Nome,  (average_playtime/60)  as Tempo_Médio_jogado 
from steam  
order by Tempo_Médio_Jogado DESC LIMIT 10;