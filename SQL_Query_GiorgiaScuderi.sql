-- SQL Query / Consulta 

select  gm.nombre , gm.grupo , c.model , c.color , c.matricula , c.fecha_compra , c.tot_km , es.nombre  , es.nr_poliza 
from alquiler_car.coche c 
inner join alquiler_car.grupo_marca gm on c.id_grupo_marca = gm.id_grupo_marca
inner join alquiler_car.empresa_seguro es on c.id_aseguradora = es.id_aseguradora 