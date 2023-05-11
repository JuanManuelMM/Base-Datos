# Tarea 9: instituto de enseñanza  

### Hecho por Juan Manuel Morales Martín 1ºDAM  


Un instituto de enseñanza guarda los siguientes datos de sus alumnos:
 - número de inscripción, comienza desde 1 cada año,
 - año de inscripción,
 - nombre del alumno,
 - documento del alumno,
 - domicilio,
 - ciudad,
 - provincia,
 - clave primaria: número de inscripto y año de inscripción.

Se pide: 
- Elimine la tabla "alumno" si existe. 
    >__Nota__:_Muestra el comando y la salida_.  
    ```sql
    Drop table if exists alumno;
    ```  
<img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img1">  

- Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de 
inscripción).
    >__Nota__:_Muestra el comando y la salida_. 
    ```sql
    CREATE TABLE alumno(
      numInscripcion integer auto_increment,
      añoInscripcion datetime,
      docAlumno varchar(100),
      domicilio varchar(100),
      ciudad varchar(50),
      provincia varchar(100),
      primary key(numInscripcion,añoInscripcion)
);
    ```
    <img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img2">  
- Define los siguientes indices:
   - Un índice único por el campo "documento" y un índice común por ciudad y provincia.
        >__Nota__:_Muestra el comando y la salida. Justifica el tipo de indice en un comentario_. 
        ```sql
        create unique index idx_documentos on alumno(docAlumno);
        create fulltext index idx_address on alumno(ciudad,provincia);
        ```
        <img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img3">
   - Vea los índices de la tabla.
        >__Nota__:_Muestra el comando y la salida __"show index"___.
        ```sql
        show index from alumno;
        ```
        <img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img4">
- Genera un procedimiento que realice la inserción de 5 registros, al menos 2 veces, de forma aleatoria.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
       DELIMITER $$

       DROP PROCEDURE IF EXISTS alumnos_aleatorios$$
       CREATE PROCEDURE alumnos_aleatorios(IN numRegistros INT)
       BEGIN
       DECLARE ultimo int;
       DECLARE contadorRegistros INT;
       DECLARE nombreArchivo VARCHAR(20);
       DECLARE datetimeAleatorio DATETIME;

       DECLARE randomDia int;
       DECLARE randomMes int;
       DECLARE randomAño int;

       Declare domicilio varchar(100);
       Declare ciudad varchar(100);
       Declare provincia varchar(100);

       set ultimo = (select count(*) from alumno);
       set contadorRegistros= 1;
       set nombreArchivo= concat("Archivo",1);

       while(contadorRegistros <= numRegistros)
       do

       set nombreArchivo = concat("Archivo",(contadorRegistros + ultimo));
       set domicilio = concat("Domicilio ",(contadorRegistros + ultimo));
       set ciudad = concat("Ciudad ",(contadorRegistros + ultimo));
       set provincia = concat("Provincia ",(contadorRegistros + ultimo));
       set randomDia = (select round( rand()*(30-1) +1));
       set randomMes = (select round( rand()*(12-1) +1));
       set randomAño = (select round( rand()*(2000-2023) +2000));
       set datetimeAleatorio = concat(randomAño,"-",randomMes,"-",randomDia);

       insert into alumno values(
        contadorRegistros+ ultimo,
        datetimeAleatorio,
           nombreArchivo,
           domicilio,
           ciudad,
           provincia
       );

       set contadorRegistros = contadorRegistros+1;
       end while;

       END
       $$
    ```  
    <img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img5">
- Intente ingresar un alumno con clave primaria repetida.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    insert into alumno values(10,'1979-07-30 00:00:00','Archivo11','Domicilio11','Ciudad11','Provincia11');
    ```
    <img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img6">
    
- Intente ingresar un alumno con documento repetido.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```
    <img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img7">
- Ingrese varios alumnos de la misma ciudad y provincia.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```
    <img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img8">
- Elimina los indices creados, y muestra que ya no se encuentran.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    drop index idx_address on alumno;
    drop index idx_documentos on alumno;
    show index from alumno;
    ```
<img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img8">
