use dbMagazinOnline

--sa se afiseze numele prenumele clientului care a facut cea mai scumpa comanda
select numeClient, prenumeClient, totalFactura from magazin.tClient as A inner join magazin.tFactura as B
on A.codClient=B.codClient
where totalFactura = (select max(totalFactura) from magazin.tFactura)

--sa se afiseze clientii care nu au facut nicio comanda pe site
select codClient, numeClient, prenumeClient from magazin.tClient 
where codClient not in (select codClient from magazin.tFactura)

--sa se afiseze clientii care au facut o comanda de cel putin 150 de lei
select codClient, numeClient, prenumeClient from magazin.tClient
where exists (select totalFactura from magazin.tFactura where totalFactura > 150)

--Sa se afiseze produsele care contin "x" in denumirea lor
select codProdus, numeProdus 
from magazin.tProdus 
where numeProdus in (select numeProdus from magazin.tProdus where numeProdus like '%x%')


 --selectati toate informatiile despre produsele care sunt distribuite de D003
select * from magazin.tProdus p
where exists (select * from magazin.tDistribuitor d where p.codDistribuitor = d.codDistribuitor and codDistribuitor = 'D003')


