/* 1. Calcolare il codice dei programmatori che sono stati autori di
almeno un programma scritto in Java dopo il 2000. */

select a.codice 
from Autore a join Programma p on a.id = p.id
where p.linguaggio = "Java" and p.anno >= 2000