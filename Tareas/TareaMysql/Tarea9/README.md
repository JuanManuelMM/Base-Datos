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
    ```  

- Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de 
inscripción).
    >__Nota__:_Muestra el comando y la salida_. 
    ```sql
    ```
- Define los siguientes indices:
   - Un índice único por el campo "documento" y un índice común por ciudad y provincia.
        >__Nota__:_Muestra el comando y la salida. Justifica el tipo de indice en un comentario_. 
        ```sql
        ```
   - Vea los índices de la tabla.
        >__Nota__:_Muestra el comando y la salida __"show index"___.
        ```sql
        ```

- Genera un procedimiento que realice la inserción de 5 registros, al menos 2 veces, de forma aleatoria.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```
- Intente ingresar un alumno con clave primaria repetida.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```
    
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
