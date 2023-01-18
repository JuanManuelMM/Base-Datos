# Consultas a Bases de datos

## Juan Manuel Morales Martín 1ºDAM

***  
### Crear las tablas

Primeramente se crearon las tablas indicadas en el ejercicio:  
```sql
CREATE table fabricante(
	id_fab INTEGER,
	nombre TEXT,
	pais TEXT,
	PRIMARY KEY(id_fab)
);

CREATE TABLE programa (
	codigo INTEGER,
	nombre TEXT,
	version TEXT,
	PRIMARY KEY(codigo)
	
);

CREATE TABLE comercio(
	cif INTEGER,
	nombre TEXT,
	ciudad TEXT,
	PRIMARY KEY(cif)
	
);

CREATE TABLE cliente(
	dni INTEGER,
	nombre TEXT,
	edad INTEGER,
	PRIMARY KEY(dni)

);

CREATE TABLE desarrolla(
	id_fab INTEGER,
	codigo INTEGER,
	PRIMARY KEY(id_fab,codigo)
);

CREATE TABLE distribuye(
	cif INTEGER,
	codigo INTEGER,
	cantidad INTEGER,
	PRIMARY KEY(cif,codigo)
);

CREATE TABLE registra(
	cif INTEGER,
	dni INTEGER,
	codigo INTEGER,
	medio TEXT,
	PRIMARY KEY(cif,dni)
);
```  
Tras realizar las inserciones indicadas en el ejercicio, comencé con las consultas.  

### Consultas:  

- 1. Averigua el DNI de todos los clientes. 
```sql
select dni from cliente;
```
  - 2. Consulta todos los datos de todos los programas.
```sql
select * from programa;
```
  - 3. Obtén un listado con los nombres de todos los programas.
```sql
select nombre from programa;
```
  - 4. Genera una lista con todos los comercios.
```sql
select * from comercio;
```
  - 5. Genera una lista de las ciudades con establecimientos donde se venden programas, sin que aparezcan valores duplicados (utiliza DISTINCT).
```sql
select distinc ciudad from comercio;
```
  - 6. Obtén una lista con los nombres de programas, sin que aparezcan valores duplicados (utiliza DISTINCT).
```sql
SELECT DISTINCT nombre from programa;
```
  - 7. Obtén el DNI más 4 de todos los clientes.
```sql
SELECT dni+4 from cliente;
```
  - 8. Haz un listado con los códigos de los programas multiplicados por 7. 9 ¿Cuáles son los programas cuyo código es inferior o igual a 10?
```sql
select codigo from programa where codigo *7.9 <= 10; 
```
  - 10. ¿Cuál es el programa cuyo código es 11?
```sql
select * from programa where codigo = 11; 
```
  - 11. ¿Qué fabricantes son de Estados Unidos?
```sql
select * from fabricante where pais = 'Estados Unidos';
```
  - 12. ¿Cuáles son los fabricantes no españoles? Utilizar el operador IN.
```sql
select * from fabricante 
where pais not in ('España'); 
```
  - 13. Obtén un listado con los códigos de las distintas versiones de Windows.
```sql
select codigo from programa where nombre='Windows';
```
  - 14. ¿En qué ciudades comercializa programas El Corte Inglés?
```sql
select ciudad from comercio WHERE nombre='El Corte Inglés';
```
  - 15. ¿Qué otros comercios hay, además de El Corte Inglés? Utilizar el operador IN.
```sql
SELECT * from comercio WHERE
nombre not in ('El Corte Inglés');
```
  - 16. Genera una lista con los códigos de las distintas versiones de Windows y Access. Utilizar el operador IN.
