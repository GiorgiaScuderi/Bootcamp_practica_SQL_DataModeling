-- Creamos el esquema
create schema alquiler_car authorization qdnlsaco;

-- Creamos la tabla empresa_seguro

create table alquiler_car.empresa_seguro(
id_aseguradora varchar(15) not null, -- PK
nr_poliza varchar(10) not null, 
Nombre varchar(100) not null,
Description varchar(200) null,
constraint aseguradora_PK primary key (id_aseguradora)
);

-- Cargamos los datos en la tabla empresa_seguro
insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASOO1' , 03001, 'Mapfre', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASOO2' , 03004, 'Axa', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASOO3' , 03002, 'Mapfre', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASOO4' , 03003, 'Axa', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASOO5' , 03005, 'Axa', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASOO6' , 03006, 'Mapfre', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASOO7' , 03007, 'MMT', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASOO8' , 03008, 'Axa', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASOO9' , 03009, 'Mapfre', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASO10' , 03010, 'MMT', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASO11' , 03011, 'Axa', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASO12' , 03012, 'Mapre', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASO13' , 03013, 'MMT', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASO14' , 03014, 'Axa', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASO15' , 03015, 'Mapfre', ' ')

insert into alquiler_car.empresa_seguro
(id_aseguradora, nr_poliza, Nombre, Description)
values ('ASO16' , 03016, 'MMT', ' ')


-- select * from alquiler_car.empresa_seguro para verificar la carga de datos


-- Creamos la tabla grupo_marca

create table alquiler_car.grupo_marca(
id_grupo_marca varchar(15) not null, -- PK
Nombre varchar(100) not null,
constraint marcas_PK primary key (id_grupo_marca)
);

alter table alquiler_car.grupo_marca
add column Grupo varchar(40) null;

alter table alquiler_car.grupo_marca
add column Description varchar(200) null; 


--- Cargamos los datos en la tabla grupo_marca

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M01', 'Audi', ' ')


insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M01', 'Audi', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M02', 'Audi', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M03', 'Volkswagen', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M04', 'Volkswagen', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M05', 'Toyota', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M06', 'Toyota', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M07', 'Citroen', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M08', 'Citroen', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M09', 'Citroen', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M10', 'Renault', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M11', 'Renault', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M12', 'Renault', ' ')

insert into alquiler_car.grupo_marca
(id_grupo_marca, Nombre, Description)
values ('M13', 'Volkswagen', ' ')


-- update datos en la columna grupo marca 

select *
from alquiler_car.grupo_marca
where id_grupo_marca = 'M01' and Nombre = 'Audi'

update alquiler_car.grupo_marca
set Grupo = 'Volkswagen Group'
where id_grupo_marca = 'M01' and Nombre = 'Audi'

select id_grupo_marca
from alquiler_car.grupo_marca
where Nombre = 'Audi' 

update alquiler_car.grupo_marca
set Grupo = 'Volkswagen Group'
where Nombre = 'Audi' 

select id_grupo_marca
from alquiler_car.grupo_marca
where Nombre = 'Volkswagen' 

update alquiler_car.grupo_marca
set Grupo = 'Volkswagen Group'
where Nombre = 'Volkswagen' 

select id_grupo_marca
from alquiler_car.grupo_marca
where Nombre = 'Toyota' 

update alquiler_car.grupo_marca
set Grupo = 'Toyota Group'
where Nombre = 'Toyota' 

select id_grupo_marca
from alquiler_car.grupo_marca
where Nombre = 'Citroen' 

update alquiler_car.grupo_marca
set Grupo = 'Stellantis N.V.'
where Nombre = 'Citroen' 

select id_grupo_marca
from alquiler_car.grupo_marca
where Nombre = 'Renault' 

update alquiler_car.grupo_marca
set Grupo = 'Renault Group'
where Nombre = 'Renault' 



-- select * from alquiler_car.grupo_marca para verificar la carga de datos


-- Creamos la tabla revisiones

create table alquiler_car.revisiones(
id_revisiones varchar(15) not null, -- PK
km_revisiones varchar(10) not null, 
Description varchar(200) null,
constraint revisiones_PK primary key (id_revisiones)
);

-- Cargamos los datos en la tabla revisiones


insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV01', 18.320, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV02', 16.310, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV03', 21.480, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV04', 100000, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV05', 200000, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV06', 150000, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV07', 109034, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV08', 180345, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV09', 80.520, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV10', 91.420, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV11', 110.320, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV12', 75.620, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV13', 52000, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV14', 45.320, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV15', 75.520, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV16', 158.320, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV17', 234.320, ' ')

