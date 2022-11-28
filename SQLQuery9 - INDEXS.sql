use dbMagazinOnline
--creati index cu numele complet pentru fiecare client
create index ix_NumeComplet on magazin.tClient(numeClient, prenumeClient)

--creati un index denumit TotalDataFactura care sa cuprinda nrFactura, dataFactura, totalFactura
create index ix_TotalDataFactura on magazin.tFactura(nrFactura, dataFactura, totalFactura)

--creati un index denumit ix_DetaliiFactura care sa cuprinda idVanzare, nrFactura, codProdus
create index ix_DetaliiFactura on magazin.tDetaliiFactura(idVanzare, nrFactura, codProdus)

--selectati toate datele din tabelul magazin.tClient folosind indexul ix_NumeComplet
select * from magazin.tClient with (index=ix_NumeComplet)

--selectati toti clientii care apar pe cel putin o factura, folosind indexul ix_NumeComplet
select * from magazin.tClient as A with (index=ix_NumeComplet)
inner join
magazin.tFactura as B on A.codClient=B.codClient

--afisati facturile care sunt in valoare de peste 1200 lei, folosind indexul ix_TotaldataFactura
select * from magazin.tFactura with (index=ix_TotalDataFactura)
where totalFactura > 1200

