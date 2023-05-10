CREATE TABLE alumno(
	numInscripcion integer auto_increment,
	añoInscripcion datetime,
    docAlumno varchar(100),
    domicilio varchar(100),
    ciudad varchar(50),
	provincia varchar(100),
    primary key(numInscripcion,añoInscripcion)
);


DELIMITER $$

DROP PROCEDURE IF EXISTS alumnos_aleatorias$$
CREATE PROCEDURE alumnos_aleatorias(IN numRegistros INT)
BEGIN
DECLARE ultimo int;
DECLARE contadorRegistros INT;
DECLARE nombreArchivo VARCHAR(20);
DECLARE datetimeAleatorio DATETIME;


DECLARE randomDia int;
DECLARE randomMes int;
DECLARE randomAño int;

set ultimo = (select count(*) from persona);
set contadorRegistros= 1;
set nombreArchivo= concat("Archivo",1);




while(contadorRegistros <= numRegistros)
do

set nombreArchivo = concat("Archivo",(contadorRegistros + ultimo));
set randomDia = (select round( rand()*(30-1) +1));
set randomMes = (select round( rand()*(12-1) +1));
set randomAño = (select round( rand()*(2000-2023) +2000));
insert into alumno values(
	contadorRegistros,
	nombreArchivo,
    salarioReg,
    0,0,0,0,0
);
set contadorRegistros= contadorRegistros+1;
end while;

END
$$