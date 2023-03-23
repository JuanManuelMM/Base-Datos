# Instalación y configuración de Mariadb en Docker

## Hecho por Juan Manuel Morales Martín  


Para poder instalar Mariadb en docker, debemos tener instalado Docker. Por lo que seguí los pasos en el siguiente <a href="https://docs.docker.com/engine/install/ubuntu/">enlace.</a>  

<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaDocker/img/ins1.png">
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/tareaDocker/img/ins2.png">


Primero crearemos un contender docker con la imagen de mariadb server para así tenerlo instalado.

```
sudo docker run -d --rm --name mariadb -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mariadb
```
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaDockerMariadb/img/ins1.png
">


ahora comprobamos que esté corriendo con un ps.

```
docker ps
```
<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaDockerMariadb/img/ins2.png">

Por último, paramos el contenedor con la credencial obtenida en el paso anterior

<img src="https://github.com/JuanManuelMM/Base-Datos/blob/main/Tareas/TareaMysql/TareaDockerMariadb/img/ins3.png">


Y con esto ya estaría el servicio de Mariadb en Docker activo





