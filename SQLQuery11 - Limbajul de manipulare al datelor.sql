use dbMagazinOnline

--stergeti datele clientului care are codul C006

delete from magazin.tClient
where codClient = 'C006'

--actualizati clientului C005 codul judetului in BV

update magazin.tClient
set codJudetClient = 'BV'
where codClient = 'C005'



