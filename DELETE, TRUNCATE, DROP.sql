DELETE, TRUNCATE, DROP 

1. Usunąć nazwisko klienta nr 3, za pomocą UPDATE
ROZWIĄZANIE: UPDATE
    klienci
SET
    nazwisko = ""
WHERE
    idklienta = 3

2. Usunięcie zamówenia numer 2
ROZWIĄZANIE: DELETE
FROM
    zamowienia
WHERE
    idzamowienia = 2

3. Usuń 5 ostatnich klientów 
ROZWIĄZANIE: DELETE
FROM
    klienci
ORDER BY
    idklienta
DESC
LIMIT 5

4. Dropujemy Bazę danych księgarnia
ROZWIĄZANIE: DROP
    DATABASE ksiegarnia

