use dbMagazinOnline

--Aplicarea comenzii SELECT ... FROM si SELECT * FROM 

--1Selectati numele clientilor, prenumele si codul judetului din tabelul tClient
select numeClient,prenumeClient,codJudetClient from magazin.tClient

--Selectati toate coloanele din tabelul tDistribuitor
select * from magazin.tDistribuitor

--Aplicarea clauzei WHERE 

--Selectati toate coloanele din tabelul tClient pentru clientii din judetul Cluj
select * from magazin.tClient 
where codJudetClient = 'CJ';

--Selectati toate coloanele din tabelul tProdus pentru produsele care au pretul mai mare de 300
select * from magazin.tProdus
where pretProdus > 300;

--Selectati toate coloanele din tabelul tFactura pentru clientul 'C004'
select * from magazin.tFactura
where codClient = 'C004'

-- Aplicarea clauzei WHERE + operatorul AND 

--Selectati toate coloanele din tabelul tProdus pentru produsele care au pretul mai mare de 300, sunt peste 20 in stock si fac parte din categoria 3
select * from magazin.tProdus
where pretProdus > 300 and stockProdus > 20 and codCategorie = 'Cat003';

-- Aplicarea clauzei WHERE + operatorul OR 

--Selectati toate coloanele din tabelul tClient pentru clientii din Bucuresti si Arges
select * from magazin.tClient
where codJudetClient = 'B' or codJudetClient = 'AG';

-- Aplicarea clauzei WHERE + operatorul AND + operatorul OR

--Selectati toate coloanele din tabelul tProdus unde pretul este mai mare de 250 si produsele fac parte fie din categoria 2, fie din categoria 5
select * from magazin.tProdus
where pretProdus > 250 and (codCategorie = 'Cat002' or codCategorie = 'Cat005')

--aplicarea clauzei WHERE + operatorul IN/NOT IN

--Selectati toate coloanele din tabelul tProdus pentru categoriile 1 si 4
select * from magazin.tProdus
where codCategorie IN ('Cat001', 'Cat004')

--Selectati toate coloanele din tabelul tProdus pentru categoriile 1 si 4, folosind operatorul NOT IN
select * from magazin.tProdus
where codCategorie NOT IN ('Cat002', 'Cat003', 'Cat005')

-- Aplicarea clauzei WHERE + operatorul LIKE/NOT LIKE
 
 --Selectati distribuitori care incep cu litera "Q"
select * from magazin.tDistribuitor
where numeDistribuitor like 'Q%'

--Selectati distribuitori care au in nume cuvantul "Company"
select * from magazin.tDistribuitor
where numeDistribuitor not like '%company%'

-- Aplicarea clauzei WHERE + operatorul BETWEEN / NOT BETWEEN

--Selectati toate facturile din luna martie
select * from magazin.tFactura
where dataFactura between '2022-03-01' and '2022-03-31'

--Selectati toate facturile din luna aprilie, cu ajutorul operatorului "not between"
select * from magazin.tFactura
where dataFactura not between '2022-01-01' and '2022-03-31'

-- aplicarea clauzei WHERE + operatorul IS NOT NULL / IS NULL

--Selectati clientii care nu si-au trecut email-ul in baza de date.
select * from magazin.tClient
where emailClient is null

--Selectati clientii care si-au trecut email-ul in baza de date
select * from magazin.tClient
where emailClient is not null

-- aplicarea keyword-ului DISTNICT 

--Selectati toate judetele din care fac parte clientii
select distinct codJudetClient
from magazin.tClient

 --Cati clienti sunt inregistrati in baza de date?
 select count(codClient)
 from magazin.tClient 

 --Cate judete sunt in baza de date?
 select count(distinct codJudetClient)
 from magazin.tClient


 -- aplicarea clauzei where + order by

 --Selecatri numarul adresei, judetul, numele si prenumele clientilor din judetul Arges si de asemenea, ordonatii in functie de nume
 select numeClient, prenumeClient, numarAdresaClient, codJudetClient from magazin.tClient
 where codJudetClient = 'AG' and numarAdresaClient is not null
 order by numeClient

 --Selectati facturile la care s-a aplicat un discount si ordonatile in functie de data
 select dataFactura, nrFactura, totalFactura, discountFactura from magazin.tFactura
 where discountFactura is not null 
 order by dataFactura


 -- Aplicarea cluazei group by
  
  --Selectati cati clienti sunt din fiecare judet introdus in baza de date
 select codJudetClient, count(codJudetClient) as NumarClienti
 from magazin.tClient
 group by codJudetClient

 --Afisati cati clienti au acelasi numar al adresei, excluzand pe cei care au valoarea null 
 select numarAdresaClient, count(codClient) as ClientiCuAcelasiNumar
 from magazin.tClient
 where numarAdresaClient is not null
 group by numarAdresaClient
 having count(codClient) > 1
  

--Afisati produsele care au aceeasi descriere:
select descriereProdus, count(codProdus) as ProduseCuAceeasiDescriere
from magazin.tProdus
where descriereProdus is not null
group by descriereProdus
having count(codProdus) > 1

--Afisati pretul minim, maxim, si media tuturor produselor distribuitite de fiecare distribuitor in parte
select codDistribuitor, min(pretProdus) as PretMinim, max(pretProdus) as PretMaxim, cast(avg(pretProdus) as decimal(18,2)) as MediePret
from magazin.tProdus
group by codDistribuitor

--afisati toate judetele din magazin.tClient folosind group by
select codJudetClient
from magazin.tClient
group by codJudetClient

 --selectatii clientii care nu au facut nicio comanda
select A. codClient, A.numeClient, A.prenumeClient, A.codJudetClient
from magazin.tClient as A
left join
magazin.tFactura as B on A.codClient = B.codClient
where B.codClient is null