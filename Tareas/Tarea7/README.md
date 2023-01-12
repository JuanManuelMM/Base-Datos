# Consultas a Bases de datos

## Juan Manuel Morales Martín 1ºDAM

***  
### Crear las tablas

Primeramente se crearon las tablas indicadas en el ejercicio:  
```
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





