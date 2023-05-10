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
        
        ```
        <img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img3">
   - Vea los índices de la tabla.
        >__Nota__:_Muestra el comando y la salida __"show index"___.
        ```sql
        create unique index idx_documentos on alumno(docAlumno);
        create index idx_address on alumno(ciudad,provincia);
        ```

- Genera un procedimiento que realice la inserción de 5 registros, al menos 2 veces, de forma aleatoria.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    show index from alumno;
    ```
- Intente ingresar un alumno con clave primaria repetida.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```
    <img href="https://github.com/JuanManuelMM/Base-Datos/tree/main/Tareas/TareaMysql/Tarea9/img/img4">
    
- Intente ingresar un alumno con documento repetido.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```
- Ingrese varios alumnos de la misma ciudad y provincia.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```
    
- Elimina los indices creados, y muestra que ya no se encuentran.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```
