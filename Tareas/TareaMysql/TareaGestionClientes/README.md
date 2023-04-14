# Procedimientos: Gestión de clientes.
## Hecho por Juan Manuel Morales Martín 1ºDAM  


Se pide:


-Crear una base de datos llamada clientes.  

```mysql
CREATE DATABASE clientes;
use clientes;
```
-Crear una tabla llamada persona.  


```mysql
mysql> CREATE TABLE persona(
    ->  id varchar(9) primary KEY, 
    ->  nombre VARCHAR(20), 
    ->  apellido1 VARCHAR(20), 
    ->  apellido2 VARCHAR(20), 
    ->  peso INTEGER UNSIGNED, 
    ->  sexo CHAR(1) 
    ->  );
```
- Crea mínimo 10 personas en la tabla.  

```mysql
DELIMITER $$
DROP PROCEDURE IF exists crear_persona$$
CREATE PROCEDURE crear_persona(
	IN id VARCHAR(9),
	IN nombre VARCHAR(20),
	IN apellido1 VARCHAR(20),
	IN apellido2 VARCHAR(20),
    IN peso INTEGER UNSIGNED,
    IN sexo CHAR(1)
    )
BEGIN
INSERT INTO persona VALUES(id,nombre,apellido1,apellido2,peso,sexo);
END
$$

CALL crear_persona('14771932V','Juan','Morales','Martín',68,'H');
CALL crear_persona('6573918278V','José','Pérez','Pérez',70,'H');
CALL crear_persona('14771932V','Paco','Ronaldo','Estebez',43,'H');
CALL crear_persona('14771932V','Josefina','Dorta','González',81,'M');
CALL crear_persona('14771932V','Luisa','Fariña','Nazi',56,'M');
CALL crear_persona('14771932V','Ángel','Luis','Calvo',68,'H');
CALL crear_persona('14771932V','Patricia','Ojeda','Macarrón',69,'M');
CALL crear_persona('14771932V','Javier','Hacker','Cedrés',59,'H');
CALL crear_persona('14771932V','Guzmán','Cabo','Luis',68,'H');
CALL crear_persona('14771932V','Lucía','Martin','Luis',68,'M');

```


Cree procedimientos para los siguientes casos:  
- Que inserte información en la tabla clientes. Ayuda(recibe los parámetros a insertar).  
Hecho arriba para los inserts.
- Que actualice el nombre de un cliente. Ayuda (recibe dos parámetros, el identificador aactualizar y el nuevo nombre).  
```mysql
DELIMITER $$
DROP PROCEDURE IF EXISTS editar_nombre$$
CREATE PROCEDURE editar_nombre(IN id VARCHAR(9), IN nuevo_nombre VARCHAR(20))
BEGIN

UPDATE persona as p 
SET nombre = nuevo_nombre
WHERE p.id= id;


END
$$

CALL editar_nombre('14771932V','Manolo');
```

- Que elimine un cliente. Ayuda (recibe un parámetro, identificador se va eliminar.)
```mysql
DELIMITER $$
DROP PROCEDURE IF EXISTS eliminar_persona$$
CREATE PROCEDURE eliminar_persona(IN id VARCHAR(9))
BEGIN

DELETE FROM persona as p 
WHERE p.id= id;


END
$$

CALL eliminar_persona('14771932V');
```


- Investigar procedimientos con paramentaros de salida.
- Investigar cómo hacer un ciclo (while).