insert into alquiler_car.revisiones
(id_revisiones, km_revisiones, Description)
values ('REV18', 180.620, ' ')

-- select * from alquiler_car.revisiones para verificar la carga de datos


-- Creamos la tabla coche

create table alquiler_car.coche(
id_coche varchar(15) not null, -- PK
model varchar(40) not null, 
color varchar(15) not null,
matricula varchar(15) not null,
fecha_compra date not null default '4000-01-01',
tot_km varchar(15) not null,
id_grupo_marca varchar(15) not null, -- FK -> grupo_marca -> id_grupo_marca
id_aseguradora varchar(15) not null, -- FK -> empresa_seguro -> id_aseguradora
id_revisiones varchar(15) not null -- FK  -> revisiones -> id_revisiones
);

alter table alquiler_car.coche
add constraint car_PK primary key (id_coche);

alter table alquiler_car.coche
add constraint car_id_grupo_marcaFK foreign key (id_grupo_marca) 
references alquiler_car.grupo_marca(id_grupo_marca);

alter table alquiler_car.coche
add constraint car_id_empresa_seguroFK foreign key (id_aseguradora) 
references alquiler_car.empresa_seguro(id_aseguradora);


alter table alquiler_car.coche
add constraint car_id_revisionesFK foreign key (id_revisiones) 
references alquiler_car.revisiones(id_revisiones);


--- Cargamos los datos en la tabla coche

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR01', 'A4', 'blanco', 01231, '2020-06-01', 210340, 'M01', 'ASOO1', 'REV01')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR02', 'Q3', 'Blue', 01232, '2020-03-08', 450540, 'M01', 'ASOO2', 'REV02')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR03', 'Golf', 'negro', 01233, '2019-08-02', 389212, 'M03', 'ASOO4', 'REV04')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR04', 'Touareg', 'Blue', 01234, '2021-01-10', 135000, 'M03', 'ASOO5', 'REV06')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR05', 'Polo', 'blanco', 01235, '2020-09-21', 186379, 'M03', 'ASOO6', 'REV07')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR06', 'CHR', 'gris', 01236, '2021-05-31', 186379, 'M06', 'ASOO7', 'REV08')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR07', 'Corolla', 'negro', 01237, '2021-01-18', 83456, 'M06', 'ASOO9', 'REV09')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR08', 'C4', 'blanco', 01238, '2020-11-25', 129876, 'M08', 'ASO10', 'REV10')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR09', 'C5X', 'Blue', 01239, '2021-07-26', 96219, 'M08', 'ASO11', 'REV12')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR10', 'C3', 'rojo', 01240, '2019-01-16', 195023, 'M08', 'ASO12', 'REV13')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR11', 'Kadjar', 'negro', 01241, '2020-03-18', 65785, 'M11', 'ASO13', 'REV15')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR12', 'Megane', 'blue', 01242, '2021-06-02', 189345, 'M11', 'ASO14', 'REV16')

insert into alquiler_car.coche
(id_coche, model, color, matricula, fecha_compra, tot_km, id_grupo_marca, id_aseguradora, id_revisiones)
values ('CAR13', 'Twingo', 'rojo', 01243, '2019-05-08', 120681, 'M11', 'ASO15', 'REV17')



-- select * from alquiler_car.coche para verificar la carga de los datos 
 

-- Creamos la tabla currency 

create table alquiler_car.currency(
id_moneda varchar(15) not null, -- PK
Nombre varchar(100) not null,
Description varchar(50) null,
constraint moneda_PK primary key (id_moneda)
);


-- Cargamos los datos en la tabla currency


insert into alquiler_car.currency
(id_moneda, Nombre, Description)
values ('moneda_1', 'EURO', ' ')

insert into alquiler_car.currency
(id_moneda, Nombre, Description)
values ('moneda_2', 'DOLLAR', ' ')

--- Modificamos id_moneda con el signo de la moneda € o $

select *
from alquiler_car.currency
where id_moneda = 'moneda_1' and Nombre = 'EURO'

update alquiler_car.currency
set id_moneda = '€'
where id_moneda = 'moneda_1' and Nombre = 'EURO'

select *
from alquiler_car.currency
where id_moneda = 'moneda_2' and Nombre = 'DOLLAR'

update alquiler_car.currency
set id_moneda = '$'
where id_moneda = 'moneda_2' and Nombre = 'DOLLAR'


-- Creamos la tabla hist_seguros

