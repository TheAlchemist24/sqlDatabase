/* 1. Calcolare il codice dei programmatori che sono stati autori di
almeno un programma scritto in Java dopo il 2000. */

select a.codice 
from Autore a join Programma p on a.id = p.id
where p.linguaggio = "Java" and p.anno >= 2000

/* 2. Calcolare il nome e la categoria dei programmatori
che sono stati autori di almeno un programma scritto
in un linguaggio diverso da Python, ordinando il
risultato rispetto al nome dei programmatori. */

select distinct p.nome, p.categoria
from programmatore p join autore a on p.codice = a. codice
    join programma pr on a.id = pr.id
where pr.linguaggio != "Python"
order by p.nome

/* 3. Per ogni programmatore di categoria 10, calcolare il suo
codice e l'anno in cui ha scritto il primo programma in un
linguaggio diverso da Java. */

select distinct p.codice, min(pr.anno) as "anno primo programma non in Java"
from programmatore p join autore a on p.codice = a. codice
    join programma pr on a.id = pr.id
where pr.linguaggio != "Java" and p.categoria = 10
group by p.codice