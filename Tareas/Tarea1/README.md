# Almacenamiento de la información Tarea 1

![Imagen de base de datos](https://lh3.googleusercontent.com/M9hK-MPBSTaw4t4HjaPrw3jg0Ibnq9G7qC3N5TP6uH7CCavx0OTZhcCYe-LeQdDD08zDkf1X30sqKZYdEaHJsUEcFdv0vlmXwEpHV4xOhfho068t0m_BbLif2ktgizSgSGtd2joPeQ=w2400)
### Hecho por Juan Manuel Morales Martín  
### 1º DAM Base de datos

***


### ÍNDICE

* [Introducción](#introducción)
* [MySql](#mysql)
* [SQL Server](#sql-server)
* [Oracle](#oracle)
* [Microsoft Access](#microsoft-access)
* [PostgreSql](#postgresql)
* [H2](#h2)
* [FireBird](#firebird)
* [Apache Derby](#apache-derby)
* [Informix](#informix)
* [SQLite](#sqlite)
* [Bibliografía](#bibliografía)

***

## Introducción

En esta pequeña investigación sobre los gestores de base de datos profundizaremos más en las características de ciertos gestores.
Estos son los apartados que trataremos:

* Tipo de sistema que es
* Tipo de sentencias que soporta
* Soporta procedimientos almacenados
* Soporta transacciones
* Sistemas en los que es más común su uso

***

## MySql

Este gestor de base de datos en un sistema relacional, es decir, el usuario ve la base de datos en forma de conjunto de tablas. MySql soporta SQL, por lo tanto soporta dichas sentencias. Por otro lado este sistema soporta procedimientos almacenados, permitiendo al usuario agilizar los procesos de consultas, o agrupar sentencias.  

Este sistema es multiplataforma, estando disponible en mas de 20 plataformas, algunas de ellas son Mac, Windows, Linux o Unix, siendo común que sea utilizado en Linux. MySql se suele usar en desarrollo web sobre todo.

***

## SQL Server  

SQL Server es un gestor de base de datos que posee un sistema relacional, desarrollado por Microsoft. SQLServer soporta una implementación de SQL, llamada Transact-SQL (TSQL). En cuanto a los procedimientos almacenados, SQL Server si los soporta pudiendo realizar acciones desde la base de datos. Permite transacciones, pudiendo modificar, añadir o borrar los registros, entre otros casos.  

SQL Server funciona actualmente en Windows y Linux. En cuanto a los sistemas donde se utiliza, este es recomendando para usar en empresas de todos los tamaños. 

***

## Oracle

Oracle es uno de los SGBD relacionales más reconocidos en el mundo, este soporta sentencias SQL y también utiliza una extensión de SQL llamada PL/SQL. Este SGBD también soporta procedimientos almacenados.  

Oracle soporta transacciones, es un sistema multiplataforma y es mayormente utilizado en grandes empresas, capaces de gestionar gran cantidad de información.  

***
## Microsoft Access  

Este SGBD, debido a que su modelo está basado en un sistema de tablas, es relacional. Este utiliza SQL para trabajar y gestionar los datos, soportando entonces sentencias de este. Microsoft Access es capaz de soportar procedimientos almacenados gracias a la librería ADODB y transacciones. Por otro lado, Microsoft Access tan solo está para Windows, y se suele utilizar para cosas sencillas como seguimiento de pedidos, videojuegos, etc.

***

## PostgreSql  

Es un SGBD relacional de alto nivel, esta soporta sentencias SQL. Los procedimientos almacenados de este SGBD se pueden escribir en diferentes lenguajes como pueden ser PL/pgSQL, PL/Perl, PL/Pythonv, etc. Permite transacciones, es multiplataforma y Open Source. Se utiliza, por ejemplo, para almacenamiento de datos, En servicios como Amazon Web Services Redshift, etc.

***

## H2  

Al igual que los anteriores, este SGBD es relacional, y a pesar de estar desarrollado en Java, este no representa inconveniente para lanzar sentencias SQL. Este permite procedimientos almacenados si se utiliza con la biblioteca de software jOOQ. Toda manipulación de datos es transaccional, además es un sistema multiplataforma ya que se puede trabajar en el en diferentes sistemas operativos, y se suele utilizar en aplicaciones de java, o ejecutarse como cliente-servidor (El cliente pide cierta información, el servidor se la otorga). 

*** 

## FireBird

Este sistema es relacional, además de estar diseñado para ser de código abierto. Este se basa en las sentencias estandar de SQL, también cuenta con soporte para los procesos almacenados. A mayores, en FireBird se trabaja mayormente con las transacciones, siendo un aparte importante de este programa. Este SGBD es multiplataforma, estando presente en sistemas como Windows, Mac, Linux o Solaris, entre otros. Este es gratuito y fácil de configurar, por lo que es una buena opción para las empresas.
***

## Apache Derby

Apache Derby es un sistema relacional, al estar presente de nuevo la estructura en tablas. Este permite sentencias de Java gracias a JDBC (Java Data Base Connectivity), pero también soporta las sentencias SQL. Entre sus características, este soporta los procedimientos almacenados y las transacciones, también es multiplataforma, ya que actualmente está operativo para Windows, Linux, OSX, etc. 

***

## Informix

Este SGBD es relacional, además de ser uno de los sistemas más utilizados en el mundo, yendo desde las grandes empresas hasta las más nuevas, y abarcando diferentes sistemas operativos como Linux o UNIX. Soporta sentencias tanto de SQL, como NoSQL/JSON. Las funciones en este sistema se importan en procedimientos almacenados, por lo tanto los soporta, al igual que las transacciones.

***

## SQLite
Esta herramienta de softawe libre, la cual soporta sentencias SQL y varios lenguajes de programación, está basado en un sistema relacional. Es capaz de implementar transacciones, pero no es capaz de soportar procedimientos almacenados. SQLite es multiplataforma, y se suele utilizar en aplicaciones desktop o móviles, en sitios lijeros como páginas estéticas, o en sistemas que aún no poseen muchos usuarios.
***
 
## Bibliografía  
### Mysql
* https://www.computerweekly.com/es/definicion/MySQL
### SQL Server
* https://guiadev.com/mysql-vs-sql-server/#Diferencias
* https://es.wikipedia.org/wiki/Microsoft_SQL_Server
### Oracle
* https://www.oracle.com/es/database/technologies/appdev/sql.html  

### Microsoft Access
* https://www.inesem.es/revistadigital/informatica-y-tics/procedimientos-almacenados-de-sql-server-desde-microsoft-access/
* https://es.wikipedia.org/wiki/Microsoft_Access

### PostgreSql
* https://e-mc2.net/blog/procedimientos-almacenados-y-plpgsql/
* https://runebook.dev/es/docs/postgresql/tutorial-transactions
* https://openwebinars.net/blog/que-es-postgresql/  
### H2
* https://es.wikipedia.org/wiki/H2_(DBMS)
* https://programmerclick.com/article/8931595604/
* https://es.frwiki.wiki/wiki/H2_(base_de_donn%C3%A9es)  

### FireBird  
* https://www.arsys.es/blog/firebird-bbdd
* https://firebirdsql.org/manual/es/qsg15-es-firebird-sql.html
* https://firebird21.wordpress.com/2013/09/07/entendiendo-a-las-transacciones/  

### Apache Derby
* https://es.wikipedia.org/wiki/Apache_Derby
* https://programmerclick.com/article/4622285186/
* https://www.palentino.es/blog/comparador/1/21/apache-derby/  

### Informix  
* https://www.ibm.com/es-es/products/informix  
* https://www.ibm.com/docs/es/cognos-analytics/11.0.0?topic=SSEP7J_11.0.0/com.ibm.swg.ba.cognos.ug_fm.doc/c_stored_procedure_query_subjects.html
* https://www.ibm.com/cl-es/products/informix/editions  

### SQLite  
* https://sg.com.mx/revista/17/sqlite-la-base-datos-embebida
* https://www.iteramos.com/pregunta/13937/creacion-de-un-procedimiento-almacenado-y-sqlite
* https://learn.microsoft.com/es-es/dotnet/standard/data/sqlite/transactions
* https://www.hostgator.mx/blog/sqlite-que-es-y-diferencias-con-mysql/

Parte de la información también fue obtenida gracias al PDF publicado en CAMPUS
