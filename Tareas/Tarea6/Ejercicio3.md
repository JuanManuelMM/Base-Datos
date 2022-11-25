## Ejercicio 3  

Se nos da la siguiente tabla:  

<img src="https://github.com/jpexposito/base-datos/blob/main/NORMALIZACION/tareas/tarea3/img/tabla.png" width ="400" height="200"/>  

Se pide:  

- Indicar claves candidatas.
- Comprobar si se cumple la 1ª Forma Normal.
- Normalizar si no se cumple el apartado 2.
- Comprobar si se cumple la 2ª Forma Normal.
- Normalizar si no se cumple el apartado 4.
- Comprobar si se cumple la 3ª Forma Normal.
- Normalizar si no se cumple el apartado 5.
- Indicar claves candidatas de todas las tablas resultantes.
- Generar el diagrama E/R resultante.  

**1: Indicar claves candidatas**  

- NSS

**Comprobar si se cumple la 1º Forma Normal**  

 No se cumple ya que hay celdas en las tablas que contienen más de un elemento, es decir que son multievaluadas.  
 
 **Normalizar si no se cumple el apartado 2**  
 
 **Empleado**
  |NSS|Nombre|Puesto| Salario|
  |---|---|---|---|
  |111|Pepe|Jefe Area|3000|
  |222|Josu|Admitivo|1500|
  |333|Miren|Admitiva|1500|

**Emails**

|NSS|Emails|
|---|---|
|111|josep@ecn.es|
|111|jefez@gmail.com|
|222|jsanchez@ecn.es|
|333|mlopez@ecn.es|
|333|miren@gmail.com|

**Comprobar si se cumple la 2º Forma Normal**  

No se cumple ya que no todos los atributos dependen funcinalmente de la clave primaria.

**Normalizar si no se cumple el apartado 4**  

**Empleado**
 |NSS|Nombre|
 |---|---|
 |111|Pepe|
 |222|Josu|
 |333|Miren|  
 
**Trabajo**
|NSS|Puesto|Salario|
|---|---|---|
|111|Jefe Area|3000|
|222|Admitivo|1500|
|333|Admitiva|1500|

**Emails**
|NSS|Emails|
|---|---|
|111|josep@ecn.es|
|111|jefez@gmail.com|
|222|jsanchez@ecn.es|
|333|mlopez@ecn.es|
|333|miren@gmail.com|
