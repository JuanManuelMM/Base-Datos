# Ejercicios de normalización

## Ejercicio 1
### Aquí va el ejercicio 1, aún por poner.

***  

## Ejercicio 2  

Se nos da la siguiente tabla:

<img src="https://github.com/jpexposito/base-datos/blob/main/NORMALIZACION/tareas/tarea2/img/tabla.png"/>  

Se pide:  

- Indicar claves candidatas
- Comprobar si se cumple la 1º Forma Normal.
- Normalizar si no se cumple el apartado 2.
- Determinates sobre las tablas resultado del apartado 3.
- Indicar claves candidatas de todas las tablas resultantes.  

**1: Indicar claves candidatas**  

- DNI
- Ciudad
- Provincia
- Com_Aut
- Asignatura  

**Comprobar si se cumple la 1º Forma Normal**  

La 1º forma normal no se cumple, debido a la repetición de información en las columnas de Código, Asignatura, y Nota.  

**Normalizar si no se cumple el apartado 2**  

Estas son las columnas multievaluadas:  

Código | Asignatura | Nota |
---|--- | --- |
125002112 | Bases de datos | 8
125001106 | Informática | 7
125001105 | Cartografía | 6
125002112 | Bases de Datos | 9
125001104 | Geomática | 6
125004208 | Geomorfología | 5
125002110 | Topografía y G. | 8
125002112 | Bases de Datos | 9
