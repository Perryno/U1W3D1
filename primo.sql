SELECT nome, cognome FROM public.clienti
    WHERE EXTRACT(YEAR FROM data_nascita) = 1982;

-----------------------

SELECT COUNT(*) AS totale_fatture
    FROM public.fatture WHERE iva = 20;

-----------------------

SELECT id_prodotto, descrizione, data_attivazione, in produzione, in_commercio
    FROM public.prodotti WHERE extract(year from data_attivazione) = 2017 and (in_produzione or in_commercio = true);

-----------------------

SELECT count(*), sum(importo), data_fattura
    FROM public.fatture group by data_fattura;

-----------------------

SELECT COUNT(*) AS numero_fatture, 
    EXTRACT(YEAR FROM data_fattura) 
    FROM fatture WHERE iva = 20 GROUP BY EXTRACT(YEAR FROM data_fattura);

-----------------------

SELECT numero_fattura, importo, data_fattura, iva, denominazione 
    FROM fatture JOIN fornitori ON fatture.numero_fornitore = fornitori.numero_fornitore;



