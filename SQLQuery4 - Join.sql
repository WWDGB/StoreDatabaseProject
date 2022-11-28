use dbMagazinOnline

 --Afisati toti clientii care au facut cel putin o comanda pe site
select A.codClient, A.numeClient, A.prenumeClient, B.nrFactura, B.totalFactura
from magazin.tClient as A
inner join
magazin.tFactura as B on A.codClient = B.codClient
order by A.codClient


--Afisati produsele care au fost cumparate de pe site
select A.codProdus, A.numeProdus, B.idVanzare, B.nrFactura
from magazin.tProdus as A
inner join 
magazin.tDetaliiFactura as B on A.codProdus= B.codProdus
order by A.codProdus

--Afisati atat produsele care au fost cumparate, cat si cele care nu au fost cumparate de pe site
select A.CodProdus, A.numeProdus, B.idVanzare, B.nrFactura, B.cantitateVanduta
from magazin.tProdus as A
left join
magazin.tDetaliiFactura as B on A.codProdus = B.codProdus

--Afisati produsele care nu au fost cumparate
select A.CodProdus, A.numeProdus, B.idVanzare, B.nrFactura, B.cantitateVanduta
from magazin.tProdus as A
left join
magazin.tDetaliiFactura as B on A.codProdus = B.codProdus
where idVanzare is null

--Afisati categoriile din baza de date si toate produsele aferente + informatiile despre produsele respective 
select A.codCategorie, A.numeCategorie, B.codProdus, B.numeProdus, B.pretProdus, B.stockProdus
from magazin.tCategorie as A
left join
magazin.tProdus as B on A.codCategorie = B.codCategorie

--Afisati atat clientii care au facut o comanda, cat si cei care doar s-au inregistrat pe site 
select A.codClient, A.numeClient, A.prenumeClient, B.nrFactura, B.dataFactura, B.totalFactura
from magazin.tClient as A
left join
magazin.tFactura as B on A.codClient = B.codClient
order by A.codClient

--Afisati clientii care au facut o comanda mai mare de 500 de lei 
select A.codClient, A.numeClient, A.prenumeClient, B.totalFactura
from magazin.tClient as A
inner join
magazin.tFactura as B on A.codClient = B.codClient
where B.totalFactura > 500
order by B.totalFactura

--Afisati toate categoriile si toate produsele posibile 
select A.codCategorie, A.numeCategorie, B.codProdus, B.numeProdus
from magazin.tCategorie as A
cross join
magazin.tProdus as B where A.codCategorie = B.codCategorie
order by A.codCategorie

 --afisati media facturilor in care codJudetClient = 'BV'
 select A.codJudetClient, avg(B.totalFactura) as MedieFacturiBrasov
 from magazin.tClient as A 
 inner join 
 magazin.tFactura as B on A.codClient = B.codClient
where A.codJudetClient = 'BV'
group by codJudetClient 

--Afisati toate detaliile facturii clientului C007
select A.codClient, A.numeClient, A.prenumeClient, B.nrFactura, B.dataFactura, B.totalFactura, C.idVanzare, C.codProdus, C.cantitateVanduta
from magazin.tClient as A
inner join 
magazin.tFactura as B  on A.codClient = B.codClient 
inner join
magazin.tDetaliiFactura as C on B.nrFactura = C.nrFactura
where A.codClient = 'C014'