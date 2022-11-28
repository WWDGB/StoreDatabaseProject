--Crearea bazei de date dbMagazinOnline
create database dbMagazinOnline

--Activarea bazei de date dbMagazinOnline
use dbMagazinOnline

--Crearea schemei magazin
create schema magazin

--Crearea tabelului tClient in interiorul schemei magazin

create table magazin.tClient
(
	codClient char(10) not null primary key,
	numeClient varchar(60) not null,
	prenumeClient varchar(60) not null,
	telefonClient char(15) not null, 
	emailClient varchar(60), 
	codJudetClient char(2) not null, 
	localitateClient varchar(60) not null, 
	stradaClient varchar(60) not null, 
	numarAdresaClient char(5)
)

--Crearea tabelului tFactura in interiorul schemei magazin

create table magazin.tFactura
(
	nrFactura char(10) not null primary key,
	dataFactura date,
	codClient char (10) not null constraint fk_Client references magazin.tClient(codClient),
	totalFactura decimal, 
	discountFactura int
)

--Crearea tabelului tDistribuitor in interiorul schemei magazin

create table magazin.tDistribuitor
(
	codDistribuitor char(10) not null primary key,
	numeDistribuitor varchar(60) not null
)

--Crearea tabelului tCategorie in interiorul schemei magazin

create table magazin.tCategorie
(
	codCategorie char(10) not null primary key,
	numeCategorie varchar(60) not null, 
	descriereCategorie varchar(500)
)

--Crearea tabelului tProdus in interiorul schemei magazin

create table magazin.tProdus
(
	codProdus char(10) not null primary key,
	numeProdus varchar(60) not null, 
	descriereProdus varchar(500), 
	pretProdus decimal, 
	stockProdus int,
	codDistribuitor char(10) not null constraint fk_Distribuitor references magazin.tDistribuitor(codDistribuitor),
	codCategorie char(10) not null constraint fk_Categorie references magazin.tCategorie(codCategorie)
)

--Crearea tabelului magazin.tDetaliiFactura

create table magazin.tDetaliiFactura
(
	idVanzare char(10), 
	nrFactura char(10) not null constraint fk_Factura references magazin.tFactura(nrFactura),
	codProdus char(10) not null constraint fk_ProdusDetaliiFactura references magazin.tProdus(codProdus), 
	cantitateVanduta int
)

--Eliminati coloana Localitate din tabelul tClienti
alter table magazin.tClient
drop column Localitate

--Adaugati tabelului tProdus coloana OutOfStock + constrangera check('DA', 'NU')
alter table magazin.tProdus
add OutOfStock varchar(10)

alter table magazin.tProdus
add constraint ck_OutOfStock check (OutOfStock in ('DA','NU')

--Sa se modifice tipul coloanei totalFactura din decimal in float, afltat in magazin.tFactura
alter table magazin.tFactura
alter column totalFactura float 

--Utilizand procedura stocata de sistem sp_rename sa se redenumeasca coloana 'emailClient' din magazin.tClienti in 'adresaEmailClient'
execute sp_rename 'magazin.tClient.emailClient', 'adresaEmailClient', 'column'

--Adaugati constrangerea not null + constrangerea primary key in coloana idVanzare din tabelul magazin.tDetaliiFactura
alter table magazin.tDetaliiFactura
alter column idVanzare char(10) not null

alter table magazin.tDetaliiFactura
add constraint pk_idVanzare primary key (idVanzare)



