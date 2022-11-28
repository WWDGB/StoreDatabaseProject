use dbMagazinOnline
--Selectati produsele care au pretul mai mare de 300 lei si care, de asemenea, se afta in stock
select numeProdus, pretProdus, stockProdus
from magazin.tProdus
where pretProdus > 300
union
select numeProdus, pretProdus, stockProdus
from magazin.tProdus
where stockProdus is not null

--Selectacti clientii din Bucuresti si Cluj, folosind operatorul "UNION"
select numeClient, prenumeClient, codJudetClient 
from magazin.tClient
where codJudetClient = 'B'
union
select numeClient, prenumeClient, codJudetClient
from magazin.tClient
where codJudetClient = 'CJ'

--Intersect
--Afisati clientii care au prenumele "Andrei" si sunt din Brasov, folosind operatorul "INTERSECT". In caz contrar, nu se va afisa nimic 
select numeClient, prenumeClient, codJudetClient
from magazin.tClient
where prenumeClient like '%Andrei%'
intersect
select numeClient, prenumeClient, codJudetClient
from magazin.tClient
where codJudetClient = 'BV'

--Afisati produsele care sunt distribuitite de D002 si nu sunt distribuite de D003 folosind operatorul "except"
select codProdus, numeProdus, codDistribuitor 
from magazin.tProdus
where codDistribuitor = 'D002'
except 
select codProdus, numeProdus, codDistribuitor 
from magazin.tProdus
where codDistribuitor = 'D003'