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
        documento varchar(80) not null, 
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
    DELIMITER $$

DROP PROCEDURE IF EXISTS clientes_aleatorios$$
CREATE PROCEDURE clientes_aleatorios(IN numRegistros INT)
BEGIN

DECLARE ultimo int;
DECLARE contadorRegistros INT;
DECLARE nombreArchivo VARCHAR(20);
Declare telefono integer;
Declare domicilio varchar(100);
Declare ciudad varchar(100);
Declare provincia varchar(100);
Declare nombreCliente varchar(8);
set ultimo = (select count(*) from cliente);
set contadorRegistros = 1;

while(contadorRegistros <= numRegistros)
do
set nombreCliente = concat("Pepe ",(contadorRegistros + ultimo));
set nombreArchivo = concat("Archivo ",(contadorRegistros + ultimo));
set domicilio = concat("Domicilio ",(contadorRegistros + ultimo));
set ciudad = concat("Ciudad ",(contadorRegistros + ultimo));
set provincia = concat("Provincia ",(contadorRegistros + ultimo));

set telefono = (select round( rand()*(600000000-699999999) +600000000));


insert into cliente values(
	nombreArchivo,
	nombreCliente,
    domicilio,
    ciudad,
    provincia,
    telefono
);

set contadorRegistros = contadorRegistros+1;
end while;

END
$$

delimiter ;

call clientes_aleatorios(5);
call clientes_aleatorios(5);
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
