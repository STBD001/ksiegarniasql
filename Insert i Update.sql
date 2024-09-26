
UPDATE
    klienci
SET
    nazwisko = "Psikua"
WHERE
    IDKLIENTA = 4

1. Zmień idklienta osoby nr 3 na wartość 1
ROZWIĄZANIE: NIE DA SIĘ!!

2. Zwiększ cenę wszytskich książek zgromadzonych w bazie o 10% 
ROZWIĄZANIE: UPDATE
    ksiazki
SET
    cena = ROUND(cena * 1.1, 2)

3. Zmniejszyć cenę najdroższej książki w bazie o 10 zł
ROZWIĄZANIE: UPDATE
    ksiazki
SET
    cena = cena -10
ORDER BY
    cena
DESC
LIMIT 1

4. Zmień imię i nazwisko klientki (idklienta=10) na inne.
ROZWIĄZANIE: UPDATE
    klienci
SET
    imie = "Joanna",
    nazwisko = "Dostojewska"
WHERE
    idklienta = 10

5. Zmień status zamówień nr 4 i 5 na "wyslano"
ROZWIĄZANIE: UPDATE
    zamowienia
SET
STATUS
    = "wyslano"
WHERE
    idzamowienia BETWEEN 4 AND 5

6. Dodaj do bazy nowego klienta.
ROZWIĄZANIE: INSERT INTO klienci
VALUES(
    NULL,
    "Franciszek",
    "Janowski",
    "Chorzów"
)

7. Dodaj nowe zamówienia: Artur Rutkowski kupił książkę "HTML5. Tworzenie witryn"
ROZWIĄZANIE: INSERT INTO zamowienia(
    idzamowienia,
    DATA,
STATUS
    ,
    idklienta,
    idksiazki
)
VALUES(
    NULL,
    "2016-01-01",
    "oczekiwanie",
    7,
    3
)

8. Wstaw do bazy książkę o tytule: "Sumfonia C++" autora o nazwisko "Grębosz", ale nie wstawiaj jeszcze imienia autora ani ceny
ROZWIĄZANIE: INSERT INTO ksiazki(
    idksiazki,
    nazwiskoautora,
    tytul
)
VALUES(NULL, "Grębosz", "Symfonia C++")

9.Dodaj dwóch nowych klientów za pomocą jednego zapytania 
ROZWIĄZANIE: INSERT INTO klienci
VALUES(
    NULL,
    "Marilyn",
    "Monroe",
    "Los Angeles"
),(
    NULL,
    "Johny",
    "Makarony",
    "Piekoszó"
)

10. Wstaw nową osobę do bazy używając alternatywnego zapisu z klazulą SET
ROZWIĄZANIE: INSERT INTO klienci
SET
    idklienta = NULL,
    imie = "Steve",
    nazwisko = "McQueen",
    miejscowosc = "Paryż"

