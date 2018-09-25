Informatii generale:
=====================

- Acest program reprezinta o implementare a codului Morse. Fiecare litera a 
alfabetului este codificata printr-o secventa de "." si "-". Un punct inseamna
deplasarea la stanga in arbore, iar o linie inseamna deplasarea la dreapta.
Programul face conversia dintr-un sir de litere intr-un sir de '.' si '-' 
corespunzatoare codului morse, dar face si conversia de la un sir in codul 
Morse intr-un sir de litere.

Mod de utilizare:
==================

- Se apeleaza in Octave una din functiile morse_decode(sir), morse_encode(c),
multiple_decode(sir) sau multiple_encode(str) in functie de ce avem de codificat
(encode) sau decodificat (decode). "c" reprezinta un caracter (litera), sir
reprezinta un sir de '.' si '-', iar str reprezinta un sir de caractere (litere).
Programul este case insensitive. Daca se introduc caractere incorecte, functiile
vor returna caracterul '*'. Daca la functia de multiple_decode(sir) vor fi mai 
multe spatii, programul va trece peste ele considerand unul singur. Daca sunt
la inceput sau la final, nu vor fi luate in considerare. La multiple_encode(str)
insa va aparea caracterul '*' unde sunt spatii, pentru ca ar trebui sa fie un sir
de caractere fara spatii.

Prezentarea implementarii:
===========================

Functii folosite pentru implementarea programului:
1) Functia ce creeaza arborele:
function m = morse();
2) Functia ce realizeaza decodarea unui sir de "." si "," fara spatii:
function x = morse_decode(sir);
3) Functia ce realizeaza codarea unui caracter (litere):
function x = morse_encode(c);
4) Functia ce realizeaza decodarea unui sir de "." si "," cu spatii:
function x = multiple_decode(sir);
5) Functia ce realizeaza codarea unui sir de caractere (litere):
function x = multiple_encode(str);
6) Functie auxiliara ce face legatura dintre dreapta/stanga cu '.' si '-':
function x = morse_encode_link(contor);

Algoritm:
1) Pentru functia morse_decode(sir):
- Se verifica lungimea sirului.
- Se verifica daca caracterul este '.' sau '-'. In functie de caracter, functia 
se duce pe ramura stanga a arborelui sau pe ramura din dreapta (atribuie lui s
elementul 2 sau 3 din cell array, care la randul lor reprezinta un cell array).
- La final functia se incheie prin atribuirea elementului s{1}, ceea ce reprezinta
litera.
2) Pentru functia morse_encode(c):
- Functia este case insensitive si se transforma toate literele in litere mari.
- Stiind numarul de nivele al arborelui (4 nivele conectate la radacina), s-a
folosit metoda iterativa. Pentru fiecare nivel se verifica fiecare litera
daca este cea corespunzatoare. Pentru primul nivel va fi un for, pentru al
doilea vor fi 2 for-uri, pentru al 3-lea 3 for-uri si pentru al 4-lea vor fi
4 for-uri. Desi numarul de for-uri este mare, algoritmul este eficient deoarece 
sunt putine nivele si putine noduri pe nivel (arbore binar).
-Functia morse_encode_link este folosita pentru a face legatura intre stanga ({2}) 
si '.' ,respectiv dreapta ({3}) si '-'.
3) Pentru functia multiple_decode(sir):
-Fiecare '.' sau '-' se va stoca intr-un vector auxiliar.
-Cand se intalneste un spatiu, se va apela functia morse_decode(sir) pentru
vectorul auxiliar rezultand un caracter. Vectorul se va reseta, iar contorul 
se foloseste pentru a se sti de unde incepe noul caracter.
-Spatiile de la inceputul si finalul sirului sunt ignorate.
4) Pentru functia multiple_encode(str):
-Se codifica fiecare caracter in parte.
-Cand se atribuie sirului ce trebuie returnat codificarea caracterului, se 
adauga si un spatiu (daca nu este ultimul element).
