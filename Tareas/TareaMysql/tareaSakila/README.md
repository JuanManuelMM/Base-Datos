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
    select * from actor where first_name REGEXP "o.*o.*" and last_name REGEXP "A";
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
      select * from city where country_id=61;
    ```
    *Insertar Imagen9*
    - Ciudades del country __Spain__.
    ```sql
    select * from country join city on city.country_id=country.country_id where country.country="Spain";
    
    ```
    *Insertar Imagen10*
    - Ciudades con nombres compuestos.
    ```sql
    select * from city where city REGEXP ".-.";
    ```
    *Insertar Imagen11*
    - Películas con una duración entre __80 y 100__.
    ```sql
    select * from film where length between 80 and 100;
    ```
    *INsertar Imagen12*
    - Peliculas con un rental_rate entre __1 y 3__.
    ```sql
    select * from film where rental_rate between 1 and 3 limit 10;
    ```
    *Insertar Imagen13*
    - Películas con un título de más de __12 letras__.
    ```sql
    select * from film where length(title)>13 limit 10;
    ```
    *Insertar Imagen15*
    - Peliculas con un rating de __PG__ o __G__.
    ```sql
    select * from film where rating in("PG","G") limit 10;
    ```
    *Insertar imagen14*
    - Peliculas que no tengan un rating de __NC-17__.
    ```sql
      select * from film where rating not in("NC-17") limit 10;
    ```
    *Insertar imagen16*
    - Peliculas con un rating __PG__ y duracion de más de __120__.
    ```sql
    select * from film where rating in("PG") and length > 120 limit 10;
    ```
    *Insertar imagen17*
    - ¿Cuantos actores hay?
    ```sql
     select count(first_name) from actor;
    ```
    *Insertar imagen18*
    - ¿Cuántas ciudades tiene el country __Spain__?
    ```sql
    select count(city_id) from country join city 
      on city.country_id=country.country_id 
      where country.country="Spain";
    ```
    *Insertar imagen19*
    - ¿Cuántos countries hay que empiezan por __a__?
    ```sql
    select count(country) from country where country regexp '^A';
    ```
    *Insertar imagen20*
    - Media de duración de peliculas con __PG__.
    ```sql
    select avg(length) from film where rating in ('PG');
    ```
    *Insertar imagen21*
    - Suma de __rental_rate__ de todas las peliculas.
    ```sql
    select sum(rental_rate) from film;
    ```
    *Insertar imagen22*
    - Pelicula con mayor duración.
    ```sql
    select * from film where length=(select max(length) from film);
    ```
    *Insertar imagen23*
    - Película con menor duración.
    ```sql
    select * from film where length=(select min(length) from film);
    ```
    *Insertar imagen24*
    - Mostrar las ciudades del country __Spain__ (multitabla).
    ```sql
    select * from country join city on city.country_id=country.country_id where country.country="Spain";
    
    ```
    *Insertar Imagen10, está bien, está repe*
    
    - Mostrar el nombre de la película y el nombre de los actores.
    ```sql
    ```
    *INsertar Imagen25*
    - Mostrar el nombre de la película y el de sus categorías.
    ```sql
    select distinct actor.first_name, film.title from film_actor join actor on actor.actor_id=film_actor.actor_id join film on film.film_id=film_actor.film_id;
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
