use dbMagazinOnline

--Sa se elaboreze o functie Transact SQL, pentru determinarea numarului de clienti dintr-un judet prin parametrul de intrare @codJudetClient
go
create function magazin.NrClientiJudet(@codJudetClient char(2))
returns int
begin
	declare @nrClienti int
	set @nrClienti = (select count(codClient) from magazin.tClient where codJudetClient = @codJudetClient)
	return @nrClienti
end

select magazin.NrClientiJudet('AG') as NumarClientiJudet

--Sa se elaboreze o functie Transact SQL, pentru determinarea numelui clientului care are nrFactura specificat prin parametrul de intrare @nrFactura
go
alter function magazin.NumeClient(@nrFactura char(10))
returns varchar(60)
begin
	declare @numeClient varchar(60)
	set @numeClient = (select A.numeClient+' '+A.prenumeClient as NumeComplet from magazin.tClient as A inner join magazin.tFactura as B on A.codClient = B.codClient where B.nrFactura = @nrFactura)
	return @numeClient
end

select magazin.NumeClient('F003') as NumeClient

--Creati o procedura care afiseaza produsele 
create procedure sp_Produse @codProdus char(10) = '%', @numeProdus varchar(60)='%'
as
begin
	select codProdus, numeProdus from magazin.tProdus
	where codProdus like @codProdus and numeProdus like @numeProdus
end

execute sp_Produse 'P023'

--Creati o procedura care actualizeaza pretul  unui produs dat ca parametru
create procedure sp_ActualizarePret
@codProdus char(10), @pretProdus decimal(18,2)
as 
begin
	begin try
		if exists(select codProdus, pretProdus from magazin.tProdus where codProdus = @codProdus and pretProdus = @pretProdus)
			update magazin.tProdus set pretProdus = @pretProdus where codProdus = @codProdus
		else 
			insert into magazin.tProdus (codProdus, pretProdus) values (@codProdus, @pretProdus)
	return 1;
	end try
	begin catch 
		print ('Date eronate');
		return 0;
	end catch
end

select codProdus, pretProdus from magazin.tProdus
execute sp_ActualizarePret 'P005', 1823.32

--Elaborati o procedura pentru calculul numarului de produse si pentru calculul pretului mediu al produselor dintr-o categorie
create procedure sp_InfoProducts @nrProdus int out, @pretMediu numeric(7,2) out, @categorie char(10)
as 
begin
select @nrProdus = count(codProdus), @pretMediu = avg(pretProdus) from magazin.tProdus where codCategorie = @categorie
end

declare @nrP int, @Pm numeric(10,2)
execute sp_InfoProducts @nrP out, @Pm out, 'Cat003'
select @nrP as [Numar Produse], @nrP as [Pret Mediu]