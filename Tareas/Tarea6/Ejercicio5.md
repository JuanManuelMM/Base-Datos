### Ejercicio 5: Editorial  

***  

Se nos da la siguiente tabla.

| CodLibro | Titulo| Autor |Editorial | NombreLector| FechaDev | 
|-----|-----|-----|-----|-----|-----| 
| 1001 | Variable compleja  |  Murray Spiegel  | McGraw Hill |Pérez Gómez, Juan |15/04/2022 |
 |1004 | Visual Basic 5 | E. Petroustsos | Anaya | Ríos Terán, Ana | 17/04/2022  | 
 | 1005 | Estadística | Murray Spiegel | McGraw Hill | Roca, René | 16/04/2022  | 
 | 1006  | Oracle University | Nancy Greenberg y Priya Nathan | Oracle Corp. | García Roque, Luis | 20/04/2022 | 
| 1007 | Clipper 5.01 | Ramalho | McGraw Hill | Pérez Gómez, Juan | 18/04/2022 |  

Se pide:

1. Comprobar si se cumple la 1ª Forma Normal.
2. Normalizar si no se cumple el apartado 2.
3. Comprobar si se cumple la 2ª Forma Normal.
4. Normalizar si no se cumple el apartado 4.
5. Comprobar si se cumple la 3ª Forma Normal.
6. Normalizar si no se cumple el apartado 5.
7. Indicar claves de todas las tablas resultantes.
9. Genera el __diagrama E/R resultante__.  

**Comprobar si se cumple la 1º Forma Normal**  

La 1º Forma normal no se cumple ya que los atributos no son atómicos.  


**Normalizar si no se cumple el apartado 2**  

Se repite los elementos de autor, así que los sacamos fuera. Además, el campo "NombreLector" se puede dividir en "nombre" y "apellido".  

**Autor**
| CodLibro |  Autor | 
|-----|-----|
| 1001 |   Murray Spiegel  | 
 |1004 |  E. Petroustsos |  
 | 1005 |  Murray Spiegel |  
 | 1006  |  Nancy Greenberg |
 |1006| Priya Nathan|
| 1007 |  Ramalho |  

**Lector**

|CodLibro|Nombre|Apellido|
|---|---|---|
|1001|Juan|Pérez Gómez|
|1004|Ana|Ríos Terán|
|1005|René|Roca|
|1006|Luis| García Roque|
|1007|Juan|Pérez Gómez|

**Libro**  

| CodLibro | Titulo|Editorial |  FechaDev | 
|-----|-----|-----|-----| 
| 1001 | Variable compleja  | McGraw Hill |15/04/2022 |
 |1004 | Visual Basic 5 | Anaya | 17/04/2022  | 
 | 1005 | Estadística | McGraw Hill | 16/04/2022  | 
 | 1006  | Oracle University | Oracle Corp. | 20/04/2022 | 
| 1007 | Clipper 5.01 | Ramalho | 18/04/2022 | 

**Comprobar si se cumple la 2ª Forma Normal**  


