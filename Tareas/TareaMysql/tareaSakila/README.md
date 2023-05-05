# Tarea Sakila  

### Hecho por Juan Manuel Morales Martín 1ºDAM  

El ejercicio pide que cargemos la base de datos sakila, disponible en la web de Mysql.

```sql
  SOURCE ~/Desktop/sakila-db/sakila-schema.sql;
  SOURCE ~/Desktop/sakila-db/sakila-data.sql;
```


Se pide:
- Realiza la carga de la BBDD de Sakila, tal y como se muestra en los enlaces proporcionados.
- Realiza cada una de las siguientes consultas:
    - Actores que tienen de primer nombre __Scarlett__.
    ```sql
    mysql> select * from actor where first_name REGEXP "Scarlett";   
    ```
    *Insertar Imagen1*
    - Actores que tienen de apellido __Johansson__.
    ```sql
    select * from actor where last_name REGEXP "Johansson";
    ```
    *Insertar Imagen2*
    - Actores que contengan una __O__ en su nombre.
    
    ```sql
    select * from actor where first_name REGEXP "o";
    ```
    *Insertar Imagen3*
    - Actores que contengan una __O__ en su nombre y en una __A__ en su apellido.
    ```sql
    select * from actor where first_name REGEXP "o" and last_name REGEXP "A";
     ```
     *Insertar Imagen4*
    - Actores que contengan dos __O__ en su nombre y en una __A__ en su apellido.
    ```sql
    select * from actor where first_name REGEXP "o{2}" and last_name REGEXP "A";
    ```
    *Insertar Imagen5*
    - Actores donde su tercera letra sea __B__.
    ```sql
    select * from actor where first_name REGEXP "^.{2}B";
    ```
    *Insertar Imagen6*
    - Ciudades que empiezan por __a__.
    ```sql
    select * from city where city regexp "^A";
    ```
    *Insertar Imagen7*
    - Ciudades que acaban por __s__.
    ```sql
    select * from city where city regexp "s$";
    ```
     *Insertar Imagen8*
    - Ciudades del country __61__.
    ```sql
    ```
    *Insertar Imagen9*
    - Ciudades del country __Spain__.
    ```sql
    select * from city where country_id=61;
    ```
    - Ciudades con nombres compuestos.
    ```sql
    ```
    - Películas con una duración entre __80 y 100__.
    ```sql
    ```
    - Peliculas con un rental_rate entre __1 y 3__.
    ```sql
    ```
    - Películas con un titulo de más de __12 letras__.
    ```sql
    ```
    - Peliculas con un rating de __PG__ o __G__.
    ```sql
    ```
    - Peliculas que no tengan un rating de __NC-17__.
    ```sql
    ```
    - Peliculas con un rating __PG__ y duracion de más de __120__.
    ```sql
    ```
    - ¿Cuantos actores hay?
    ```sql
    ```
    - ¿Cuántas ciudades tiene el country __Spain__?
    ```sql
    ```
    - ¿Cuántos countries hay que empiezan por __a__?
    ```sql
    ```
    - Media de duración de peliculas con __PG__.
    ```sql
    ```
    - Suma de __rental_rate__ de todas las peliculas.
    ```sql
    ```
    - Pelicula con mayor duración.
    ```sql
    ```
    - Película con menor duración.
    ```sql
    ```
    - Mostrar las ciudades del country __Spain__ (multitabla).
    ```sql
    ```
    - Mostrar el nombre de la película y el nombre de los actores.
    ```sql
    ```
    - Mostrar el nombre de la película y el de sus categorías.
    ```sql
    ```
    - Mostrar el country, la ciudad y dirección de cada miembro del staff.
    ```sql
    ```
    - Mostrar el country, la ciudad y dirección de cada customer.
    ```sql
    ```
    - Numero de películas de cada __rating__
    ```sql
    ```
    - Cuantas películas ha realizado el actor __ED CHASE__.
    ```sql
    ```
    - Media de duración de las películas cada categoría.
    ```sql
    ```
