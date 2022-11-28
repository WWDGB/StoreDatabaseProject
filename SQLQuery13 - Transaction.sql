create procedure sp_VanzareProdus
@codProdus char(10),
@cantitateVanduta int 
as
begin
	--Verificam stock-ul valabil pentru produsele pe care vrem sa le vindem
	declare @stockValabil int
	select @stockValabil = stockProdus from magazin.tProdus where codProdus = @codProdus

	--Daca stock-ul nu este suficient
	if(@stockValabil < @cantitateVanduta)
		begin 
			Raiserror('Stock insuficient',16,1)
		end
	else --Daca stock-ul este suficient
		begin
			begin tran 
				--Reducem stock-ul 
				update magazin.tProdus set stockProdus = (stockProdus - @cantitateVanduta)
				where codProdus = @codProdus

				declare @maxIdVanzare char(10)
				select @maxIdVanzare = case when max(idVanzare)  is null
										then 0
										else max(idVanzare) end
										from magazin.tDetaliiFactura

				set @maxIdVanzare = @maxIdVanzare + 1
				insert into magazin.tDetaliiFactura values (@maxIdVanzare, @codProdus, @cantitateVanduta)
				commit tran
			end
end

