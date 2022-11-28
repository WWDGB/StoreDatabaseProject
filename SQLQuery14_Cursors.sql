use dbMagazinOnline

--Sa se implementeze un cursor care afiseaza toti clientii din Arges
declare @codJudet char(2) = 'AG', @i int = 1
declare cursorClientiArges cursor scroll
for select codClient, numeClient, PrenumeClient, emailClient, localitateClient from magazin.tClient where codJudetClient = @codJudet
open cursorClientiArges
declare @codClient char(10), @numeClient varchar(60), @prenumeClient varchar(60), @emailClient varchar(60), @localitateClient varchar(60)
while @@FETCH_STATUS = 0
begin
print @codClient+' '+@numeClient+' '+@prenumeClient+' '+@emailClient+' '+@localitateClient
set @i+=1
fetch absolute @i from cursorClientiArges into @codClient, @numeClient, @prenumeClient, @emailClient, @localitateClient
end 
close cursorClientiArges
deallocate cursorClientiArges

--Sa se implementeze un cursor care sa afiseze toti clientii cu toate facturile lor 
declare @codClient char(10), @nrFactura char(10)
declare cursorClientiFacturi cursor for 
select A.codClient, B.nrFactura from magazin.tClient as A inner join magazin.tFactura as B on A.codClient = B.codClient
open cursorClientiFacturi
fetch next from cursorClientiFacturi into @codClient, @nrFactura
while @@FETCH_STATUS = 0
begin 
print @codClient+' '+@nrFactura+' '
fetch next from cursorClientiFacturi into @codClient, @nrFactura
end
close cursorClientiFacturi
deallocate cursorClientiFacturi