create table alquiler_car.hist_seguros(
id_coche varchar(15) not null, -- PK, FK  -> coche -> id_coche
nr_poliza varchar(10) not null, -- PK, FK -> empresa_seguro -> nr_poliza
id_aseguradora varchar(15) not null, -- PK, FK  -> empresa_seguro -> id_aseguradora
fecha_seguro date not null default '4000-01-01', 
importe_seguro integer not null,
id_moneda varchar(15) not null, -- FK -> currency -> id_moneda
Description varchar(100) null
);


alter table alquiler_car.hist_seguros
add constraint hist_seguros_carPK primary key (id_coche, nr_poliza, id_aseguradora);


alter table alquiler_car.hist_seguros
add constraint hist_seg_carFK foreign key (id_coche) 
references alquiler_car.coche (id_coche);

 
alter table alquiler_car.hist_seguros
add constraint hist_seg_monedaFK foreign key (id_moneda) 
references alquiler_car.currency (id_moneda);


--- Cargamos los datos en la tabla hist_seguros

insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR01', 01231, 'AS001', '2020-06-01', 230, '€', '')

insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR02', 01232, 'AS002', '2020-03-08', 100, '€', '')

insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR02', 01233, 'AS003', '2021-05-11', 200, '€', '')

insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR03', 01234, 'AS004', '2019-08-02', 200, '$', '')

insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR04', 01235, 'AS005', '2021-01-10', 150, '$', '')

insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR05', 01236, 'AS006', '2020-09-21', 200, '€', '')

insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR06', 01237, 'AS007', '2021-05-31', 105, '€', '')


insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR06', 01237, 'AS008', '2022-06-08', 120, '€', '')


insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR07', 01238, 'AS009', '2021-01-18', 130, '€', '')


insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR09', 01239, 'AS011', '2021-07-26', 108, '$', '')


insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR10', 01240, 'AS012', '2019-01-16', 208, '$', '')


insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR11', 01241, 'AS013', '2020-03-18', 158, '€', '')


insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR12', 01242, 'AS014', '2021-06-02', 180, '€', '')


insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR13', 01243, 'AS015', '2019-05-08', 230, '$', '')

insert into alquiler_car.hist_seguros
(id_coche, nr_poliza, id_aseguradora, fecha_seguro, importe_seguro , id_moneda, description)
values ('CAR13', 01243, 'AS016', '2021-03-06', 120, '$', '')


-- select * from alquiler_car.hist_seguros para verificar la carga de los datos 



-- Creamos la tabla hist_revisiones

create table alquiler_car.hist_revisiones(
id_coche varchar(15) not null, -- PK, FK  -> coche -> id_coche
id_revisiones varchar(10) not null, -- FK  -> revisiones -> id_revisiones
fecha_revisione date not null default '4000-01-01', 
importe_revisione integer not null,
id_moneda varchar(15) not null, -- FK -> currency -> id_moneda
Description varchar(100) null
);


alter table alquiler_car.hist_revisiones
add constraint hist_revisiones_carPK primary key (id_coche, id_revisiones);


alter table alquiler_car.hist_revisiones
add constraint hist_rev_carFK foreign key (id_coche) 
references alquiler_car.coche (id_coche);

 
alter table alquiler_car.hist_revisiones
add constraint hist_rev_monedaFK foreign key (id_moneda) 
references alquiler_car.currency (id_moneda);



--- Cargamos los datos en la tabla hist_revisiones


insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR01','REV01', '2021-06-01', 130, '€', '')


insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR02','REV02', '2021-04-08', 88, '€', '')


insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR02','REV03', '2022-10-02', 150, '€', '')


insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR03','REV04', '2020-08-06', 201, '$', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR03','REV05', '2021-09-12', 100, '$', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR04','REV06', '2022-07-09', 211, '€', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR05','REV07', '2021-08-30', 161, '€', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR06','REV08', '2022-10-31', 180, '$', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR07','REV09', '2022-02-21', 130, '$', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR08','REV10', '2021-10-25', 120, '€', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR08','REV11', '2022-11-12', 170, '€', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR09','REV12', '2022-07-30', 200, '€', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR10','REV13', '2020-01-18', 230, '€', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR10','REV14', '2021-01-16', 150, '€', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR11','REV15', '2022-02-02', 180, '$', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR12','REV16', '2022-03-05', 110, '$', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR13','REV17', '2020-06-05', 89, '€', '')

insert into alquiler_car.hist_revisiones
(id_coche, id_revisiones, fecha_revisione, importe_revisione , id_moneda, description)
values ('CAR13','REV18', '2022-01-07', 100, '€', '')



-- select * from alquiler_car.hist_revisiones para verificar la carga de los datos 



















