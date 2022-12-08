-- SQL Query / Consulta 

select  gm.nombre , gm.grupo , c.model , c.color , c.matricula , c.fecha_compra , c.tot_km , es.nombre  , es.nr_poliza 
from giorgia_scuderi.coche c 
inner join giorgia_scuderi.grupo_marca gm on c.id_grupo_marca = gm.id_grupo_marca
inner join giorgia_scuderi.empresa_seguro es on c.id_aseguradora = es.id_aseguradora 