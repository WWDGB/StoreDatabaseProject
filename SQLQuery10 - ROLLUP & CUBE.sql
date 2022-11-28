use dbMagazinOnline

select codProdus, numeProdus, 
	sum(pretProdus) as [Total preturi],
	avg(pretProdus) as [Pret Mediu],
	min(pretProdus) as [Pret Minim],
	max(pretProdus) as [Pret Maxim]
from magazin.tProdus
group by codProdus, numeProdus with rollup

select codProdus, numeProdus, 
	sum(pretProdus) as [Total preturi],
	avg(pretProdus) as [Pret Mediu],
	min(pretProdus) as [Pret Minim],
	max(pretProdus) as [Pret Maxim]
from magazin.tProdus
group by codProdus, numeProdus with cube