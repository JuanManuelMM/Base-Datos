# Instalación y configuración de MySQL en Docker

## Hecho por Juan Manuel Morales Martín  


Para poder instalar Mysql en docker, debemos tener instalado Docker. Por lo que seguí los pasos en el siguiente <a href="https://docs.docker.com/engine/install/ubuntu/">enlace.</a>  

**INSERTAR INS1,INS2*


Es importante no tener el servicio de mysql activo, por lo que en caso de que lo esté, lo desactivamos.

```
sudo service mysql stop
```

Acto seguido, crearemos un contender docker con la imagen de mysql server para así tenerlo instalado.


```
sudo docker run -d --rm --name mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mysql:8.0
```


ahora comprobamos que esté corriendo con un ps.

```
docker ps
```
**INSERTAR INS3**

Por último, paramos el contenedor con la credencial obtenida en el paso anterior

**INSERTAR INS4**


Y con esto ya estaría el servicio de Mysql en Docker activo





