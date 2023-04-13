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

