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
    drop table if exists cliente;
    ```
    
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/Tarea10/img/img1.png"/>



- Cree la tabla sin clave primaria e incluye a posteriori esta.
    >__Nota__:_Muestra el comando y la salida_. 
    
    ```sql
    create table cliente( 
        documento char(8) not null, 
        nombre varchar(30) not null, 
        domicilio varchar(30), 
        ciudad varchar(20), 
        provincia varchar (20), 
        telefono varchar (11) 
    );
    
    alter table cliente add primary key (documento,nombre);
    ```  
    
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/Tarea10/img/img2.png"/>

- Define los siguientes indices:
   - Un índice único por el campo "documento" y un índice común por ciudad y provincia.
        >__Nota__:_Muestra el comando y la salida. Justifica el tipo de indice en un comentario_. 


        ```sql
            create unique index idx_documento on cliente(documento);
            create index idx_address on cliente(ciudad,provincia);
        ```  
        
        <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/Tarea10/img/img3.png"/>


   - Vea los índices de la tabla.
        >__Nota__:_Muestra el comando y la salida __"show index"___.

        ```sql
        show index from cliente;
        ```  
        
        <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/Tarea10/img/img4.png"/>
        
- Genera un procedimiento que realice la inserción de 5 registros, al menos 2 veces, de forma aleatoria.
    >__Nota__:_Muestra el comando y la salida_.

    ```sql
    ```  
    
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/Tarea10/img/img5.png"/>
      
- Agregue un índice único por el campo "telefono".
    >__Nota__:_Muestra el comando y la salida_.
    
    ```sql
    ```  
    
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/Tarea10/img/img6.png"/>
      
      
- Elimina los índices.
    >__Nota__:_Muestra el comando y la salida_.
    ```sql
    ```  
    
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/Tarea10/img/img7.png"/>
