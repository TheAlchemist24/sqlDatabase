/* 1. persone maggiorenni, con nome e regione di nascita */

select p.nome, c.regione
from persona p left join città c on p.cittàNascita = c.nome
where p.età >= 18

/* 2. coppie <genitore,figlio> nati nella stessa città */

select f.nome as figlio, g.Nome as genitore
from persona f join genia on f.Nome = genia.Figlio join persona g on g.Nome = genia.Genitore
where f.cittàNascita = g.cittàNascita

/* 3. città in cui è nato almeno un genitore di oltre 50 anni */
select p.CittàNascita
from genia g left join persona p on g.Genitore = p.Nome
where p.Età > 50