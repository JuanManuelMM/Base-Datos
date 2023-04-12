# Procedimientos: Donar sangre.  

## Hecho por Juan Manuel 1ºDAM  

Se pide:  

**Crear la base de datos donacion**  

```mysql 
CREATE DATABASE donacion;
```

**Crear la tabla persona con los siguientes campos.**  

- Crea una tabla llamada persona con los siguientes campos:
    - Peso. (Entero)
    - Admitido. Texto(Si/No).__(Valores de dominio:Si/No)__
    - Sexo. Texto (H/M).__(Valores de dominio:H/M)__
    - Fecha Última Donación. DateTime.

```mysql
  
CREATE TABLE PERSONA(
  peso INTEGER UNSIGNED,
  admitido VARCHAR(2),
  sexo VARCHAR(1),
  fecha_ultima_donacion DATETIME
); 

```


**Realiza al menos 10 insert en la tabla, con datos aleatorios, generados por el usuario.**

```mysql
DELIMITER $$
DROP PROCEDURE IF EXIST crear_personas$$
CREATE PROCEDURE crear_personas(IN peso INT UNSIGNED, IN admitido VARCHAR(2),IN sexo VARCHAR(1),IN fechaUltDon DATETIME)
BEGIN
INSERT INTO persona VALUES(peso, admitido, sexo, fechaUltDon);
END
$$

CALL PROCEDURE crear_persona(130, 25, 'NO', 'H', '1990-06-15 09:30:00');
CALL PROCEDURE crear_persona(18, 56, 'SI', 'M', '2005-12-02 14:45:23');
CALL PROCEDURE crear_persona(45, 22, 'NO', 'H', '1985-03-28 18:10:59');
CALL PROCEDURE crear_persona(328, 37, 'NO', 'H', '1978-09-10 21:20:15');
CALL PROCEDURE crear_persona(22, 48, 'SI', 'M', '1999-11-18 06:05:30');
CALL PROCEDURE crear_persona(236, 29, 'NO', 'H', '1982-07-12 12:15:45');
CALL PROCEDURE crear_persona(50, 15, 'SI', 'M', '1975-04-23 17:55:10');
CALL PROCEDURE crear_persona(19, 42, 'NO', 'H', '2000-10-05 10:25:35');
CALL PROCEDURE crear_persona(133, 40, 'SI', 'M', '1992-08-08 08:30:20');
CALL PROCEDURE crear_persona(27, 58, 'SI', 'H', '2003-05-30 23:40:05');

```
- Realice un procedimiento para determinar si la persona puede donar sangre de acuerdo a las siguientes condiciones:

 - Si el peso es menor a 50 kg guarde en estado adminito "NO", en caso contrario seria "SI".

```mysql
DELIMITER $$
DROP PROCEDURE IF EXIST chequear_peso$$
CREATE PROCEDURE chequear_peso()
BEGIN

UPDATE persona 
SET admitido = 'SI'
WHERE peso > 50;


UPDATE persona 
SET admitido = 'NO'
WHERE peso < 50;
    
   
END
$$

CALL PROCEDURE chequear_peso();

```
