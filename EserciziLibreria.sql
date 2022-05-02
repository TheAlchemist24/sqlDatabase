/*1. Romanzi"pubblicati"nel"2009"*/

select *
from romanzo r
where r.AnnoPubblicazione = 2011;

/*2. Romanzi"pubblicati"a"partire"dal"1990*/

select *
from romanzo r
where r.AnnoPubblicazione > 1990;

/*3. Romanzi"del"ventesimo"secolo"*/

select *
from romanzo r
where r.AnnoPubblicazione >= 1900 and r.AnnoPubblicazione<2000;

/*4. Autore"(cioè"Nome"e"Cognome)"e"Titolo"di"tutti"i"romanzi*/

select r.Titolo, a.Nome, a.Cognome
from romanzo r, autore a
where r.Autore = a.id



/*5. Autore"(cioè"Nome"e"Cognome)"e"Titolo"di"tutti"i"romanzi,"ordinati"per"cognome"e"nome"
dell’autore"*/

select a.Nome, a.Cognome, r.Titolo
from romanzo r, autore a
where r.Autore = a.id
order by a.Cognome, a.Nome;

/*6. Autore"(cioè"Nome"e"Cognome)"e"Titolo"dei"romanzi"di"autori"russi,"ordinati"per"
cognome"e"nome"dell’autore"*/

select a.Nome, a.Cognome, r.Titolo
from romanzo r, autore a
where r.Autore = a.id and a.Nazionalità = "russo"


/*7. Titolo"dei"romanzi"di"autori"nati"nel"ventesimo"secolo,"ordinati"per"cognome"e"nome"
dell’autore"e"–"a"parità"di"autore"–"di"data"di"pubblicazione"*/

select r.Titolo
from romanzo r, autore a
where r.Autore = a.id and a.DataNascita >= 1900 and a.DataNascita<2000
order by a.Cognome, a.Nome, r.AnnoPubblicazione;

/*8. Titolo"e"anno"di"pubblicazione"di"romanzi"di"autori"viventi*/

select r.Titolo, r.AnnoPubblicazione
from romanzo r, autore a
where r.Autore = a.id and a.DataMorte is null

/*9. Romanzi"di"scrittori"viventi,"oppure"morti"ma"non"a"Torino"*/

select r.Titolo
from romanzo r, autore a
where r.Autore = a.id and (a.DataMorte is null or a.LuogoMorte != "Torino")

/*10. Titolo"e"anno"di"pubblicazione"dei"romanzi"di"scrittori"nati"a"Roma"*/

select r.Titolo, r.AnnoPubblicazione
from romanzo r, autore a
where r.Autore = a.id and a.LuogoNascita = "Roma"

/*11. Romanzi"con"titolo"che"inizia"per"“Tokyo”"*/

select *
from romanzo r
where r.Titolo like "Tokyo%"

/*12. Romanzi"con"la"parola"“Sposi”"nel"titolo"*/

select *
from romanzo r
where r.Titolo like "%Sposi%"

/*13. Romanzi"con"penultima"lettera"“i”"nel"titolo"*/

select *
from romanzo r
where r.Titolo like "%i_"

/*14. Romanzi"il"cui"titolo"termina"per"“blues”"*/

select *
from romanzo r
where r.Titolo like "%blues"

/*15. Romanzi"pubblicati"del"ventesimo"secolo"e"con"la"parola"“Zeno”"nel"titolo"*/

select *
from romanzo r
where r.Titolo like "%blues"

/*16. Romanzi"pubblicati"prima"del"1900"e"con"la"parola"“Sposi”"nel"titolo,"scritta"l’iniziale"
maiuscola"o"minuscola"*/

/*17. Romanzi"di"Alessandro"Manzoni"*/

/*18. Titoli"dei"romanzi"scritti"da"Don"DeLillo,"escludendo"eventuali"duplicati*/

/*19. Romanzi"con"il"personaggio"di"Benjamin"Malaussène"*/

/*20. Romanzi"il"cui"autore"non"è"presente"nel"database"*/