/* 1. Calcolare l'insieme (non il multi-insieme) delle coppie (A,B)
tali che A è uno scalatore e B è un continente in cui A ha
effettuato una scalata. */

select distinct s.scalatore, n.continente
from scalata s join nazione n on s.nazione = n.nome

/* 2. Per ogni scalatore nato prima del 1980, calcolare
tutti i continenti in cui ha effettuato una scalata,
ordinando il risultato per codice fiscale e, a parità di
codice fiscale, per il nome del continente. */


select s.cf, n.continente
from scalatore s join scalata sc on s.cf = sc.scalatore
    join nazione n on sc.nazione = n.nome
where s.annoNascita < 1980
order by s.cf, n.nome

/* 3. Calcolare le nazioni (mostrando, per ciascuna, anche il
continente) nelle quali è stata effettuata almeno una scalata
da uno scalatore minorenne.  */

select 
from
where

/* 4. Per ogni nazione, calcolare il numero di scalate effettuate da
scalatori nati in quella nazione. */

select 
from
where

/* 5. Per ogni continente, calcolare il numero di scalate effettuate
da scalatori nati in una nazione di quel continente.*/

select 
from
where

/* 6. Calcolare codice fiscale, nazione di nascita, continente di
nascita di ogni scalatore nato in un continente diverso
dall’America, e, solo se egli ha effettuato almeno una scalata,
affiancare queste informazioni alle nazioni in cui ha effettuato
scalate. */

select 
from
where

/* 7. Per ogni nazione e per ogni anno, calcolare il numero di
scalate effettuate in quella nazione e in quell’anno, ma solo se
tale numero è maggiore di 1. Nel risultato le nazioni dello
stesso continente devono essere mostrati in tuple contigue, e
le tuple relative allo stesso continente devono essere ordinate
per anno. */

select 
from
where

/* 8. Per ogni nazione N, calcolare il numero medio di
scalate effettuate all’anno in N da scalatori nati in
nazioni diverse da N. */

select 
from
where

/* 9. Calcolare gli scalatori tali che tutte le scalate che
hanno effettuato nella nazione di nascita le hanno
effettuate quando erano minorenni. */

select 
from
where
