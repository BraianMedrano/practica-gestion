select 
ifnull(p.provincia, "Total Pais") as Provincia,
ifnull(l.localidad, "Subtotal Provincia") as Localidad,
count(*) as "Cantidad Empleados"
from empleado as e
join localidad as l
on l.codigo_postal = e.codigo_postal
join provincia as p
on p.id_provincia = l.id_provincia

group by p.provincia, l.localidad with rollup
;

select 
ifnull(p.provincia, "Subtotal Pais" ) as Provincia,
ifnull(l.localidad, "Subtotal Localidad") as Localidad,
count(*) as "Cantidad de empleados"
from empleado as e
join localidad as l
on l.codigo_postal = e.codigo_postal
join provincia as p
on p.id_provincia = l.id_provincia

group by p.provincia, l.localidad with rollup
;

select * from empleado;

-- Consulta 3 bien hecha (sin la parte de la UI limpia)
select p.provincia as Provincia, loc.localidad as Localidad,  count(*) as "Cantidad de empleados"
from empleado as e
join localidad as loc on e.codigo_postal = loc.codigo_postal
join provincia as p on loc.id_provincia = p.id_provincia
where timestampdiff(year, e.fecha_nacimiento, curdate())
group by p.provincia, loc.localidad with rollup
;



-- 1) Inicializo la variable
SET @prov := NULL;



