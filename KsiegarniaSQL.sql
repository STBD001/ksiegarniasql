Znajdź w bazie:

1. Książki ułożone alfabetycznie wg tytułu
ROZWIĄZANIE: SELECT * FROM ksiazki ORDER BY tytul ASC

2. Najdroższą książkę w bazie
ROZWIĄZANIE: SELECT * FROM ksiazki ORDER BY cena DESC LIMIT 1

3. Wszystkie wysłane zamówienia
ROZWIĄZANIE: SELECT * FROM zamowienia WHERE status="wyslano"

4. Wszystkich klientów o nazwisku Rutkowski
ROZWIĄZANIE: SELECT * FROM klienci WHERE nazwisko="Rutkowski"

5. Książki zawierające wyrażenie "PHP" w tytule
ROZWIĄZANIE: SELECT * FROM ksiazki WHERE tytul LIKE "%PHP%"

6. Zamówienia ułożone od ostatnio dokonanego
ROZWIĄZANIE: SELECT * FROM zamowienia ORDER BY data DESC

Zapytania związane z łączeniem tabel:

7. Wyjmij dla wszystkich zamówień: imię i nazwisko klienta zamawiającego, id
zamówienia, datę zamówienia
ROZWIĄZANIE: SELECT klienci.imie, klienci.nazwisko, zamowienia.idzamowienia, zamowienia.data FROM klienci, zamowienia
WHERE klienci.idklienta = zamowienia.idklienta

8. Imiona i nazwiska osób, które zamówiły kiedykolwiek książkę nr 2
ROZWIĄZANIE: SELECT klienci.imie, klienci.nazwisko FROM klienci, zamowienia WHERE zamowienia.idksiazki=2 AND
zamowienia.idklienta = klienci.idklienta
ROZWIĄZANIE2: SELECT k.imie, k.nazwisko
FROM klienci AS k, zamowienia AS z
WHERE z.idksiazki = 2
AND z.idklienta = k.idklienta;

9. Jakie książki (tytuł, autor) zamówiła osoba: Jan Nowak?
ROZWIĄZANIE: SELECT ksiazki.tytul, ksiazki.imieautora, ksiazki.nazwiskoautora
FROM ksiazki, zamowienia 
WHERE zamowienia.idklienta =2 AND zamowienia.idksiazki=ksiazki.idksiazki

10. Zamówienia dokonane przez osoby o nazwisku Rutkowski ułożone wg daty od
najpóźniej dokonanych (imię i nazwisko osoby zamawiającej, id, datę i status
zamówienia, tytuł zamówionej książki)
ROZWIĄZANIE: SELECT klienci.imie, klienci.nazwisko, zamowienia.idzamowienia, zamowienia.status, zamowienia.data, 
ksiazki.tytul 
FROM klienci, zamowienia, ksiazki
WHERE klienci.nazwisko="Rutkowski" AND zamowienia.idksiazki = ksiazki.idksiazki AND 
klienci.idklienta = zamowienia.idklienta ORDER BY zamowienia.data DESC
