use dbMagazinOnline

--Afisati clientii care au facut o comanda mai mare de 500 de lei 
create view vClienti_Peste_500Lei
as
select A.codClient, A.numeClient, A.prenumeClient, B.totalFactura
from magazin.tClient as A
inner join
magazin.tFactura as B on A.codClient = B.codClient
where B.totalFactura > 500


--Afisati toate detaliile facturii clientului C007
create view vDetalii_Client_C007 
as
select A.codClient, A.numeClient, A.prenumeClient, B.nrFactura, B.dataFactura, B.totalFactura, C.idVanzare, C.codProdus, C.cantitateVanduta, D.numeProdus
from magazin.tClient as A
inner join 
magazin.tFactura as B  on A.codClient = B.codClient 
inner join 
magazin.tDetaliiFactura as C on B.nrFactura = C.nrFactura
inner join
magazin.tProdus as D on C.codProdus = D.codProdus
where A.codClient = 'C007'

--Afisati toate categoriile si toate produsele posibile 
create view vCategorii_si_Produse_Posibile 
as
select A.codCategorie, A.numeCategorie, B.codProdus, B.numeProdus
from magazin.tCategorie as A
cross join
magazin.tProdus as B where A.codCategorie = B.codCategorie

select * from vClienti_Peste_500Lei
select * from vDetalii_Client_C007 
select * from vCategorii_si_Produse_Posibile 