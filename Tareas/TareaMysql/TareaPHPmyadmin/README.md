# Instalación y configuración de MySQL/MariaDB y PhPMyAdmin en Docker
### Hecho por Juan Manuel Morales Martín  

En este caso estaremos configurando php con mysql y mariadb.

Hay dos maneras de hacerlo.

## 1: flag --link  


Primeramente, para evitar problemas, paré y borré mis contenedores anteriores que estuvieran corriendo aún, además, paré el servicio de mysql.

Comandos usados:

```
sudo systemctl stop mysql
sudo docker stop XXXX
sudo docker rm XXXX
```


Acto seguido, comencé primero lanzando un contenedor Docker de mysql, con el siguiente comando:

```
docker run -d \
--rm \
--name mysqlc \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=root \
-v mysql_data:/var/lib/mysql \
mysql:8.0
```
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaPHPmyadmin/img/ins1.png"/>


A continuación, lancé un contenedor phpMyadmind linkeado al de mysql creado anteriormente, añadiendo la etiqueta --flag -e PMA_HOST="Nombre del contenedor Mysql" 

```
docker run -d \
--rm \
--name phpmyadminc \
--link mysqlc \
-e PMA_HOST=mysqlc \
-p 8080:80 \
phpmyadmin

```
En este caso, como no tenía la imagen de phpmyadmin, se descargó y luego se creó el contenedor.

<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaPHPmyadmin/img/ins2.png"/>

Para comprobar que todo funcionaba correctamente, accedí al siguiente <a href= "http://localhost:8080">enlace.</a>  
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaPHPmyadmin/img/ins3.png"/>  

Con esto se termina el primer método.

## 2: user-defined bridge network  

Primero, al igual que anteriormente, me aseguré de parar los contenedores anteriores para evitar ningún problema.  

Lo siguiente que realicé, fue crear una network, con el nombre que quiera.  

```
docker network create my-net
```  
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaPHPmyadmin/img/ins4.png"/> 

Acto seguido, creé un contenedor Docker de mysql en el que se define que debe estar en la red creada anteriormente  

```
docker run -d \
--rm \
--name mysqlc \
--network my-net \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=root \
-v mysql_data:/var/lib/mysql \
mysql:8.0

```
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaPHPmyadmin/img/ins5.png"/>

Consecuentemente, se crea un contenedor Docker de phpMyadmin también en la red creada.  

```
docker run -d \
--rm \
--name phpmyadminc \
--network my-net \
-e PMA_HOST=mysqlc \
-p 8080:80 \
phpmyadmin
```
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaPHPmyadmin/img/ins6.png"/>

Por último, y al igual que anteriormente, comprobé que todo estaba funcionando correctamente gracias al siguiente <a href= "http://localhost:8080">enlace.</a>  

<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaPHPmyadmin/img/ins7.png"/>

## Extra: Conectar Mariadb y PHPMyadmin.  

Primero, paré los contenedores anteriormente creados.
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaPHPmyadmin/img/ins8.png"/>

Luego, creé un contenedor Docker de Mariadb, y uno de phoMyadmin, que mediante la flag --link, estuviera vinculado al de Mariadb  

```
docker run -d \
--rm \
--name mariadbc \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=root \
-v mariadb_data:/var/lib/mysql \
mariadb:10

docker run -d \
--rm \
--name phpmyadminc \
--link mariadbc \
-e PMA_HOST=mariadbc \
-p 8080:80 \
phpmyadmin
```
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaPHPmyadmin/img/ins9.png"/>

Y con esto, concluyen todos los pasos.










