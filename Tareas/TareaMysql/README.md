# Informe de instalación de Mysql

## Realizado por Juan Manuel Morales Martin 1ºDAM

Este informe indicará los pasos realizados para instalar Mysql en Ubuntu.

### Primera parte


Primero, actualizamos la lista de paquetes por si acaso no lo está con el comando:

```
sudo apt update
```

Una vez hecho, instalamos el paquete de Mysql-server.

```
sudo apt install mysql-server
```

Una vez instalado el paquete, accedemos a mysql siendo usuario root para comprobar que todo etá correcto, sin necesidad de introducir ninguna contraseña.  

Alora pasamos a configurar mysql.

Es este paso, lo que hemos hecho a sido crear una nueva contraseña para el usuario root en mysql con el siguiente comando:

```
sudo mysql_secure_installation
```

Luego de eso, creamos un nuevo usuario y le concedemos privilegios:

```
CREATE USER juanma@localhost IDENTIFIED BY 'password'

```
