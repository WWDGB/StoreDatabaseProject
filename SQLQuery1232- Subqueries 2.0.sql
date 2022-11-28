--Subinterogari
use dbMagazinOnline
 
 --selectati numele si prenumele clientilor care au facut o comanda

 select numeClient, prenumeClient
 from magazin.tClient c
 where c.codClient in (select codClient from magazin.tFactura)

 --selectati toate informatiile despre produsele care sunt distribuite de D003

select * from magazin.tProdus p
where exists (select * from magazin.tDistribuitor d where p.codDistribuitor = d.codDistribuitor and codDistribuitor = 'D003')

