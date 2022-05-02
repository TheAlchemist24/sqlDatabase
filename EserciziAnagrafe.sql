/* 1. persone maggiorenni, con nome e regione di nascita */

select p.nome, c.regione
from persona p left join città c on p.cittàNascita = c.nome
where p.età >= 18