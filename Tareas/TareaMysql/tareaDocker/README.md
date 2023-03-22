# Instalación y configuración de MySQL en Docker

## Hecho por Juan Manuel Morales Martín  


Para poder instalar Mysql en docker, debemos tener instalado Docker. Por lo que seguí los pasos en el siguiente <a href="https://docs.docker.com/engine/install/ubuntu/">enlace.</a>  

<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaDocker/img/ins1.png">
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaDocker/img/ins2.png">



Es importante no tener el servicio de mysql activo, por lo que en caso de que lo esté, lo desactivamos.

```
sudo service mysql stop
```

Acto seguido, crearemos un contender docker con la imagen de mysql server para así tenerlo instalado.


```
sudo docker run -d --rm --name mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mysql:8.0
```
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaDocker/img/ins3.png">

ahora comprobamos que esté corriendo con un ps.

```
docker ps
```


Por último, paramos el contenedor con la credencial obtenida en el paso anterior

<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaDocker/img/ins4.png">


Y con esto ya estaría el servicio de Mysql en Docker activo





