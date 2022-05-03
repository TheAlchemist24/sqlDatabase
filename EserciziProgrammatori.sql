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

/* 4. Calcolare le coppie dei codici di programmatori che sono stati
coautori di almeno un programma scritto in Python. */

select a1.codice as programmatore1, a2.codice as programmatore2
from autore a1 join autore a2 on a1.id = a2.id
    join programma pr on a1.id = pr.id
where pr.linguaggio = "Python" and a1.codice != a2.codice and a1.codice < a2.codice 

/* 5. Calcolare il codice ed il nome dei programmatori che hanno
scritto solo programmi Java. */

select p.codice, p.nome
from programmatore p join autore a on p.codice = a.codice
    join programma pr on a.id = pr.id
group by p.codice
having count(*) = count(pr.linguaggio = "Java") and pr.linguaggio = "Java"

/* 6. Per ogni programmatore e per ogni anno calcolare il
numero di programmi scritti da quel programmatore
in quell’anno, mostrando codice del programmatore,
anno e numero di programmi scritti. */

select p.codice, pr.anno, count(a.id)
from programmatore p left join autore a on p.codice = a.codice
    left join programma pr on a.id = pr.id
group by p.codice, pr.anno

/* 7. Per ogni linguaggio calcolare quanti sono in media gli
autori dei programmi scritti in quel linguaggio. */

select distinct pr.linguaggio, count(a.codice)/count(distinct pr.id) as "Autori per programma in media"
from programma pr left join autore a on pr.id = a.id
group by pr.linguaggio
