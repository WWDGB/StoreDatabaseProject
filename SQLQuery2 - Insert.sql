use dbMagazinOnline

--Inserarea datelor in tabelul magazin.tClient
insert into magazin.tClient values ('C001', 'David', 'Bogdan', '+40743030002', 'davidgeorgebogdan@gmail.com', 'AG', 'Pitesti', 'Trivale', '90')
insert into magazin.tClient values ('C002', 'Popescu', 'Ion', '+40745254638', 'popescuion@gmail.com', 'AG', 'Pitesti', 'Lalelelor', '25')
insert into magazin.tClient values ('C003', 'Ionescu', 'Alina', '+40746564334', 'ionescualina@gmail.com', 'DB', 'Targoviste', 'Bulevardul Unirii', '45')
insert into magazin.tClient values ('C004', 'Mihalache', 'Ionela', '+40746535665', 'mihalacheionela@gmail.com', 'CJ', 'Cluj', 'Ialomita', '52')
insert into magazin.tClient values ('C005', 'Popa', 'Andrei', '+40748756394', 'popaandrei@gmail.com', 'DJ', 'Craiova', '3 Februarie', 'A78')
insert into magazin.tClient values ('C006', 'Nitu', 'Adrian', '+40741234535', 'nituadrian@gmail.com', 'BV', 'Brasov', 'Albinelor', '23')
insert into magazin.tClient values ('C007', 'Muresan', 'Ioana', '+40789467364', 'muresanioana@gmail.com', 'SB', 'Sibiu', 'Aleea Buia', NULL)
insert into magazin.tClient values ('C008', 'Nistor', 'Mihai', '+40735685673', NULL , 'AG', 'Pitesti', 'Strada Basarabia', '67')
insert into magazin.tClient values ('C010', 'Popescu', 'George', '+40737598142', 'popescugeorge@gmail.com', 'TM', 'Timisoara', 'Aleea Inului', '52')
insert into magazin.tClient values ('C011', 'Sava', 'Maria', '+40723465698', 'savamaria@gmail.com', 'B', 'Bucuresti', 'Dorin Pavel', 'B15')
insert into magazin.tClient values ('C012', 'Negoita', 'Stefan', '+40763845973', 'negoitastefan@gmail.com', 'IS', 'Iasi', 'Milcov', NULL)
insert into magazin.tClient values ('C013', 'Dinescu', 'Georgiana', '+40765298734', 'dinescugeorgiana@gmail.com', 'CJ', 'Cluj', 'Cernei', '75')
insert into magazin.tClient values ('C014', 'Iancu', 'Marian', '+40756234549', NULL, 'CT', 'Constanta', 'Aleea Afinei', NULL)
insert into magazin.tClient values ('C015', 'Toma', 'Stefan', '+40723464356', 'tomastefan@gmail.com', 'AG', 'Pitesti', 'Dragos Voda', '23')
insert into magazin.tClient values ('C016', 'Predescu', 'Paul', '+40743543239', 'predescupaul@gmail.com', 'AG', 'Pitesti', 'Eremia Grigorescu', '26')
insert into magazin.tClient values ('C017', 'Ghita', 'Andrei', '+40748735458', 'ghitaandrei@gmail.com', 'CJ', 'Cluj', 'Izvorului', '97')
insert into magazin.tClient values ('C018', 'Mocanu', 'Alexandra', '+40743986274', 'mocanualexandra@gmail.com', 'CT', 'Constanta', 'Frunzelor', NULL)
insert into magazin.tClient values ('C019', 'Popescu', 'Teodora', '+40743235487', NULL, 'TM', 'Timisoara', 'Iris', '16')
insert into magazin.tClient values ('C020', 'Albu', 'Laurentiu', '+40735567928', 'albulaurentiu@gmail.com', 'AG', 'Pitesti', 'Gheorghe Sincai', NULL)
insert into magazin.tClient values ('C021', 'Marin', 'Gabriel', '+40747987264', 'maringabriel@gmail.com', 'SB', 'Sibiu', 'Cucului', '92')
insert into magazin.tClient values ('C022', 'Stoica', 'Vlad', '+40745345328', 'stoicavlad@gmail.com', 'B', 'Bucuresti', 'Dr. I. Cantacuzino', '48')
insert into magazin.tClient values ('C023', 'Moisescu', 'Larisa', '+40752790912', NULL, 'BV', 'Brasov', 'Alexandru cel Bun', NULL)
insert into magazin.tClient values ('C024', 'Manole', 'Alexandru', '+40745247945', 'manolealexandru@gmail.com', 'AG', 'Pitesti', 'Pandele', '13')
insert into magazin.tClient values ('C025', 'Tomescu', 'Catalina', '+40734982374', 'tomescucatalina@gmail.com', 'SB', 'Sibiu', 'Ioan Ratiu', '52')
insert into magazin.tClient values ('C026', 'Dobre', 'Ioana', '+40738728931', 'dobreioana@gmail.com', 'CT', 'Constanta', 'Baladei', '27')
insert into magazin.tClient values ('C027', 'Constantinescu', 'Ionel', '+40782563984', 'constantinescuionel@gmail.com', 'TM', 'Timisoara', 'Gheorghe Ranetti', '50')
insert into magazin.tClient values ('C028', 'Mihalache', 'Mirela', '+40734597185', 'mihalachemirela@gmail.com', 'DJ', 'Craiova', 'Calea Dunarii', '25')
insert into magazin.tClient values ('C029', 'Iancu', 'Andrei', '+40789673895', 'iancuandrei@gmail.com', 'B', 'Bucuresti', 'Carol Davila', '61')
insert into magazin.tClient values ('C030', 'Vladimirescu', 'Tudor', '+40789263918', 'vladimirescutudor@gmail.com', 'AG', 'Pitesti', 'George Sion', '27')
insert into magazin.tClient values ('C031', 'Tabacu', 'Vlad', '+40749784783', NULL, 'CJ', 'Cluj', 'Dem Radulescu', '62')

