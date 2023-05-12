# Tarea 10: Empresa

### Hecho por Juan Manuel Morales Martín 1ºDAM.  



Una empresa guarda los siguientes datos de sus clientes, con los siguientes campos:
- documento char (8) not null,
- nombre varchar(30) not null,
- domicilio varchar(30),
- ciudad varchar(20),
- provincia varchar (20),
- telefono varchar(11)



Se pide: 
- Elimine la tabla "cliente" si existe. 
    >__Nota__:_Muestra el comando y la salida_.  

    ```sql
    ```



- Cree la tabla si clave primaria y incluye a posteriori esta.
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
      
- Agregue un índice único por el campo "telefono".
    >__Nota__:_Muestra el comando y la salida_.
    
    ```sql
    ```
      
      
- Elimina los índices.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```
