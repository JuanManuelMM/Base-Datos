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
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen1.png">  
    
    - Actores que tienen de apellido __Johansson__.
    ```sql
    select * from actor where last_name REGEXP "Johansson";
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen2.png">  
    
    - Actores que contengan una __O__ en su nombre.
    
    ```sql
    select * from actor where first_name REGEXP "o";
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen3.png">  
    
    - Actores que contengan una __O__ en su nombre y en una __A__ en su apellido.
    ```sql
    select * from actor where first_name REGEXP "o" and last_name REGEXP "A";
     ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen4.png">  
    
    - Actores que contengan dos __O__ en su nombre y en una __A__ en su apellido.
    ```sql
    select * from actor where first_name REGEXP "o.*o.*" and last_name REGEXP "A";
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen5.png">  
    
    - Actores donde su tercera letra sea __B__.
    ```sql
    select * from actor where first_name REGEXP "^.{2}B";
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen6.png">  
    
    - Ciudades que empiezan por __a__.
    ```sql
    select * from city where city regexp "^A";
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen7.png">  
    
    - Ciudades que acaban por __s__.
    ```sql
    select * from city where city regexp "s$";
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen8.png">  
    
    - Ciudades del country __61__.
    ```sql
      select * from city where country_id=61;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen9.png">  
    
    - Ciudades del country __Spain__.
    ```sql
    select * from country join city on city.country_id=country.country_id where country.country="Spain";
    
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen10.png">  
    
    - Ciudades con nombres compuestos.
    ```sql
    select * from city where city REGEXP ".-.";
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen11.png">  
    
    - Películas con una duración entre __80 y 100__.
    ```sql
    select * from film where length between 80 and 100;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen12.png">  
    
    - Peliculas con un rental_rate entre __1 y 3__.
    ```sql
    select * from film where rental_rate between 1 and 3 limit 10;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen13.png">  
    
    - Películas con un título de más de __12 letras__.
    ```sql
    select * from film where length(title)>12 limit 10;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen15.png">  
    
    - Peliculas con un rating de __PG__ o __G__.
    ```sql
    select * from film where rating in("PG","G") limit 10;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen14.png">  
    
    - Peliculas que no tengan un rating de __NC-17__.
    ```sql
      select * from film where rating not in("NC-17") limit 10;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen16.png">  
    
    - Peliculas con un rating __PG__ y duracion de más de __120__.
    ```sql
    select * from film where rating in("PG") and length > 120 limit 10;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen17.png">  
    
    - ¿Cuantos actores hay?
    ```sql
     select count(first_name) from actor;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen18.png">  
    
    - ¿Cuántas ciudades tiene el country __Spain__?
    ```sql
    select count(city_id) from country join city 
      on city.country_id=country.country_id 
      where country.country="Spain";
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen19.png">  
    
    - ¿Cuántos countries hay que empiezan por __a__?
    ```sql
    select count(country) from country where country regexp '^A';
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen20.png">  
    
    - Media de duración de peliculas con __PG__.
    ```sql
    select avg(length) from film where rating in ('PG');
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen21.png">  
    
    - Suma de __rental_rate__ de todas las peliculas.
    ```sql
    select sum(rental_rate) from film;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen22.png">  
    
    - Pelicula con mayor duración.
    ```sql
    select * from film where length=(select max(length) from film);
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen23.png">  
    
    - Película con menor duración.
    ```sql
    select * from film where length=(select min(length) from film);
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen24.png">  
    
    - Mostrar las ciudades del country __Spain__ (multitabla).
    ```sql
    select * from country join city on city.country_id=country.country_id where country.country="Spain";
    
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen10.png">  
    
    
    - Mostrar el nombre de la película y el nombre de los actores.
    ```sql
    select distinct actor.first_name, film.title from film_actor join actor on actor.actor_id=film_actor.actor_id join film on film.film_id=film_actor.film_id;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen25.png">  
    
    - Mostrar el nombre de la película y el de sus categorías.
    ```sql
      select distinct film.title,category.name from film_category join category on category.category_id=film_category.category_id join film on film.film_id=film_category.film_id;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen26.png">  
    
    - Mostrar el country, la ciudad y dirección de cada miembro del staff.
    ```sql
    select country, address, city from staff_list;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen27.png">  
    
    - Mostrar el country, la ciudad y dirección de cada customer.
    ```sql
    select country, address, city from customer_list;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen28.png">  
    
    - Numero de películas de cada __rating__
    ```sql
    select rating,count(rating) from film group by rating;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen29.png">  
    
    - Cuantas películas ha realizado el actor __ED CHASE__.
    ```sql
    select actor.first_name,actor.last_name, count(film.title) from film_actor join actor on actor.actor_id=film_actor.actor_id join film on film.film_id=film_actor.film_id where actor.first_name='ED' and actor.last_name='CHASE';
    
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen30.png">  
    
  
    - Media de duración de las películas cada categoría.
    ```sql
    select category.name, avg(film.length) from film_category join category on category.category_id=film_category.category_id join film on film.film_id=film_category.film_id group by category.category_id;
    ```
    <img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaSakila/images/imagen31.png">  
    
    
    Conociendo es estos momentos ya la __BBDD__, se pide:
- Muestra el resultado de la consulta de las vistas que se proporcionan.
- Crea __5__ vistas sobre la __BBDD__, y realizar la consulta, para mostrar los resultados. ___Las vistas deben de tener 3 o más tablas de la BBDD___.
    
    
