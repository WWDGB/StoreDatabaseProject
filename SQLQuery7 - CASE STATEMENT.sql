use dbMagazinOnline

--Sa se determine facturile care au totalul mai mare de 450 de lei. In acest caz, factura va fi luata in considerare. In caz contrar, nu va fi.
select nrFactura, totalFactura,
case
	when totalFactura > 450 then 'Luata in considerare'
	else 'Nu este luata in considerare'
END
FROM magazin.tFactura
order by totalFactura desc

--Selectati clientii care sunt din orasele mari ale tarii
select numeClient, prenumeClient, codJudetClient,
case
	when codJudetClient = 'B' then 'Client din unul din orasele mari ale tarii'
	when codJudetClient = 'CJ' then 'Client din unul din orasele mari ale tarii'
	when codJudetClient = 'TM' then 'Client din unul din orasele mari ale tarii'
	when codJudetClient = 'BV' then 'Client din unul din orasele mari ale tarii'
	when codJudetClient = 'CT' then 'Client din unul din orasele mari ale tarii'
	else 'Client care nu este din unul dintre orasele mari ale tarii'
END
from magazin.tClient
order by codJudetClient