```sql
SELECT codigo from programa WHERE
nombre in ('Windows', 'Access');
```
  - 17. Obtén un listado que incluya los nombres de los clientes de edades comprendidas entre 10 y 25 y de los mayores de 50 años. Da una solución con BETWEEN y otra sin BETWEEN.
  ```sql
  -- Este es usando el between
  SELECT nombre FROM cliente 
  WHERE ((edad BETWEEN 10 and 25) or (edad>50));
  
  -- este es sin el between
  SELECT nombre FROM cliente 
  WHERE ((edad>= 10 and  edad <=25) or (edad>50));
  ```
  - 18. Saca un listado con los comercios de Sevilla y Madrid. No se admiten valores duplicados.
  ```sql
  SELECT DISTINCT nombre from comercio where ciudad='Sevilla' or ciudad='Madrid'
  ```
  - 19. ¿Qué clientes terminan su nombre en la letra “o”?
  ```sql
  SELECT * from cliente 
	WHERE nombre like '%o %';
  ```
  
  - 20. ¿Qué clientes terminan su nombre en la letra “o” y, además, son mayores de 30 años
  
  ```sql
  SELECT * from cliente 
	WHERE nombre like '%o %' and edad >30;
  ```
  
  - 21. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, o cuyo nombre comience por una A o por una W.
  ```sql
  SELECT * from programa 
	WHERE version REGEXP 'i$' or nombre REGEXP'^A|^W';
  ```
  
  - 22. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, o cuyo nombre comience por una A y termine por una S.
  ```sql
  SELECT * from programa 
	WHERE version REGEXP 'i$' or nombre REGEXP'^A.*s$';
  ```
  - 23. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, y cuyo nombre no comience por una A. 
  ```sql
  SELECT nombre from programa 
	WHERE version REGEXP 'i$' and nombre not REGEXP'^A';
  ```
  - 24. Obtén una lista de empresas por orden alfabético ascendente.
  ```sql
  SELECT nombre from comercio 
  order by nombre asc;
  ```
  
  - 25. Genera un listado de empresas por orden alfabético descendente.
  ```sql
  select nombre from comercio 
  order by nombre DESC
  ```
  
  - 26. Obtén un listado de programas por orden de versión.
  ```sql
  select nombre from programa
  order by version asc
  ```
  
  - 27. Genera un listado de los programas que desarrolla Oracle.
  ```sql
  select nombre from programa, desarrolla, fabricante WHERE
  programa.codigo=desarrolla.codigo and desarrolla.id_fab=fabricante.id_fab
  and fabricante.nombre='Oracle'
  ```
  
  - 28. ¿Qué comercios distribuyen Windows?
  ```sql
  select comercio.nombre from comercio, distribuye, programa WHERE
  comercio.cif=distribuye.cif and distribuye.codigo=programa.codigo and programa.nombre='Windows'
  ```
  - 29. Genera un listado de los programas y cantidades que se han distribuido a El Corte Inglés de Madrid.
  ```sql
  select programa.nombre, distribuye.cantidad from programa,distribuye,comercio 
  where programa.codigo=distribuye.codigo 
  and distribuye.cif=comercio.cif
  and comercio.nombre='El Corte Inglés' 
  and comercio.ciudad='Madrid' 
  ```
  - 30. ¿Qué fabricante ha desarrollado Freddy Hardest?
  ```sql
  select fabricante.nombre from fabricante, desarrolla, programa 
  where fabricante.id_fab=desarrolla.id_fab 
  and programa.codigo=desarrolla.codigo 
  and programa.nombre='Freddy Hardest' 
  ```
  - 31. Selecciona el nombre de los programas que se registran por Internet. 
  ```sql
  select programa.nombre from programa, registra WHERE
  programa.codigo=registra.codigo and registra.medio='Internet'
  ```
  - 32. ¿Qué medios ha utilizado para registrarse Pepe Pérez?
  ```sql
  select registra.medio from registra, cliente 
  WHERE cliente.dni=registra.dni 
  and cliente.nombre='Pepe Pérez'
  ```
  - 33. ¿Qué usuarios han optado por Internet como medio de registro? 
  ```sql
   select cliente.nombre from registra, cliente WHERE
   cliente.dni=registra.dni 
   and registra.medio='Internet'
  ```
  - 34. ¿Qué programas han recibido registros por tarjeta postal? 
  ```sql
  select p.nombre from programa as p, registra as r WHERE
  p.codigo=r.codigo 
  and r.medio='Tarjeta postal'
  ```
  
  - 35. ¿En qué localidades se han vendido productos que se han registrado por Internet?
  ```sql
  select c.* from comercio as c, registra as r
  where c.cif=r.cif 
  and r.medio='Tarjeta postal'
  ```
  
  - 36. Obtén un listado de los nombres de las personas que se han registrado por Internet, junto al nombre de los programas para los que ha efectuado el registro. 
  ```sql
  select cliente.nombre,programa.nombre from cliente,registra, programa 
  WHERE registra.codigo=programa.codigo
  and cliente.dni=registra.dni 
  and registra.medio='Internet'
  ```
  - 37. Genera un listado en el que aparezca cada cliente junto al programa que ha registrado, el medio con el que lo ha hecho y el comercio en el que lo ha adquirido.
  ```sql
  select cliente.nombre,programa.nombre,registra.medio,comercio.nombre from cliente,registra, programa, comercio
  WHERE registra.codigo=programa.codigo
  and cliente.dni=registra.dni 
  and comercio.cif=registra.cif
  ```
  
  - 38. Genera un listado con las ciudades en las que se pueden obtener los productos de Oracle.
   
  - 39. Obtén el nombre de los usuarios que han registrado Access XP. 
  - 40. Nombre de aquellos fabricantes cuyo país es el mismo que ʻOracleʼ. (Subconsulta). 
  - 41. Nombre de aquellos clientes que tienen la misma edad que Pepe Pérez. (Subconsulta). 
  - 42. Genera un listado con los comercios que tienen su sede en la misma ciudad que tiene el comercio ʻFNACʼ. (Subconsulta).
  ```sql
  
  ```
  - 43. Nombre de aquellos clientes que han registrado un producto de la misma forma que el cliente ʻPepe Pérezʼ. (Subconsulta). 
  - 44. Obtener el número de programas que hay en la tabla programas. 46 Calcula el número de clientes cuya edad es mayor de 40 años. 
  - 45. Calcula el número de productos que ha vendido el establecimiento cuyo CIF es 1. 
  - 46. Calcula la media de programas que se venden cuyo código es 7.  
  - 47. Calcula la mínima cantidad de programas de código 7 que se ha vendido 
  - 48. Calcula la máxima cantidad de programas de código 7 que se ha vendido.
  - 49. ¿En cuántos establecimientos se vende el programa cuyo código es 7? 
  - 50. Calcular el número de registros que se han realizado por Internet.  
  - 51. Obtener el número total de programas que se han vendido en ʻSevillaʼ. 
  - 52. Calcular el número total de programas que han desarrollado los fabricantes cuyo país es ʻEstados Unidosʼ. 
  - 53. Visualiza el nombre de todos los clientes en mayúscula. En el resultado de la consulta debe aparecer también la longitud de la cadena nombre. 
  - 54. Con una consulta concatena los campos nombre y versión de la tabla PROGRAMA. 





