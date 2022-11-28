use dbMagazinOnline

--Sa se implementeze un trigger care actualizeaza stock-ul magazinului.

create trigger magazin.tg_ActualizareStockProduse
on magazin.tProdus
for insert, update, delete
as 
begin
set nocount on 
begin try 
declare @codProdus char(10)
if exists (select * from inserted)
declare crs cursor for select codProdus from inserted
else
declare crs cursor for select codProdus from deleted
open crs
fetch next from crs into @codProdus
declare @numeProdus varchar(60), @descriereProdus varchar(500), @pretProdus decimal(18,2), @stockProdus int, @codDistribuitor char(10), @codCategorie char(10)
while @@FETCH_STATUS = 0
begin
set @numeProdus = (select numeProdus from magazin.tProdus where codProdus = @codProdus)
set @descriereProdus = (select descriereProdus from magazin.tProdus where codProdus = @codProdus)
set @pretProdus = (select pretProdus from magazin.tProdus where codProdus = @codProdus)
set @stockProdus = (select stockProdus from magazin.tProdus where codProdus = @codProdus)
set @codDistribuitor = (select codDistribuitor from magazin.tProdus where codProdus = @codProdus)
set @codCategorie = (select codCategorie from magazin.tProdus where codProdus = @codProdus)
update magazin.tProdus
set numeProdus = @numeProdus where codProdus=@codProdus
update magazin.tProdus
set descriereProdus = @descriereProdus where codProdus =@codProdus
update magazin.tProdus
set pretProdus = @pretProdus where codProdus= @codProdus
update magazin.tProdus
set stockProdus = @stockProdus where codProdus = @codProdus
update magazin.tProdus
set codDistribuitor = @codDistribuitor where codProdus = @codProdus
update magazin.tProdus
set codCategorie = @codCategorie where codProdus = @codProdus
fetch next from crs into @codProdus
end
	close crs
	deallocate crs
	end try
	begin catch 
	print error_message()
	close crs
	deallocate crs
	end catch
end


insert into magazin.tProdus (codProdus, numeProdus, descriereProdus, pretProdus, stockProdus, codDistribuitor, codCategorie)
values ('P038', 'Laptop','Acesta este un test pentru trigger-ul ActualizareStockProduse', 1823.32, 30, 'D001', 'Cat001')

select * from magazin.tProdus

delete from magazin.tProdus
where codProdus = 'P029'

--Sa se implementeze un trigger care tine evidenta clientilor inregistrati pe site
--Acestia vor fi inregistrati 
create table magazin.tIstoric_Clienti
(
	id int not null identity (1,1) primary key,
	codClient char(10) not null,
	numeClient varchar(60) not null,
	prenumeClient varchar(60) not null,
	telefonClient char(15) not null, 
	emailClient varchar(60), 
	codJudetClient char(2) not null, 
	localitateClient varchar(60) not null, 
	stradaClient varchar(60) not null, 
	numarAdresaClient char(5),
	statusClient char(10) not null,
	check (statusClient = 'Inserat' or statusClient = 'Sters')
)
alter column idVanzare char(10) not null  constraint pk_idVanzare primary key

create trigger magazin.tg_EvidentaClienti
on magazin.tClient
after insert, delete 
as
begin 
	set nocount on;
	insert into magazin.tIstoric_Clienti(codClient, numeClient, prenumeClient, telefonClient, emailClient, codJudetClient, localitateClient, stradaClient, numarAdresaClient, statusClient)
	select A.codClient, A.numeClient, A.prenumeClient, A.telefonClient, A.emailClient, A.codJudetClient, A.localitateClient, A.stradaClient, A.numarAdresaClient, 'Inserat' from inserted as A
	union 
	select B.codClient, B.numeClient, B.prenumeClient, B.telefonClient, B.emailClient, B.codJudetClient, B.localitateClient, B.stradaClient, B.numarAdresaClient, 'Sters' from deleted as B
end

insert into magazin.tClient
values ('C032', 'Test', 'Test','Test', 'Test', 'T', 'Test', 'Test', 32)

delete from magazin.tClient
where codClient = 'C008'


select * from magazin.tClient
select * from magazin.tIstoric_Clienti