--Inserarea datelor in tabelul magazin.tFactura

insert into magazin.tFactura values ('F001', '2022-01-02', 'C025', 200.98, NULL)
insert into magazin.tFactura values ('F002', '2022-01-04', 'C018', 873.29, NULL)
insert into magazin.tFactura values ('F003', '2022-01-05', 'C023', 765.18, NULL)
insert into magazin.tFactura values ('F004', '2022-01-06', 'C004', 678.72, NULL)
insert into magazin.tFactura values ('F005', '2022-01-10', 'C023', 932.10, NULL)
insert into magazin.tFactura values ('F006', '2022-01-21', 'C013', 200.81, NULL)
insert into magazin.tFactura values ('F007', '2022-02-10', 'C026', 98.29, NULL)
insert into magazin.tFactura values ('F008', '2022-02-15', 'C004', 735.29, NULL)
insert into magazin.tFactura values ('F009', '2022-02-16', 'C026', 1418.92, 10)
insert into magazin.tFactura values ('F010', '2022-02-19', 'C027', 1169.37, 10)
insert into magazin.tFactura values ('F011', '2022-02-25', 'C012', 336.81, NULL)
insert into magazin.tFactura values ('F012', '2022-02-27', 'C005', 87.20, NULL)
insert into magazin.tFactura values ('F013', '2022-03-04', 'C003', 289.58, NULL)
insert into magazin.tFactura values ('F014', '2022-03-05', 'C015', 4466.27, 20)
insert into magazin.tFactura values ('F015', '2022-03-10', 'C002', 574.10, NULL)
insert into magazin.tFactura values ('F016', '2022-03-07', 'C017', 180.20, NULL)
insert into magazin.tFactura values ('F017', '2022-03-09', 'C007', 989.64, NULL)
insert into magazin.tFactura values ('F018', '2022-03-31', 'C014', 401.19, NULL)
insert into magazin.tFactura values ('F019', '2022-04-01', 'C027', 55.82, NULL)
insert into magazin.tFactura values ('F020', '2022-04-02', 'C029', 689.23, NULL)
insert into magazin.tFactura values ('F021', '2022-04-03', 'C017', 354.15, NULL)
insert into magazin.tFactura values ('F022', '2022-04-06', 'C023', 160.92, NULL)
insert into magazin.tFactura values ('F023', '2022-04-08', 'C020', 131.64, NULL)
insert into magazin.tFactura values ('F024', '2022-04-09', 'C028', 434.32, NULL)
insert into magazin.tFactura values ('F025', '2022-04-10', 'C014', 12000, 15)
insert into magazin.tFactura values ('F026', '2022-04-11', 'C001', 281, NULL)
insert into magazin.tFactura values ('F027', '2022-04-11', 'C024', 1219, 15)
insert into magazin.tFactura values ('F028', '2022-04-20', 'C030', 803, NULL)
insert into magazin.tFactura values ('F029', '2022-04-20', 'C002', 613, NULL)
insert into magazin.tFactura values ('F030', '2022-04-20', 'C019', 2943, 15)


--Inserarea datelor in tabelul magazin.tCategorie

