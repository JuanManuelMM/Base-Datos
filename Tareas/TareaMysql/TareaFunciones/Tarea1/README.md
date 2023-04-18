# Tarea de funciones: El salario

### Hecho por Juan Manuel Morales Martín 1ºDAM  

---  


Primero se pide crear la base de datos, llamada "salario":  

```mysql
CREATE DATABASE salario;
```

- Crea una tabla llamada persona con los siguientes campos:
    - Identificador. (Texto)__(PK)__.
    - Nombre (Texto).
    - Salario_base. (__Escoge el tipo de dato__).


```mysql
DROP TABLE IF EXISTS persona;
CREATE TABLE PERSONA(
	id VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(20),
    sañario_base DOUBLE UNSIGNED
);
```
Crear un procedimiento para añadir registros a la tabla persona


```mysql
DELIMITER $$
DROP PROCEDURE IF EXISTS crear_persona$$
CREATE PROCEDURE crear_persona(IN id VARCHAR(9), IN nombre VARCHAR(20), IN salario_base DOUBLE UNSIGNED)
BEGIN
INSERT INTO persona VALUES(id,nombre,salario_base);

END
$$

CALL crear_persona("75839108H","Juan",1080.0);
CALL crear_persona("85930176G","Pedro",980.10);
CALL crear_persona("57152349J","Ana",780.9);
CALL crear_persona("10485738K","HuevoKinder",1080.0);
CALL crear_persona("01485751P","Joseba",777.7);
CALL crear_persona("54668171L","Carlos",1049.4);
CALL crear_persona("00184858U","Fernando",1111.1);
CALL crear_persona("10048561O","Patricia",6655.90);
CALL crear_persona("10058520N","Angel",1121.20);
CALL crear_persona("14187505F","Lolo",1080.0);

  
```  

Cree una función para cada punto teniendo en cuenta que:
- Función __subsidio_transporte__: El subsidio de transporte equivale al __7%__ al salario básico.  
```mysql
DELIMITER $$
DROP FUNCTION IF EXISTS subsidio_transporte$$
```
- Función __salud__: La salud que corresponde al __4%__ al salario básico.  
```mysql
```
- Función __pension__: La pensión que corresponde al __4%__ al salario básico
```mysql
```
- Función __bono__: Un bono que corresponde al __8%__ al salario básico.
```mysql
```
- Función __integral__: El salario integral es la ___suma del salario básico - salud - pension + bono + sub de transporte___.

```mysql
```