insert into magazin.tCategorie values ('Cat001', 'Laptop', NULL)
insert into magazin.tCategorie values ('Cat002', 'Componente', 'Placi video, Procesoare, Placi de baza, SSD-uri, Surse')
insert into magazin.tCategorie values ('Cat003', 'Periferice', 'Mouse-uri, Tastaturi, Boxe, Casti, Camere web')
insert into magazin.tCategorie values ('Cat004', 'Software', NULL)
insert into magazin.tCategorie values ('Cat005', 'Retelistica', 'Routere, Nas-uri')


--Inserara datelor in tabelul magazin.tDistribuitor

insert into magazin.tDistribuitor 
values ('D001', 'DGB SRL'), ('D002', 'QPX Logistics SRL'), ('D003', 'ABC Shipping SRL'), ('D004', 'Shot Tech SRL'), ('D005', 'ChipTech Company SRL')

--Inserarea datelor in tabelul magazin.tProdus

insert into magazin.tProdus  values ('P001', 'Apple MacBook Pro 14', NULL, 12000.89, 75, 'D001', 'Cat001' )
insert into magazin.tProdus  values ('P002', 'ASUS TUF A15', 'AMD Ryzen™ 5 4600H, 15.6", Full HD', 5000.45 , 80, 'D001', 'Cat001') 
insert into magazin.tProdus  values ('P003', 'ASUS X515EA', 'Intel® Core™ i5-1135G7', 2434.84, 20, 'D001','Cat001') 
insert into magazin.tProdus  values ('P004', 'Gigabyte GeForce® RTX™ 3080', '10GB GDDR6X, 320-bit', 6323.89 , 5, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P005', 'AMD Ryzen™ 7 5800X', '36MB, 4.7GHz, Socket AM4', 1736.86, 45, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P006', 'Asus ROG STRIX B550-F GAMING', 'Socket AM4', 1164.32, 28, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P007', 'ASUS PRIME B550M-K', 'Socket AM4', 602.15, 100, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P008', 'Asus ROG STRIX B550-A GAMING', 'Socket AM4', 1021.62, 64, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P010', 'Kingston A400', 'Solid State Drive (SSD) 480GB, 2.5"', 250, 190, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P011', 'Samsung 970 EVO Plus', 'Solid state drive (SSD) 1TB, NVMe, M.2.', 591.99, 72, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P012', 'ADATA SU630', 'Solid-State Drive (SSD) 240GB, 2.5", SATA III', 142.72, 150, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P013', 'Seasonic 750W', 'OCUS GX Series, 80 PLUS Gold, Full Modulara, ATX v2.4', 605.10, 26, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P014', 'Woden 750', '750W Real Power, PFC Activ, 80 Plus Gold', 318.99, 91, 'D002', 'Cat002') 
insert into magazin.tProdus  values ('P015', 'Razer DeathAdder', 'Mouse', 90, 82, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P016', 'Logitech G102 Lightsync', '8000 dpi, RGB, Negru', 109.99, 14, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P017', 'ASUS WT425', '1600 dpi, USB, Alb', 48.99, 3, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P018', 'Logitech Pebble M350', 'Mouse wireless', 94.99, 23, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P019', 'Redragon Surara', NULL, 169.99, 42, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P020', 'HyperX Alloy Origins', 'Tastatura gaming mecanica', 264.99, 62, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P021', 'Logitech Multimedia Speakers', 'Z333, 40W RMS, Negru', 299.99, 38, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P022', 'Edifier 2.0 256W S3000PRO', 'Boxe bluetooth, USB, telecomanda, brown', 2184.99, 2, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P023', 'Edifier 2.0 66W R1700BT', 'Boxe bluetooth, Black', 589.99, 12, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P024', 'HyperX Cloud II Pro', 'Casti Gun Metal', 217.99, 1, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P025', 'Razer Kraken 2019', 'Casti multiplatforma, Negru', 199.99, 26, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P026', 'Razer Hammerhead True Wireless', 'Casti mobile gaming  Bluetooth 5.0, Negru', 264.99, 19, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P027', 'Logitech G PRO X', 'Casti functie BLUE VO!CE, Negru', 498.99, 23, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P028', 'Logitech HD Pro C920', 'Camera web, Full HD, Negru', 369.29, 9, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P029', 'BabyToy™ CX-W10 Pro', 'Webcam, Dual Microfon, Auto-Focus', 159.62, 2, 'D003', 'Cat003') 
insert into magazin.tProdus  values ('P030', 'Windows 11 Pro', NULL, 80, 190, 'D004', 'Cat004') 
insert into magazin.tProdus  values ('P031', 'Microsoft Office 2019', NULL, 49.50, 254, 'D004', 'Cat004') 
insert into magazin.tProdus  values ('P032', 'Bitdefender Internet Security 2021', NULL, 79.99, 300, 'D004', 'Cat004') 
insert into magazin.tProdus  values ('P033', 'TP-Link Archer C80', 'Router wireless Full Gigabit, Dual Band, MU-MIMO, Wi-Fi Wave2', 169.99, 82, 'D005', 'Cat005') 
insert into magazin.tProdus  values ('P034', 'TP-Link Archer AX20', 'Dual-Band Gigabit AX1800, 1.8 Gbps, cu OFDMA', 319.99, 15, 'D005', 'Cat005') 
insert into magazin.tProdus  values ('P035', 'Synology DS920+', NULL, 3271, 1, 'D005', 'Cat005') 
insert into magazin.tProdus  values ('P036', 'QNAP TS-251D-2G', NULL, 1499.99, 7, 'D005', 'Cat005') 

--Inserarea datelor in tabelul magazin.tDetaliiFactura
insert into magazin.tDetaliiFactura  values ( 'DF001', 'F001', 'P015', 2)
insert into magazin.tDetaliiFactura  values ( 'DF002', 'F002', 'P025', 4)
insert into magazin.tDetaliiFactura  values ( 'DF003', 'F003', 'P007', 1)
insert into magazin.tDetaliiFactura  values ( 'DF004', 'F004', 'P026', 2)
insert into magazin.tDetaliiFactura  values ( 'DF005', 'F005', 'P028', 3)
insert into magazin.tDetaliiFactura  values ( 'DF006', 'F006', 'P029', 1)
insert into magazin.tDetaliiFactura  values ( 'DF007', 'F007', 'P015', 1)
insert into magazin.tDetaliiFactura  values ( 'DF008', 'F008', 'P013', 1)
insert into magazin.tDetaliiFactura  values ( 'DF009', 'F009', 'P036', 1)
insert into magazin.tDetaliiFactura  values ( 'DF010', 'F010', 'P007', 2)
insert into magazin.tDetaliiFactura  values ( 'DF011', 'F011', 'P034', 1)
insert into magazin.tDetaliiFactura  values ( 'DF012', 'F012', 'P030', 1)
insert into magazin.tDetaliiFactura  values ( 'DF013', 'F013', 'P010', 1)
insert into magazin.tDetaliiFactura  values ( 'DF014', 'F014', 'P003', 2)
insert into magazin.tDetaliiFactura  values ( 'DF015', 'F015', 'P020', 2)
insert into magazin.tDetaliiFactura  values ( 'DF016', 'F016', 'P033', 1)
insert into magazin.tDetaliiFactura  values ( 'DF017', 'F017', 'P028', 2)
insert into magazin.tDetaliiFactura  values ( 'DF018', 'F018', 'P028', 1)
insert into magazin.tDetaliiFactura  values ( 'DF019', 'F019', 'P031', 1)
insert into magazin.tDetaliiFactura  values ( 'DF020', 'F020', 'P007', 1)
insert into magazin.tDetaliiFactura  values ( 'DF021', 'F021', 'P012', 2)
insert into magazin.tDetaliiFactura  values ( 'DF022', 'F022', 'P029', 1)
insert into magazin.tDetaliiFactura  values ( 'DF023', 'F023', 'P012', 1)
insert into magazin.tDetaliiFactura  values ( 'DF024', 'F024', 'P014', 1)
insert into magazin.tDetaliiFactura  values ( 'DF025', 'F025', 'P001', 1)
insert into magazin.tDetaliiFactura  values ( 'DF026', 'F026', 'P034', 1)
insert into magazin.tDetaliiFactura  values ( 'DF027', 'F027', 'P005', 1)
insert into magazin.tDetaliiFactura  values ( 'DF028', 'F028', 'P027', 2)
insert into magazin.tDetaliiFactura  values ( 'DF029', 'F029', 'P007', 1)
insert into magazin.tDetaliiFactura  values ( 'DF030', 'F030', 'P003', 1)

select * from magazin.tCategorie
select * from magazin.tClient
select * from magazin.tDistribuitor
select * from magazin.tFactura
select * from magazin.tDetaliiFactura 
select * from magazin.tProdus

alter table magazin.tProdus
alter column pretProdus decimal (18,2) 

delete from magazin.tProdus

alter table magazin.tDetaliiFactura
drop constraint fk_ProdusDetaliiFactura

alter table magazin.tDetaliiFactura
add constraint fk_ProdusDetaliiFactura
foreign key (codProdus) references magazin.tProdus(codProdus)